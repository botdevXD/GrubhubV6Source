       
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
                
                   getgenv().Key = '6RVLRAjvysQIgN6DMmBjbd8t5tMRfa';
      getgenv().DiscordWebhook = 'Link';
      getgenv().WebhookEnabled = false;
      getgenv().GubVersion = '6.0';

      xpcall(function()
         do
            if getgenv()["grubhub_loaded"] == true then
               local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/mooncores/lib/d74663634965be19c972f137bcf683194362be28/notif.lua"))()
               return library:Notification("GrubHub", "\nGrubhub is already loaded!\n", 10, Color3.fromRGB(255, 255, 255))
            end
      
            local CLIENT_DEOBF_OFFSET = 3;
            local SERVER_DEOBF_OFFSET = 1;
            local StartTimer = os.time()
            local UILibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Boxking776/GrubHub/main/modules/VenyXUI.lua", true))()
            local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/mooncores/lib/d74663634965be19c972f137bcf683194362be28/notif.lua"))()
            library:Notification("GrubHub", "\nPlease wait while we process the bytecode...\n", 10, Color3.fromRGB(255, 255, 255))
      
            if not isfolder("grubhub_v6_bin") then
               makefolder("grubhub_v6_bin")
            end
      
            for i, v in pairs(game:GetService("CoreGui"):GetDescendants()) do
               pcall(function()
                  if v.Name == "Glow" then
                     v.Parent.Parent:Destroy()
                  end
               end)
            end
      
            local function identify()
               local Executor = string.lower(identifyexecutor())
               local ExecutorTable = nil
      
               if string.find(Executor, "coco") then
                  ExecutorTable = {
                     "Coco Z",
                     request
                  }
               end
      
               if string.find(Executor, "synapse") then
                  ExecutorTable = {
                     "Synapse",
                     syn.request
                  }
               end
               if string.find(Executor, "krnl") then
                  ExecutorTable = {
                     "Krnl",
                     request
                  }
               end
               if string.find(Executor, "flux") then
                  ExecutorTable = {
                     "Fluxus",
                     request
                  }
               end
               if string.find(Executor, "script") then
                  ExecutorTable = {
                     "Script-Ware",
                     http.request
                  }
               end
               if string.find(Executor, "sen") then
                  ExecutorTable = {
                     "Sentinel",
                     request
                  }
               end
               if string.find(Executor, "pro") then
                  ExecutorTable = {
                     "Protosmasher",
                     http_request
                  }
               end
               if string.find(Executor, "hurt") then
                  ExecutorTable = {
                     "SirHurt V5",
                     http_request
                  }
               end
               if string.find(Executor, "grub") then
                  ExecutorTable = {
                     "GrubHub",
                     httprequest
                  }
               end
               if string.find(Executor, "electron") then
                  ExecutorTable = {
                     "Electron",
                     http_request
                  }
               end
               if getgenv().WRD_LOADED ~= nil then
                  ExecutorTable = {
                     "JJSploit",
                     http_request
                  }
               end
               if getgenv().unlock_module ~= nil and getgenv().setscriptable ~= nil and getgenv().import ~= nil then
                  ExecutorTable = {
                     "Script-Ware-Mac",
                     http_request
                  }
               end
               if getgenv().OXYGEN_LOADED ~= nil then
                  ExecutorTable = {
                     "Oxygen U",
                     http_request
                  }
               end
               if ExecutorTable == nil then
                  library:Notification("GrubHub Error", "Unsupported Exploit, please check our support list [Error Code #964963E]", 10, Color3.fromRGB(255, 255, 255))
                  while true do
                  end
               else
                  return ExecutorTable
               end
            end
      
            local exploittable = identify()
            local exploit = exploittable[1]
            local specialisedrequest = exploittable[2]
      
            local function sendError(serverData, clientData)
               if string.len(serverData) == 64 then
                  library:Notification("Critical Error", "We came across an error while sending a request [Error Code #906483A]", 15, Color3.fromRGB(255, 255, 255))
               elseif serverData == "Invalid HWID, Are you using a supported exploit?" then
                  library:Notification("Critical Error", "Invalid Exploit or Invalid Protocal [Error Code #960260B]", 15, Color3.fromRGB(255, 255, 255))
               elseif serverData == "Key not found in Database" then
                  library:Notification("Critical Error", "Invalid key Provided, or Request Failed [Error Code #974963C]", 15, Color3.fromRGB(255, 255, 255))
               elseif serverData == "You are Blacklisted." then
                  library:Notification("Blacklist Notice", "You have been Manually Blacklisted by an Admin [Error Code #0739852D]", 15, Color3.fromRGB(255, 255, 255))
               else
                  library:Notification("Critical Error", "We came across an Unknown Error, Please send a developer the text that is copied to your clipboard. [Error Code #UNKN0WN]", 15, Color3.fromRGB(255, 255, 255))
                  setclipboard("Error: Something went wrong during the request | Client Data: " .. clientData .. " | Exploit: " .. exploit .. " | Key: " .. Key .. " | Server Data: " .. serverData .. " | Loading Time: " .. tostring(newtime))
               end
      
               specialisedrequest({
                  Url = "http://127.0.0.1:6463/rpc?v=1",
                  Method = "POST",
                  Headers = {
                     ["Content-Type"] = "application/json";
                     ["Origin"] = 'https://discord.com';
                  },
                  Body = getgenv()['GRUBHUB_JSON'].stringify({
                     ['cmd'] = 'INVITE_BROWSER';
                     ['args'] = {
                        ['code'] = 'mcytaG5f2y'
                     };
                     ['nonce'] = '162fc9af-f529-4fb6-8256-254e5da5c5a3';
                  })
               })
            end
      
            local random = Random.new()
            local letters = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'}
      
            function getRandomLetter()
               return letters[random:NextInteger(1, #letters)]
            end
            local function FixName(GameName)
               return GameName:gsub("[%s%p%d%c%z]", "")
            end
      
            local function GetGameConfig(GameName)
               local Table = {}
               if isfolder("grubhub_v6_bin") then
                  if isfile("grubhub_v6_bin/" .. tostring(GameName)) then
                     local HttpServices = game:GetService("HttpService")
                     local ConfigContents = readfile("grubhub_v6_bin/" .. tostring(GameName))
                     local DecodedSuccess, DecodedContents = pcall(HttpServices.JSONDecode, HttpServices, tostring(ConfigContents))
                     if DecodedSuccess then
                        Table = DecodedContents
                     end
                  end
               end
               return Table
            end
      
            local function SaveGameConfig(GameName, ConfigTable)
               if isfolder("grubhub_v6_bin") then
                  local HttpServices = game:GetService("HttpService")
                  local EncodedSuccess, EncodedContents = pcall(HttpServices.JSONEncode, HttpServices, ConfigTable)
      
                  if EncodedSuccess then
                     writefile("grubhub_v6_bin/" .. tostring(GameName), tostring(EncodedContents))
                     return true
                  end
               end
               return false
            end
      
            function getRandomString(length, includeCapitals)
               local length = length or 10
               local str = ''
               for i = 1, length do
                  local randomLetter = getRandomLetter()
                  if includeCapitals and random:NextNumber() > .5 then
                     randomLetter = string.upper(randomLetter)
                  end
                  str = str .. randomLetter
               end
               return str
            end
      
            local hash;
            do
               local MOD = 2 ^ 32
               local MODM = MOD - 1
               local bxor = bit32.bxor;
               local band = bit32.band;
               local bnot = bit32.bnot;
               local rshift1 = bit32.rshift;
               local rshift = bit32.rshift;
               local lshift = bit32.lshift;
               local rrotate = bit32.rrotate;
               local str_gsub = string.gsub;
               local str_fmt = string.format;
               local str_byte = string.byte;
               local str_char = string.char;
               local str_rep = string.rep;
               local k = {
                  1116352408,
                  1899447441,
                  3049323471,
                  3921009573,
                  961987163,
                  1508970993,
                  2453635748,
                  2870763221,
                  3624381080,
                  310598401,
                  607225278,
                  1426881987,
                  1925078388,
                  2162078206,
                  2614888103,
                  3248222580,
                  3835390401,
                  4022224774,
                  264347078,
                  604807628,
                  770255983,
                  1249150122,
                  1555081692,
                  1996064986,
                  2554220882,
                  2821834349,
                  2952996808,
                  3210313671,
                  3336571891,
                  3584528711,
                  113926993,
                  338241895,
                  666307205,
                  773529912,
                  1294757372,
                  1396182291,
                  1695183700,
                  1986661051,
                  2177026350,
                  2456956037,
                  2730485921,
                  2820302411,
                  3259730800,
                  3345764771,
                  3516065817,
                  3600352804,
                  4094571909,
                  275423344,
                  430227734,
                  506948616,
                  659060556,
                  883997877,
                  958139571,
                  1322822218,
                  1537002063,
                  1747873779,
                  1955562222,
                  2024104815,
                  2227730452,
                  2361852424,
                  2428436474,
                  2756734187,
                  3204031479,
                  3329325298,
               }
      
               local function str2hexa(s)
                  return (str_gsub(s, ".", function(c)
                     return str_fmt("%02x", str_byte(c))
                  end))
               end
      
               local function num2s(l, n)
                  local s = ""
                  for i = 1, n do
                     local rem = l % 256
                     s = str_char(rem) .. s
                     l = (l - rem) / 256
                  end
                  return s
               end
      
               local function s232num(s, i)
                  local n = 0
                  for i = i, i + 3 do
                     n = n * 256 + str_byte(s, i)
                  end
                  return n
               end
      
               local function preproc(msg, len)
                  local extra = 64 - ((len + 9) % 64)
                  len = num2s(8 * len, 8)
                  msg = msg .. "\128" .. str_rep("\0", extra) .. len
                  assert(#msg % 64 == 0)
                  return msg
               end
      
               local function initH256(H)
                  H[1] = 1779033703
                  H[2] = 3144134277
                  H[3] = 1013904242
                  H[4] = 2773480762
                  H[5] = 1359893119
                  H[6] = 2600822924
                  H[7] = 528734635
                  H[8] = 1541459225
                  return H
               end
      
               local function digestblock(msg, i, H)
                  local w = {}
                  for j = 1, 16 do
                     w[j] = s232num(msg, i + (j - 1) * 4)
                  end
                  for j = 17, 64 do
                     local v = w[j - 15]
                     local s0 = bit.bxor(rrotate(v, 7), rrotate(v, 18), bit.rshift(v, 3))
                     v = w[j - 2]
                     w[j] = w[j - 16] + s0 + w[j - 7] + bit.bxor(rrotate(v, 17), rrotate(v, 19), bit.rshift(v, 10))
                  end
                  local a, b, c, d, e, f, g, h = H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8]
                  for i = 1, 64 do
                     local s0 = bit.bxor(rrotate(a, 2), rrotate(a, 13), rrotate(a, 22))
                     local maj = bit.bxor(band(a, b), band(a, c), band(b, c))
                     local t2 = s0 + maj
                     local s1 = bit.bxor(rrotate(e, 6), rrotate(e, 11), rrotate(e, 25))
                     local ch = bit.bxor(band(e, f), bit.band(bit.bnot(e), g))
                     local t1 = h + s1 + ch + k[i] + w[i]
                     h, g, f, e, d, c, b, a = g, f, e, d + t1, c, b, a, t1 + t2
                  end
                  H[1] = band(H[1] + a)
                  H[2] = band(H[2] + b)
                  H[3] = band(H[3] + c)
                  H[4] = band(H[4] + d)
                  H[5] = band(H[5] + e)
                  H[6] = band(H[6] + f)
                  H[7] = band(H[7] + g)
                  H[8] = band(H[8] + h)
               end
      
               function hash(msg, t)
                  msg = preproc(msg, #msg)
                  local H = initH256({})
                  for i = 1, #msg, 64 do
                     digestblock(msg, i, H)
                  end
                  return str2hexa(num2s(H[1], 4) .. num2s(H[2], 4) .. num2s(H[3], 4) .. num2s(H[4], 4) .. num2s(H[5], 4) .. num2s(H[6], 4) .. num2s(H[7], 4) .. num2s(H[8], 4))
               end
      
               function hmac(secret, data)
                  return hash(secret .. data .. secret);
               end;
            end
      
            if getgenv().Key == "" or nil then
               Key = "None"
            else
               Key = getgenv().Key
            end;
      
            function uniformRNG(a, b)
               a1 = 48718057
               a2 = 58305628
               b1 = 108466472
               b2 = 1090878788885
               x1 = a
               x2 = b
               r1 = (x2 * a2)
               r2 = (x1 * a2 + x2 * a1) % b1
               r2 = (r2 * b1 + r2) % b2
               x1 = math.floor(r2 / b1)
               x2 = r2 - x1 * b1
               return math.floor((r2 / b2) * math.pow(10, 12))
            end
      
            local function generate_order()
               spawn(function()
                  math.randomseed(os.time() / 4);
               end)
               local options = {}
               local new_options = {}
               while #options ~= 3 do
                  local num = math.random(1, 3)
                  if not new_options[num] then
                     table.insert(options, num)
                     new_options[num] = true
                  end
               end
               return options
            end
              
            local function eq(v1, v2)
               spawn(function()
                  math.randomseed(os.time() / 4);
               end)
               local charset = "ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz1234567890"
               if type(v1) == "string" and type(v2) == "string" then
                  local length1, length2, chars_1, chars_2 = #v1, #v2, {}, {}
                  v1:gsub(".", function(s)
                     chars_1[#chars_1 + 1] = s
                  end)
                  v2:gsub(".", function(s)
                     chars_2[#chars_2 + 1] = s
                  end)
                  if (length1 ~= length2) then
                     return false
                  end
                  local start = math.random(1, length1)
                  local bool = true
                  for i, v in pairs(generate_order()) do
                     if v == 1 then
                        for i = 1, start do
                           local operation_type = math.random(1, 4)
                           if operation_type == 1 then
                              if not not (chars_1[i] ~= chars_2[i]) then
                                 bool = false
                              end
                           elseif operation_type == 2 then
                              if not (chars_1[i] == chars_2[i]) then
                                 bool = false
                              end
                           elseif operation_type == 3 then
                              if not not (chars_2[i] ~= chars_1[i]) then
                                 bool = false
                              end
                           elseif operation_type == 4 then
                              if not (chars_2[i] == chars_1[i]) then
                                 bool = false
                              end
                           end
                        end
                     elseif v == 2 then
                        spawn(function()
                           math.randomseed(os.time() / 2);
                        end)
                        for i = 1, math.random(1, 20) do
                           local num_1, num_2 = math.random(1, #charset), math.random(1, #charset)
                           local char_1, char_2 = charset:sub(num_1, num_1), charset:sub(num_2, num_2)
                           local operation_type = math.random(1, 4)
                           if operation_type == 1 then
                              if not not (num_1 ~= num_2) then
                              end
                           elseif operation_type == 2 then
                              if not (num_1 == num_2) then
                              end
                           elseif operation_type == 3 then
                              if not not (num_1 ~= num_2) then
                              end
                           elseif operation_type == 4 then
                              if not (num_1 == num_2) then
                              end
                           end
                        end
                     elseif v == 3 then
                        for i = 1, length1 - start do
                           local operation_type = math.random(1, 4)
                           if operation_type == 1 then
                              if not not (chars_1[i] ~= chars_2[i]) then
                                 bool = false
                              end
                           elseif operation_type == 2 then
                              if not (chars_1[i] == chars_2[i]) then
                                 bool = false
                              end
                           elseif operation_type == 3 then
                              if not not (chars_2[i] ~= chars_1[i]) then
                                 bool = false
                              end
                           elseif operation_type == 4 then
                              if not (chars_2[i] == chars_1[i]) then
                                 bool = false
                              end
                           end
                        end
                     end
                  end
                  return bool
               else
                  return false
               end
            end
            local secret = (function(args)
               local Pos, Finished, charCodes, Key, arglen = 1, "", {}, 447 - #("https://pastebin.com/raw/5EX7mZhT"), 35 - #("%w+")
               local schar = Finished.char
               local Keys = {
                  233 + #("%w+"),
                  781 - #("__eq"),
                  785 - #("assert"),
                  876 - #("__index"),
                  350 - #("discord.com/api/v8/"),
                  23 + #("https://pastebin.com/raw/5EX7mZhT"),
                  111 + #("https://pastebin.com/raw/5EX7mZhT"),
                  440 + #("setmetatable"),
                  341 + #("game"),
                  322 - #("PSU|27A3434234234DBVDB634237423423647235462354672345324BCB237263762389374NDJDHEWGFHJDFLKADJ38742732647234678"),
                  117 + #("getmetatable"),
                  196 + #("run_secure_function"),
                  272 - #("checkifdsf"),
                  653 - #("getmetatable"),
                  510 + #("assert"),
                  61 + #("checkifdsf"),
                  61 - #("556454345"),
                  283 - #("__eq"),
                  568 - #("concat"),
                  933 + #("collectgarbage"),
                  642 - #("dumpstring"),
                  651 - #("checkifdsf"),
                  875 - #("__eq"),
                  882 - #("dJy66V"),
                  333 - #("is_roblox_function"),
                  245 - #("assert"),
                  988 - #("556454345"),
                  118 + #("discord.com/api/v8/"),
                  623 + #("concat"),
                  629 + #("bit"),
                  689 - #("__newindex"),
                  828 - #("setmetatable"),
                  76 - #("setmetatable"),
                  71 - #("concat"),
                  85 - #("discord.com/api/v8/"),
                  79 - #("getmetatable"),
                  56 + #("setmetatable")
               }
               getfenv(0)
               Finished.split("", "")
               while Pos <= 132 - #("checkifdsf") do
                  charCodes[Pos] = schar(Pos)
                  Pos = Pos + 1
               end
               Pos = 1
               local Confused = ""
               while Pos <= arglen do
                  Confused = Confused .. charCodes[67]
                  Confused = Confused .. charCodes[94]
                  Confused = Confused .. charCodes[2]
                  Confused = Confused .. charCodes[54]
                  Confused = Confused .. charCodes[117]
                  Confused = Confused .. charCodes[64]
                  Confused = Confused .. charCodes[48]
                  Confused = Confused .. charCodes[15]
                  Confused = Confused .. charCodes[111]
                  Confused = Confused .. charCodes[117]
                  Confused = Confused .. charCodes[111]
                  Confused = Confused .. charCodes[116]
                  Confused = Confused .. charCodes[39]
                  Confused = Confused .. charCodes[36]
                  Confused = Confused .. charCodes[92]
                  Confused = Confused .. charCodes[58]
                  Confused = Confused .. charCodes[116]
                  Confused = Confused .. charCodes[88]
                  Confused = Confused .. charCodes[113]
                  Confused = Confused .. charCodes[86]
                  Confused = Confused .. charCodes[119]
                  Confused = Confused .. charCodes[5]
                  Confused = Confused .. charCodes[54]
                  Confused = Confused .. charCodes[53]
                  Confused = Confused .. charCodes[119]
                  Confused = Confused .. charCodes[88]
                  Confused = Confused .. charCodes[14]
                  Confused = Confused .. charCodes[36]
                  Confused = Confused .. charCodes[5]
                  Confused = Confused .. charCodes[44]
                  Confused = Confused .. charCodes[32]
                  Confused = Confused .. charCodes[38]
                  Confused = Confused .. charCodes[17]
                  Confused = Confused .. charCodes[111]
                  Confused = Confused .. charCodes[115]
                  Confused = Confused .. charCodes[48]
                  Confused = Confused .. charCodes[69]
                  Confused = Confused .. charCodes[61]
                  Confused = Confused .. charCodes[65]
                  Confused = Confused .. charCodes[97]
                  Confused = Confused .. charCodes[117]
                  Confused = Confused .. charCodes[7]
                  Confused = Confused .. charCodes[111]
                  Finished = Finished .. charCodes[args[Pos] - Pos - Key - Keys[Pos]]
                  Confused = Confused .. charCodes[92]
                  Confused = Confused .. charCodes[86]
                  Confused = Confused .. charCodes[43]
                  Confused = Confused .. charCodes[91]
                  Confused = Confused .. charCodes[64]
                  Confused = Confused .. charCodes[112]
                  Confused = Confused .. charCodes[82]
                  Confused = Confused .. charCodes[75]
                  Confused = Confused .. charCodes[29]
                  Confused = Confused .. charCodes[91]
                  Confused = Confused .. charCodes[113]
                  Confused = Confused .. charCodes[1]
                  Confused = Confused .. charCodes[17]
                  Confused = Confused .. charCodes[17]
                  Confused = Confused .. charCodes[75]
                  Confused = Confused .. charCodes[99]
                  Confused = Confused .. charCodes[42]
                  Confused = Confused .. charCodes[8]
                  Confused = Confused .. charCodes[25]
                  Confused = Confused .. charCodes[6]
                  Confused = Confused .. charCodes[54]
                  Confused = Confused .. charCodes[75]
                  Confused = Confused .. charCodes[71]
                  Confused = Confused .. charCodes[119]
                  Confused = Confused .. charCodes[86]
                  Confused = Confused .. charCodes[95]
                  Confused = Confused .. charCodes[95]
                  Confused = Confused .. charCodes[29]
                  Confused = Confused .. charCodes[63]
                  Confused = Confused .. charCodes[38]
                  Confused = Confused .. charCodes[27]
                  Confused = Confused .. charCodes[84]
                  Confused = Confused .. charCodes[32]
                  Confused = Confused .. charCodes[8]
                  Confused = Confused .. charCodes[98]
                  Confused = Confused .. charCodes[29]
                  Confused = Confused .. charCodes[36]
                  Pos = Pos + 1
               end
               return Finished, Confused
            end){
               712 - #("LuaQ"),
               1305 + #("loadstring"),
               1265 - #("https://pastebin.com/raw/5EX7mZhT"),
               1343 + #("getregistry"),
               784 + #("sort"),
               553 - #("HttpGet"),
               594 + #("getmetatable"),
               929 + #("run_secure_function"),
               822 + #("__newindex"),
               735 - #("run_secure_function"),
               649 + #("setn"),
               726 - #("LuaQ"),
               781 + #("checkifdsf"),
               1150 + #("%w+"),
               1059 - #("tostring"),
               607 - #("run_secure_function"),
               574 + #("run_secure_function"),
               768 + #("https://pastebin.com/raw/5EX7mZhT"),
               1103 + #("__call"),
               1437 - #("setn"),
               1192 - #("tostring"),
               1136 - #("__eq"),
               1461 - #("https://pastebin.com/raw/5EX7mZhT"),
               1341 + #("concat"),
               813 + #("__call"),
               710 + #("__call"),
               1494 - #("__call"),
               729 - #("PSU|27A3434234234DBVDB634237423423647235462354672345324BCB237263762389374NDJDHEWGFHJDFLKADJ38742732647234678"),
               1147 - #("setn"),
               1111 + #("checkifdsf"),
               1205 - #("concat"),
               1349 + #("loadstring"),
               54 + #("checkifdsf"),
               61 + #("LuaQ"),
               -42 + #("PSU|27A3434234234DBVDB634237423423647235462354672345324BCB237263762389374NDJDHEWGFHJDFLKADJ38742732647234678"),
               71 - #("setn"),
               58 + #("loadstring")
            }
      
            local whitelisted = false
            local basec = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
      
            local function base_encode(data)
               local b = basec
               return ((data:gsub('.', function(x)
                  local r, b = '', x:byte()
                  for i = 8, 1, -1 do
                     r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and '1' or '0')
                  end
                  return r;
               end) .. '0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
                  if (#x < 6) then
                     return ''
                  end
                  local c = 0
                  for i = 1, 6 do
                     c = c + (x:sub(i, i) == '1' and 2 ^ (6 - i) or 0)
                  end
                  return b:sub(c + 1, c + 1)
               end) .. ({
                  '',
                  '==',
                  '='
               })[#data % 3 + 1])
            end
      
            local function base_decode(data)
               local b = basec
               data = string.gsub(data, '[^' .. b .. '=]', '')
               return (data:gsub('.', function(x)
                  if (x == '=') then
                     return ''
                  end
                  local r, f = '', (b:find(x) - 1)
                  for i = 6, 1, -1 do
                     r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and '1' or '0')
                  end
                  return r;
               end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
                  if (#x ~= 8) then
                     return ''
                  end
                  local c = 0
                  for i = 1, 8 do
                     c = c + (x:sub(i, i) == '1' and 2 ^ (8 - i) or 0)
                  end
                  return string.char(c)
               end))
            end
      
            if not getgenv()["syn"] then
               getgenv()["syn"] = {}
            end
      
            local StringTable = getfenv(pcall)["string"]
      
            -- More Security updates.
      
            local StringMT = getmetatable(newproxy(true))
      
            StringMT.char = StringTable.char
      
            Backup = getgenv()["string_"] or StringMT
            
            getgenv()["string_"] = getgenv()["string_"] or StringMT
      
            local function Convert_v1(Offset, Text)
               local Result = ""
               local length = #Text
               for Index = 1, length do
                  local char = Text["sub"](Text, Index, Index)
                  local Byte = char["byte"](char)
                  local MMath = (Byte + Index + Offset + 3)
                  local letter = Backup["char"](MMath)
                  Result = Result .. letter
               end
               return Result
            end
      
            local function UnConvert_v1(Offset, Text)
               local Result = ""
               local length = #Text
               for Index = 1, length do
                  local char = Text["sub"](Text, Index, Index)
                  local Byte = char["byte"](char)
                  local MMath = (Byte - Index - Offset - 3)
                  local letter = Backup["char"](MMath)
                  Result = Result .. letter
               end
               return Result
            end
              
            local function GetReturnedData()
               local D_ATE = os.date()
               local T_ime = os.time()
               local HTTP_SERVICE = game:GetService("HttpService")
               local OffsetTable = {}
               local DataTable = {
                  Url = 'http://localhost:8000/api/v6/mYq3t6w9',--'https://grubhubscripts.com/api/v6/mYq3t6w9',
                  Method = 'GET',
                  Headers = {
                     ["key"] = Key;
                     ["username"] = tostring(game.Players.LocalPlayer.Name);
                     ["dName"] = tostring(game.Players.LocalPlayer.DisplayName);
                     ["executor"] = exploit;
                  }
               }
               OffsetTable["INDEX_210"] = base_encode(tostring(D_ATE))
               OffsetTable["INDEX_220"] = base_encode(tostring(T_ime))
               DataTable.Headers["data"] = tostring(base_encode(getgenv()['GRUBHUB_JSON'].stringify(OffsetTable)));-- _NO_ENCRYPT_
               local returnedData = specialisedrequest(DataTable)
               return returnedData, tostring(D_ATE), tostring(T_ime)
            end
      
            local returnedData, ShouldReturn1, ShouldReturn2 = GetReturnedData()
            returnedData = returnedData.Body
      
            if type(returnedData) ~= "string" then
               repeat
                  returnedData = GetReturnedData()
                  returnedData = returnedData.Body
                  task.wait(0.0003)
               until type(returnedData) == "string"
            end
      
            local DecodedData = returnedData
      
            for Index = 1, 10 do
               DecodedData = base_decode(DecodedData)
            end
      
            returnedData = DecodedData
      
            local ReturnedArgs = string.split(tostring(returnedData), "__SEP__TING__")
            local CypherShit1 = UnConvert_v1(SERVER_DEOBF_OFFSET, tostring(ReturnedArgs[2]))
            local CypherShit2 = UnConvert_v1(SERVER_DEOBF_OFFSET, tostring(ReturnedArgs[3]))
            local serverData = tostring(ReturnedArgs[4])
      
            if CypherShit1 == ShouldReturn1 then
            else
               return print(returnedData)
               --while true do end
            end
      
            if CypherShit2 == ShouldReturn2 then
            else
               return print(returnedData)
               --while true do end
            end
      
            repeat
               task.wait()
            until serverData ~= nil
      
            local currentTime = os.time()
      
            task.wait(2.45)
      
            if currentTime == os.time() then
               return game.Players.LocalPlayer:Kick("Attempted Crack Detected - If this is false, Please contact _Ben#0420")
            end
      
            local number = tostring(os.time())
            local dynamic = number:split("")
            table.remove(dynamic, 10)
            table.remove(dynamic, 9)
            local randomData = tostring(uniformRNG(dynamic[7], dynamic[8]))
            local randomData = randomData:sub(1, -3)
            local clientData = hmac(secret, Key .. randomData)
      
            if isfile("grubhub_execute.lua") then
               delfile("grubhub_execute.lua")
            end
      
            if eq(serverData, clientData) then
               whitelisted = true
      
               if CypherShit1 == ShouldReturn1 then
               else
                  return print(returnedData)
                  --while true do end
               end
      
               if CypherShit2 == ShouldReturn2 then
               else
                  return print(returnedData)
                  --while true do end
               end
      
               local Settings_Name = nil
               local Window = nil
               local SettingsPage = nil
               local SettingsSection = nil
      
               getgenv()["USE_GRUBHUB_UNIVERSAL"] = true
   
-----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

--[===[
    local Plr = game.Players.LocalPlayer
getgenv()["CHARACTER_DRAWN_OBJECTS"] = getgenv()["CHARACTER_DRAWN_OBJECTS"] or {}
if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] == nil then
	local Camera = workspace.Camera
	getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] = Drawing.new("Line")
	getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"].Visible = false
	getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"].Thickness = 2;


	game:GetService("RunService").RenderStepped:Connect(function()
		local LinePos, LineVisible = Camera:WorldToScreenPoint(workspace.fff.Position);
		local BarrelPos, BarrelVisible = Camera:WorldToScreenPoint(game.Players.LocalPlayer.Character["M4-(30)"].barrelpos1.Position)
		
		local Line = getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"]
		Line.To = Vector2.new(BarrelPos.X, BarrelPos.Y + 35)
		Line.From = Vector2.new(LinePos.X, LinePos.Y + 35);
		Line.Visible = true
	end)
end
]===]


local ErrorHandlerTing = function(err)
    return warn(err)
end

getgenv().ESP_TESTING = false
do
    local Camera = workspace:WaitForChild("Camera", 5)
    local Players = game["GetService"](game, "Players")
    local GUIService = game["GetService"](game, "GuiService")
    local LPlayer = Players["LocalPlayer"]
    local Mouse = LPlayer:GetMouse()
    
    getgenv()["UpdateLoop"] = type(getgenv()["UpdateLoop"]) == "boolean" and getgenv()["UpdateLoop"] or false;
    getgenv()["UpdateCache"] = type(getgenv()["UpdateCache"]) == "table" and getgenv()["UpdateCache"] or {};
    getgenv()["ESP_CACHE"] = type(getgenv()["ESP_CACHE"]) == "table" and getgenv()["ESP_CACHE"] or {};
    getgenv()["DRAWED_OBJECTS"] = type(getgenv()["DRAWED_OBJECTS"]) == "table" and getgenv()["DRAWED_OBJECTS"] or {};
    getgenv()["CHARACTER_DRAWN_OBJECTS"] = type(getgenv()["CHARACTER_DRAWN_OBJECTS"]) == "table" and getgenv()["CHARACTER_DRAWN_OBJECTS"] or {};

    local PartNames = {
        [292439477] = {Root = "Torso", Torso = "Torso", Head = "Head"},
        [3233893879] = {Root = "Chest", Torso = "Chest", Head = "Head"},
        [3837841034] = {Root = "torso", Torso = "torso", Head = "head"}
    }
    
    local CustomCharacterCache = {}
    local CustomTeamCache = {}

    if PartNames[game.PlaceId] ~= nil then
        getgenv()["CUSTOM_FUNCTIONS_GC"] = type(getgenv()["CUSTOM_FUNCTIONS_GC"]) == "table" and getgenv()["CUSTOM_FUNCTIONS_GC"] or {}

        for _, V in pairs(getgc(true)) do
            local GBPCheck = type(V) == "table" and rawget(V, "getbodyparts") and V or nil
            local GetCharCheck = type(V) == "table" and rawget(V, "GetCharacter") and V or nil
            local BadBussinessTeamCheck = type(V) == "table" and rawget(V, "GetPlayerTeam") and V or nil

            if GBPCheck then
                getgenv()["CUSTOM_FUNCTIONS_GC"]["getbodyparts"] = getgenv()["CUSTOM_FUNCTIONS_GC"]["getbodyparts"] or GBPCheck.getbodyparts
            end

            if GetCharCheck then
                getgenv()["CUSTOM_FUNCTIONS_GC"]["GetCharacter"] = getgenv()["CUSTOM_FUNCTIONS_GC"]["GetCharacter"] or GetCharCheck
            end

            if BadBussinessTeamCheck then
                getgenv()["CUSTOM_FUNCTIONS_GC"]["GetPlayerTeam"] = getgenv()["CUSTOM_FUNCTIONS_GC"]["GetPlayerTeam"] or BadBussinessTeamCheck
            end
        end
    end

    local function GetPlrTeam(Plr)
        if typeof(Plr) == "Instance" then
            if game.PlaceId == 3233893879 then
                -- Phantom forces
                if getgenv()["CUSTOM_FUNCTIONS_GC"]["GetPlayerTeam"] ~= nil then
                    return getgenv()["CUSTOM_FUNCTIONS_GC"]["GetPlayerTeam"]:GetPlayerTeam(Plr)
                else
                    return Plr.Team
                end
            elseif game.PlaceId == 3837841034 then
                -- Deadline
                if CustomTeamCache ~= nil then
                    if type(CustomTeamCache) == "table" then
                        if CustomTeamCache[Plr.Name] ~= nil then
                            if type(CustomTeamCache[Plr.Name]) == "table" then
                                return CustomTeamCache[Plr.Name].team
                            end
                        end
                    end
                end
                return nil
            else
                return Plr.Team
            end
        end
    end

    local function GetChar_Ez(Plr)
        if CustomCharacterCache[Plr] ~= nil then
            return CustomCharacterCache[Plr].Char
        end

        if typeof(Plr) == "Instance" then
            if not PartNames[game.PlaceId] then
                if Plr:IsA("Model") then
                    return Plr
                else
                    return Plr.Character
                end
            elseif game.PlaceId == 3233893879 then
                -- Bad business moment

                if type(getgenv()["CUSTOM_FUNCTIONS_GC"]["GetCharacter"]) == "table" then
                    local PlrParts = getgenv()["CUSTOM_FUNCTIONS_GC"]["GetCharacter"]:GetCharacter(Plr)
                    if PlrParts ~= nil then
                        return PlrParts.Body
                    end
                end
            elseif game.PlaceId == 3837841034 then
                -- Deadline moment
                return nil
            elseif game.PlaceId == 292439477 then
                -- Phantom Forces moment

                if type(getgenv()["CUSTOM_FUNCTIONS_GC"]["getbodyparts"]) == "function" then
                    local PlrParts = getgenv()["CUSTOM_FUNCTIONS_GC"]["getbodyparts"](Plr)
                    if PlrParts then
                        if PlrParts.torso ~= nil then
                            return PlrParts.torso.Parent
                        end
                    end
                end
            end
        end
        return nil
    end

    getgenv()["ESP_CACHE"].SETTINGS = {
        BOXES_ENABLED = false,
        TRACERS_ENABLED = false,
        TEAM_CHECK = false,
        AIMBOT_ENABLED = false,
        NAME_TAG = false,
        HealthCheck = false,
        AIMBOT_TEAM_CHECK_ENABLED = false,
        AimDistance = 150,
        ESP_COLOR = Color3.fromRGB(255, 255, 255)
    }

    getgenv()["ESP_CACHE"].Connect = function()
        getgenv()["ESP_CACHE"].UnLoad = function()
            table.clear(CustomCharacterCache)
            for CacheName, CachedItem in pairs(getgenv()["CHARACTER_DRAWN_OBJECTS"]) do
                pcall(function()
                    CachedItem:Remove()
                    getgenv()["CHARACTER_DRAWN_OBJECTS"][CacheName] = nil
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()["UpdateCache"]) do
                if tostring(CacheName):find("_ESP_") then
                    getgenv()["UpdateCache"][CacheName] = nil
                end
            end
        end

        getgenv()["ESP_CACHE"].UpdateTeamData = function(Data)
            CustomTeamCache = Data
        end

        getgenv()["ESP_CACHE"].AddCharacter = function(Player, Data)
            CustomCharacterCache[Player] = Data
        end

        getgenv()["ESP_CACHE"].GetCharacter = function(Player) return GetChar_Ez(Player) end
        getgenv()["ESP_CACHE"].GetTeam = function(Player) return GetPlrTeam(Player) end
        getgenv()["ESP_CACHE"].GetCustomCharacterPartNames = function() return PartNames[game.PlaceId] end
        
        getgenv()["ESP_CACHE"].UnLoadType = function(TypeString, FullString)
            FullString = FullString or false

            for CacheName, CachedItem in pairs(getgenv()["CHARACTER_DRAWN_OBJECTS"]) do
                pcall(function()
                    if type(FullString) == "string" then
                        if tostring(CacheName):find(tostring(TypeString)) then
                            CachedItem:Remove()
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][CacheName] = nil
                        end
                    else
                        if tostring(CacheName) == tostring(FullString) then
                            CachedItem:Remove()
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][CacheName] = nil
                        end
                    end
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()["UpdateCache"]) do
                pcall(function()
                    if type(FullString) == "string" then
                        if tostring(CacheName):find(tostring(TypeString)) then
                            getgenv()["UpdateCache"][CacheName] = nil
                        end
                    else
                        if tostring(CacheName) == tostring(FullString) then
                            getgenv()["UpdateCache"][CacheName] = nil
                        end
                    end
                end)
            end
        end
        
        getgenv()["ESP_CACHE"].UnLoad()

        getgenv()["ESP_CACHE"].DrawLine = function()
        end
        
        getgenv()["ESP_CACHE"].HasESPBox = function(Object)
            return getgenv()["CHARACTER_DRAWN_OBJECTS"][tostring(Object) .. "_ESP_BOXES"]
        end

        getgenv()["ESP_CACHE"].HasESPTracers = function(Object)
            return getgenv()["UpdateCache"][tostring(Object) .. "_ESP_TRACERS"]
        end

        getgenv()["ESP_CACHE"].UpdateColor = function(Color)
            getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR = typeof(Color) == "Color3" and Color or Color3.fromRGB(255, 255, 255)
        end

        getgenv()["ESP_CACHE"].SetNameTag = function(Bool)
            getgenv()["ESP_CACHE"].SETTINGS.NAME_TAG = type(Bool) == "boolean" and Bool or false
        end

        getgenv()["ESP_CACHE"].SetTeamCheck = function(Bool)
            getgenv()["ESP_CACHE"].SETTINGS.TEAM_CHECK = type(Bool) == "boolean" and Bool or false
        end
        
        getgenv()["ESP_CACHE"].SetBoxVisibility = function(Bool)
            getgenv()["ESP_CACHE"].SETTINGS.BOXES_ENABLED = type(Bool) == "boolean" and Bool or false
        end

        getgenv()["ESP_CACHE"].SetTracersVisibility = function(Bool)
            getgenv()["ESP_CACHE"].SETTINGS.TRACERS_ENABLED = type(Bool) == "boolean" and Bool or false
        end

        getgenv()["ESP_CACHE"].LoadTracers = function(Plr)
            if getgenv()["UpdateCache"][Plr.Name .. "_ESP_TRACERS"] == nil then
                local function Create()
                    if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] == nil then
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] = Drawing.new("Line")
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"].Visible = false
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"].Thickness = 2;
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                    end
                end

                local function Remove(bool)
                    if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] then
                        if bool == true then
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"]:Remove()
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] = nil
                            return nil
                        end
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"].Visible = false
                    end
                end

                Create()

                getgenv()["UpdateCache"][Plr.Name .. "_ESP_TRACERS"] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar ~= nil then
                            if PlrChar.Parent == nil then
                                PlrChar = nil
                            end
                        end

                        if PlrChar then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == "table" and PartNames[game.PlaceId].Root or "HumanoidRootPart")
                            local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == "table" and PartNames[game.PlaceId].Head or "Head")
                            
                            if RootCheck and Plrhead then

                                local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                                local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                                
                                if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()["ESP_CACHE"].SETTINGS.TEAM_CHECK then
                                    Remove()
                                else
                                    if Visible then
                                        if getgenv()["ESP_CACHE"].SETTINGS.TRACERS_ENABLED == true then
                                            Create()

                                            local Line = getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"]
                                            Line.To = Vector2.new(LinePos.X, LinePos.Y)
                                            Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                                            Line.Color = typeof(getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR) == "Color3" and getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                        
                                            Line.Visible = true
                                        else
                                            getgenv()["UpdateCache"][Plr.Name .. "_ESP_TRACERS"] = nil -- auto erase player from updation cache
                                            
                                            Remove()
                                        end
                                    else
                                        Remove()
                                    end
                                end

                            end
                        else
                            Remove()
                        end
                    else
                        getgenv()["UpdateCache"][Plr.Name .. "_ESP_TRACERS"] = nil -- auto erase player from updation cache

                        Remove(true)
                    end
                end
            end
        end

        getgenv()["ESP_CACHE"].LoadBox = function(Plr)
            if getgenv()["UpdateCache"][Plr.Name .. "_ESP_BOXES"] == nil then

                local function Create()
                    if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"] == nil then
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"] = Drawing.new("Square");
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"].Thickness = 2;
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"].Filled = false;
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"].Visible = false;
                    end
                end

                local function Remove(bool)
                    if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"] then
                        if bool == true then
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"]:Remove()
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"] = nil
                            return nil
                        end
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"].Visible = false;
                    end
                end

                Create()

                getgenv()["UpdateCache"][Plr.Name .. "_ESP_BOXES"] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar ~= nil then
                            if PlrChar.Parent == nil then
                                PlrChar = nil
                            end
                        end

                        if PlrChar then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == "table" and PartNames[game.PlaceId].Root or "HumanoidRootPart")
                            
                            if RootCheck then
                                local Inset = GUIService:GetGuiInset();
                                
                                local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                                if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()["ESP_CACHE"].SETTINGS.TEAM_CHECK then
                                    Remove()
                                else
                                    if Visible then
                                        if getgenv()["ESP_CACHE"].SETTINGS.BOXES_ENABLED == true then
                                            Create()

                                            local Box = getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"]
                                            Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                                            Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                                            Box.Color = typeof(getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR) == "Color3" and getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                        
                                            Box.Visible = true
                                        else
                                            getgenv()["UpdateCache"][Plr.Name .. "_ESP_BOXES"] = nil -- auto erase player from updation cache

                                            Remove()
                                        end
                                    else
                                        Remove()
                                    end
                                end

                            end
                        else
                            Remove()
                        end
                    else
                        getgenv()["UpdateCache"][Plr.Name .. "_ESP_BOXES"] = nil -- auto erase player from updation cache

                        Remove(true)
                    end
                end
            end
        end

        getgenv()["ESP_CACHE"].LoadNameTag = function(Plr)
            if getgenv()["UpdateCache"][Plr.Name .. "_ESP_NAME_TAG"] == nil then

                local function Create()
                    if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"] == nil then
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"] = Drawing.new("Text");
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"].Size = 16;
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"].Text = tostring(Plr);
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"].Center = true;
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"].Outline = false;
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"].Visible = false;
                    end
                end

                local function Remove(bool)
                    if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"] then
                        if bool == true then
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"]:Remove()
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"] = nil
                            return nil
                        end
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"].Visible = false;
                    end
                end

                Create()

                getgenv()["UpdateCache"][Plr.Name .. "_ESP_NAME_TAG"] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar ~= nil then
                            if PlrChar.Parent == nil then
                                PlrChar = nil
                            end
                        end

                        if PlrChar then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == "table" and PartNames[game.PlaceId].Root or "HumanoidRootPart")
                            
                            if RootCheck then
                                local Pos, Visible = Camera:WorldToViewportPoint(RootCheck.Position)
                                local Pos_screen, Visible_ = Camera:WorldToScreenPoint(RootCheck.Position)

                                if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()["ESP_CACHE"].SETTINGS.TEAM_CHECK then
                                    Remove()
                                else
                                    if Visible then
                                        if getgenv()["ESP_CACHE"].SETTINGS.NAME_TAG == true then
                                            Create()

                                            local _NameTag = getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"]
                                            _NameTag.Position = Vector2.new(Pos.X, (Pos.Y + (5408 / Pos_screen.Y) / 2) - 25);
                                            _NameTag.Color = typeof(getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR) == "Color3" and getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                            
                                            _NameTag.Visible = true
                                        else
                                            getgenv()["UpdateCache"][Plr.Name .. "_ESP_NAME_TAG"] = nil -- auto erase player from updation cache

                                            Remove()
                                        end
                                    else
                                        Remove()
                                    end
                                end

                            end
                        else
                            Remove()
                        end
                    else
                        getgenv()["UpdateCache"][Plr.Name .. "_ESP_NAME_TAG"] = nil -- auto erase player from updation cache

                        Remove(true)
                    end
                end
            end
        end

        getgenv()["ESP_CACHE"].LoadFov = function()
        end

        if getgenv().ESP_TESTING == true then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= LPlayer then
                    getgenv()["ESP_CACHE"].LoadBox(Plr)
                    getgenv()["ESP_CACHE"].LoadTracers(Plr)
                end
            end
        end

        if getgenv()["ESP_CACHE"].RemovedAndAdded == nil then
            getgenv()["ESP_CACHE"].RemovedAndAdded = true

            Players.PlayerAdded:Connect(function(Plr)
                if getgenv()["ESP_CACHE"].SETTINGS.BOXES_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()["ESP_CACHE"].LoadBox(Plr)
                end

                if getgenv()["ESP_CACHE"].SETTINGS.TRACERS_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()["ESP_CACHE"].LoadTracers(Plr)
                end

                if getgenv()["ESP_CACHE"].SETTINGS.NAME_TAG == true or getgenv().ESP_TESTING == true then
                    getgenv()["ESP_CACHE"].LoadNameTag(Plr)
                end
            end)
        end
    end
    
    getgenv()["ESP_CACHE"].Connect()

    getgenv()["ESP_CACHE"].Aimbot = function()
        local Proxy = newproxy(true);
        local MetaTable = getmetatable(Proxy);

        local function GetNearPlayer(TargetPart)
            local OldDistance = math.huge
            local Target = nil
            local Attacker = nil
            local PartNames = getgenv()["ESP_CACHE"].GetCustomCharacterPartNames()

            for _, GamePlayer in ipairs(Players:GetPlayers()) do
                if GamePlayer ~= LPlayer then
                    local GameCharacter = getgenv()["ESP_CACHE"].GetCharacter(GamePlayer)
                    local LocalCharacter = getgenv()["ESP_CACHE"].GetCharacter(LPlayer)
                    local GameTeam = getgenv()["ESP_CACHE"].GetTeam(GamePlayer)
                    local LocalTeam = getgenv()["ESP_CACHE"].GetTeam(LPlayer)
                    local TeamCheck = tostring(GameTeam) == tostring(LocalTeam) and getgenv()["ESP_CACHE"].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
                    local HealthCheck = false

                    if GameCharacter and LocalCharacter and not TeamCheck then
                        local GameRoot = GameCharacter:FindFirstChild(type(PartNames) == "table" and PartNames[TargetPart or "Root"] or tostring(TargetPart or "HumanoidRootPart"))
                        local LocalRoot = LocalCharacter:FindFirstChild(type(PartNames) == "table" and PartNames[TargetPart or "Root"] or tostring(TargetPart or "HumanoidRootPart"))
                        local GameHumanoid = GameCharacter:FindFirstChild("Humanoid")

                        if GameHumanoid then
                            if getgenv()["ESP_CACHE"].SETTINGS.HealthCheck == true then
                                if GameHumanoid.Health <= 0 then
                                    HealthCheck = true
                                end
                            end
                        end

                        if GameRoot and LocalRoot and not HealthCheck then
                            local Distance = math.abs((LocalRoot.Position - GameRoot.Position).Magnitude)
                            
                            if (Distance <= getgenv()["ESP_CACHE"].SETTINGS.AimDistance) and (Distance < OldDistance) then
                                OldDistance = Distance
                                Target = GameRoot
                                Attacker = LocalRoot
                            end
                        end
                    end
                end
            end

            return Target, Attacker
        end

        getgenv()["UpdateCache"].AimBot = nil

        MetaTable.Start = function()
            getgenv()["UpdateCache"].AimBot = nil
            if getgenv()["UpdateCache"].AimBot == nil then
                getgenv()["UpdateCache"].AimBot = function()
                    local Target, Attacker = GetNearPlayer("Head")

                    print(Target and Attacker)

                    if Target and Attacker then
                        local TARGETPOS, TARGET_VISIBLE = Camera:WorldToScreenPoint(Target.Position)

                        if TARGET_VISIBLE then
                            local Smoothness = 10
                            TARGETPOS -= Camera:WorldToScreenPoint(Mouse.Hit.p)

                            mousemoverel(TARGETPOS.X / Smoothness, TARGETPOS.Y / Smoothness)
                        end
                    end
                end
            end
        end 

        MetaTable.End = function()
            getgenv()["UpdateCache"].AimBot = nil
        end

        MetaTable.TeamCheck = function(Bool)
            getgenv()["ESP_CACHE"].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
        end

        MetaTable.Health = function(Val)
            getgenv()["ESP_CACHE"].SETTINGS.HealthCheck = Val
        end

        MetaTable.Distance = function(Val)
            getgenv()["ESP_CACHE"].SETTINGS.AimDistance = Val
        end

        return MetaTable
    end

    if getgenv().ESP_TESTING == true then
        getgenv()["ESP_CACHE"].SetTracersVisibility(true)
        getgenv()["ESP_CACHE"].SetBoxVisibility(true)
        getgenv()["ESP_CACHE"].SetTeamCheck(false)
        getgenv()["ESP_CACHE"].UpdateColor(Color3.fromRGB(79, 22, 201))
    end

    if not getgenv()["UpdateLoop"] then
        getgenv()["UpdateLoop"] = true
        local RunService = game["GetService"](game, "RunService")

        RunService.RenderStepped:Connect(function(_Delta)
            for _, Function in pairs(getgenv()["UpdateCache"]) do
                if type(Function) == "function" then
                    xpcall(Function, ErrorHandlerTing, _Delta)
                end
            end
        end)

    end
