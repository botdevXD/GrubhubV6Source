xpcall(function()
   local StringsToEncrypt = {
      "syn", "char", "gsub", "sub", "players", "replicatedstorage", "key", "byte"
   }

   if getgenv().compiling_script == false or getgenv().compiling_script == nil then
      local Credits = [===[
         https://stackoverflow.com/questions/41359654/getting-all-strings-in-a-lua-script
      ]===]
   
      local function strings_and_comments(lua_code, callback)
         -- lua_code must be valid Lua code (an error may be raised on syntax error)
         -- callback will be invoked as callback(object_type, value, start_pos, end_pos)
         --    callback("comment", comment_text, start_pos, end_pos)  -- for comments
         --    callback("string", string_value, start_pos, end_pos)   -- for string literals
         local objects = {}  -- possible comments and string literals in the code
         -- search for all start positions of comments (with false positives)
         for pos, br1, eq, br2 in lua_code:gmatch"()%-%-(%-*%[?)(=*)(%[?)" do
            table.insert(objects, {start_pos = pos,
               terminator = br1 == "[" and br2 == "[" and "]"..eq.."]" or "\n"})
         end
         -- search for all start positions of string literals (with false positives)
         for pos, eq in lua_code:gmatch"()%[(=*)%[[%[=]*" do
            table.insert(objects, {is_string = true, start_pos = pos,
               terminator = "]"..eq.."]"})
         end
         for pos, quote in lua_code:gmatch"()(['\"])" do
            table.insert(objects, {is_string = true, start_pos = pos, quote = quote})
         end
         table.sort(objects, function(a, b) return a.start_pos < b.start_pos end)
         local end_pos = 0
         for _, object in ipairs(objects) do
            local start_pos, ok, symbol = object.start_pos
            if start_pos > end_pos then
               if object.terminator == "\n" then
                  end_pos = lua_code:find("\n", start_pos + 1, true) or #lua_code
                  -- exclude last spaces and newline
                  while lua_code:sub(end_pos, end_pos):match"%s" do
                     end_pos = end_pos - 1
                  end
               elseif object.terminator then
                  ok, end_pos = lua_code:find(object.terminator, start_pos + 1, true)
                  assert(ok, "Not a valid Lua code")
               else
                  end_pos = start_pos
                  repeat
                     ok, end_pos, symbol = lua_code:find("(\\?.)", end_pos + 1)
                     assert(ok, "Not a valid Lua code")
                  until symbol == object.quote
               end
               local value = lua_code:sub(start_pos, end_pos):gsub("^%-*%s*", "")
               if object.terminator ~= "\n" then
                  value = assert((loadstring or load)("return "..value))()
               end
               callback(object.is_string and "string" or "comment", value, start_pos, end_pos)
            end
         end
      end
      
      local inv256
      
      local function encode(str)
         local Time = os.time()
         local seed = math.random(0x7FFFFFFF)
         local result = '",' .. seed .. ',' .. Time .. '))'
         if not inv256 then
            inv256 = {}
            for M = 0, 127 do
               local inv = -1
               repeat inv = inv + 2
               until inv * (2*M + 1) % 256 == 1
               inv256[M] = inv
            end
         end
         repeat
            seed = seed * 3
         until seed > 2 ^ 64 + (math.abs(math.sin(Time)) + math.random(1, 10000))
         local K = 8186484168865098 + seed
         result = '(decode_string_v1("'..str:gsub('.',
            function(m)
               local L = K % 274877906944   -- 2^38
               local H = (K - L) / 274877906944
               local M = H % 128
               m = m:byte()
               local c = (m * inv256[M] - (H - M) / 128) % 256
               K = L * 21271 + H + c + m
               return ('%02x'):format(c)
            end
         )..result
         return result
      end
      
      function hide_strings_in_lua_code(lua_code, include_decoder)
         local text = {}
   
         if include_decoder then
            table.insert(text, [[
                  local function decode_string_v1(str, seed, v33)
                     repeat
                        seed = seed * 3
                     until seed > 2 ^ 64 + math.abs(math.sin(v33))
                     local K = 8186484168865098 + seed
                     return (str:gsub('%x%x', function(c)
                        local L = K % 274877906944
                        local H = (K - L) / 274877906944
                        local M = H % 128
                        c = tonumber(c, 16)
                        local m = (c + (H - M) / 128) * (2*M + 1) % 256
                        K = L * 21271 + H + c + m
                        return string.char(m)
                     end))
                  end
            ]])
         end
   
         local pos = 1
         strings_and_comments(lua_code,
            function (object_type, value, start_pos, end_pos)
               if object_type == "string" then
                  table.insert(text, lua_code:sub(pos, start_pos - 1))
                  
                  if table.find(StringsToEncrypt, tostring(value):lower()) then
                     table.insert(text, encode(value))
                  else
                     table.insert(text, value)
                  end

                  pos = end_pos + 1
               end
            end)
         table.insert(text, lua_code:sub(pos))
         return table.concat(text)
      end
      
      
      math.randomseed(os.time())
      getgenv().compiling_script = true
      -- This is the program to be converted
      local luacode = ""
      local InitCode = readfile("Grubhub/GrubhubV6Source/Rep/Init.lua")
      InitCode = tostring(hide_strings_in_lua_code(InitCode, true))
   
      local err_handler = function(err)
         return warn(err, debug.traceback())
      end
   
      for _, FileName in ipairs(listfiles("Grubhub/GrubhubV6Source/Games/")) do
         local Backup = tostring(FileName)
         FileName = tostring(FileName):gsub("Grubhub/GrubhubV6Source/Games/", "")
         FileName = tostring(FileName):gsub("Grubhub\\GrubhubV6Source\\Games\\", "")
         
         if tostring(InitCode):find(FileName) then
            local Success, Contents = getrenv().xpcall(hide_strings_in_lua_code, err_handler, readfile(Backup), false)
   
            if Success then
               InitCode = InitCode:gsub("--" .. FileName .. "_compile_spot", Contents)
            end
         end
      end
   
      writefile("Grubhub/GrubhubV6Source/CompiledScript.lua", InitCode)
   
      local Success, Contents = getrenv().xpcall(loadfile, err_handler, "Grubhub/GrubhubV6Source/CompiledScript.lua")
   
      if Success then
         print("Compile successful")
         Contents()
      else
         print("Compile failed!")
      end
      getgenv().compiling_script = false
   end
end, function(err)
   getgenv().compiling_script = false
  return warn(err .. "\n" .. debug.traceback())
end)