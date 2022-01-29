xpcall(function()
    do
        getgenv().Key = '6ishObq3DXtpvAdKwaq6iTX8k';
        getgenv().DiscordWebhook = 'Link';
        getgenv().WebhookEnabled = false;
        getgenv().GubVersion = '5.0';

        local StartTimer = os.time()

        local UILibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Boxking776/GrubHub/main/modules/VenyXUI", true))()
        local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/mooncores/lib/d74663634965be19c972f137bcf683194362be28/notif.lua", true))()

        library:Notification("GrubHub", "\nPlease wait while we process the bytecode...\n", 10, Color3.fromRGB(255, 255, 255))

        for i,v in pairs(game:GetService("CoreGui"):GetDescendants()) do
            pcall(function()
                if v.Name == "Glow" then
                    v.Parent.Parent:Destroy()
                end
            end)
        end
        
        local function identify()
            local Executor = string.lower(identifyexecutor())
            local ExecutorTable = nil
            if string.find(Executor,"synapse") then
                ExecutorTable = {"Synapse",syn.request}
            end
            if string.find(Executor,"krnl") then
                ExecutorTable = {"Krnl",request}
            end
            if string.find(Executor,"flux") then
                ExecutorTable = {"Fluxus",request}
            end
            if string.find(Executor,"script") then
                ExecutorTable = {"Script-Ware",http.request}
            end
            if string.find(Executor,"sen") then
                ExecutorTable = {"Sentinel",request}
            end
            if string.find(Executor,"pro") then
                ExecutorTable = {"Protosmasher",http_request}
            end
            if string.find(Executor,"hurt") then
                ExecutorTable = {"SirHurt V5",http_request}
            end
            if string.find(Executor,"grub") then
                ExecutorTable = {"GrubHub",httprequest}
            end
            if string.find(Executor,"electron") then
                ExecutorTable = {"Electron",http_request}
            end
            if getgenv().WRD_LOADED ~= nil then
                ExecutorTable = {"JJSploit",http_request}
            end
            if getgenv().unlock_module ~= nil and getgenv().setscriptable ~= nil and getgenv().import ~= nil then
                ExecutorTable = {"Script-Ware-Mac",http_request}
            end
            if getgenv().OXYGEN_LOADED ~= nil then
                ExecutorTable = {"Oxygen U",http_request}
            end

            if ExecutorTable == nil then
                library:Notification("GrubHub Error", "Unsupported Exploit, please check our support list [Error Code #964963E]", 10, Color3.fromRGB(255, 255, 255))
                while true do end
            else
                return ExecutorTable
            end
        end


        local exploittable = identify()

        local exploit = exploittable[1]

        local specialisedrequest = exploittable[2]

        local function sendError(serverData,clientData)

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
                setclipboard("Error: Something went wrong during the request | Client Data: "..clientData.." | Exploit: "..exploit.." | Key: "..Key.." | Server Data: "..serverData.." | Loading Time: "..tostring(newtime))
            end

            specialisedrequest({
                Url = "http://127.0.0.1:6463/rpc?v=1",
                Method = "POST",
                Headers = {
                        ["Content-Type"] = "application/json";
                        ["Origin"] = 'https://discord.com';
                },
                Body = game:GetService("HttpService"):JSONEncode({
                    ['cmd'] = 'INVITE_BROWSER';
                    ['args'] = { ['code'] = 'wXpxZBcPzk' };
                    ['nonce'] = '162fc9af-f529-4fb6-8256-254e5da5c5a3';
                })
            })

        end

        local VersionRequest = "5.0"

        setclipboard(VersionRequest)

        local random = Random.new()
        local letters = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'}

        function getRandomLetter()
            return letters[random:NextInteger(1,#letters)]
        end

        function getRandomString(length, includeCapitals)
            local length = length or 10
            local str = ''
            for i=1,length do
                local randomLetter = getRandomLetter()
                if includeCapitals and random:NextNumber() > .5 then
                    randomLetter = string.upper(randomLetter)
                end
                str = str .. randomLetter
            end
            return str
        end

        local hash; do
            local MOD = 2^32
            local MODM = MOD-1
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
                0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5,
                0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
                0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3,
                0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
                0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc,
                0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
                0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7,
                0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
                0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13,
                0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
                0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3,
                0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
                0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5,
                0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
                0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208,
                0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2,
            }
            local function str2hexa(s)
                return (str_gsub(s, ".", function(c) return str_fmt("%02x", str_byte(c)) end))
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
                for i = i, i + 3 do n = n*256 + str_byte(s, i) end
                return n
                end
                local function preproc(msg, len)
                local extra = 64 - ((len + 9) % 64)
                len = num2s(8 * len, 8)
                msg = msg .. "\128" .. str_rep("\0", extra).. len
                assert(#msg % 64 == 0)
                return msg
            end
            local function initH256(H)
                H[1] = 0x6a09e667
                H[2] = 0xbb67ae85
                H[3] = 0x3c6ef372
                H[4] = 0xa54ff53a
                H[5] = 0x510e527f
                H[6] = 0x9b05688c
                H[7] = 0x1f83d9ab
                H[8] = 0x5be0cd19
                return H
            end
            local function digestblock(msg, i, H)
                local w = {}
                for j = 1, 16 do w[j] = s232num(msg, i + (j - 1)*4) end
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
                for i = 1, #msg, 64 do digestblock(msg, i, H) end
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
            spawn(function()math.randomseed(tick()/4);end)
            local options = {}
            local new_options = {}
            while #options ~= 3 do
                local num = math.random(1,3) 
                if not new_options[num] then
                    table.insert(options,num)
                    new_options[num] = true
                end
            end
            return options
        end
        local function eq(v1,v2)
            return true
        end

        local secret =(function(args)local Pos,Finished,charCodes,Key,arglen=1,"",{},447-#("https://pastebin.com/raw/5EX7mZhT"),35-#("%w+")local schar=Finished.char local Keys={233+#("%w+"),781-#("__eq"),785-#("assert"),876-#("__index"),350-#("discord.com/api/v8/"),23+#("https://pastebin.com/raw/5EX7mZhT"),111+#("https://pastebin.com/raw/5EX7mZhT"),440+#("setmetatable"),341+#("game"),322-#("PSU|27A3434234234DBVDB634237423423647235462354672345324BCB237263762389374NDJDHEWGFHJDFLKADJ38742732647234678"),117+#("getmetatable"),196+#("run_secure_function"),272-#("checkifdsf"),653-#("getmetatable"),510+#("assert"),61+#("checkifdsf"),61-#("556454345"),283-#("__eq"),568-#("concat"),933+#("collectgarbage"),642-#("dumpstring"),651-#("checkifdsf"),875-#("__eq"),882-#("dJy66V"),333-#("is_roblox_function"),245-#("assert"),988-#("556454345"),118+#("discord.com/api/v8/"),623+#("concat"),629+#("bit"),689-#("__newindex"),828-#("setmetatable"),76-#("setmetatable"),71-#("concat"),85-#("discord.com/api/v8/"),79-#("getmetatable"),56+#("setmetatable")}getfenv(0)Finished.split("","")while Pos<=132-#("checkifdsf")do charCodes[Pos]=schar(Pos)Pos=Pos+1 end Pos=1 local Confused=""while Pos<=arglen do Confused=Confused .. charCodes[67]Confused=Confused .. charCodes[94]Confused=Confused .. charCodes[2]Confused=Confused .. charCodes[54]Confused=Confused .. charCodes[117]Confused=Confused .. charCodes[64]Confused=Confused .. charCodes[48]Confused=Confused .. charCodes[15]Confused=Confused .. charCodes[111]Confused=Confused .. charCodes[117]Confused=Confused .. charCodes[111]Confused=Confused .. charCodes[116]Confused=Confused .. charCodes[39]Confused=Confused .. charCodes[36]Confused=Confused .. charCodes[92]Confused=Confused .. charCodes[58]Confused=Confused .. charCodes[116]Confused=Confused .. charCodes[88]Confused=Confused .. charCodes[113]Confused=Confused .. charCodes[86]Confused=Confused .. charCodes[119]Confused=Confused .. charCodes[5]Confused=Confused .. charCodes[54]Confused=Confused .. charCodes[53]Confused=Confused .. charCodes[119]Confused=Confused .. charCodes[88]Confused=Confused .. charCodes[14]Confused=Confused .. charCodes[36]Confused=Confused .. charCodes[5]Confused=Confused .. charCodes[44]Confused=Confused .. charCodes[32]Confused=Confused .. charCodes[38]Confused=Confused .. charCodes[17]Confused=Confused .. charCodes[111]Confused=Confused .. charCodes[115]Confused=Confused .. charCodes[48]Confused=Confused .. charCodes[69]Confused=Confused .. charCodes[61]Confused=Confused .. charCodes[65]Confused=Confused .. charCodes[97]Confused=Confused .. charCodes[117]Confused=Confused .. charCodes[7]Confused=Confused .. charCodes[111]Finished=Finished..charCodes[args[Pos]-Pos-Key-Keys[Pos]]Confused=Confused .. charCodes[92]Confused=Confused .. charCodes[86]Confused=Confused .. charCodes[43]Confused=Confused .. charCodes[91]Confused=Confused .. charCodes[64]Confused=Confused .. charCodes[112]Confused=Confused .. charCodes[82]Confused=Confused .. charCodes[75]Confused=Confused .. charCodes[29]Confused=Confused .. charCodes[91]Confused=Confused .. charCodes[113]Confused=Confused .. charCodes[1]Confused=Confused .. charCodes[17]Confused=Confused .. charCodes[17]Confused=Confused .. charCodes[75]Confused=Confused .. charCodes[99]Confused=Confused .. charCodes[42]Confused=Confused .. charCodes[8]Confused=Confused .. charCodes[25]Confused=Confused .. charCodes[6]Confused=Confused .. charCodes[54]Confused=Confused .. charCodes[75]Confused=Confused .. charCodes[71]Confused=Confused .. charCodes[119]Confused=Confused .. charCodes[86]Confused=Confused .. charCodes[95]Confused=Confused .. charCodes[95]Confused=Confused .. charCodes[29]Confused=Confused .. charCodes[63]Confused=Confused .. charCodes[38]Confused=Confused .. charCodes[27]Confused=Confused .. charCodes[84]Confused=Confused .. charCodes[32]Confused=Confused .. charCodes[8]Confused=Confused .. charCodes[98]Confused=Confused .. charCodes[29]Confused=Confused .. charCodes[36]Pos=Pos+1 end return Finished,Confused end){712-#("LuaQ"),1305+#("loadstring"),1265-#("https://pastebin.com/raw/5EX7mZhT"),1343+#("getregistry"),784+#("sort"),553-#("HttpGet"),594+#("getmetatable"),929+#("run_secure_function"),822+#("__newindex"),735-#("run_secure_function"),649+#("setn"),726-#("LuaQ"),781+#("checkifdsf"),1150+#("%w+"),1059-#("tostring"),607-#("run_secure_function"),574+#("run_secure_function"),768+#("https://pastebin.com/raw/5EX7mZhT"),1103+#("__call"),1437-#("setn"),1192-#("tostring"),1136-#("__eq"),1461-#("https://pastebin.com/raw/5EX7mZhT"),1341+#("concat"),813+#("__call"),710+#("__call"),1494-#("__call"),729-#("PSU|27A3434234234DBVDB634237423423647235462354672345324BCB237263762389374NDJDHEWGFHJDFLKADJ38742732647234678"),1147-#("setn"),1111+#("checkifdsf"),1205-#("concat"),1349+#("loadstring"),54+#("checkifdsf"),61+#("LuaQ"),-42+#("PSU|27A3434234234DBVDB634237423423647235462354672345324BCB237263762389374NDJDHEWGFHJDFLKADJ38742732647234678"),71-#("setn"),58+#("loadstring")}	

        local whitelisted = false

        local basec = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'

        local function base_encode(data)
            local b = basec
            return ((data:gsub('.', function(x) 
                local r,b='',x:byte()
                for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
                return r;
            end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
                if (#x < 6) then return '' end
                local c=0
                for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
                return b:sub(c+1,c+1)
            end)..({ '', '==', '=' })[#data%3+1])
        end

        local function base_decode(data)
            local b = basec
            data = string.gsub(data, '[^'..b..'=]', '')
            return (data:gsub('.', function(x)
                if (x == '=') then return '' end
                local r,f='',(b:find(x)-1)
                for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
                return r;
            end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
                if (#x ~= 8) then return '' end
                local c=0
                for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
                    return string.char(c)
            end))
        end

        local function Convert_v1(Offset, Text)
            local Result = ""
            local length = #Text
            for Index = 1, length do
            local char = Text:sub(Index, Index)
            local Byte = char:byte()
            local MMath = (Byte + Index + Offset + 3)
            local letter = string.char(MMath)
            Result = Result .. letter
            end
            return Result
        end

        local function UnConvert_v1(Offset, Text)
            local Result = ""
            local length = #Text
            for Index = 1, length do
            local char = Text:sub(Index, Index)
            local Byte = char:byte()
            local MMath = (Byte - Index - Offset - 3)
            local letter = string.char(MMath)
            Result = Result .. letter
            end
            return Result
        end

        local function GetReturnedData()
            local D_ATE = os.date()
            local T_ime = os.time()
            
            local ShouldReturn = tostring(D_ATE) .. "|" .. tostring(T_ime)

            local R1, R2 = 10, 20
            local HTTP_SERVICE = game:GetService("HttpService")
            local RGen = Random.new();
            local RN1 = RGen:NextNumber(3, 7);

            local OffsetTable = {}

            RN1 = math.abs(math.floor(RN1))

            local Ticks = math.floor(RGen:NextNumber(1, 2));
            local QuickMath = (RN1 + Ticks % 9.1);
            QuickMath = QuickMath * 1.15
            QuickMath = QuickMath / 1.1
            QuickMath = QuickMath % 10
            QuickMath = math.floor(QuickMath)
            
            local DataTable = {
                Url = 'https://grubhub-whitelist.herokuapp.com/api/mYq3t6w9',
                Method = 'GET',
                Headers = {
                    ["key"] = Key;
                    ["username"] = tostring(game.Players.LocalPlayer.Name);
                    ["dName"] = tostring(game.Players.LocalPlayer.DisplayName);
                    ["executor"] = exploit;
                }
            }

            for Index = 1, 200 do
                local NewIndex = "INDEX_" .. tostring(Index)
                OffsetTable[NewIndex] = math.random(R1, R2)
            end

            OffsetTable["INDEX_201"] = math.random(R1, R2)
            OffsetTable["INDEX_202"] = math.random(R1, R2)
            OffsetTable["INDEX_203"] = math.random(R1, R2)
            OffsetTable["INDEX_204"] = math.random(R1, R2)
            OffsetTable["INDEX_205"] = QuickMath
            OffsetTable["INDEX_206"] = math.random(R1, R2)
            OffsetTable["INDEX_207"] = math.random(R1, R2)
            OffsetTable["INDEX_208"] = math.random(R1, R2)
            OffsetTable["INDEX_209"] = math.random(R1, R2)
            OffsetTable["INDEX_210"] = base_encode(tostring(ShouldReturn))

            DataTable.Headers["data"] = tostring(base_encode(HTTP_SERVICE:JSONEncode(OffsetTable)));

            local returnedData = specialisedrequest(DataTable)
            return returnedData, ShouldReturn, QuickMath
        end

        if true then
            whitelisted = true
            --ESP_MODULE.lua_compile_spot
            --Timber.lua_compile_spot
            --PhantomForces.lua_compile_spot
            --BloxBurg.lua_compile_spot
        else
            return sendError(serverData,clientData)
        end
    end
end, function(err)
    return warn(err .. "\n" .. debug.traceback())
end)