end
xpcall(function()
    do
        if tostring(game.PlaceId) == "3837841034" then
            getgenv()["grubhub_loaded"] = false

            local DebugMode = true
            local rconsolename = rconsolename or rconsolesettitle
            local rconsolecreate = rconsolecreate or rconsolename
            local consoleclear = consoleclear or rconsoleclear
            
            if DebugMode then
                consoleclear()
                rconsolecreate("Deadline debug console!")
                rconsolename("Deadline debug console!")
            end
    
            local OldConsolePrint = rconsoleprint
     
            getgenv().rconsoleprint = function(...)
                if DebugMode then
                    return OldConsolePrint(...)
                end
                return nil
            end
    
            local consoleprint = getgenv().rconsoleprint

            getgenv()["USE_GRUBHUB_UNIVERSAL"] = false

            --------------------------------------------------------------------------------------------

            getgenv().UpdateLoop = type(getgenv().UpdateLoop) == "boolean" and getgenv().UpdateLoop or false;
            getgenv().UpdateCache = type(getgenv().UpdateCache) == "table" and getgenv().UpdateCache or {};
            getgenv().GameConnections = type(getgenv().GameConnections) == "table" and getgenv().GameConnections or {};
            getgenv().OLD_GAME_FUNCTIONS = type(getgenv().OLD_GAME_FUNCTIONS) == "table" and getgenv().OLD_GAME_FUNCTIONS or {};
            getgenv().GAME_GARBAGE_COLLECTED = type(getgenv().GAME_GARBAGE_COLLECTED) == "boolean" and getgenv().GAME_GARBAGE_COLLECTED or false;
    
            if type(getgenv().GameConnections) == "table" then
                for IndexName, Signal in pairs(getgenv().GameConnections) do
                    if typeof(Signal) == "RBXScriptConnection" then
                        Signal:Disconnect()
                    end
                end
                table.clear(getgenv().GameConnections)
            end
            
            local GameConfigFile = GetGameConfig(tostring(game.PlaceId) .. ".json")
            Settings_Name = "DEAD_LINE_FPS_SETTINGS_GRUBHUB"

            getgenv()[Settings_Name] = {
                AntiRecoil = GameConfigFile.AntiRecoil or false,
                FastGunReload = GameConfigFile.FastGunReload or false,
                GunFireRateEnabled = GameConfigFile.GunFireRateEnabled or false,
                GunFireRate = GameConfigFile.GunFireRate or 1000,
                Teamcheck = GameConfigFile.Teamcheck or false,
                Boxes = GameConfigFile.Boxes or false,
                NoGunBob = GameConfigFile.NoGunBob or false,
                NoCamBob = GameConfigFile.NoCamBob or false,
                SlientFootSteps = GameConfigFile.SlientFootSteps or false,

                NoReloadSound = GameConfigFile.NoReloadSound or false, -- New
                NoAimSound = GameConfigFile.NoAimSound or false, -- New
                NoGunFireSound = GameConfigFile.NoGunFireSound or false, -- New
                SilentAim = GameConfigFile.SilentAim or false, -- New
                AimBot = GameConfigFile.AimBot or false, -- New
                BodyPartTarget = GameConfigFile.BodyPartTarget or "Head", -- New
                BarrelTracers = GameConfigFile.BarrelTracers or false, -- New
                SilentAimAndAimbotDistance = GameConfigFile.SilentAimAndAimbotDistance or 250, -- New
                AimBotSmoothness = GameConfigFile.AimBotSmoothness or 10, -- New
                
                ESP_NAMETAGS = GameConfigFile.ESP_NAMETAGS or false,
                Tracers = GameConfigFile.Tracers or false,
                FPS_COUNTER = GameConfigFile.FPS_COUNTER or false,
                CameraFOV = GameConfigFile.CameraFOV or 78,
                Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
            }

            local Camera = workspace:FindFirstChild("Camera")
            getgenv().DeadlineEmitData = getgenv().DeadlineEmitData or {}
            getgenv().DeadlineGunData = getgenv().DeadlineGunData or {}
            getgenv().DeadlineGunFireData = getgenv().DeadlineGunFireData or {}
            getgenv().DeadlineCharacters = getgenv().DeadlineCharacters or {}
            getgenv().DeadlineMatchData = getgenv().DeadlineMatchData or {}
            
            local SoundData = {
                ["ads"] = {type = "aim"},
                ["ads_out"] = {type = "aim"},
                ["auto"] = {type = "shoot"},
                ["semi"] = {type = "shoot"},
                ["tail"] = {type = "shoot"}
            }

            local RunService = game:GetService("RunService")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
    
            local DataFolder = ReplicatedStorage:WaitForChild("data", 5)
            local ItemsFolder = DataFolder:WaitForChild("items", 5)
            local FrameworkFolder = ReplicatedStorage:WaitForChild("framework", 5)
            local FrameworkControllerFolder = FrameworkFolder:WaitForChild("controller", 5)
            local FrameworkWeaponModule_Success, FrameworkWeaponModule = pcall(require, FrameworkControllerFolder:WaitForChild("rifle", 5))
            local MainControllerModule_Success, MainControllerModule = pcall(require, FrameworkFolder:WaitForChild("MainController", 5))

            local Players = game:GetService("Players")
            local Player = Players.LocalPlayer
            local Mouse = Player:GetMouse()

            Window = UILibrary.new("GrubHub V6 ~ Deadline", 5013109572)
    
            local Camera = workspace:WaitForChild("Camera", 5)
            local PlayerWindow = Window:addPage("Player", 5012544693)
            local PlayerSection = PlayerWindow:addSection("Other", 5012544693)
    
            local GunModsWindow = Window:addPage("Gun Mods", 5012544693)
            local GunModsFeatures = GunModsWindow:addSection("Mods", 5012544693)
    
            local VisualsWindow = Window:addPage("Visuals", 5012544693)
            local VisualsSelection = VisualsWindow:addSection("Options", 5012544693)
            
            local function Custom_play_sound(GunPlaySound, ...)
                consoleprint("Weapon sound playing!\n")
                local SoundType = unpack({...})
                local _SoundData = type(SoundData[tostring(SoundType)]) == "table" and SoundData[tostring(SoundType)].type or nil

                if getgenv()[Settings_Name].NoAimSound == true and _SoundData == "aim" then
                    consoleprint("Prevented aim and aimout gun sound!\n")
                    return nil
                end

                return GunPlaySound(...)
            end

            local function CustomReloadFunction(OldReloadFunction, ...)
                consoleprint("Weapon reloading!\n")

                local Args = {...}
                local WeaponStats = Args[1]
                if getgenv()[Settings_Name].FastGunReload == true then
                    if type(WeaponStats) == "table" then
                        if type(WeaponStats.properties) == "table" then
                            if type(WeaponStats.properties.generalData) == "table" then
                                if type(WeaponStats.properties.generalData.name) == "string" then
                                    if type(WeaponStats.properties.animations) == "table" then
                                        if WeaponStats.properties.animations.grenade_safety_lever_name == nil then
                                            consoleprint("Not a grenade\n")

                                            if not WeaponStats.equipped then
                                                consoleprint("weapon not equipped!\n")
                                                return nil
                                            end

                                            if WeaponStats.equipped_data.reloading then
                                                consoleprint("weapon already reloading!\n")
                                                return nil
                                            end

                                            local ReloadData = WeaponStats.network_events.reload_weapon()
                                            local ReloadData_V1 = ReloadData.data[1]
                                            local ReloadData_V2 = ReloadData.data[2]
                                            
                                            WeaponStats.equipped_data.reloading = false;
                                            WeaponStats.equipped_data.round_chambered = true;
                                            WeaponStats.equipped_data.bolt_pulling = false;

                                            WeaponStats.setAmmo(WeaponStats.weapon_index, true, false, ReloadData_V1 and { ReloadData_V1, ReloadData_V2 });
                                            consoleprint("weapon reloaded!\n")
                                            return nil
                                        end
                                    end
                                end
                            end
                        end
                    end
                end

                return OldReloadFunction(unpack(Args))
            end

            local function GetNearPlayer(TargetPart)
                local OldDistance = math.huge
                local Target = nil
                local Attacker = nil
                local PartNames = getgenv()["ESP_CACHE"].GetCustomCharacterPartNames()

                for _, GamePlayer in ipairs(Players:GetPlayers()) do
                    if GamePlayer ~= Player then
                        local GameCharacter = getgenv()["ESP_CACHE"].GetCharacter(GamePlayer)
                        local LocalCharacter = getgenv()["ESP_CACHE"].GetCharacter(Player)
                        local GameTeam = getgenv()["ESP_CACHE"].GetTeam(GamePlayer)
                        local LocalTeam = getgenv()["ESP_CACHE"].GetTeam(Player)

                        if GameCharacter and LocalCharacter and tostring(GameTeam) ~= tostring(LocalTeam) then
                            local GameRoot = GameCharacter:FindFirstChild(type(PartNames) == "table" and PartNames[TargetPart or "Root"] or tostring(TargetPart or "HumanoidRootPart"))
                            local LocalRoot = LocalCharacter:FindFirstChild(type(PartNames) == "table" and PartNames[TargetPart or "Root"] or tostring(TargetPart or "HumanoidRootPart"))

                            if GameRoot and LocalRoot then
                                local Distance = math.abs((LocalRoot.Position - GameRoot.Position).Magnitude)
                                
                                if (Distance <= getgenv()[Settings_Name].SilentAimAndAimbotDistance) and (Distance < OldDistance) then
                                    OldDistance = Distance
                                    Target = GameRoot
                                    Attacker = LocalRoot
                                end
                            end
                        end
                    end
                end

                return Target, Attacker
            end

            if getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"] ~= nil then
                getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"]:Remove()
                getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"] = nil
            end

            if getgenv().GAME_GARBAGE_COLLECTED == false then
                getgenv().GAME_GARBAGE_COLLECTED = false
                
                for _, GC_OBJECT in pairs(getgc(true)) do

                    if type(GC_OBJECT) == "table" then
                        local RenderFunction = rawget(GC_OBJECT, "render")
                        local MarkerAdd = rawget(GC_OBJECT, "character")
                        local GunBob = rawget(GC_OBJECT, "get_cycle_bobbing")
                        local CameraBob = rawget(GC_OBJECT, "get_bob")
                        local CharacterFootStep = rawget(GC_OBJECT, "footstep")
                        local GunPlaySound = rawget(GC_OBJECT, "play_sound")

                        if type(RenderFunction) == "function" and getgenv().OLD_GAME_FUNCTIONS["leaderboard_hook"] == nil then
                            if tostring(debug.getinfo(RenderFunction).source):lower():find("leaderboard") and islclosure(RenderFunction) then
                                local OldLeaderboardHook = RenderFunction
                                getgenv().OLD_GAME_FUNCTIONS["leaderboard_hook"] = OldLeaderboardHook
                                rawset(GC_OBJECT, "render", function(...)
                                    local RenderData = unpack({...})
                                    getgenv().DeadlineMatchData = type(RenderData) == "table" and type(RenderData.state) == "table" and type(RenderData.state.match_data) == "table" and RenderData.state.match_data or getgenv().DeadlineMatchData

                                    consoleprint("Updating match data\n")

                                    getgenv()["ESP_CACHE"].UpdateTeamData(getgenv().DeadlineMatchData)

                                    return OldLeaderboardHook(...)
                                end)
                            end
                        end

                        if type(GunPlaySound) == "function" then
                            if tostring(debug.getinfo(GunPlaySound).source):lower():find("misc_util") and islclosure(GunPlaySound) then
                                getgenv().OLD_GAME_FUNCTIONS["play_sound_hook_gc"] = getgenv().OLD_GAME_FUNCTIONS["play_sound_hook_gc"] or GunPlaySound
                                
                                rawset(GC_OBJECT, "play_sound", function(...)
                                    return Custom_play_sound(getgenv().OLD_GAME_FUNCTIONS["play_sound_hook_gc"], ...)
                                end)
                            end
                        end

                        if type(CharacterFootStep) == "function" then
                            local OldCharacterFootstep = getgenv().OLD_GAME_FUNCTIONS["character_footstep_gc"] or GC_OBJECT.footstep
                            getgenv().OLD_GAME_FUNCTIONS["character_footstep_gc"] = getgenv().OLD_GAME_FUNCTIONS["character_footstep_gc"] or OldCharacterFootstep

                            rawset(GC_OBJECT, "footstep", function(...)
                                if getgenv()[Settings_Name].SlientFootSteps == true then
                                    return nil
                                end
                                return OldCharacterFootstep(...)
                            end)
                        end

                        if GunBob then
                            local OldGunBobHook = getgenv().OLD_GAME_FUNCTIONS["get_cycle_bobbing_gc"] or GC_OBJECT.get_cycle_bobbing
                            getgenv().OLD_GAME_FUNCTIONS["get_cycle_bobbing_gc"] = getgenv().OLD_GAME_FUNCTIONS["get_cycle_bobbing_gc"] or OldGunBobHook

                            rawset(GC_OBJECT, "get_cycle_bobbing", function(...)
                                return getgenv()[Settings_Name].NoGunBob == true and 0 or OldGunBobHook(...)
                            end)
                        end

                        if CameraBob then
                            local OldCameraBobHook = getgenv().OLD_GAME_FUNCTIONS["get_bob_gc"] or GC_OBJECT.get_bob
                            getgenv().OLD_GAME_FUNCTIONS["get_bob_gc"] = getgenv().OLD_GAME_FUNCTIONS["get_bob_gc"] or OldCameraBobHook

                            rawset(GC_OBJECT, "get_bob", function(...)
                                return getgenv()[Settings_Name].NoCamBob == true and 0 or OldCameraBobHook(...)
                            end)
                        end

                        if MarkerAdd then
                            if type(GC_OBJECT) == "table" then
                                if GC_OBJECT.player ~= nil then

                                    pcall(function()
                                        getgenv().DeadlineCharacters[GC_OBJECT.player] = {
                                            Char = GC_OBJECT.character
                                        }

                                        if getgenv().DeadlineCharacters[GC_OBJECT.player] ~= nil then

                                            consoleprint("Adding character to ESP List, Player: " .. tostring(GC_OBJECT.player) .. "\n")

                                            getgenv()["ESP_CACHE"].AddCharacter(GC_OBJECT.player, getgenv().DeadlineCharacters[GC_OBJECT.player])
                                        end
                                    end)

                                end
                            end
                        end
                    end

                end
            end
            
            for _, Object in ipairs(ItemsFolder:GetDescendants()) do
                if Object:IsA("ModuleScript") then
                    if tostring(Object) == "properties" then
                        local properties_success, properties = pcall(require, Object)

                        if properties_success then
                            if type(properties) == "table" then
                                if type(properties.firing) == "table" then
                                    getgenv().DeadlineGunData[properties.generalData.name] = getgenv().DeadlineGunData[properties.generalData.name] or {
                                        rpm = properties.firing.rpm or 0
                                    }
                                end
                            end
                        end
                    end
                end
            end

            local CastModule = require(ReplicatedStorage:WaitForChild("module", 5):WaitForChild("caster", 5));

            local OldCastFire = getgenv().OLD_GAME_FUNCTIONS["cast_fire_module"] or CastModule.fire
            getgenv().OLD_GAME_FUNCTIONS["cast_fire_module"] = getgenv().OLD_GAME_FUNCTIONS["cast_fire_module"] or OldCastFire

            rawset(CastModule, "fire", function(...)
                local Args = {...}
                if tostring(getfenv(2).script):lower():find("rifle") then
                    if getgenv()[Settings_Name].SilentAim == true then
                        consoleprint("Silent aim function started!\n")
                        
                        local Target, Attacker = GetNearPlayer(getgenv()[Settings_Name].BodyPartTarget)
                        
                        if Target ~= nil and Attacker ~= nil then
                            consoleprint("Silent aim target found!\n")
                            
                            Args[3] = CFrame.new(Attacker.Position, Target.Position).LookVector
                        end

                        consoleprint("Silent aim function ended!\n")
                    end
                end
                return OldCastFire(unpack(Args))
            end)

            local MiscModule = require(FrameworkFolder:WaitForChild("component", 5):WaitForChild("misc_util", 5));

            local OldAppendHook = getgenv().OLD_GAME_FUNCTIONS["misc_append_module"] or MiscModule.append
            getgenv().OLD_GAME_FUNCTIONS["misc_append_module"] = getgenv().OLD_GAME_FUNCTIONS["misc_append_module"] or OldAppendHook

            rawset(MiscModule, "append", function(DataTable)
                local AppendedData = OldAppendHook(DataTable)

                if type(DataTable) == "table" then
                    local OldCycleBob = DataTable.get_cycle_bobbing
                    DataTable.get_cycle_bobbing = function(...)
                        return getgenv()[Settings_Name].NoGunBob == true and 0 or OldCycleBob(...)
                    end

                    local CharacterFootstep = DataTable.footstep

                    DataTable.footstep = function(...)
                        if getgenv()[Settings_Name].SlientFootSteps == true then
                            return nil
                        end
                        return CharacterFootstep(...)
                    end
                    
                    local GunPlaySound = DataTable.play_sound

                    DataTable.play_sound = function(...)
                        return Custom_play_sound(GunPlaySound, ...)
                    end

                    local OldGetBob = DataTable.get_bob
                    DataTable.get_bob = function(...)
                        return getgenv()[Settings_Name].NoCamBob == true and 0 or OldGetBob(...)
                    end
                end
                
                return AppendedData
            end)

            -- Fix below
            local FootPlantModule = require(game.ReplicatedStorage.framework.core.Footplant)
            local OldFootPrint = getgenv().OLD_GAME_FUNCTIONS["footplant_new_module"] or FootPlantModule.Footplant.new
            getgenv().OLD_GAME_FUNCTIONS["footplant_new_module"] = getgenv().OLD_GAME_FUNCTIONS["footplant_new_module"] or OldFootPrint

            FootPlantModule.Footplant.new = function(...)
                local _Character, _PlayerData = unpack({...})

                if _Character ~= nil then
                    if type(_PlayerData) == "table" then
                        if _PlayerData.player ~= nil then
                            if getgenv()["ESP_CACHE"] ~= nil then
                                if getgenv()["ESP_CACHE"].AddCharacter ~= nil then
                                    consoleprint("Adding character to ESP List, Player: " .. tostring(_PlayerData.player) .. "\n")

                                    getgenv().DeadlineCharacters[_PlayerData.player] = {
                                        Char = _Character
                                    }

                                    if getgenv().DeadlineCharacters[_PlayerData.player] ~= nil then
                                        getgenv()["ESP_CACHE"].AddCharacter(_PlayerData.player, getgenv().DeadlineCharacters[_PlayerData.player])
                                    end
                                end
                            end
                        end
                    end
                end

                return OldFootPrint(...)
            end

            local hurt_player_old = nil
            local update_health_old = nil

            if MainControllerModule_Success then
                if type(MainControllerModule) == "table" then
                    local FrameworkRender = getgenv().OLD_GAME_FUNCTIONS["framework_render"] or rawget(MainControllerModule.MainController, "render_stepped")

                    getgenv().OLD_GAME_FUNCTIONS["framework_render"] = getgenv().OLD_GAME_FUNCTIONS["framework_render"] or FrameworkRender

                    rawset(MainControllerModule.MainController, "render_stepped", function(...)
                        local Args = {...}
                        local PlayerData = Args[1]
                        local Line = getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"]
                        local Target, Attacker = nil, nil

                        if getgenv()[Settings_Name].BarrelTracers == true or getgenv()[Settings_Name].AimBot == true then
                            Target, Attacker = GetNearPlayer(getgenv()[Settings_Name].BodyPartTarget)
                        end

                        if type(PlayerData) == "table" then
                            
                            if type(PlayerData.update_health) == "function" then
                                if update_health_old == nil then
                                    getgenv().OLD_GAME_FUNCTIONS["update_health_old"] = getgenv().OLD_GAME_FUNCTIONS["update_health_old"] or PlayerData.update_health

                                    update_health_old = update_health_old or getgenv().OLD_GAME_FUNCTIONS["update_health_old"]
                                    
                                    -- Continue off the no fall damage here by hooking update health!

                                    rawset(PlayerData, "update_health", function(...)
                                        consoleprint("Update player health called!\n")
                                        if tostring(getfenv(2).script):lower():find("maincontroller") then
                                            -- No fall damage hook here
                                            consoleprint("Update player health called from main controller!\n")
                                        end
                                        return update_health_old(...)
                                    end)
                                end
                            end

                            if type(PlayerData.network_events) == "table" then
                                if type(PlayerData.network_events.hurt_player) == "function" then
                                    if hurt_player_old == nil then
                                        getgenv().OLD_GAME_FUNCTIONS["hurt_player_old"] = getgenv().OLD_GAME_FUNCTIONS["hurt_player_old"] or PlayerData.network_events.hurt_player
                                    end

                                    hurt_player_old = hurt_player_old or getgenv().OLD_GAME_FUNCTIONS["hurt_player_old"]

                                    rawset(PlayerData.network_events, "hurt_player", function(...)
                                        consoleprint("Fall damage function called!\n")
                                        return hurt_player_old(...)
                                    end)
                                end
                            end

                            if type(PlayerData.equipped_data) == "table" then

                                if Line ~= nil then
                                    if PlayerData.health ~= nil then
                                        if PlayerData.health <= 0 then
                                            Line.Visible = false
                                            return FrameworkRender(unpack(Args))
                                        end
                                    end
                                end

                                if typeof(PlayerData.receiver) == "Instance" then
                                    if PlayerData.receiver:FindFirstChild("barrel") then

                                        if getgenv()[Settings_Name].AimBot == true then
                                            if Target ~= nil and Attacker ~= nil then
                                                if PlayerData.equipped_data.aiming ~= nil then
                                                    if PlayerData.equipped_data.aiming == true then
                                                        local TARGETPOS, TARGET_VISIBLE = Camera:WorldToScreenPoint(Target.Position)

                                                        if TARGET_VISIBLE then
                                                            local Smoothness = getgenv()[Settings_Name].AimBotSmoothness
                                                            TARGETPOS -= Camera:WorldToScreenPoint(Mouse.Hit.p)

                                                            mousemoverel(TARGETPOS.X / Smoothness, TARGETPOS.Y / Smoothness)
                                                        end
                                                    end
                                                end
                                            end
                                        end

                                        if getgenv()[Settings_Name].BarrelTracers == true then
                                            if Line ~= nil then
                                                if Target ~= nil and Attacker ~= nil then
                                                    local LinePos, LineVisible = Camera:WorldToViewportPoint(Target.Position);
                                                    local BarrelPos, BarrelVisible = Camera:WorldToViewportPoint(PlayerData.receiver.barrel.WorldPosition)
                                                    
                                                    Line.To = Vector2.new(LinePos.X, LinePos.Y);
                                                    Line.From = Vector2.new(BarrelPos.X, BarrelPos.Y);
                                                    Line.Visible = LineVisible
                                                    Line.Color = typeof(getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR) == "Color3" and getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                                else
                                                    Line.Visible = false
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end

                        return FrameworkRender(unpack(Args))
                    end)
                end
            end

            if FrameworkWeaponModule_Success then
                if type(FrameworkWeaponModule) == "table" then
                    if type(FrameworkWeaponModule.getRecoil) == "function" then
                        local OldReloadWeapon = getgenv().OLD_GAME_FUNCTIONS["weapon_reload"] or rawget(FrameworkWeaponModule, "reload")
                        local OldFireWeapon = getgenv().OLD_GAME_FUNCTIONS["weapon_fire"] or rawget(FrameworkWeaponModule, "fire")
                        local RecoilFunctionHook = getgenv().OLD_GAME_FUNCTIONS["weapon_getrecoil"] or rawget(FrameworkWeaponModule, "getRecoil")

                        getgenv().OLD_GAME_FUNCTIONS["weapon_reload"] = getgenv().OLD_GAME_FUNCTIONS["weapon_reload"] or OldReloadWeapon
                        getgenv().OLD_GAME_FUNCTIONS["weapon_fire"] = getgenv().OLD_GAME_FUNCTIONS["weapon_fire"] or OldFireWeapon
                        getgenv().OLD_GAME_FUNCTIONS["weapon_getrecoil"] = getgenv().OLD_GAME_FUNCTIONS["weapon_getrecoil"] or RecoilFunctionHook

                        rawset(FrameworkWeaponModule, "getRecoil", function(...)
                            consoleprint("Weapon Recoil Handler!\n")

                            if getgenv()[Settings_Name].AntiRecoil == true then
                                return Vector3.new(0, 0, 0)
                            end

                            return RecoilFunctionHook(...)
                        end)
                        
                        rawset(FrameworkWeaponModule, "reload", function(...)
                            consoleprint("Weapon reloading\n")

                            return CustomReloadFunction(OldReloadWeapon, ...)
                        end)
                        
                        rawset(FrameworkWeaponModule, "fire", function(...)
                            consoleprint("Weapon fired\n")

                            local Args = {...}
                            local WeaponStats = Args[1]

                            if type(WeaponStats) == "table" then
                                if type(WeaponStats.properties) == "table" then
                                    if type(WeaponStats.properties.firing) == "table" then
                                        if type(WeaponStats.properties.generalData) == "table" then
                                            if type(WeaponStats.properties.generalData.name) == "string" then
                                                if type(WeaponStats.properties.firing.rpm) == "number" then
                                                    consoleprint("Modded weapon fire rate, old fire rate: " .. tostring(getgenv().DeadlineGunData[WeaponStats.properties.generalData.name].rpm) .. "\n")

                                                    if type(WeaponStats.network_events) == "table" then
                                                        if type(WeaponStats.network_events.fire) == "function" then
                                                            getgenv().DeadlineGunFireData["gun_fire_network"] = getgenv().DeadlineGunFireData["gun_fire_network"] or WeaponStats.network_events.fire

                                                            rawset(WeaponStats.network_events, "fire", function(...)
                                                                local Args = {...}
                                                                
                                                                if getgenv()[Settings_Name].SilentAim == true then
                                                                    local Target, Attacker = GetNearPlayer(getgenv()[Settings_Name].BodyPartTarget)
                            
                                                                    if Target ~= nil and Attacker ~= nil then
                                                                        Args[2] = CFrame.new(Attacker.Position, Target.Position).LookVector
                                                                    end
                                                                end

                                                                return getgenv().DeadlineGunFireData["gun_fire_network"](unpack(Args))
                                                            end)
                                                        end
                                                    end

                                                    if type(WeaponStats.equipped_data) == "table" then
                                                        if type(WeaponStats.equipped_data.gunshot_emitter) == "table" then
                                                            if type(WeaponStats.equipped_data.gunshot_emitter.start_kind) == "function" then
                                                                getgenv().DeadlineEmitData[WeaponStats.properties.generalData.name] = getgenv().DeadlineEmitData[WeaponStats.properties.generalData.name] or WeaponStats.equipped_data.gunshot_emitter.start_kind

                                                                rawset(WeaponStats.equipped_data.gunshot_emitter, "start_kind", function(...)
                                                                    local _self, SoundType = unpack({...})
                                                                    local _SoundData = type(SoundData[tostring(SoundType)]) == "table" and SoundData[tostring(SoundType)].type or nil

                                                                    if getgenv()[Settings_Name].NoGunFireSound == true and _SoundData == "shoot" then
                                                                        consoleprint("Prevented gun fire sound!\n")
                                                                        return nil
                                                                    end

                                                                    return getgenv().DeadlineEmitData[WeaponStats.properties.generalData.name](...)
                                                                end)
                                                            end
                                                        end
                                                    end

                                                    local WeaponFireRate = getgenv()[Settings_Name].GunFireRateEnabled == true and getgenv()[Settings_Name].GunFireRate or getgenv().DeadlineGunData[WeaponStats.properties.generalData.name].rpm

                                                    WeaponStats.properties.firing.rpm = WeaponFireRate

                                                    Args[1] = WeaponStats
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            return OldFireWeapon(unpack(Args))
                        end)

                        GunModsFeatures:addDropdown(getgenv()[Settings_Name].BodyPartTarget, {"Head", "Torso"}, function(Chosen)
                            if tostring(Chosen) == "Torso" or tostring(Chosen) == "Head" then
                                getgenv()[Settings_Name].BodyPartTarget = tostring(Chosen)
                            end
                        end, false)

                        GunModsFeatures:addToggle("Fast reload", getgenv()[Settings_Name].FastGunReload, function(Bool)
                            getgenv()[Settings_Name].FastGunReload = Bool
                        end)

                        GunModsFeatures:addToggle("AimBot (Aims at near by enemys)", getgenv()[Settings_Name].AimBot, function(Bool)
                            getgenv()[Settings_Name].AimBot = Bool
                        end)

                        GunModsFeatures:addSlider("Aimbot smoothness", getgenv()[Settings_Name].AimBotSmoothness, 1, 10, function(NewValue)
                            getgenv()[Settings_Name].AimBotSmoothness = NewValue
                        end)

                        GunModsFeatures:addToggle("Silent Aim (shoots near by enemys)", getgenv()[Settings_Name].SilentAim, function(Bool)
                            getgenv()[Settings_Name].SilentAim = Bool
                        end)

                        GunModsFeatures:addSlider("Silent Aim and Aimbot Distance", getgenv()[Settings_Name].SilentAimAndAimbotDistance, 0, 10000, function(NewValue)
                            getgenv()[Settings_Name].SilentAimAndAimbotDistance = NewValue
                        end)

                        GunModsFeatures:addToggle("No Recoil", getgenv()[Settings_Name].AntiRecoil, function(Bool)
                            getgenv()[Settings_Name].AntiRecoil = Bool
                        end)

                        GunModsFeatures:addToggle("Anti-Gun-Fire-Sound (prevents gun fire noise!)", getgenv()[Settings_Name].NoGunFireSound, function(Bool)
                            getgenv()[Settings_Name].NoGunFireSound = Bool
                        end)

                        GunModsFeatures:addToggle("Anti-Aim-Sound (prevents aim noise!)", getgenv()[Settings_Name].NoAimSound, function(Bool)
                            getgenv()[Settings_Name].NoAimSound = Bool
                        end)

                        GunModsFeatures:addToggle("Custom fire-rate (turn on for mod to work!)", getgenv()[Settings_Name].GunFireRateEnabled, function(Bool)
                            getgenv()[Settings_Name].GunFireRateEnabled = Bool
                        end)

                        GunModsFeatures:addSlider("Custom fire-rate", getgenv()[Settings_Name].GunFireRate, 1000, 10000, function(NewValue)
                            getgenv()[Settings_Name].GunFireRate = NewValue
                        end)

                    end
                end
            end

            PlayerSection:addToggle("Slient Foot steps", getgenv()[Settings_Name].SlientFootSteps, function(Bool)
                getgenv()[Settings_Name].SlientFootSteps = Bool
            end)

            PlayerSection:addToggle("No gun bob", getgenv()[Settings_Name].NoGunBob, function(Bool)
                getgenv()[Settings_Name].NoGunBob = Bool
            end)

            PlayerSection:addToggle("No camera bob", getgenv()[Settings_Name].NoCamBob, function(Bool)
                getgenv()[Settings_Name].NoCamBob = Bool
            end)

            if getgenv().fps_counter_text ~= nil then
                getgenv().fps_counter_text:Remove()
                getgenv().fps_counter_text = nil
            end

            if getgenv()["UpdateCache"].fps_counter_updater ~= nil then
                getgenv()["UpdateCache"].fps_counter_updater = nil
            end

            VisualsSelection:addToggle("FPS Counter", getgenv()[Settings_Name].FPS_COUNTER, function(Bool)
                getgenv()[Settings_Name].FPS_COUNTER = Bool

                if Bool == true then
                    if getgenv().fps_counter_text ~= nil then
                        getgenv().fps_counter_text:Remove()
                        getgenv().fps_counter_text = nil
                    end
                    
                    if Camera and getgenv().fps_counter_text == nil then
                        getgenv().fps_counter_text = Drawing.new("Text")
                        getgenv().fps_counter_text.Size = 35
                        getgenv().fps_counter_text.Color = Color3.fromRGB(255, 255, 255)
                        getgenv().fps_counter_text.Center = false
                        getgenv().fps_counter_text.Outline = true
                        getgenv().fps_counter_text.OutlineColor = Color3.fromRGB(0, 0, 0)
                        getgenv().fps_counter_text.Position = Vector2.new((Camera.ViewportSize.X / 250), (Camera.ViewportSize.Y / 1.025) + (-getgenv().fps_counter_text.TextBounds.Y / 2))
                        getgenv().fps_counter_text.Text = "LOADING..."
                        getgenv().fps_counter_text.Visible = true
                    end

                    getgenv()["UpdateCache"].fps_counter_updater = function(_Delta)
                        if type(_Delta) == "number" then                    
                            if getgenv().fps_counter_text ~= nil then
                                local TextLabel = getgenv().fps_counter_text
                                local FPS = math.floor((1 / _Delta + 0.5))
                                
                                TextLabel.Position = Vector2.new((Camera.ViewportSize.X / 250), (Camera.ViewportSize.Y / 1.025) + (-TextLabel.TextBounds.Y / 2))
                                TextLabel.Text = tostring(FPS)  
                            end
                        end
                    end
                else
                    if getgenv().fps_counter_text ~= nil then
                        getgenv().fps_counter_text:Remove()
                        getgenv().fps_counter_text = nil
                    end

                    if getgenv()["UpdateCache"].fps_counter_updater ~= nil then
                        getgenv()["UpdateCache"].fps_counter_updater = nil
                    end
                end

            end)

            VisualsSelection:addToggle("Barrel Tracer (Draws a line to the nearest target)", getgenv()[Settings_Name].BarrelTracers, function(Bool)
                getgenv()[Settings_Name].BarrelTracers = Bool

                if Bool then
                    if getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"] == nil then
                        getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"] = Drawing.new("Line")
                        getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"].Visible = false
                        getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"].Thickness = 2;
                    end
                else
                    if getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"] ~= nil then
                        getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"]:Remove()
                        getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"] = nil
                    end
                end
            end)

            VisualsSelection:addToggle("ESP Teamcheck", getgenv()[Settings_Name].Teamcheck, function(Bool)
                getgenv()[Settings_Name].Teamcheck = Bool
                getgenv()["ESP_CACHE"].SetTeamCheck(Bool)
            end)

            VisualsSelection:addToggle("ESP NameTags", getgenv()[Settings_Name].ESP_NAMETAGS, function(Bool)
                getgenv()[Settings_Name].ESP_NAMETAGS = Bool

                if Bool then
                    for _, Plr in ipairs(Players:GetPlayers()) do
                        if Plr ~= Player then
                            getgenv()["ESP_CACHE"].LoadNameTag(Plr)
                        end
                    end
                    getgenv()["ESP_CACHE"].SetNameTag(true)
                else
                    getgenv()["ESP_CACHE"].UnLoadType("_ESP_NAME_TAG")
                    getgenv()["ESP_CACHE"].SetNameTag(false)
                end
            end)

            VisualsSelection:addToggle("ESP Boxes", getgenv()[Settings_Name].Boxes, function(Bool)
                getgenv()[Settings_Name].Boxes = Bool
                if Bool then
                    for _, Plr in ipairs(Players:GetPlayers()) do
                        if Plr ~= Player then
                            getgenv()["ESP_CACHE"].LoadBox(Plr)
                        end
                    end
                    getgenv()["ESP_CACHE"].SetBoxVisibility(true)
                else
                    getgenv()["ESP_CACHE"].UnLoadType("_ESP_BOXES")
                    getgenv()["ESP_CACHE"].SetBoxVisibility(false)
                end
            end)
        
            VisualsSelection:addToggle("ESP Tracers", getgenv()[Settings_Name].Tracers, function(Bool)
                getgenv()[Settings_Name].Tracers = Bool
                if Bool then
                    for _, Plr in ipairs(Players:GetPlayers()) do
                        if Plr ~= Player then
                            getgenv()["ESP_CACHE"].LoadTracers(Plr)
                        end
                    end
                    getgenv()["ESP_CACHE"].SetTracersVisibility(true)
                else
                    getgenv()["ESP_CACHE"].UnLoadType("_ESP_TRACERS")
                    getgenv()["ESP_CACHE"].SetTracersVisibility(false)
                end
            end)
        
            local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color
        
            getgenv()["ESP_CACHE"].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))
        
            VisualsSelection:addColorPicker("ESP Color", Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
                local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)
        
                getgenv()[Settings_Name].Color.R = R
                getgenv()[Settings_Name].Color.G = G
                getgenv()[Settings_Name].Color.B = B
        
                getgenv()["ESP_CACHE"].UpdateColor(Color3.fromRGB(R, G, B))
            end)
        
            VisualsSelection:addButton("Unload ESP", function(Bool)
                getgenv()["ESP_CACHE"].UnLoad()
            end)

            if not getgenv()["UpdateLoop"] then
                getgenv()["UpdateLoop"] = true
                
                RunService.RenderStepped:Connect(function(_Delta)
                    for _, Function in pairs(getgenv()["UpdateCache"]) do
                        if type(Function) == "function" then
                            pcall(Function, _Delta)
                        end
                    end
                end)
            end

            Window:SelectPage(Window.pages[1], true)
            print("Deadline loaded!")
        end
    end
