xpcall(function()
   local CompileOrder = {
      "ANTI_HOOKS .lua",
      "ESP_MODULE.lua",
      "Deadline.lua",
      "WorldZero.lua",
      "PetSimX.lua",
      "Universal.lua",
   }

   local InitStartScript = [===[
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
   ]===]

   local InitEnd = [===[
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
   ]===]


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
       
       local InitCode = [[       
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
                
             ]]
       
       InitCode = InitCode .. InitStartScript
    
       local err_handler = function(err)
          return warn(err, debug.traceback())
       end
    
       local CompilerContents = {}

       for _, FileName in ipairs(listfiles("Grubhub/GrubhubV6Source/Games/")) do
          local Backup = tostring(FileName)
          FileName = tostring(FileName):gsub("Grubhub/GrubhubV6Source/Games/", "")
          FileName = tostring(FileName):gsub("Grubhub\\GrubhubV6Source\\Games\\", "")
          
          if table.find(CompileOrder, tostring(FileName)) then
             local Success, Contents = getrenv().xpcall(readfile, err_handler, Backup)
    
             if Success then
                  CompilerContents[tostring(FileName)] = Contents
             end
          end
       end

      for _, FileName in ipairs(CompileOrder) do
         if CompilerContents[tostring(FileName)] ~= nil then
            InitCode = InitCode .. "\n" .. CompilerContents[tostring(FileName)]
         end
      end

       InitCode = InitCode .. "\n" .. InitEnd
       writefile("Grubhub/GrubhubV6Source/CompiledScript.lua", InitCode)
    
       local Success, Contents = getrenv().xpcall(loadfile, err_handler, "Grubhub/GrubhubV6Source/CompiledScript.lua")
    
       if Success then
          print("Compile successful")
          --Contents()
       else
          print("Compile failed!")
       end
       getgenv().compiling_script = false
    end
 end, function(err)
    getgenv().compiling_script = false
   return warn(err .. "\n" .. debug.traceback())
 end)