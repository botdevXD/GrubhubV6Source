xpcall(function()
   local json = {}
   local function kind_of(obj)
      if typeof(obj) == 'CFrame' then return typeof(obj), obj end
      if typeof(obj) == 'Vector3' then return typeof(obj), obj end
      if typeof(obj) == 'Vector2' then return typeof(obj), obj end
      if type(obj) ~= 'table' then return type(obj) end
      local i = 1
      for _ in pairs(obj) do
         if obj[i] ~= nil then i = i + 1 else return 'table' end
      end
      if i == 1 then return 'table' else return 'array' end
   end

   local function escape_str(s)
      local in_char  = {'\\', '"', '/', '\b', '\f', '\n', '\r', '\t'}
      local out_char = {'\\', '"', '/',  'b',  'f',  'n',  'r',  't'}
      for i, c in ipairs(in_char) do
         s = s:gsub(c, '\\' .. out_char[i])
      end
      return s
   end

   -- Returns pos, did_find; there are two cases:
   -- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
   -- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
   -- This throws an error if err_if_missing is true and the delim is not found.
   local function skip_delim(str, pos, delim, err_if_missing)
      pos = pos + #str:match('^%s*', pos)
      if str:sub(pos, pos) ~= delim then
         if err_if_missing then
         error('Expected ' .. delim .. ' near position ' .. pos)
         end
         return pos, false
      end
      return pos + 1, true
   end

   -- Expects the given pos to be the first character after the opening quote.
   -- Returns val, pos; the returned pos is after the closing quote character.
   local function parse_str_val(str, pos, val)
      val = val or ''
      local early_end_error = 'End of input found while parsing string.'
      if pos > #str then error(early_end_error) end
      local c = str:sub(pos, pos)
      if c == '"'  then return val, pos + 1 end
      if c ~= '\\' then return parse_str_val(str, pos + 1, val .. c) end
      -- We must have a \ character.
      local esc_map = {b = '\b', f = '\f', n = '\n', r = '\r', t = '\t'}
      local nextc = str:sub(pos + 1, pos + 1)
      if not nextc then error(early_end_error) end
      return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
   end

   -- Returns val, pos; the returned pos is after the number's final character.
   local function parse_num_val(str, pos)
      local num_str = str:match('^-?%d+%.?%d*[eE]?[+-]?%d*', pos)
      local val = tonumber(num_str)
      if not val then error('Error parsing number at position ' .. pos .. '.') end
      return val, pos + #num_str
   end


   -- Public values and functions.

   function json.stringify(obj, as_key)
      local s = {}  -- We'll build the string as an array of strings to be concatenated.
      local kind, kind_objecto = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
      if kind == 'array' then
         if as_key then error('Can\'t encode array as key.') end
         s[#s + 1] = '['
         for i, val in ipairs(obj) do
         if i > 1 then s[#s + 1] = ', ' end
         s[#s + 1] = json.stringify(val)
         end
         s[#s + 1] = ']'
      elseif kind == 'table' then
         if as_key then error('Can\'t encode table as key.') end
         s[#s + 1] = '{'
         for k, v in pairs(obj) do
         if #s > 1 then s[#s + 1] = ', ' end
         s[#s + 1] = json.stringify(k, true)
         s[#s + 1] = ':'
         s[#s + 1] = json.stringify(v)
         end
         s[#s + 1] = '}'
      elseif kind == 'string' then
         return '"' .. escape_str(obj) .. '"'
      elseif kind == 'CFrame' then
         kind_objecto = {table_type = "CFrame", kind_objecto:components()}
         if as_key then error('Can\'t encode table as key.') end
         s[#s + 1] = '{'
         for k, v in pairs(kind_objecto) do
         if #s > 1 then s[#s + 1] = ', ' end
         s[#s + 1] = json.stringify(k, true)
         s[#s + 1] = ':'
         s[#s + 1] = json.stringify(v)
         end
         s[#s + 1] = '}'
   elseif kind == 'Vector3' then
         kind_objecto = {table_type = "Vector3", kind_objecto.X, kind_objecto.Y, kind_objecto.Z}
         if as_key then error('Can\'t encode table as key.') end
         s[#s + 1] = '{'
         for k, v in pairs(kind_objecto) do
         if #s > 1 then s[#s + 1] = ', ' end
         s[#s + 1] = json.stringify(k, true)
         s[#s + 1] = ':'
         s[#s + 1] = json.stringify(v)
         end
         s[#s + 1] = '}'
   elseif kind == 'Vector2' then
         kind_objecto = {table_type = "Vector2", kind_objecto.X, kind_objecto.Y}
         if as_key then error('Can\'t encode table as key.') end
         s[#s + 1] = '{'
         for k, v in pairs(kind_objecto) do
         if #s > 1 then s[#s + 1] = ', ' end
         s[#s + 1] = json.stringify(k, true)
         s[#s + 1] = ':'
         s[#s + 1] = json.stringify(v)
         end
         s[#s + 1] = '}'
      elseif kind == 'number' then
         if as_key then return '"' .. tostring(obj) .. '"' end
         return tostring(obj)
      elseif kind == 'boolean' then
         return tostring(obj)
      elseif kind == 'nil' then
         return 'null'
      else
         error('Unjsonifiable type: ' .. kind .. '.')
      end
      return table.concat(s)
   end

   json.null = {}  -- This is a one-off table to represent the null value.

   function json.parse(str, pos, end_delim)
      pos = pos or 1
      if pos > #str then error('Reached unexpected end of input.') end
      local pos = pos + #str:match('^%s*', pos)  -- Skip whitespace.
      local first = str:sub(pos, pos)
      if first == '{' then  -- Parse an object.
         local obj, key, delim_found = {}, true, true
         pos = pos + 1
         while true do
         key, pos = json.parse(str, pos, '}')
         if key == nil then return obj, pos end
         if not delim_found then error('Comma missing between object items.') end
         pos = skip_delim(str, pos, ':', true)  -- true -> error if missing.
         obj[key], pos = json.parse(str, pos)
         pos, delim_found = skip_delim(str, pos, ',')
         end
      elseif first == '[' then  -- Parse an array.
         local arr, val, delim_found = {}, true, true
         pos = pos + 1
         while true do
         val, pos = json.parse(str, pos, ']')
         if val == nil then return arr, pos end
         if not delim_found then error('Comma missing between array items.') end
         arr[#arr + 1] = val
         pos, delim_found = skip_delim(str, pos, ',')
         end
      elseif first == '"' then  -- Parse a string.
         return parse_str_val(str, pos + 1)
      elseif first == '-' or first:match('%d') then  -- Parse a number.
         return parse_num_val(str, pos)
      elseif first == end_delim then  -- End of an object or array.
         return nil, pos + 1
      else  -- Parse true, false, or null.
         local literals = {['true'] = true, ['false'] = false, ['null'] = json.null}
         for lit_str, lit_val in pairs(literals) do
         local lit_end = pos + #lit_str - 1
         if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
         end
         local pos_info_str = 'position ' .. pos .. ': ' .. str:sub(pos, pos + 10)
         error('Invalid json syntax starting at ' .. pos_info_str)
      end
   end
   
   local StringsToEncrypt = {
      "syn",
      "char",
      "gsub",
      "sub",
      "players",
      "replicatedstorage",
      "string"
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
      
      local function encode(Offset, Text)
			local HTTP_SERVICE = game:GetService("HttpService")
         local Result = {}
         local length = #Text

         for Index = 1, length do
            local char = Text["sub"](Text, Index, Index)
            local Byte = char["byte"](char)
            local MMath = (Byte + math.floor(Index / 100) + Offset + 3)
            local letter = string["char"](MMath)
            Result[Index] = letter
         end

         local EndResult = "(decode_string_v1(%s, getgenv()['GRUBHUB_JSON'].parse([[\n%s\n]])))"

         return EndResult:format(tostring(3), tostring(json.stringify(Result)))
      end
      
      local function _encode(str)
         local seed = math.random(0x7FFFFFFF)
         local result = '",' .. seed .. '))'
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
         until seed > 2 ^ 43

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
               do
                  local json = {}
                  local function kind_of(obj)
                    if typeof(obj) == 'CFrame' then return typeof(obj), obj end
                    if typeof(obj) == 'Vector3' then return typeof(obj), obj end
                    if typeof(obj) == 'Vector2' then return typeof(obj), obj end
                    if type(obj) ~= 'table' then return type(obj) end
                    local i = 1
                    for _ in pairs(obj) do
                     if obj[i] ~= nil then i = i + 1 else return 'table' end
                    end
                    if i == 1 then return 'table' else return 'array' end
                  end
                  
                  local function escape_str(s)
                    local in_char  = {'\\', '"', '/', '\b', '\f', '\n', '\r', '\t'}
                    local out_char = {'\\', '"', '/',  'b',  'f',  'n',  'r',  't'}
                    for i, c in ipairs(in_char) do
                     s = s:gsub(c, '\\' .. out_char[i])
                    end
                    return s
                  end
                  
                  -- Returns pos, did_find; there are two cases:
                  -- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
                  -- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
                  -- This throws an error if err_if_missing is true and the delim is not found.
                  local function skip_delim(str, pos, delim, err_if_missing)
                    pos = pos + #str:match('^%s*', pos)
                    if str:sub(pos, pos) ~= delim then
                     if err_if_missing then
                       error('Expected ' .. delim .. ' near position ' .. pos)
                     end
                     return pos, false
                    end
                    return pos + 1, true
                  end
                  
                  -- Expects the given pos to be the first character after the opening quote.
                  -- Returns val, pos; the returned pos is after the closing quote character.
                  local function parse_str_val(str, pos, val)
                    val = val or ''
                    local early_end_error = 'End of input found while parsing string.'
                    if pos > #str then error(early_end_error) end
                    local c = str:sub(pos, pos)
                    if c == '"'  then return val, pos + 1 end
                    if c ~= '\\' then return parse_str_val(str, pos + 1, val .. c) end
                    -- We must have a \ character.
                    local esc_map = {b = '\b', f = '\f', n = '\n', r = '\r', t = '\t'}
                    local nextc = str:sub(pos + 1, pos + 1)
                    if not nextc then error(early_end_error) end
                    return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
                  end
                  
                  -- Returns val, pos; the returned pos is after the number's final character.
                  local function parse_num_val(str, pos)
                    local num_str = str:match('^-?%d+%.?%d*[eE]?[+-]?%d*', pos)
                    local val = tonumber(num_str)
                    if not val then error('Error parsing number at position ' .. pos .. '.') end
                    return val, pos + #num_str
                  end
                  
                  
                  -- Public values and functions.
                  
                  function json.stringify(obj, as_key)
                    local s = {}  -- We'll build the string as an array of strings to be concatenated.
                    local kind, kind_objecto = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
                    if kind == 'array' then
                     if as_key then error('Can\'t encode array as key.') end
                     s[#s + 1] = '['
                     for i, val in ipairs(obj) do
                       if i > 1 then s[#s + 1] = ', ' end
                       s[#s + 1] = json.stringify(val)
                     end
                     s[#s + 1] = ']'
                    elseif kind == 'table' then
                     if as_key then error('Can\'t encode table as key.') end
                     s[#s + 1] = '{'
                     for k, v in pairs(obj) do
                       if #s > 1 then s[#s + 1] = ', ' end
                       s[#s + 1] = json.stringify(k, true)
                       s[#s + 1] = ':'
                       s[#s + 1] = json.stringify(v)
                     end
                     s[#s + 1] = '}'
                    elseif kind == 'string' then
                     return '"' .. escape_str(obj) .. '"'
                    elseif kind == 'CFrame' then
                     kind_objecto = {table_type = "CFrame", kind_objecto:components()}
                     if as_key then error('Can\'t encode table as key.') end
                     s[#s + 1] = '{'
                     for k, v in pairs(kind_objecto) do
                       if #s > 1 then s[#s + 1] = ', ' end
                       s[#s + 1] = json.stringify(k, true)
                       s[#s + 1] = ':'
                       s[#s + 1] = json.stringify(v)
                     end
                     s[#s + 1] = '}'
                  elseif kind == 'Vector3' then
                     kind_objecto = {table_type = "Vector3", kind_objecto.X, kind_objecto.Y, kind_objecto.Z}
                     if as_key then error('Can\'t encode table as key.') end
                     s[#s + 1] = '{'
                     for k, v in pairs(kind_objecto) do
                       if #s > 1 then s[#s + 1] = ', ' end
                       s[#s + 1] = json.stringify(k, true)
                       s[#s + 1] = ':'
                       s[#s + 1] = json.stringify(v)
                     end
                     s[#s + 1] = '}'
                  elseif kind == 'Vector2' then
                     kind_objecto = {table_type = "Vector2", kind_objecto.X, kind_objecto.Y}
                     if as_key then error('Can\'t encode table as key.') end
                     s[#s + 1] = '{'
                     for k, v in pairs(kind_objecto) do
                       if #s > 1 then s[#s + 1] = ', ' end
                       s[#s + 1] = json.stringify(k, true)
                       s[#s + 1] = ':'
                       s[#s + 1] = json.stringify(v)
                     end
                     s[#s + 1] = '}'
                    elseif kind == 'number' then
                     if as_key then return '"' .. tostring(obj) .. '"' end
                     return tostring(obj)
                    elseif kind == 'boolean' then
                     return tostring(obj)
                    elseif kind == 'nil' then
                     return 'null'
                    else
                     error('Unjsonifiable type: ' .. kind .. '.')
                    end
                    return table.concat(s)
                  end
                  
                  json.null = {}  -- This is a one-off table to represent the null value.
                  
                  function json.parse(str, pos, end_delim)
                    pos = pos or 1
                    if pos > #str then error('Reached unexpected end of input.') end
                    local pos = pos + #str:match('^%s*', pos)  -- Skip whitespace.
                    local first = str:sub(pos, pos)
                    if first == '{' then  -- Parse an object.
                     local obj, key, delim_found = {}, true, true
                     pos = pos + 1
                     while true do
                       key, pos = json.parse(str, pos, '}')
                       if key == nil then return obj, pos end
                       if not delim_found then error('Comma missing between object items.') end
                       pos = skip_delim(str, pos, ':', true)  -- true -> error if missing.
                       obj[key], pos = json.parse(str, pos)
                       pos, delim_found = skip_delim(str, pos, ',')
                     end
                    elseif first == '[' then  -- Parse an array.
                     local arr, val, delim_found = {}, true, true
                     pos = pos + 1
                     while true do
                       val, pos = json.parse(str, pos, ']')
                       if val == nil then return arr, pos end
                       if not delim_found then error('Comma missing between array items.') end
                       arr[#arr + 1] = val
                       pos, delim_found = skip_delim(str, pos, ',')
                     end
                    elseif first == '"' then  -- Parse a string.
                     return parse_str_val(str, pos + 1)
                    elseif first == '-' or first:match('%d') then  -- Parse a number.
                     return parse_num_val(str, pos)
                    elseif first == end_delim then  -- End of an object or array.
                     return nil, pos + 1
                    else  -- Parse true, false, or null.
                     local literals = {['true'] = true, ['false'] = false, ['null'] = json.null}
                     for lit_str, lit_val in pairs(literals) do
                       local lit_end = pos + #lit_str - 1
                       if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
                     end
                     local pos_info_str = 'position ' .. pos .. ': ' .. str:sub(pos, pos + 10)
                     error('Invalid json syntax starting at ' .. pos_info_str)
                    end
                  end
               
                  getgenv()["GRUBHUB_JSON"] = json
               end

               local HTTP_SERVICE_V1 = game:GetService("HttpService")  
               local function decode_string_v1(Offset, Table)
                  local Result = ""
         
                  for Index, Letter in ipairs(Table) do
                     local char = Letter
                     local Byte = char["byte"](char)
                     local MMath = (Byte - math.floor(Index / 100) - Offset - 3)
                     local letter = string["char"](MMath)
                     Result = Result .. letter
                  end
         
                  return Result
               end
            ]])
         end
   
         local pos = 1
         strings_and_comments(lua_code,
            function (object_type, value, start_pos, end_pos)
               if object_type == "string" then
                  if table.find(StringsToEncrypt, tostring(value):lower()) then
                     table.insert(text, lua_code:sub(pos, start_pos - 1))
                     table.insert(text, encode(3, value))
                     pos = end_pos + 1
                  else
                     table.insert(text, lua_code:sub(pos, start_pos - 1))
                     table.insert(text, encode(3, value))
                     pos = end_pos + 1
                  end
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