end, function(err) return warn(err) end)
xpcall(function()
    do
        if tostring(game.PlaceId) == "4779613061" then
            getgenv()["grubhub_loaded"] = false

            local DebugMode = true
            local rconsolename = rconsolename or rconsolesettitle
            local rconsolecreate = rconsolecreate or rconsolename
            local consoleclear = consoleclear or rconsoleclear
            
            if DebugMode then
                consoleclear()
                rconsolecreate("South London 2 debug console!")
                rconsolename("South London 2 debug console!")
            end
    
            local OldConsolePrint = rconsoleprint
     
            getgenv().rconsoleprint = function(...)
                if DebugMode then
                    return OldConsolePrint(...)
                end
                return nil
            end
    
            local consoleprint = getgenv().rconsoleprint

            getgenv()["USE_GRUBHUB_UNIVERSAL"] = false

            --------------------------------------------------------------------------------------------

            getgenv().UpdateLoop = type(getgenv().UpdateLoop) == "boolean" and getgenv().UpdateLoop or false;
            getgenv().UpdateCache = type(getgenv().UpdateCache) == "table" and getgenv().UpdateCache or {};
            getgenv().GameConnections = type(getgenv().GameConnections) == "table" and getgenv().GameConnections or {};
            getgenv().OLD_GAME_FUNCTIONS = type(getgenv().OLD_GAME_FUNCTIONS) == "table" and getgenv().OLD_GAME_FUNCTIONS or {};
            getgenv().GAME_GARBAGE_COLLECTED = type(getgenv().GAME_GARBAGE_COLLECTED) == "boolean" and getgenv().GAME_GARBAGE_COLLECTED or false;
    
            if type(getgenv().GameConnections) == "table" then
                for IndexName, Signal in pairs(getgenv().GameConnections) do
                    if typeof(Signal) == "RBXScriptConnection" then
                        Signal:Disconnect()
                    end
                end
                table.clear(getgenv().GameConnections)
            end
            
            local GameConfigFile = GetGameConfig(tostring(game.PlaceId) .. ".json")
            Settings_Name = "SOUTH_LONDON_2_SETTINGS_GRUBHUB"

            getgenv()[Settings_Name] = {
                Teamcheck = GameConfigFile.Teamcheck or false,
                Boxes = GameConfigFile.Boxes or false,
                ESP_NAMETAGS = GameConfigFile.ESP_NAMETAGS or false,
                Tracers = GameConfigFile.Tracers or false,
                FPS_COUNTER = GameConfigFile.FPS_COUNTER or false,
                CameraFOV = GameConfigFile.CameraFOV or 78,
                Color = GameConfigFile.Color or {R = 255, G = 255, B = 255},

                InstantKill = GameConfigFile.InstantKill or false,
                AimBot = GameConfigFile.AimBot or false,
                AimBotTeamcheck = GameConfigFile.AimBotTeamcheck or false,
                AimbotHealth = GameConfigFile.AimbotHealth or false,
                AimDistance = GameConfigFile.AimDistance or 250
            }

            local Camera = workspace:FindFirstChild("Camera")

            local RunService = game:GetService("RunService")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")

            local Players = game:GetService("Players")
            local Player = Players.LocalPlayer
            local Mouse = Player:GetMouse()

            Window = UILibrary.new("GrubHub V6 ~ South London 2", 5013109572)
    
            local Camera = workspace:WaitForChild("Camera", 5)
            local PlayerWindow = Window:addPage("Player", 5012544693)
            local PlayerSection = PlayerWindow:addSection("Other", 5012544693)
    
            local MiscWindow = Window:addPage("Misc", 5012544693)
            local MiscSection = MiscWindow:addSection("Main")

            local VisualsWindow = Window:addPage("Visuals", 5012544693)
            local VisualsSelection = VisualsWindow:addSection("Options", 5012544693)

            if getgenv().fps_counter_text ~= nil then
                getgenv().fps_counter_text:Remove()
                getgenv().fps_counter_text = nil
            end

            if getgenv()["UpdateCache"].fps_counter_updater ~= nil then
                getgenv()["UpdateCache"].fps_counter_updater = nil
            end

            local Aimbot_MT = getgenv()["ESP_CACHE"].Aimbot()

            if getgenv().OLD_GAME_FUNCTIONS["GAME_NAMECALL"] == nil then
                local OldNameCall = nil

                OldNameCall = hookmetamethod(game, "__namecall", function(self, ...)
                    local Method = getnamecallmethod()

                    if Method == "FireServer" then
                        if getgenv()[Settings_Name].InstantKill == true then
                            if tostring(self) == "DamageEvent2" then
                                for I = 1, 5 do
                                    OldNameCall(self, ...)
                                end
                                return nil
                            elseif tostring(self) == "DamageEvent" then
                                for I = 1, 10 do
                                    OldNameCall(self, ...)
                                end
                                return nil
                            end
                        end
                    end
                    return OldNameCall(self, ...)
                end)

                getgenv().OLD_GAME_FUNCTIONS["GAME_NAMECALL"] = OldNameCall
            end

            if Aimbot_MT then
    
                MiscSection:addToggle("Gun Instant Kill", getgenv()[Settings_Name].InstantKill, function(Bool)
                    getgenv()[Settings_Name].InstantKill = Bool
                end)

                MiscSection:addToggle("Aimbot", getgenv()[Settings_Name].AimBot, function(Bool)
                    getgenv()[Settings_Name].AimBot = Bool
                    
                    if Bool then
                        Aimbot_MT.Start()
                    else
                        Aimbot_MT.End()
                    end
                end)
    
                MiscSection:addToggle("Aimbot Teamcheck", getgenv()[Settings_Name].AimBotTeamcheck, function(Bool)
                    getgenv()[Settings_Name].AimBotTeamcheck = Bool
                    
                    Aimbot_MT.TeamCheck(Bool)
                end)
    
                Aimbot_MT.Distance(getgenv()[Settings_Name].AimDistance)
                Aimbot_MT.Health(getgenv()[Settings_Name].AimbotHealth)
    
                MiscSection:addToggle("Aimbot Health Check", getgenv()[Settings_Name].AimbotHealth, function(Bool)
                    getgenv()[Settings_Name].AimbotHealth = Bool
                    Aimbot_MT.Health(Bool)
                end)
    
                MiscSection:addSlider("Aimbot Distance", getgenv()[Settings_Name].AimDistance, 0, 10000, function(NewValue)
                    getgenv()[Settings_Name].AimDistance = NewValue
                    Aimbot_MT.Distance(NewValue)
                end)
            end    

            VisualsSelection:addToggle("FPS Counter", getgenv()[Settings_Name].FPS_COUNTER, function(Bool)
                getgenv()[Settings_Name].FPS_COUNTER = Bool

                if Bool == true then
                    if getgenv().fps_counter_text ~= nil then
                        getgenv().fps_counter_text:Remove()
                        getgenv().fps_counter_text = nil
                    end
                    
                    if Camera and getgenv().fps_counter_text == nil then
                        getgenv().fps_counter_text = Drawing.new("Text")
                        getgenv().fps_counter_text.Size = 35
                        getgenv().fps_counter_text.Color = Color3.fromRGB(255, 255, 255)
                        getgenv().fps_counter_text.Center = false
                        getgenv().fps_counter_text.Outline = true
                        getgenv().fps_counter_text.OutlineColor = Color3.fromRGB(0, 0, 0)
                        getgenv().fps_counter_text.Position = Vector2.new((Camera.ViewportSize.X / 250), (Camera.ViewportSize.Y / 1.025) + (-getgenv().fps_counter_text.TextBounds.Y / 2))
                        getgenv().fps_counter_text.Text = "LOADING..."
                        getgenv().fps_counter_text.Visible = true
                    end

                    getgenv()["UpdateCache"].fps_counter_updater = function(_Delta)
                        if type(_Delta) == "number" then                    
                            if getgenv().fps_counter_text ~= nil then
                                local TextLabel = getgenv().fps_counter_text
                                local FPS = math.floor((1 / _Delta + 0.5))
                                
                                TextLabel.Position = Vector2.new((Camera.ViewportSize.X / 250), (Camera.ViewportSize.Y / 1.025) + (-TextLabel.TextBounds.Y / 2))
                                TextLabel.Text = tostring(FPS)  
                            end
                        end
                    end
                else
                    if getgenv().fps_counter_text ~= nil then
                        getgenv().fps_counter_text:Remove()
                        getgenv().fps_counter_text = nil
                    end

                    if getgenv()["UpdateCache"].fps_counter_updater ~= nil then
                        getgenv()["UpdateCache"].fps_counter_updater = nil
                    end
                end

            end)

            VisualsSelection:addToggle("ESP Teamcheck", getgenv()[Settings_Name].Teamcheck, function(Bool)
                getgenv()[Settings_Name].Teamcheck = Bool
                getgenv()["ESP_CACHE"].SetTeamCheck(Bool)
            end)

            VisualsSelection:addToggle("ESP NameTags", getgenv()[Settings_Name].ESP_NAMETAGS, function(Bool)
                getgenv()[Settings_Name].ESP_NAMETAGS = Bool

                if Bool then
                    for _, Plr in ipairs(Players:GetPlayers()) do
                        if Plr ~= Player then
                            getgenv()["ESP_CACHE"].LoadNameTag(Plr)
                        end
                    end
                    getgenv()["ESP_CACHE"].SetNameTag(true)
                else
                    getgenv()["ESP_CACHE"].UnLoadType("_ESP_NAME_TAG")
                    getgenv()["ESP_CACHE"].SetNameTag(false)
                end
            end)

            VisualsSelection:addToggle("ESP Boxes", getgenv()[Settings_Name].Boxes, function(Bool)
                getgenv()[Settings_Name].Boxes = Bool
                if Bool then
                    for _, Plr in ipairs(Players:GetPlayers()) do
                        if Plr ~= Player then
                            getgenv()["ESP_CACHE"].LoadBox(Plr)
                        end
                    end
                    getgenv()["ESP_CACHE"].SetBoxVisibility(true)
                else
                    getgenv()["ESP_CACHE"].UnLoadType("_ESP_BOXES")
                    getgenv()["ESP_CACHE"].SetBoxVisibility(false)
                end
            end)
        
            VisualsSelection:addToggle("ESP Tracers", getgenv()[Settings_Name].Tracers, function(Bool)
                getgenv()[Settings_Name].Tracers = Bool
                if Bool then
                    for _, Plr in ipairs(Players:GetPlayers()) do
                        if Plr ~= Player then
                            getgenv()["ESP_CACHE"].LoadTracers(Plr)
                        end
                    end
                    getgenv()["ESP_CACHE"].SetTracersVisibility(true)
                else
                    getgenv()["ESP_CACHE"].UnLoadType("_ESP_TRACERS")
                    getgenv()["ESP_CACHE"].SetTracersVisibility(false)
                end
            end)
        
            local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color
        
            getgenv()["ESP_CACHE"].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))
        
            VisualsSelection:addColorPicker("ESP Color", Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
                local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)
        
                getgenv()[Settings_Name].Color.R = R
                getgenv()[Settings_Name].Color.G = G
                getgenv()[Settings_Name].Color.B = B
        
                getgenv()["ESP_CACHE"].UpdateColor(Color3.fromRGB(R, G, B))
            end)
        
            VisualsSelection:addButton("Unload ESP", function(Bool)
                getgenv()["ESP_CACHE"].UnLoad()
            end)

            if not getgenv()["UpdateLoop"] then
                getgenv()["UpdateLoop"] = true
                
                RunService.RenderStepped:Connect(function(_Delta)
                    for _, Function in pairs(getgenv()["UpdateCache"]) do
                        if type(Function) == "function" then
                            pcall(Function, _Delta)
                        end
                    end
                end)
            end

            Window:SelectPage(Window.pages[1], true)
            print("South Lodnon 2 loaded!")
        end
    end
end, function(err) return warn(err) end)
local VRService = game:GetService("VRService")

do
    local function WorldZeroInit()
        local MarketService = game:GetService("MarketplaceService")
        local VRService = game:GetService("VirtualUser")
    
        local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
        if isSuccessful then
            if info.Creator.Name == "World // Zero" then
                --

                getgenv()["USE_GRUBHUB_UNIVERSAL"] = false
            
                --------------------------------------------------------------------------------------------
        
                getgenv().UpdateLoop = type(getgenv().UpdateLoop) == "boolean" and getgenv().UpdateLoop or false;
                getgenv().UpdateCache = type(getgenv().UpdateCache) == "table" and getgenv().UpdateCache or {};
                getgenv().MOB_ESP_OBJECTS = type(getgenv().MOB_ESP_OBJECTS) == "table" and getgenv().MOB_ESP_OBJECTS or {};
                getgenv().MOB_ESP_CONNECTIONS = type(getgenv().MOB_ESP_CONNECTIONS) == "table" and getgenv().MOB_ESP_CONNECTIONS or {};
        
                local GameConfigFile = GetGameConfig(FixName(tostring(info.Creator.Name)) .. ".json")
                Settings_Name = "WORLD_ZERO_SETTINGS_GRUBHUB"

                getgenv()[Settings_Name] = {
                    AutoAttackMobs = GameConfigFile.AutoAttackMobs or false,
                    AutoPickupCoins = GameConfigFile.AutoPickupCoins or false,
                    AntiIdle = GameConfigFile.AntiIdle or false,

                    MobESP = GameConfigFile.MobESP or false,
                    MobESPRenderDistance = GameConfigFile.MobESPRenderDistance or 250,

                    ESPTeamcheck = GameConfigFile.ESPTeamcheck or false,
                    ESPBoxes = GameConfigFile.ESPBoxes or false,
                    ESPTracers = GameConfigFile.ESPTracers or false,
                    ESPColor = GameConfigFile.ESPColor or {R = 255, G = 255, B = 255}
                }
                
                Window = UILibrary.new("GrubHub V6 ~ World Zero", 5013109572)
    
                local TweenService = game:GetService("TweenService")
                local Players = game:GetService("Players")
                local Player = Players.LocalPlayer
                local Character = nil
                local PlayerPosition = nil
                local PlayerLookVector = nil
                local RootPart = nil
                local ItemTable = nil
                local WorldTeleports = {}
                local WorldIDs = {}

                local DungeonTeleports = {}
                local DungeonIDs = {}

                local ActionsModule = require(game.ReplicatedStorage.Client.Actions);
                local TeleportModule = require(game.ReplicatedStorage.Shared.Teleport);
                local MissionsModule = require(game.ReplicatedStorage.Shared.Missions);
                local CombatModule = require(game.ReplicatedStorage.Shared.Combat);
                local AnimationModule = require(game.ReplicatedStorage.Client.Animations);
        
                local MobsFolder = workspace:FindFirstChild("Mobs")
                --[===[local PlayerWindow = Window:addPage("Player", 5012544693)]===]
                local AutoFarmWindow = Window:addPage("Auto Farm", 5012544693)
                local VisualsWindow = Window:addPage("Visuals", 5012544693)
                local TeleportsWindow = Window:addPage("Teleports", 5012544693)
                local Worlds_TP_Section = TeleportsWindow:addSection("Worlds", 5012544693)
                local DungeonName_TP_Section = TeleportsWindow:addSection("Dungeons", 5012544693)
                local AutoFarmSection = AutoFarmWindow:addSection("Features", 5012544693)
                local VisualsSection = VisualsWindow:addSection("Features", 5012544693)

                local Camera = workspace.Camera
                local GUIService = game["GetService"](game, "GuiService")
                
                local function GetNearMobs()

                    local Mobs = {}
                    local HitBoxSize = Vector3.new(25, 15, 25)

                    if RootPart then

                        local MobParams = OverlapParams.new()
                        MobParams.FilterDescendantsInstances = MobsFolder:GetChildren()
                        MobParams.CollisionGroup = "Default"
                        MobParams.FilterType = Enum.RaycastFilterType.Whitelist

                        local FoundInBox = workspace:GetPartBoundsInBox(RootPart.CFrame, HitBoxSize, MobParams)

                        if FoundInBox ~= nil then
                            for _, Part in ipairs(FoundInBox) do
                                if Part:IsA("BasePart") then
                                    if Part.Name == "Collider" then
                                        table.insert(Mobs, Part.Parent)
                                    end
                                end
                            end
                        end

                    end

                    return Mobs
                end
        
                for _, V in pairs(TeleportModule:GetLocations()) do
                    if V.CanTeleport == true then
                        if V.Name:find("World") then
                            table.insert(WorldTeleports, V.Name)
                            WorldIDs[V.Name] = V.ID
                        end
                    end

                    local MissionData = MissionsModule:GetMissionFromId(V.ID)

                    if MissionData ~= nil then
                        table.insert(DungeonTeleports, MissionData.NameTag)
                        DungeonIDs[MissionData.NameTag] = MissionData.ID
                    end
                end

                local function MobESP()
                    local ESP_META = getmetatable(newproxy(true))
                    ESP_META.RemoveEsp = function(Mob)
                        if getgenv().MOB_ESP_OBJECTS[Mob] then
                            getgenv().MOB_ESP_OBJECTS[Mob].Box:Remove()
                            getgenv().MOB_ESP_OBJECTS[Mob].ESPText:Remove()
                            getgenv().MOB_ESP_OBJECTS[Mob] = nil
                        end
    
                        if getgenv().UpdateCache[Mob] then
                            getgenv().UpdateCache[Mob] = nil
                        end
                    end

                    ESP_META.HasEsp = function(Mob)
                        return getgenv().MOB_ESP_OBJECTS[Mob] ~= nil
                    end
    
                    ESP_META.AddEsp = function(Mob)
                        if Mob ~= nil then
                            local MOBPos = Mob:GetPivot()
                            MOBPos = Vector3.new(MOBPos.X, MOBPos.Y, MOBPos.Z)
                            if not ((MOBPos - PlayerPosition).Magnitude <= getgenv()[Settings_Name].MobESPRenderDistance) then return ESP_META.RemoveEsp(Mob) end
                            
                            ESP_META.RemoveEsp(Mob)
    
                            getgenv().MOB_ESP_OBJECTS[Mob] = getgenv().MOB_ESP_OBJECTS[Mob] or {
                                Box = Drawing.new("Square"),
                                ESPText = Drawing.new("Text")
                            }
    
                            local Box =  getgenv().MOB_ESP_OBJECTS[Mob].Box
                            local ESPText =  getgenv().MOB_ESP_OBJECTS[Mob].ESPText
    
                            ESPText.Text = ""
                            ESPText.Color = Color3.fromRGB(255, 255, 255);
                            ESPText.Size = 20.0
                            ESPText.Visible = false
                            ESPText.Outline = true
                            ESPText.Center = true
    
                            Box.Thickness = 2;
                            Box.Filled = false;
                            Box.Visible = false;
                            
                            getgenv().UpdateCache[Mob] = function()
                                local Collider = Mob:FindFirstChild("Collider")

                                if Collider and PlayerPosition then
                                    local MobPos = Mob:GetPivot()
                                    MobPos = Vector3.new(MobPos.X, MobPos.Y, MobPos.Z)
    
                                    local Box =  getgenv().MOB_ESP_OBJECTS[Mob].Box
                                    local ESPText =  getgenv().MOB_ESP_OBJECTS[Mob].ESPText
    
                                    local Inset = GUIService:GetGuiInset();
    
                                    local Pos, Visible = Camera:WorldToScreenPoint(MobPos);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
    
                                    Box.Size = Vector2.new((Collider.Size.X * 1000) / PosSize.Z, (Collider.Size.Y * 500) / PosSize.Z);
                                    Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, (Pos.Y + Inset.Y - Box.Size.Y / 5));
                                    Box.Color = Color3.fromRGB(255, 255, 255)
    
                                    ESPText.Text = string.format("[Mob: %s]\n[Distance: %s]", Mob.Name, tostring( math.floor( (MobPos - PlayerPosition).Magnitude ) ) )
    
                                    local TextSize = 0
    
                                    if (MobPos - PlayerPosition).Magnitude <= 60 then
                                        TextSize = ((Box.Size.X / 2 + Box.Size.Y / 2) / 5) / 1.5
                                    else
                                        TextSize = ((Box.Size.X / 2 + Box.Size.Y / 2) / 5)
                                    end
    
                                    --[[if math.floor((MobPos - PlayerPosition).Magnitude)) <= 4 then
                                        TextSize = TextSize / 2
                                    end]]
                                    
                                    ESPText.Size = TextSize - (math.abs(math.sin(#tostring(ESPText.Text))) * 5)
                                    ESPText.Position =  (Box.Position + (Box.Size / 2) - Vector2.new(0, ESPText.TextBounds.Y / 2)) - Vector2.new(0, Box.Size.Y)
    
                                    if PlayerPosition then
                                        if (Collider.Position - PlayerPosition).Magnitude <= getgenv()[Settings_Name].MobESPRenderDistance then
    
                                            local CreatureHealthFolder = Mob:FindFirstChild("HealthProperties")
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild("Health")
                                                if CreatureHealth then
                                                    if CreatureHealth.Value > 0 then
                                                        local ESPBool = getgenv()[Settings_Name].MobESP
                                                        Box.Visible = ESPBool == true and Visible or false
                                                        ESPText.Visible = ESPBool == true and Visible or false
                                                    else
                                                        Box.Visible = false
                                                        ESPText.Visible = false
                                                    end
                                                else
                                                    Box.Visible = false
                                                    ESPText.Visible = false
                                                end
                                            else
                                                Box.Visible = false
                                                ESPText.Visible = false
                                            end
                                        else
                                            Box.Visible = false
                                            ESPText.Visible = false
                                            return ESP_META.RemoveEsp(Mob)
                                        end
                                    else
                                        Box.Visible = false
                                        ESPText.Visible = false
                                    end
                                else
                                    Box.Visible = false;
                                    ESPText.Visible = false
                                end
                            end
                        end
                    end
    

                    ESP_META.EndConnections = function()
                        for I,V in pairs(getgenv().MOB_ESP_CONNECTIONS) do
                            if typeof(V) == "RBXScriptConnection" then
                                V:Disconnect()
                                getgenv().MOB_ESP_CONNECTIONS[I] = nil
                            end
                        end
                    end

                    ESP_META.StartConnections = function()
                        ESP_META.EndConnections()

                        getgenv().MOB_ESP_CONNECTIONS["MobAdded"] = MobsFolder.ChildAdded:Connect(function(Mob)
                            ESP_META.AddEsp(Mob)
                        end)
        
                        getgenv().MOB_ESP_CONNECTIONS["MobRemoved"] = MobsFolder.ChildRemoved:Connect(function(Mob)
                            ESP_META.RemoveEsp(Mob)
                        end)
                    end
    
                    return ESP_META
                end
    
                local MobESPMeta = MobESP()
    
                MobESPMeta.EndConnections()
                getgenv()["ESP_CACHE"].UnLoad()

                for _, Mob in ipairs(MobsFolder:GetChildren()) do
                    MobESPMeta.RemoveEsp(Mob)
                end
                
                getgenv()["UpdateCache"]["CharacterUpdater"] = function()
                    Character = Player.Character
        
                    if Character then
                        PlayerPosition = Character.PrimaryPart.Position
                        PlayerLookVector = Character.PrimaryPart.CFrame.LookVector
                        RootPart = Character.PrimaryPart
                    end
                end
        
                local AttackIndex = 1
                local TotalHits = 0
                local CanAttack = true
                local CreatureIndex = 1
                local UpdateTick = os.time()

--[[
        getgenv()["ESP_CACHE"].HasESPBox = function(Object)
            return getgenv()["CHARACTER_DRAWN_OBJECTS"][tostring(Object) .. "_ESP_BOXES"]
        end

        getgenv()["ESP_CACHE"].HasESPTracers = function(Object)
            return getgenv()["UpdateCache"][tostring(Object) .. "_ESP_TRACERS"]
        end
]]
                
                getgenv().UpdateCache["ESP_RENDER"] = function()
                    if MobsFolder ~= nil then
                        if (UpdateTick - os.time()) >= 1 then
                            UpdateTick = os.time()

                            if getgenv()[Settings_Name].ESPBoxes == true or getgenv()[Settings_Name].ESPTracers == true then
                                if PlayerPosition then
                                    for _, _Player in ipairs(Players:GetPlayers()) do
                                        local _Character = _Player.Character
                                        
                                        if _Character then
                                            local _Root = _Character:FindFirstChild("HumanoidRootPart")
                                            
                                            if _Root then
                                                if ((_Root.Position - PlayerPosition).Magnitude <= getgenv()[Settings_Name].MobESPRenderDistance) then

                                                    if getgenv()[Settings_Name].ESPBoxes == true then
                                                        if not getgenv()["ESP_CACHE"].HasESPBox(_Player) then
                                                            getgenv()["ESP_CACHE"].LoadBox(_Player)
                                                        end
                                                    end

                                                    if getgenv()[Settings_Name].ESPTracers == true then
                                                        if not getgenv()["ESP_CACHE"].HasESPTracers(_Player) then
                                                            getgenv()["ESP_CACHE"].LoadTracers(_Player)
                                                        end
                                                    end

                                                else
                                                    
                                                    if getgenv()[Settings_Name].ESPBoxes == true then
                                                        getgenv()["ESP_CACHE"].UnLoadType("_ESP_BOXES", tostring(_Player) .. "_ESP_BOXES")
                                                    end

                                                    if getgenv()[Settings_Name].ESPTracers == true then
                                                        getgenv()["ESP_CACHE"].UnLoadType("_ESP_TRACERS", tostring(_Player) .. "_ESP_TRACERS")
                                                    end
                                                    
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            if getgenv()[Settings_Name].MobESP == true and PlayerPosition then
                                for _, Mob in ipairs(MobsFolder:GetChildren()) do
                                    local MOBPos = Mob:GetPivot()
                                    MOBPos = Vector3.new(MOBPos.X, MOBPos.Y, MOBPos.Z)
        
                                    if ((MOBPos - PlayerPosition).Magnitude <= getgenv()[Settings_Name].MobESPRenderDistance) then
                                        if not MobESPMeta.HasEsp(Mob) then
                                            MobESPMeta.AddEsp(Mob)
                                        end
                                    else
                                        MobESPMeta.RemoveEsp(Mob)
                                    end
                                end
                            end

                        end
                    end
                end
                
                VisualsSection:addSlider("ESP Render Distance", getgenv()[Settings_Name].MobESPRenderDistance, 250, 10000, function(NewValue)
                    NewValue = math.clamp(tonumber(NewValue) or 250, 250, 10000)

                    getgenv()[Settings_Name].MobESPRenderDistance = NewValue

                    if getgenv()[Settings_Name].MobESP == true then
                        for _, Mob in ipairs(MobsFolder:GetChildren()) do
                            local MOBPos = Mob:GetPivot()
                            MOBPos = Vector3.new(MOBPos.X, MOBPos.Y, MOBPos.Z)

                            if ((MOBPos - PlayerPosition).Magnitude <= getgenv()[Settings_Name].MobESPRenderDistance) then
                                if not MobESPMeta.HasEsp(Mob) then
                                    MobESPMeta.AddEsp(Mob)
                                end
                            else
                                MobESPMeta.RemoveEsp(Mob)
                            end
                        end
                    end
                end)

                VisualsSection:addToggle("Mob ESP", getgenv()[Settings_Name].MobESP, function(Bool)
                    getgenv()[Settings_Name].MobESP = Bool

                    if Bool then
                        MobESPMeta.StartConnections()
                        for _, Mob in ipairs(MobsFolder:GetChildren()) do
                            if not MobESPMeta.HasEsp(Mob) then
                                MobESPMeta.AddEsp(Mob)
                            end
                        end
                    else
                        MobESPMeta.EndConnections()
                        for _, Mob in ipairs(MobsFolder:GetChildren()) do
                            MobESPMeta.RemoveEsp(Mob)
                        end
                    end
                end)


                VisualsSection:addToggle("ESP Teamcheck", getgenv()[Settings_Name].ESPTeamcheck, function(Bool)
                    getgenv()[Settings_Name].ESPTeamcheck = Bool
                    getgenv()["ESP_CACHE"].SetTeamCheck(Bool)
                end)
            
                VisualsSection:addToggle("ESP Boxes", getgenv()[Settings_Name].ESPBoxes, function(Bool)
                    getgenv()[Settings_Name].ESPBoxes = Bool
                    if Bool then
                        for _, Plr in ipairs(Players:GetPlayers()) do
                            if Plr ~= Player then
                                getgenv()["ESP_CACHE"].LoadBox(Plr)
                            end
                        end
                        getgenv()["ESP_CACHE"].SetBoxVisibility(true)
                    else
                        getgenv()["ESP_CACHE"].UnLoadType("_ESP_BOXES", nil)
                        getgenv()["ESP_CACHE"].SetBoxVisibility(false)
                    end
                end)
            
                VisualsSection:addToggle("ESP Tracers", getgenv()[Settings_Name].ESPTracers, function(Bool)
                    getgenv()[Settings_Name].ESPTracers = Bool
                    if Bool then
                        for _, Plr in ipairs(Players:GetPlayers()) do
                            if Plr ~= Player then
                                getgenv()["ESP_CACHE"].LoadTracers(Plr)
                            end
                        end
                        getgenv()["ESP_CACHE"].SetTracersVisibility(true)
                    else
                        getgenv()["ESP_CACHE"].UnLoadType("_ESP_TRACERS", nil)
                        getgenv()["ESP_CACHE"].SetTracersVisibility(false)
                    end
                end)
            
                local ESP_COLOR_LOCAL = getgenv()[Settings_Name].ESPColor
            
                getgenv()["ESP_CACHE"].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))
            
                VisualsSection:addColorPicker("ESP Color", Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
                    local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)
            
                    getgenv()[Settings_Name].ESPColor.R = R
                    getgenv()[Settings_Name].ESPColor.G = G
                    getgenv()[Settings_Name].ESPColor.B = B
            
                    getgenv()["ESP_CACHE"].UpdateColor(Color3.fromRGB(R, G, B))
                end)
            
                VisualsSection:addButton("Unload Player ESP", function(Bool)
                    getgenv()["ESP_CACHE"].UnLoad()
                end)

                AutoFarmSection:addToggle("Attack near by mobs (may not work!)", getgenv()[Settings_Name].AutoAttackMobs, function(Bool)
                    getgenv()[Settings_Name].AutoAttackMobs = Bool
        
                    if Bool then
                        task.spawn(function()
                            while getgenv()[Settings_Name].AutoAttackMobs == true do
                                if Character and PlayerPosition and PlayerLookVector and RootPart then
                                    local TotalInRegion = GetNearMobs()
        
                                    if #TotalInRegion > 0 then
    
                                        if TotalHits >= 15 then
                                            CanAttack = false
    
                                            task.delay(0.6, function() -- Short cooldown to try prevent kicking!
                                                CanAttack = true
                                                TotalHits = 0
                                            end)
                                        else
                                            CanAttack = true
                                        end
    
                                        if TotalHits < 15 and CanAttack then
                                            --

                                            if CreatureIndex > #TotalInRegion then
                                                CreatureIndex = 1
                                            end

                                            local Creature = TotalInRegion[CreatureIndex]
                                            local CreatureHealthFolder = Creature:FindFirstChild("HealthProperties")
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild("Health")
                                                
                                                if CreatureHealth then
                                                    
                                                    if CreatureHealth.Value > 0 then
                                                        local CreaturePos = Creature:GetPivot();
    
                                                        if not ActionsModule:IsBusy() then
                                                            TotalHits = TotalHits + 1
    
                                                            ActionsModule:SetBusy("Swing");
                                                        
                                                            if Character then
                                                                PlayerPosition = Character.PrimaryPart.Position
                                                                PlayerLookVector = Character.PrimaryPart.CFrame.LookVector
                                                                RootPart = Character.PrimaryPart
                                                            end
    
                                                            RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
                                                            Camera.CFrame = CFrame.new(Camera.CFrame.p, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
    
                                                            CombatModule:AttackWithSkill("Defender" .. tostring(AttackIndex), PlayerPosition, CFrame.new(PlayerPosition, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z)).LookVector * 1.1 );
                                                            
                                                            AttackIndex = math.clamp(AttackIndex + 1, 1, 6)
    
                                                            if AttackIndex > 5 then
                                                                AttackIndex = 1
                                                            end

                                                            CreatureIndex = CreatureIndex + 1
    
                                                            task.wait(0.01)
                                                            ActionsModule:ReleaseBusy("Swing");
                                                        end
    
                                                    end
                                                end
                                            end
                                            --
                                        end
    
                                    end
                                end
        
                                task.wait(0.07)
                            end
                        end)
                    end
                end)
        
                local Coins = {}
        
                workspace.Coins.ChildAdded:Connect(function(A)
                    if A:IsA("Model") then
                        if tostring(A) == "Basic" then
                            table.insert(Coins, A)
                        end
                    end
                end)
        
                workspace.Coins.ChildRemoved:Connect(function(A)
                    table.remove(Coins, table.find(Coins, A))
                end)
    
                task.spawn(function()
                    Player.Idled:connect(function()
                        if getgenv()[Settings_Name].AntiIdle == true then
                            VRService:Button2Down(Vector2.new(0, 0), CFrame.new(math.random(1, 10), math.random(1, 10), math.random(1, 10)) )
                            task.wait(.2)
                            VRService:Button2Up(Vector2.new(0, 0), CFrame.new(math.random(1, 10), math.random(1, 10), math.random(1, 10)) )
                        end
                    end)
                end)
    
                for _, WorldName in ipairs(WorldTeleports) do
                    if WorldIDs[WorldName] ~= nil then
                        Worlds_TP_Section:addButton(WorldName, function()
                            TeleportModule:TeleportToHub(Player, WorldIDs[WorldName])
                        end)
                    end
                end

                for _, DungeonName in ipairs(DungeonTeleports) do
                    if DungeonIDs[DungeonName] ~= nil then
                        DungeonName_TP_Section:addButton(DungeonName, function()
                            TeleportModule:TeleportToMission(Player, DungeonIDs[DungeonName], 1)
                        end)
                    end
                end

                AutoFarmSection:addToggle("Anti Afk", getgenv()[Settings_Name].AntiIdle, function(Bool)
                    getgenv()[Settings_Name].AntiIdle = Bool
                end)
    
                --[===[
                AutoFarmSection:addToggle("Auto pickup near by coins!", getgenv()[Settings_Name].AutoPickupCoins, function(Bool)
                    getgenv()[Settings_Name].AutoPickupCoins = Bool
        
                    if Bool then
                        task.spawn(function()
                            while getgenv()[Settings_Name].AutoPickupCoins == true do
        
                                for Index, Value in ipairs(Coins) do
                                    if Value.PrimaryPart ~= nil and RootPart then
                                        local TimeOut = os.time()
                                        repeat
                                            if ((RootPart.Position - Value.PrimaryPart.Position).Magnitude) <= 50 then
                                                RootPart.CFrame = Value.PrimaryPart.CFrame * CFrame.new(0, 1, 0)
                                                
                                                table.remove(Coins, table.find(Coins, Value))
                                                break
                                            end
                                        until (os.time() - TimeOut) >= 1
        
                                    end
                                end
        
                                task.wait(0.001)
                            end
                        end)
                    end
                end)
                ]===]

                Window:SelectPage(Window.pages[1], true)
        
                if not getgenv()["UpdateLoop"] then
                    getgenv()["UpdateLoop"] = true
                    RunService.Heartbeat:Connect(function()
                        for _, Function in pairs(getgenv()["UpdateCache"]) do
                            if type(Function) == "function" then
                                pcall(Function)
                            end
                        end
                    end)
                end
        
                print("World Zero loaded up!")
                --
            end
        end    
    end
    
    WorldZeroInit()

    local _Players = game:GetService("Players")
    local _Player = _Players.LocalPlayer
    
    local queue_on_teleport = type(syn) == "table" and syn.queue_on_teleport or queue_on_teleport
    
    local RejoinCode = [[
        local MarketService = game:GetService("MarketplaceService")
        local VRService = game:GetService("VirtualUser")
    
        local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
        if isSuccessful then
            if info.Creator.Name == "World // Zero" then
                repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer ~= nil and game.Players.LocalPlayer.Character ~= nil
                task.delay(5, function()
                    loadfile("Grubhub/GrubhubV6Source/CompiledScript.lua")()
                end)
            end
        end
    ]]

    if not isfile("grubhub_execute.lua") then
        writefile("grubhub_execute.lua", tostring(RejoinCode))
    end
    
    queue_on_teleport([[
        if isfile("grubhub_execute.lua") then
            loadfile("grubhub_execute.lua")()
        end
    ]])
end
do
    if tostring(game.PlaceId) == "6284583030" then
        getgenv()["USE_GRUBHUB_UNIVERSAL"] = false
        getgenv()["grubhub_loaded"] = true
        
        --------------------------------------------------------------------------------------------

        getgenv().UpdateLoop = type(getgenv().UpdateLoop) == "boolean" and getgenv().UpdateLoop or false;
        getgenv().UpdateCache = type(getgenv().UpdateCache) == "table" and getgenv().UpdateCache or {};
        getgenv().GameConnections = type(getgenv().GameConnections) == "table" and getgenv().GameConnections or {};

        if type(getgenv().GameConnections) == "table" then
            for IndexName, Signal in pairs(getgenv().GameConnections) do
                if typeof(Signal) == "RBXScriptConnection" then
                    Signal:Disconnect()
                end
            end
            table.clear(getgenv().GameConnections)
        end

        local GameConfigFile = GetGameConfig(tostring(game.PlaceId) .. ".json")
        Settings_Name = "PET_SIM_X_SETTINGS_GRUBHUB"

        getgenv()[Settings_Name] = {
            AutoFarm = GameConfigFile.AutoFarm or false,
            IgnoreCoins = GameConfigFile.IgnoreCoins or false,
            IgnoreChests = GameConfigFile.IgnoreChests or false,
            IgnoreDiamonds = GameConfigFile.IgnoreDiamonds or false,
            CollectLootBags = GameConfigFile.CollectLootBags or false,
            InstantCollect = GameConfigFile.InstantCollect or false,
            AutoHatch = GameConfigFile.AutoHatch or false,
            ChosenEgg = GameConfigFile.ChosenEgg or "Choose A Egg",
        }

        local RunService = game:GetService("RunService")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local GameFramework = ReplicatedStorage:WaitForChild("Framework", 5)
        local GameLibary = GameFramework:WaitForChild("Library", 5)
        local GameLibarySuccess, GameLibaryContents = pcall(require, GameLibary)
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local PlayerScripts = Player:WaitForChild("PlayerScripts", 5)
        local GameScripts_V1 = PlayerScripts:WaitForChild("Scripts", 5)
        local GameScripts_V2 = GameScripts_V1:WaitForChild("Game", 5)
        local OrbsClient = GameScripts_V2:WaitForChild("Orbs", 5)

        Window = UILibrary.new("GrubHub V6 ~ Pet Simulator X", 5013109572)

        local Camera = workspace:WaitForChild("Camera", 5)
        local PlayerWindow = Window:addPage("Player", 5012544693)
        local PlayerSection = PlayerWindow:addSection("Other", 5012544693)

        local AutoFarmWindow = Window:addPage("Auto Farm", 5012544693)
        local AutoFarmSection = AutoFarmWindow:addSection("Farming", 5012544693)
        local AutoFarmHatchingSection = AutoFarmWindow:addSection("Hatching", 5012544693)

        local TeleportsWindow = Window:addPage("Teleports", 5012544693)
        local WorldsTeleportSection = TeleportsWindow:addSection("Worlds", 5012544693)
        local AreasTeleportSection = TeleportsWindow:addSection("Areas", 5012544693)

        local __VARIABLES = workspace:FindFirstChild("__VARIABLES")
        local __THINGS = workspace:FindFirstChild("__THINGS")
        local __MAP = workspace:FindFirstChild("__MAP")
        local GameNetwork = nil
        local GameData = nil
        
        for _, GameGC in pairs(getgc(true)) do
            if type(GameGC) == "table" then
                if rawget(GameGC, "Network") then
                    GameNetwork = GameGC.Network
                end
                
                if rawget(GameGC, "Save") then
                    if type(GameGC.Save) == "table" then
                        if rawget(GameGC.Save, "Get") then
                            GameData = GameGC.Save
                        end
                    end
                end
            end
        end

        if not GameLibarySuccess then return Player:Kick("Failed to get game libary, contact a developer!") end
        if GameNetwork == nil then return Player:Kick("Failed to get game network, contact a developer!") end
        if GameData == nil then return Player:Kick("Failed to get game data, contact a developer!") end

        local PlrWalk = Player ~= nil and Player.Character ~= nil and Player.Character:FindFirstChild("Humanoid") and Player.Character.Humanoid.WalkSpeed or 0
        local PlrJumpPower = Player ~= nil and Player.Character ~= nil and Player.Character:FindFirstChild("Humanoid") and Player.Character.Humanoid.JumpPower or 0
        local PetSimSDK = {}

        do
            local TeleportsData = {
                Worlds = {},
                Areas = {}
            }
            local OldOwnFunction = nil
            local OrbEnv = nil
            local ChestMeshIDs = (function()
                local Data = {}
                local CoinAssets = ReplicatedStorage:FindFirstChild("CoinAssets", true)

                if CoinAssets then
                    for _, ChestAsset in ipairs(CoinAssets:GetDescendants()) do
                        if ChestAsset:IsA("MeshPart") then
                            if tostring(ChestAsset):lower():find("chest") then
                                table.insert(Data, tostring(ChestAsset.MeshId))
                            end
                        end
                    end
                end

                return Data
            end)()

            local Teleports = (function()
                for I, V in pairs(GameLibaryContents.Directory.Areas) do
                    if V.world ~= nil and V.world ~= "" then
                        if not TeleportsData.Worlds[tostring(V.world)] then
                            TeleportsData.Worlds[tostring(V.world)] = tostring(V.world)
                        end

                        if not TeleportsData.Areas[tostring(I)] then
                            TeleportsData.Areas[tostring(I)] = tostring(V.world)
                        end
                    end
                end
                
                return TeleportsData
            end)()

            function GetCoinCache()
                local CoinData = __THINGS and __THINGS:FindFirstChild("Coins") and __THINGS.Coins:GetChildren() or {}

                for _, Object in ipairs(CoinData) do
                    PetSimSDK.GetType(Object)
                end

                return CoinData
            end

            PetSimSDK.CoinsCache = {}
            
            PetSimSDK.CoinCacheTime = 999999 -- will be reset to os.time once executed!
            PetSimSDK.EquippedPetsTime = 999999 -- will be reset to os.time once executed!
            PetSimSDK.ItemTypeCache = {}
            PetSimSDK.EquippedPets = {}
            PetSimSDK.Blacklisted = {}
            PetSimSDK.Types = {
                Coin = "Coin",
                Orb = "Orb",
                Lootbag = "LootBag",
                Diamond = "Diamond",
                Chest = "Chest"
            }

            PetSimSDK.FreeGamepasses = function()
                if GameLibarySuccess then
                    if OldOwnFunction == nil then
                        OldOwnFunction = hookfunction(GameLibaryContents.Gamepasses.Owns, function(...)
                            return true
                        end)
                    end
                end
            end

            PetSimSDK.GetAllPets = function()
                local Pets = {}

                if GameData then
                    local PlayerData = GameData.Get()

                    if type(PlayerData) == "table" then
                        if type(PlayerData.Pets) == "table" then
                            for _, V in ipairs(PlayerData.Pets) do
                                if V.nk ~= nil then
                                    table.insert(Pets, {
                                        PetName = V.nk,
                                        PetEquipped = V.e,
                                        PetID = V.uid,
                                        PetPowers = V.powers or {}
                                    })
                                end
                            end
                        end
                    end
                end
                return Pets
            end

            PetSimSDK.GetEquippedPets = function()
                local Pets = {}
                local PetResults = PetSimSDK.GetAllPets()
                for _, PetData in ipairs(type(PetResults) == "table" and PetResults or {}) do
                    if type(PetData) == "table" then
                        if PetData.PetEquipped == true then
                            table.insert(Pets, PetData)
                        end
                    end
                end
                return Pets
            end

            PetSimSDK.GetCoins = function()
                return type(PetSimSDK.CoinsCache) == "table" and PetSimSDK.CoinsCache or {}
            end

            PetSimSDK.CollectCoin = function(Coin, UseAllPets)
                local EquippedPets = PetSimSDK.EquippedPets

                if GameNetwork ~= nil then
                    if #EquippedPets > 0 then
                        local Pets = UseAllPets == true and (function()
                            local PetIDs = {}
        
                            for _, PetData in ipairs(EquippedPets) do
                                table.insert(PetIDs, PetData.PetID)
                            end

                            return PetIDs
                        end)() or {[1] = EquippedPets[1].PetID}
        
                        if #Pets > 0 then
                            local JoinCallResult = GameNetwork.Invoke("Join Coin", Coin.Name, Pets);

                            for PetIndex, PetId in ipairs(Pets) do
                                GameNetwork.Fire("Change Pet Target", PetId, "Coin", Coin:GetAttribute("ID"));
                                GameNetwork.Fire("Farm Coin", Coin.Name, PetId);
                            end
                        end
                    end
                end
            end

            PetSimSDK.GetOrbs = function()
                return __THINGS and __THINGS:FindFirstChild("Orbs") and __THINGS.Orbs:GetChildren() or {}
            end

            PetSimSDK.IsOrb = function(Object)
                if PetSimSDK.ItemTypeCache[Object] then
                    return PetSimSDK.ItemTypeCache[Object] == PetSimSDK.Types.Orb and true or false
                end

                local Check1 = typeof(Object) == "Instance" and true or false
                local Check2 = Check1 == true and Object:FindFirstChild("Orb") and true or false

                if Check2 == true then
                    PetSimSDK.ItemTypeCache[Object] = PetSimSDK.Types.Orb
                end

                return Check2
            end

            PetSimSDK.CollectOrb = function(Orb)
                if PetSimSDK.IsOrb(Orb) and GameNetwork ~= nil then
                    if OrbsClient then
                        if OrbsClient:IsA("LocalScript") then
                            if OrbEnv == nil then
                                local OrbScriptEnvSuccess, OrbScriptEnv = pcall(getsenv, OrbsClient)
                                if OrbScriptEnvSuccess then
                                    OrbEnv = OrbScriptEnv
                                end
                            end

                            if OrbEnv ~= nil then
                                return OrbEnv.Collect(Orb)
                            end
                        end
                    end
                end
            end

            PetSimSDK.GetLootBags = function()
                return __THINGS and __THINGS:FindFirstChild("Lootbags") and __THINGS.Lootbags:GetChildren() or {}
            end

            PetSimSDK.IsLootBag = function(Object)
                if PetSimSDK.ItemTypeCache[Object] then
                    return PetSimSDK.ItemTypeCache[Object] == PetSimSDK.Types.Lootbag and true or false
                end

                local Check1 = typeof(Object) == "Instance" and true or false
                local Check2 = Check1 == true and Object:IsA("MeshPart") and tostring(Object.MeshId) == "rbxassetid://7205419138" and true or false
                local Check3 = Check1 == true and Object:IsA("MeshPart") and tostring(Object.MeshId) == "rbxassetid://8159964896" and true or false
                local Check4 = Check1 == true and Object:IsA("MeshPart") and tostring(Object.MeshId) == "rbxassetid://8159969008" and true or false

                if Check2 or Check3 or Check4 then
                    PetSimSDK.ItemTypeCache[Object] = PetSimSDK.Types.Lootbag
                end

                return Check2 or Check3 or Check4
            end

            PetSimSDK.CollectLootBag = function(LootBag)
                if PetSimSDK.IsLootBag(LootBag) and GameNetwork ~= nil then
                    GameNetwork.Fire("Collect Lootbag", LootBag:GetAttribute("ID"), LootBag.CFrame.p);
                    LootBag:Destroy()
                end
            end

            PetSimSDK.IsDiamond = function(Object)
                if PetSimSDK.ItemTypeCache[Object] then
                    return PetSimSDK.ItemTypeCache[Object] == PetSimSDK.Types.Diamond and true or false
                end

                local Check1 = typeof(Object) == "Instance" and true or false
                local Check2 = Check1 == true and Object:FindFirstChild("Coin") and true or false
                local Check3 = Check2 == true and Object.Coin:IsA("MeshPart") and tostring(Object.Coin.MeshId) == "rbxassetid://7041620873" and true or false
                local Check4 = Check2 == true and Object.Coin:IsA("MeshPart") and tostring(Object.Coin.MeshId) == "rbxassetid://7041621431" and true or false

                if Check3 or Check4 then
                    PetSimSDK.ItemTypeCache[Object] = PetSimSDK.Types.Diamond
                end

                if Check3 == true then return true end
                if Check4 == true then return true end

                return false
            end

            PetSimSDK.IsChest = function(Object)
                if PetSimSDK.ItemTypeCache[Object] then
                    return PetSimSDK.ItemTypeCache[Object] == PetSimSDK.Types.Chest and true or false
                end
                
                local Check1 = typeof(Object) == "Instance" and true or false
                local Check2 = Check1 == true and Object:FindFirstChild("Coin") and true or false
                local Check3 = Check2 == true and Object.Coin:IsA("MeshPart") and table.find(ChestMeshIDs, tostring(Object.Coin.MeshId)) ~= nil and true or false
                  
                if Check3 then
                    PetSimSDK.ItemTypeCache[Object] = PetSimSDK.Types.Chest
                end

                return Check3
            end

            PetSimSDK.IsCoin = function(Object)
                if PetSimSDK.ItemTypeCache[Object] then
                    return PetSimSDK.ItemTypeCache[Object] == PetSimSDK.Types.Coin and true or false
                end

                local Check1 = typeof(Object) == "Instance" and true or false
                local Check2 = Check1 == true and Object:FindFirstChild("Coin") and true or false
                
                if Check2 == true and PetSimSDK.IsChest(Object) == false and PetSimSDK.IsDiamond(Object) == false then
                    PetSimSDK.ItemTypeCache[Object] = PetSimSDK.Types.Coin
                end

                return Check2 == true and PetSimSDK.IsChest(Object) == false and PetSimSDK.IsDiamond(Object) == false and true or false
            end

            PetSimSDK.GetType = function(Object)
                if PetSimSDK.IsCoin(Object) == true then return PetSimSDK.Types.Coin end
                if PetSimSDK.IsOrb(Object) == true then return PetSimSDK.Types.Orb end
                if PetSimSDK.IsLootBag(Object) == true then return PetSimSDK.Types.Lootbag end
                if PetSimSDK.IsDiamond(Object) == true then return PetSimSDK.Types.Diamond end
                if PetSimSDK.IsChest(Object) == true then return PetSimSDK.Types.Chest end
                return nil
            end

            PetSimSDK.IsBlacklisted = function(Type)
                return PetSimSDK.Blacklisted[Type] ~= nil and true or false
            end

            PetSimSDK.RedeemFreeGifts = function()
                if GameLibarySuccess and GameNetwork ~= nil then
                    for I, V in pairs(GameLibaryContents.Directory.FreeGifts) do
                        task.spawn(function()
                            GameNetwork.Invoke("Redeem Free Gift", I);
                        end)
                    end
                end
            end

            PetSimSDK.GetAllEggs = function()
                local Data = {}
                if GameLibarySuccess then
                    for I, _ in pairs(GameLibaryContents.Directory.Eggs) do
                        table.insert(Data, tostring(I))
                    end
                end
                return Data
            end

            PetSimSDK.GetTeleportsRaw = function()
                return Teleports
            end

            PetSimSDK.GetMapTeleports = function()
                return __MAP and __MAP:FindFirstChild("Teleports") and __MAP.Teleports or "NONE"
            end

            PetSimSDK.GetCoinsFolder = function()
                return __THINGS and __THINGS:FindFirstChild("Coins") and __THINGS.Coins
            end

            PetSimSDK.GetOrbsFolder = function()
                return __THINGS and __THINGS:FindFirstChild("Orbs") and __THINGS.Orbs
            end

            PetSimSDK.GetLootbagsFolder = function()
                return __THINGS and __THINGS:FindFirstChild("Lootbags") and __THINGS.Lootbags
            end

            PetSimSDK.MapLoader = function(AreaName) -- Map Loader hook
                if AreaName == "Trading Plaza" then
                    AreaName = "Spawn"
                end
                
                GameNetwork.Fire("Request World", AreaName)

                while not Player.PlayerGui:FindFirstChild("__MAP") do
                    GameLibaryContents.RenderStepped();
                end

                Player.Character.HumanoidRootPart.Anchored = true

                if __MAP then
                    __MAP:Destroy();
                end

                PetSimSDK.GetCoinsFolder():ClearAllChildren()
                PetSimSDK.GetOrbsFolder():ClearAllChildren()
                PetSimSDK.GetLootbagsFolder():ClearAllChildren()

                local NewMapFolder = Player.PlayerGui:WaitForChild("__MAP", 5)
                local NewMap = NewMapFolder:WaitForChild("MAP", 5)

                if NewMap then
                    local WorldData = GameLibaryContents.Directory.Worlds[AreaName];

                    if not WorldData then return warn("World data not found!") end
                    
                    if NewMap:FindFirstChild("Spawns") then
                        NewMap.Spawns:Destroy()
                    end

                    local MapDebris = GameLibaryContents.Debris:FindFirstChild("__MAPDEBRIS");
                    if not MapDebris then
                        MapDebris = Instance.new("Folder")
                        MapDebris.Name = "__MAPDEBRIS"
                        MapDebris.Parent = u1.Debris
                    else
                        MapDebris:ClearAllChildren();
                    end

                    NewMap.Name = "__MAP"
                    NewMap.Parent = workspace
                end
            end

            PetSimSDK.Teleport = function(Place, TeleportType)
                if GameLibarySuccess and Player.Character then
                    task.spawn(function()
                        local RawData = PetSimSDK.GetTeleportsRaw()
                        local TP_DATA = RawData.Worlds[tostring(Place)] or RawData.Areas[tostring(Place)]

                       pcall(function()
                            --PetSimSDK.MapLoader(TP_DATA)
                            GameLibaryContents.WorldCmds.Load(TP_DATA);
                        end)

                        if TeleportType == "Area" then
                            local TeleportsFolder = PetSimSDK.GetMapTeleports()
                            local TeleportCheck = TeleportsFolder ~= "NONE" and typeof(TeleportsFolder) == "Instance" and TeleportsFolder:FindFirstChild(tostring(Place)) or nil

                            repeat
                                TeleportsFolder = PetSimSDK.GetMapTeleports()
                                TeleportCheck = TeleportsFolder ~= "NONE" and typeof(TeleportsFolder) == "Instance" and TeleportsFolder:FindFirstChild(tostring(Place)) or nil
                                task.wait(1 / 10000)
                            until TeleportCheck ~= nil and TeleportCheck ~= "NONE"

                            if TeleportCheck ~= nil then
                                if Player.Character then
                                    local Humanoid = Player.Character:FindFirstChild("Humanoid")

                                    if Humanoid then
                                        Player.Character:SetPrimaryPartCFrame(TeleportCheck.CFrame + Vector3.new(0, Humanoid.HipHeight + 1, 0));
                                    end
                                end
                            end
                        end
                    end)
                end
            end

        end
        
        getgenv()["UpdateCache"].PlayerController = function()
            if Player then
                if Player.Character then
                    local Humanoid = Player.Character:FindFirstChild("Humanoid")

                    if Humanoid then
                        Humanoid.WalkSpeed = PlrWalk
                        Humanoid.JumpPower = PlrJumpPower
                    end

                    if PetSimSDK.EquippedPetsTime == 999999 or (os.time() - PetSimSDK.EquippedPetsTime) >= 1 then
                        PetSimSDK.EquippedPetsTime = os.time()
                        PetSimSDK.EquippedPets = PetSimSDK.GetEquippedPets()
                    end
                end
            end

            __VARIABLES = workspace:FindFirstChild("__VARIABLES")
            __THINGS = workspace:FindFirstChild("__THINGS")
            __MAP = workspace:FindFirstChild("__MAP")

            if PetSimSDK.CoinCacheTime == 999999 or (os.time() - PetSimSDK.CoinCacheTime) >= 2 then
                PetSimSDK.CoinCacheTime = os.time()

                PetSimSDK.CoinsCache = GetCoinCache()

                for Index, Value in pairs(PetSimSDK.ItemTypeCache) do
                    if typeof(Index) == "Instance" then
                        if Index.Parent == nil then
                            PetSimSDK.ItemTypeCache[Index] = nil
                        end
                    else
                        PetSimSDK.ItemTypeCache[Index] = nil
                    end
                end
            end
        end

        PlayerSection:addSlider("Walkspeed", PlrWalk, 0, 100, function(NewValue)
            PlrWalk = NewValue
        end)

        PlayerSection:addSlider("JumpPower", PlrJumpPower, 0, 100, function(NewValue)
            PlrJumpPower = NewValue
        end)

        PlayerSection:addButton("Redeem free gifts", PetSimSDK.RedeemFreeGifts)
        PlayerSection:addButton("Get all gamepasses", PetSimSDK.FreeGamepasses)

        AutoFarmSection:addToggle("Auto Farm", getgenv()[Settings_Name].AutoFarm, function(Bool)
            getgenv()[Settings_Name].AutoFarm = Bool

            local OldFarmObject = nil

            task.spawn(function()
                while getgenv()[Settings_Name].AutoFarm == true do
                    if Player.Character == nil then
                        task.wait(1 / 50)
                        continue
                    end

                    local Root = Player.Character:FindFirstChild("HumanoidRootPart")

                    if #PetSimSDK.EquippedPets > 0 then
                        local CanProceed = true--OldFarmObject == nil and true or false
                        --CanProceed = OldFarmObject ~= nil and OldFarmObject.Parent == nil and true or CanProceed

                        if CanProceed then
                            local Coins = PetSimSDK.GetCoins()

                            if #Coins > 0 then
                                for _, Coin in ipairs(Coins) do
                                    if Coin ~= nil then
                                        if Coin:FindFirstChild("Coin") then
                                            if (Coin.Coin.Position - (Root ~= nil and Root.Position or Camera.CFrame.p)).Magnitude <= 150 then
                                                local CoinType = PetSimSDK.GetType(Coin)

                                                if CoinType ~= nil then
                                                    if PetSimSDK.IsBlacklisted(tostring(CoinType)) == false then

                                                        PetSimSDK.CollectCoin(Coin, true)
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end

                    task.wait(1 / 50)
                end
            end)
        end)

        AutoFarmSection:addToggle("Ignore Coins", getgenv()[Settings_Name].IgnoreCoins, function(Bool)
            getgenv()[Settings_Name].IgnoreCoins = Bool

            if Bool then
                PetSimSDK.Blacklisted[PetSimSDK.Types.Coin] = true
            else
                PetSimSDK.Blacklisted[PetSimSDK.Types.Coin] = nil
            end
        end)

        AutoFarmSection:addToggle("Ignore Chests", getgenv()[Settings_Name].IgnoreChests, function(Bool)
            getgenv()[Settings_Name].IgnoreChests = Bool

            if Bool then
                PetSimSDK.Blacklisted[PetSimSDK.Types.Chest] = true
            else
                PetSimSDK.Blacklisted[PetSimSDK.Types.Chest] = nil
            end

        end)

        AutoFarmSection:addToggle("Ignore Diamonds", getgenv()[Settings_Name].IgnoreDiamonds, function(Bool)
            getgenv()[Settings_Name].IgnoreDiamonds = Bool
            
            if Bool then
                PetSimSDK.Blacklisted[PetSimSDK.Types.Diamond] = true
            else
                PetSimSDK.Blacklisted[PetSimSDK.Types.Diamond] = nil
            end
        end)

        AutoFarmSection:addToggle("Instant Collect", getgenv()[Settings_Name].InstantCollect, function(Bool)
            getgenv()[Settings_Name].InstantCollect = Bool

            task.spawn(function()
                while getgenv()[Settings_Name].InstantCollect == true do

                    if Player.Character == nil then
                        task.wait(1 / 250)
                        continue
                    end

                    local Orbs = PetSimSDK.GetOrbs()

                    if #Orbs > 0 then
                        for _, Orb in ipairs(Orbs) do
                            PetSimSDK.CollectOrb(Orb)
                        end
                    end
                    
                    task.wait(1 / 250)
                end
            end)
        end)

        AutoFarmSection:addToggle("Collect Lootbags", getgenv()[Settings_Name].CollectLootBags, function(Bool)
            getgenv()[Settings_Name].CollectLootBags = Bool

            task.spawn(function()
                while getgenv()[Settings_Name].CollectLootBags == true do

                    if Player.Character == nil then
                        task.wait(1 / 250)
                        continue
                    end

                    local Lootbags = PetSimSDK.GetLootBags()

                    if #Lootbags > 0 then
                        for _, LootBag in ipairs(Lootbags) do
                            if (LootBag.Position - (Root ~= nil and Root.Position or Camera.CFrame.p)).Magnitude <= 150 then
                                PetSimSDK.CollectLootBag(LootBag)
                            end
                        end
                    end
                    
                    task.wait(1 / 250)
                end
            end)
        end)


        local AllEggs = PetSimSDK.GetAllEggs()

        AutoFarmHatchingSection:addToggle("Auto Hatch", getgenv()[Settings_Name].AutoHatch, function(Bool)
            getgenv()[Settings_Name].AutoHatch = Bool

            task.spawn(function()
                while getgenv()[Settings_Name].AutoHatch == true and GameNetwork ~= nil do

                    if table.find(AllEggs, tostring(getgenv()[Settings_Name].ChosenEgg)) then
                        GameNetwork.Invoke("Buy Egg", getgenv()[Settings_Name].ChosenEgg, false)
                    end

                    task.wait(1 / 100)
                end
            end)

        end)
        
        AutoFarmHatchingSection:addDropdown(getgenv()[Settings_Name].ChosenEgg, AllEggs, function(Chosen)
            if table.find(AllEggs, tostring(Chosen)) then
                getgenv()[Settings_Name].ChosenEgg = tostring(Chosen)
            end
        end, true)

        local RawTeleportData = PetSimSDK.GetTeleportsRaw()

        for WorldName, WorldPlace in pairs(RawTeleportData.Worlds) do
            WorldsTeleportSection:addButton(tostring(WorldName), function()
                PetSimSDK.Teleport(tostring(WorldName), "World")
            end)
        end

        for AreaName, AreaWorld in pairs(RawTeleportData.Areas) do
            AreasTeleportSection:addButton(tostring(AreaName), function()
                PetSimSDK.Teleport(tostring(AreaName), "Area")
            end)
        end

        if not getgenv()["UpdateLoop"] then
            getgenv()["UpdateLoop"] = true
            
            RunService.RenderStepped:Connect(function(_Delta)
                for _, Function in pairs(getgenv()["UpdateCache"]) do
                    if type(Function) == "function" then
                        pcall(Function, _Delta)
                    end
                end
            end)
        end

        Window:SelectPage(Window.pages[1], true)
        print("Pet Simulator X loaded!")
    end
end
do
    if getgenv()["USE_GRUBHUB_UNIVERSAL"] == true then
        getgenv()["grubhub_loaded"] = false
        local Players = game["GetService"](game, "Players")
        local Player = Players["LocalPlayer"]
        local Format, Split, GSUB, gmatch, match = string["format"], string["split"], string["gsub"], string["gmatch"], string["match"]

        Window = UILibrary.new("GrubHub V6 ~ Universal", 5013109572)

        local MiscWindow = Window:addPage("Misc", 5012544693)
        local MiscSection = MiscWindow:addSection("Main")

        local VisualsWindow = Window:addPage("Visuals", 5012544693)
        local VisualsSelection = VisualsWindow:addSection("Main")

        local GameConfigFile = GetGameConfig(FixName(tostring("Universal")) .. ".json")
        Settings_Name = "UNIVERSAL_GRUBHUB_SETTINGS"

        getgenv()[Settings_Name] = {
            Teamcheck = GameConfigFile.Teamcheck or false,
            Boxes = GameConfigFile.Boxes or false,
            Tracers = GameConfigFile.Tracers or false,
            AimBot = GameConfigFile.AimBot or false,
            AimBotTeamcheck = GameConfigFile.AimBotTeamcheck or false,
            AimbotHealth = GameConfigFile.AimbotHealth or false,
            AimDistance = GameConfigFile.AimDistance or 250,
            ESP_NAMETAGS = GameConfigFile.ESP_NAMETAGS or false,
            Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
        }

        local Aimbot_MT = getgenv()["ESP_CACHE"].Aimbot()

        if Aimbot_MT then
            MiscSection:addToggle("Aimbot", getgenv()[Settings_Name].AimBot, function(Bool)
                getgenv()[Settings_Name].AimBot = Bool
                
                if Bool then
                    Aimbot_MT.Start()
                else
                    Aimbot_MT.End()
                end
            end)

            MiscSection:addToggle("Aimbot Teamcheck", getgenv()[Settings_Name].AimBotTeamcheck, function(Bool)
                getgenv()[Settings_Name].AimBotTeamcheck = Bool
                
                Aimbot_MT.TeamCheck(Bool)
            end)

            Aimbot_MT.Distance(getgenv()[Settings_Name].AimDistance)
            Aimbot_MT.Health(getgenv()[Settings_Name].AimbotHealth)

            MiscSection:addToggle("Aimbot Health Check", getgenv()[Settings_Name].AimbotHealth, function(Bool)
                getgenv()[Settings_Name].AimbotHealth = Bool
                Aimbot_MT.Health(Bool)
            end)

            MiscSection:addSlider("Aimbot Distance", getgenv()[Settings_Name].AimDistance, 0, 10000, function(NewValue)
                getgenv()[Settings_Name].AimDistance = NewValue
                Aimbot_MT.Distance(NewValue)
            end)
        end

        VisualsSelection:addToggle("ESP Teamcheck", getgenv()[Settings_Name].Teamcheck, function(Bool)
            getgenv()[Settings_Name].Teamcheck = Bool
            getgenv()["ESP_CACHE"].SetTeamCheck(Bool)
        end)

        VisualsSelection:addToggle("ESP NameTags", getgenv()[Settings_Name].ESP_NAMETAGS, function(Bool)
            getgenv()[Settings_Name].ESP_NAMETAGS = Bool

            if Bool then
                for _, Plr in ipairs(Players:GetPlayers()) do
                    if Plr ~= Player then
                        getgenv()["ESP_CACHE"].LoadNameTag(Plr)
                    end
                end
                getgenv()["ESP_CACHE"].SetNameTag(true)
            else
                getgenv()["ESP_CACHE"].UnLoadType("_ESP_NAME_TAG")
                getgenv()["ESP_CACHE"].SetNameTag(false)
            end
        end)

        VisualsSelection:addToggle("ESP Boxes", getgenv()[Settings_Name].Boxes, function(Bool)
            getgenv()[Settings_Name].Boxes = Bool
            if Bool then
                for _, Plr in ipairs(Players:GetPlayers()) do
                    if Plr ~= Player then
                        getgenv()["ESP_CACHE"].LoadBox(Plr)
                    end
                end
                getgenv()["ESP_CACHE"].SetBoxVisibility(true)
            else
                getgenv()["ESP_CACHE"].UnLoadType("_ESP_BOXES")
                getgenv()["ESP_CACHE"].SetBoxVisibility(false)
            end
        end)

        VisualsSelection:addToggle("ESP Tracers", getgenv()[Settings_Name].Tracers, function(Bool)
            getgenv()[Settings_Name].Tracers = Bool
            if Bool then
                for _, Plr in ipairs(Players:GetPlayers()) do
                    if Plr ~= Player then
                        getgenv()["ESP_CACHE"].LoadTracers(Plr)
                    end
                end
                getgenv()["ESP_CACHE"].SetTracersVisibility(true)
            else
                getgenv()["ESP_CACHE"].UnLoadType("_ESP_TRACERS")
                getgenv()["ESP_CACHE"].SetTracersVisibility(false)
            end
        end)

        local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color

        getgenv()["ESP_CACHE"].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

        VisualsSelection:addColorPicker("ESP Color", Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
            local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)

            getgenv()[Settings_Name].Color.R = R
            getgenv()[Settings_Name].Color.G = G
            getgenv()[Settings_Name].Color.B = B

            getgenv()["ESP_CACHE"].UpdateColor(Color3.fromRGB(R, G, B))
        end)

        VisualsSelection:addButton("Unload ESP", function(Bool)
            getgenv()["ESP_CACHE"].UnLoad()
        end)

        Window:SelectPage(Window.pages[1], true)
    end
end
                     if Window ~= nil and Settings_Name ~= nil then
                        local MarketService = game:GetService("MarketplaceService")
                        SettingsPage = SettingsPage or Window:addPage("Settings", 5012544693)
                        SettingsSection = SettingsSection or SettingsPage:addSection("Other", 5012544693)
                        SettingsSection:addButton("Save Config", function()
                           local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
                           if isSuccessful then
                              if tostring(info.Creator.Name) == "World // Zero" then
                                 SaveGameConfig(FixName(tostring(info.Creator.Name)) .. ".json", getgenv()[Settings_Name])
                                    elseif getgenv()["USE_GRUBHUB_UNIVERSAL"] == true then
                                 SaveGameConfig(FixName(tostring("Universal")) .. ".json", getgenv()[Settings_Name])
                                    else
                                 SaveGameConfig(tostring(game.PlaceId) .. ".json", getgenv()[Settings_Name])
                              end
                           end
                        end)
                        SettingsSection:addKeybind("Toggle Keybind", Enum.KeyCode.Home, function()
                           Window:toggle()
                        end, function()
                        end)
                     end
                  else
                     return sendError(serverData, clientData)
                  end
               end
            end, function(err)
               return warn(err .. "\n" .. debug.traceback())
            end)
   