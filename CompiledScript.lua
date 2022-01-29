                  local function decode_string_v1(str, seed)
                     repeat
                        seed = seed * 3
                     until seed > 2^43
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
            xpcall(function()
    do
        getgenv().Key = (decode_string_v1("b1dc22ddc6acacb6b56969ec7a2957fcd5e95c2d4e99d768ac",1885441553));
        getgenv().DiscordWebhook = (decode_string_v1("d3627f44",780616090));
        getgenv().WebhookEnabled = false;
        getgenv().GubVersion = (decode_string_v1("445ad1",32148313));
    
        local CLIENT_DEOBF_OFFSET = 3;
        local SERVER_DEOBF_OFFSET = 1;

        local StartTimer = os.time()
    
        local UILibrary = loadstring(game:HttpGet((decode_string_v1("20e6ea16d87193d4677472838ff77885f17b1b088f45e00724bab91128439eea911a30536f3a47921f55acf8eb1482d8f3a61584533135b57829d8784d8a7841fa76ae789d26ff629c",1361870657)), true))()
        local library = loadstring(game:HttpGet((decode_string_v1("3050f299b34e44bb40f1de61feccd51ad344c1bb8d8ebcbe0b3357418e0d6e77c352e112076b12833093d51b1e86e48c0e1039e124ffe11b2cf5acba36183bfd201454eea1ccd888770c3453a43c3bc808748cf2a2775583df561ebf9fc1025644d3",1387088979))))()
    
        library:Notification((decode_string_v1("d1e7db87ebb0cb",1715862979)), (decode_string_v1("d9d8bc7fb34b822916cbbcb2b8ab9c53657e6848f91eeabaa9b40c798992e3cf1c1dda0efa4d71515c83ccb89180",30978878)), 10, Color3.fromRGB(255, 255, 255))
    
        for i,v in pairs(game:GetService((decode_string_v1("2862dd988e3e47",719195547))):GetDescendants()) do
            pcall(function()
                if v.Name == (decode_string_v1("7ec147b0",271827204)) then
                    v.Parent.Parent:Destroy()
                end
            end)
        end
    
        local function identify()
            local Executor = string.lower(identifyexecutor())
            local ExecutorTable = nil
            if string.find(Executor,(decode_string_v1("0133e8f7533601",1623372730))) then
                ExecutorTable = {(decode_string_v1("1e080bcd71fae2",1176026126)),syn.request}
            end
            if string.find(Executor,(decode_string_v1("18c1ad8d",441641521))) then
                ExecutorTable = {(decode_string_v1("1c377d32",2044966563)),request}
            end
            if string.find(Executor,(decode_string_v1("f66dd395",63081608))) then
                ExecutorTable = {(decode_string_v1("0ad40dbef907",1655528989)),request}
            end
            if string.find(Executor,(decode_string_v1("e3e74de71976",1604166560))) then
                ExecutorTable = {(decode_string_v1("624ba005b5e3641993e32e",764029684)),http.request}
            end
            if string.find(Executor,(decode_string_v1("f037da",295333403))) then
                ExecutorTable = {(decode_string_v1("e0199102eaf65202",995088726)),request}
            end
            if string.find(Executor,(decode_string_v1("474be2",2029493894))) then
                ExecutorTable = {(decode_string_v1("a7b3e39b52bb1ecbc201048b",2004142656)),http_request}
            end
            if string.find(Executor,(decode_string_v1("e08f51bc",501772265))) then
                ExecutorTable = {(decode_string_v1("8e3dd48b84582117d4f8",1852935166)),http_request}
            end
            if string.find(Executor,(decode_string_v1("24ee0dd2",349622929))) then
                ExecutorTable = {(decode_string_v1("cf8b73f11951ec",1443790560)),httprequest}
            end
            if string.find(Executor,(decode_string_v1("9603112e1ed768bd",257119290))) then
                ExecutorTable = {(decode_string_v1("2ea58fd27050dd97",1810892420)),http_request}
            end
            if getgenv().WRD_LOADED ~= nil then
                ExecutorTable = {(decode_string_v1("d1dac6934beab180",1320605855)),http_request}
            end
            if getgenv().unlock_module ~= nil and getgenv().setscriptable ~= nil and getgenv().import ~= nil then
                ExecutorTable = {(decode_string_v1("aade600c5338a4124f2e356953926c",38217350)),http_request}
            end
            if getgenv().OXYGEN_LOADED ~= nil then
                ExecutorTable = {(decode_string_v1("c3875260a1c44e6f",455532605)),http_request}
            end
    
            if ExecutorTable == nil then
                library:Notification((decode_string_v1("573fd636dc10ae6920a580a700",530091733)), (decode_string_v1("af302cf26b750c5755a15615fea54d12c63dfcc9591c1dadf4ae3c6cfbfeb8b0e83808dadd0df4c2e2bc560190829b6a0cd6e2ee88973a4c24d937fc778807090ef1b04b09bd0de0",1487428328)), 10, Color3.fromRGB(255, 255, 255))
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
                library:Notification((decode_string_v1("2d08d08546074a0e1822d0739171",1575231712)), (decode_string_v1("548144092b6b3217233fdaa5f2b53c6d357831df53c28803eeacb2c74183a80b02104d63f5ac40e3eda18ff1850465439dbcafb7c718d3b29f61a394bf99482450c52527fa",821900817)), 15, Color3.fromRGB(255, 255, 255))
            elseif serverData == (decode_string_v1("f8b50a3417e6c717f99dfb7dc7bb22198560e5e5a5175ed3c33e42391b431beb83d409253167eb38748b4b937174e477",436530225)) then
                library:Notification((decode_string_v1("b41985cdd085da81496cf57e673c",1239489236)), (decode_string_v1("58993be793e07987d9abad8757e884991d4078bff960b35b21a30b7baa63cefb03fa7e9c7f7edc126cedbab4fcb072f69c042f435e085f4a3c",1948001399)), 15, Color3.fromRGB(255, 255, 255))
            elseif serverData == (decode_string_v1("09e78cc18a741bf7c699b2e97428fa03c5728a8fc7f356724a",1644964502)) then
                library:Notification((decode_string_v1("e4f1fa39943800156aef729b15d8",1137859603)), (decode_string_v1("261b3aa787ec33190751114bb9f568829dca796ba019207d4edc352253e4cd0f4b9c5a95bb5dbc4d7daae15a740a598bfba65dc2ddbe2ffc9920e33394",31453917)), 15, Color3.fromRGB(255, 255, 255))
            elseif serverData == (decode_string_v1("01787f5b494b7f0dbe6f86656ed5dd159f114152",1427663545)) then
                library:Notification((decode_string_v1("d6976713813a6bab218989d39b081b16",1728591032)), (decode_string_v1("5abcf7811d75f8aa31a3758fe4c6b876c9ad49a0c722eae721cf83b070c8b2a64ee102f8a5df67e8867b456f94630d148472de29cc168a6b50ec660ee2a165efca3dd4f7a2",932533252)), 15, Color3.fromRGB(255, 255, 255))
            else
                library:Notification((decode_string_v1("5a128de60b0bed9d9af2005193bf",1769203279)), (decode_string_v1("bc4015436f661b023b0e60e2e04e5ae0ad0c0dbff3bcbfee1d859b4505f6cad3aca35ae947612b6920bd2e885b8f81ead7939fd8332c7d5fec3c312a81b1cfb3e41f2dd041000a5f3a725d6a6dc9c3e5d3eea680a34f332a838d8fb0d110751b3c25ede405d96aadc14bbbf8f6cf5601ff5ff16bc10ff7b4e9",1107216762)), 15, Color3.fromRGB(255, 255, 255))
                setclipboard((decode_string_v1("6a20d940c463bfb5cded587762350d8fb9a381d97289f1acd1a5f7ca2ab7a4b1a3d83268dc68b5dc45a4b803a74b4deb789437908928d2947ba7487961f3",1886214942))..clientData..(decode_string_v1("372756a9bc6a53cabec309dc",402874440))..exploit..(decode_string_v1("b842c30a15d39feb",1691987023))..Key..(decode_string_v1("776fd3f517bf3af69882434b830378b4",1820377568))..serverData..(decode_string_v1("b87ade46431a2359e78876ab2c6bb9837f",1524460133))..tostring(newtime))
            end
    
            specialisedrequest({
                Url = (decode_string_v1("d0097ddf65ffbd1baa82b729a4878ca120f5de156865398e5d30dd7b7d",545404553)),
                Method = (decode_string_v1("c8c310c7",155857313)),
                Headers = {
                        [(decode_string_v1("9a39b6fef53845cf41bfd493",1034965408))] = (decode_string_v1("64bdc156c0bcc815a3be48444d9ec0d9",1288211239));
                        [(decode_string_v1("66627d17fde6",1763045288))] = (decode_string_v1("6f0057346eef824899d9098c8a3e104067d956",1072137661));
                },
                Body = game:GetService((decode_string_v1("7ff5649e6d5bc7633ede35",74225295))):JSONEncode({
                    [(decode_string_v1("02a84a",1319039364))] = (decode_string_v1("92df32534f7ccf29d609bbdcf256",1980410321));
                    [(decode_string_v1("18822500",1265415439))] = { [(decode_string_v1("0f81b06e",510828658))] = (decode_string_v1("e48556f71fbc2962c32e",1159831869)) };
                    [(decode_string_v1("8a73b7bb66",1405785405))] = (decode_string_v1("865e1927e2da81bc5a113b743a844464b6d86625374c74eb0d009793b68906fe254fcfe3",1252180381));
                })
            })
    
        end

        local random = Random.new()
        local letters = {(decode_string_v1("76",1028109974)),(decode_string_v1("b2",1507407523)),(decode_string_v1("84",2044778890)),(decode_string_v1("b4",1717116761)),(decode_string_v1("9c",422411814)),(decode_string_v1("39",597718922)),(decode_string_v1("92",1843329792)),(decode_string_v1("5f",1842013343)),(decode_string_v1("b7",524565506)),(decode_string_v1("8d",376102092)),(decode_string_v1("e4",83185724)),(decode_string_v1("83",592699580)),(decode_string_v1("18",1339265407)),(decode_string_v1("02",553470554)),(decode_string_v1("cc",2137820997)),(decode_string_v1("27",636965938)),(decode_string_v1("9d",1679754062)),(decode_string_v1("5e",1491022974)),(decode_string_v1("df",1500815967)),(decode_string_v1("4b",42621620)),(decode_string_v1("0b",1543511126)),(decode_string_v1("b1",860739370)),(decode_string_v1("30",2055336526)),(decode_string_v1("9f",1017498401)),(decode_string_v1("3e",1242221465)),(decode_string_v1("bd",301754418))}
    
        function getRandomLetter()
            return letters[random:NextInteger(1,#letters)]
        end
    
        function getRandomString(length, includeCapitals)
            local length = length or 10
            local str = (decode_string_v1("",500323621))
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
                return (str_gsub(s, (decode_string_v1("45",195432829)), function(c) return str_fmt((decode_string_v1("90070419",2026843800)), str_byte(c)) end))
            end
            local function num2s(l, n)
                local s = (decode_string_v1("",91453627))
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
                msg = msg .. (decode_string_v1("98",1445912437)) .. str_rep((decode_string_v1("18",1346563376)), extra).. len
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
    
        if getgenv().Key == (decode_string_v1("",1492196700)) or nil then
            Key = (decode_string_v1("c19a0445",1977478306))
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
            spawn(function()math.randomseed(tick()/4);end)
            local charset = (decode_string_v1("c4560c729b8d68eda4ce2e6418949e93086b341b33df9bd26303be8ecf9505ce3dd9db83f6a3ddd73c5d398b984a41a0b1e7768e77d0c6674144f6abcd",1281916263))
            if type(v1) == (decode_string_v1("4c8fcb8d3be1",1908299299)) and type(v2) == (decode_string_v1("0ea24540efd0",1290209470)) then
                local length1,length2,chars_1,chars_2 = #v1,#v2,{},{}
                v1:gsub((decode_string_v1("45",1755932359)),function(s)chars_1[#chars_1+1]=s end)
                v2:gsub((decode_string_v1("d1",1798835711)),function(s)chars_2[#chars_2+1]=s end)
                if (length1~=length2) then
                    return false
                end
                local start = math.random(1,length1)
                local bool = true
                for i,v in pairs(generate_order()) do
                    if v == 1 then
                        for i=1,start do
                            local operation_type = math.random(1,4)
                            if operation_type == 1 then
                                if not not (chars_1[i] ~= chars_2[i]) then bool = false end
                            elseif operation_type == 2 then
                                if not (chars_1[i] == chars_2[i]) then bool = false end 
                            elseif operation_type == 3 then
                                if not not (chars_2[i] ~= chars_1[i]) then bool = false end
                            elseif operation_type == 4 then
                                if not (chars_2[i] == chars_1[i]) then bool = false end 
                            end
                        end  
                    elseif v == 2 then
                        spawn(function()math.randomseed(tick()/2);end)
                        for i=1,math.random(1,20) do
                            local num_1,num_2 = math.random(1,#charset),math.random(1,#charset)
                            local char_1,char_2 = charset:sub(num_1,num_1),charset:sub(num_2,num_2)
                            local operation_type = math.random(1,4)
                            if operation_type == 1 then
                                if not not (num_1 ~= num_2) then end
                            elseif operation_type == 2 then
                                if not (num_1 == num_2) then end 
                            elseif operation_type == 3 then
                                if not not (num_1 ~= num_2) then end
                            elseif operation_type == 4 then
                                if not (num_1 == num_2) then end 
                            end
                        end  
                    elseif v == 3 then
                        for i=1,length1-start do
                            local operation_type = math.random(1,4)
                            if operation_type == 1 then
                                if not not (chars_1[i] ~= chars_2[i]) then bool = false end
                            elseif operation_type == 2 then
                                if not (chars_1[i] == chars_2[i]) then bool = false end 
                            elseif operation_type == 3 then
                                if not not (chars_2[i] ~= chars_1[i]) then bool = false end
                            elseif operation_type == 4 then
                                if not (chars_2[i] == chars_1[i]) then bool = false end 
                            end
                        end
                    end
                end
                return bool
            else 
                return false
                end
            end
    
        local secret =(function(args)local Pos,Finished,charCodes,Key,arglen=1,(decode_string_v1("",1790513602)),{},447-#((decode_string_v1("1f99b364f1b5aedea1c9c68717fedf2fd894344fef3b4d30cc5d1d14825bd1c8b0",901251167))),35-#((decode_string_v1("b46a06",869770864)))local schar=Finished.char local Keys={233+#((decode_string_v1("5492c8",1930410959))),781-#((decode_string_v1("3ef4e0f6",1942525292))),785-#((decode_string_v1("14b570bec1d9",317281208))),876-#((decode_string_v1("1331aa24341dff",1342231924))),350-#((decode_string_v1("cbea69d497b740ed2de4e823ac5c525e6c77a8",412082935))),23+#((decode_string_v1("3f47d72cee28845b9f70b293df93c7bdbb97572a1b5493e423cbaee92326bee959",439906871))),111+#((decode_string_v1("c07e6e444d40339afd735a27a5d3fe91205f7800a01d41ec08d34c9250902cd6b1",531722493))),440+#((decode_string_v1("bb61cf3dc8a3ee6d37b23f5f",484399303))),341+#((decode_string_v1("e47ff313",1822139271))),322-#((decode_string_v1("871510c7062976821433f4ca7e7bb62c6c657ff107030be9079fed0967dadf0c0783d6833dc2f0e7a948d4e6fb1f5c5fa494260ab2dc1d62f8c9df236b2727787b38f802d59de4889ee828788220fe105d93e9b22c25a64af3839fa5df52746476997afffe4ebbe6d88d01a1",1812061274))),117+#((decode_string_v1("06488f671ccc3739d7b37764",1940451545))),196+#((decode_string_v1("8d35e1ab168eb4062a32abd139f249e0c882fc",776339100))),272-#((decode_string_v1("ab5cdfaf3772347bd219",472326638))),653-#((decode_string_v1("d2973de53c38ae9dd1dfa618",1068260087))),510+#((decode_string_v1("a6de0fe62924",684714286))),61+#((decode_string_v1("d1d7a5e08be0db8a107e",1647898818))),61-#((decode_string_v1("92c49bae1dfaddcbfe",2045126364))),283-#((decode_string_v1("30e57553",107984586))),568-#((decode_string_v1("4e4c68f86724",956606392))),933+#((decode_string_v1("0f3551c9d1b131fb7f0fd836380d",1507228341))),642-#((decode_string_v1("43db0028069f3ab70599",443465096))),651-#((decode_string_v1("5e6ead243d9368917c0f",1863496153))),875-#((decode_string_v1("67cfb83e",1422383555))),882-#((decode_string_v1("0bafdb8a3b93",224038745))),333-#((decode_string_v1("3a26b9a9cf091e6512274b8f172a5988681d",1799835411))),245-#((decode_string_v1("dd0cf981fe5e",1363664051))),988-#((decode_string_v1("06f1cdf3ec92dbccae",765758053))),118+#((decode_string_v1("9c646a19ef5576aedc03b2507550a9df8e231d",1613401069))),623+#((decode_string_v1("0f88a1721101",1519137642))),629+#((decode_string_v1("c997a0",764026202))),689-#((decode_string_v1("0058156fba7aa0751fc8",1894176044))),828-#((decode_string_v1("4c671aa8912ddb3b62c6c7cc",1886325663))),76-#((decode_string_v1("504d018d35bbd2fbe7e92118",1964430398))),71-#((decode_string_v1("62385b07b207",1097471293))),85-#((decode_string_v1("43b96a2a56d5301d3c2dc0ff398b2796f8dba7",49442951))),79-#((decode_string_v1("d2ef1c7ac9ea1d516ee21649",1061523873))),56+#((decode_string_v1("6e051e64d21e9009ddd6c526",1063013116)))}getfenv(0)Finished.split((decode_string_v1("",1650779970)),(decode_string_v1("",1737986843)))while Pos<=132-#((decode_string_v1("ba64e52256544ed857fd",38655299)))do charCodes[Pos]=schar(Pos)Pos=Pos+1 end Pos=1 local Confused=(decode_string_v1("",64581179))while Pos<=arglen do Confused=Confused .. charCodes[67]Confused=Confused .. charCodes[94]Confused=Confused .. charCodes[2]Confused=Confused .. charCodes[54]Confused=Confused .. charCodes[117]Confused=Confused .. charCodes[64]Confused=Confused .. charCodes[48]Confused=Confused .. charCodes[15]Confused=Confused .. charCodes[111]Confused=Confused .. charCodes[117]Confused=Confused .. charCodes[111]Confused=Confused .. charCodes[116]Confused=Confused .. charCodes[39]Confused=Confused .. charCodes[36]Confused=Confused .. charCodes[92]Confused=Confused .. charCodes[58]Confused=Confused .. charCodes[116]Confused=Confused .. charCodes[88]Confused=Confused .. charCodes[113]Confused=Confused .. charCodes[86]Confused=Confused .. charCodes[119]Confused=Confused .. charCodes[5]Confused=Confused .. charCodes[54]Confused=Confused .. charCodes[53]Confused=Confused .. charCodes[119]Confused=Confused .. charCodes[88]Confused=Confused .. charCodes[14]Confused=Confused .. charCodes[36]Confused=Confused .. charCodes[5]Confused=Confused .. charCodes[44]Confused=Confused .. charCodes[32]Confused=Confused .. charCodes[38]Confused=Confused .. charCodes[17]Confused=Confused .. charCodes[111]Confused=Confused .. charCodes[115]Confused=Confused .. charCodes[48]Confused=Confused .. charCodes[69]Confused=Confused .. charCodes[61]Confused=Confused .. charCodes[65]Confused=Confused .. charCodes[97]Confused=Confused .. charCodes[117]Confused=Confused .. charCodes[7]Confused=Confused .. charCodes[111]Finished=Finished..charCodes[args[Pos]-Pos-Key-Keys[Pos]]Confused=Confused .. charCodes[92]Confused=Confused .. charCodes[86]Confused=Confused .. charCodes[43]Confused=Confused .. charCodes[91]Confused=Confused .. charCodes[64]Confused=Confused .. charCodes[112]Confused=Confused .. charCodes[82]Confused=Confused .. charCodes[75]Confused=Confused .. charCodes[29]Confused=Confused .. charCodes[91]Confused=Confused .. charCodes[113]Confused=Confused .. charCodes[1]Confused=Confused .. charCodes[17]Confused=Confused .. charCodes[17]Confused=Confused .. charCodes[75]Confused=Confused .. charCodes[99]Confused=Confused .. charCodes[42]Confused=Confused .. charCodes[8]Confused=Confused .. charCodes[25]Confused=Confused .. charCodes[6]Confused=Confused .. charCodes[54]Confused=Confused .. charCodes[75]Confused=Confused .. charCodes[71]Confused=Confused .. charCodes[119]Confused=Confused .. charCodes[86]Confused=Confused .. charCodes[95]Confused=Confused .. charCodes[95]Confused=Confused .. charCodes[29]Confused=Confused .. charCodes[63]Confused=Confused .. charCodes[38]Confused=Confused .. charCodes[27]Confused=Confused .. charCodes[84]Confused=Confused .. charCodes[32]Confused=Confused .. charCodes[8]Confused=Confused .. charCodes[98]Confused=Confused .. charCodes[29]Confused=Confused .. charCodes[36]Pos=Pos+1 end return Finished,Confused end){712-#((decode_string_v1("03ede2af",71187675))),1305+#((decode_string_v1("fc568f42e55f26e6ad42",1472246051))),1265-#((decode_string_v1("4fdd097557ff8ff30a3b59125ecf35c2e0cd9421bf3b62f47b84d7e3c66894e5b0",666155441))),1343+#((decode_string_v1("21600c5a3d052c27a4a630",1384734524))),784+#((decode_string_v1("f7990a4c",454934028))),553-#((decode_string_v1("4f4e6f0d63bf3c",229095627))),594+#((decode_string_v1("4be735b2155542b6c5128159",566368228))),929+#((decode_string_v1("fd51036dbc504dc4b4f7887fba31554cd87079",824102429))),822+#((decode_string_v1("fa6c8c63a3611193347a",1178902175))),735-#((decode_string_v1("c60a0b5aa01898c1b901172f27e88f8bbc1277",1401345743))),649+#((decode_string_v1("e34d6835",1605060178))),726-#((decode_string_v1("9c67d084",1480411595))),781+#((decode_string_v1("acbe24bc27feca25f853",746861053))),1150+#((decode_string_v1("745980",1313534968))),1059-#((decode_string_v1("03a2939078e747ed",627482685))),607-#((decode_string_v1("092bebeee7cc21fd7fd9854adbd861ef3f55bb",343982217))),574+#((decode_string_v1("d9c3574c8565601bc7c7d8ca64f4558e52a1b4",44805894))),768+#((decode_string_v1("3f0ccc7a45a85779d06335cbb7171f7345ab2bea2ba4e99a0dec4a3ce05da04a70",1313241302))),1103+#((decode_string_v1("20291a7adde2",856893743))),1437-#((decode_string_v1("6e2a2a1b",1057926329))),1192-#((decode_string_v1("d4b373c0aa0ca511",1466832278))),1136-#((decode_string_v1("d65fa448",1260743834))),1461-#((decode_string_v1("f00f39a2d9a92addc14f85e2383116f3836bef2f4e31a04be45f0a294aae201e6c",1546912288))),1341+#((decode_string_v1("e5ab8d307ec0",470439343))),813+#((decode_string_v1("8c0f8bf49ba5",1800904795))),710+#((decode_string_v1("a95f26650324",1392526074))),1494-#((decode_string_v1("b9acc476209a",1715537859))),729-#((decode_string_v1("e87be9cb2697c60859574b5fee31b883466f422fd3723246b78f6974237d6d8aaae8daf5acec993001fc1c0475299f5e9c38788f4275d4e774d741ad6998f8c00d5ed134c93b275d7e3168f9de2a0aa2ffd9b83099caf71839bcaf4d9ef784c61d864ed709363c0726600156",176438005))),1147-#((decode_string_v1("d5714bde",1404682907))),1111+#((decode_string_v1("5e3e35fd0f2381accb7c",1871537514))),1205-#((decode_string_v1("0f34e476b29a",510592184))),1349+#((decode_string_v1("0c2ac3b013f80827270d",1543430416))),54+#((decode_string_v1("00d5c092859f4538372d",1334166837))),61+#((decode_string_v1("3353f716",730917526))),-42+#((decode_string_v1("074f58a7ec6d6db4efa915528ba32d53897e1cfcee38916f38ab15329012a5ae28ad9abcb895e43fdea7c491bc7c548a330e0bb292ac8d3a60684a6a8121c262e715e87b09dd15f1db948a47c1f273308be2c007b82527bdd104576e9fef48a6fbe49a85c6312ffcd89ab070",663263417))),71-#((decode_string_v1("5add18ef",2100429485))),58+#((decode_string_v1("dba43ca67750e5f221d9",1981933590)))}	
    
        local whitelisted = false
    
        local basec = (decode_string_v1("dc52669cfce10102abf42a53f65caacaab99b4a53f272048fb57df0e1ec499617982cc08541f9708f24bce4f7c255c64f4faad7c6093154463a0402612784fec",371556525))
    
        local function base_encode(data)
            local b = basec
            return ((data:gsub((decode_string_v1("89",1133943481)), function(x) 
                local r,b=(decode_string_v1("",263845465)),x:byte()
                for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and (decode_string_v1("11",1602606260)) or (decode_string_v1("87",23133790))) end
                return r;
            end)..(decode_string_v1("68690522",1549389311))):gsub((decode_string_v1("047168ca7bdca238620681c0d0b8e106",758917834)), function(x)
                if (#x < 6) then return (decode_string_v1("",178783445)) end
                local c=0
                for i=1,6 do c=c+(x:sub(i,i)==(decode_string_v1("b6",915086024)) and 2^(6-i) or 0) end
                return b:sub(c+1,c+1)
            end)..({ (decode_string_v1("",538115443)), (decode_string_v1("8461",2114324237)), (decode_string_v1("b8",784192277)) })[#data%3+1])
        end
    
        local function base_decode(data)
            local b = basec
            data = string.gsub(data, (decode_string_v1("045d",1298381513))..b..(decode_string_v1("8456",2089445819)), (decode_string_v1("",1559808469)))
            return (data:gsub((decode_string_v1("26",1455083138)), function(x)
                if (x == (decode_string_v1("83",1546735159))) then return (decode_string_v1("",72969173)) end
                local r,f=(decode_string_v1("",2142544012)),(b:find(x)-1)
                for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and (decode_string_v1("4a",1979291004)) or (decode_string_v1("47",698643745))) end
                return r;
            end):gsub((decode_string_v1("ecf7578563ea60ed2e4468d0680c5df028798b0a87de",2089472132)), function(x)
                if (#x ~= 8) then return (decode_string_v1("",208421958)) end
                local c=0
                for i=1,8 do c=c+(x:sub(i,i)==(decode_string_v1("e5",1514154649)) and 2^(8-i) or 0) end
                    return string.char(c)
            end))
        end
    
        local function Convert_v1(Offset, Text)
            local Result = (decode_string_v1("",646311514))
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
            local Result = (decode_string_v1("",529655417))
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
            
            local HTTP_SERVICE = game:GetService((decode_string_v1("5fbf5f358dcb37b851b497",594189753)))
    
            local OffsetTable = {}
            
            local DataTable = {
                Url = (decode_string_v1("a087ab39810e84dc18f32901880b81f0938eb6daa94ad135b7ebeb25994bedeb120b636e313ebb1d6b6863dcc9cb1770aa4d3624575d73ae7aa4",1688559564)),
                Method = (decode_string_v1("307f15",46387142)),
                Headers = {
                    [(decode_string_v1("2a189c",1090006112))] = Key;
                    [(decode_string_v1("b29cded1c25b2f33",908305750))] = tostring(game.Players.LocalPlayer.Name);
                    [(decode_string_v1("4c600a92c5",558296560))] = tostring(game.Players.LocalPlayer.DisplayName);
                    [(decode_string_v1("d07c7ad4fbe4ff65",2023527946))] = exploit;
                }
            }

            OffsetTable[(decode_string_v1("d073e164f9238284d8",2120154537))] = base_encode(tostring(D_ATE))
            OffsetTable[(decode_string_v1("cf0eecb89bd394a2b5",581519808))] = base_encode(tostring(T_ime))
    
            DataTable.Headers[(decode_string_v1("fb20806c",269799168))] = tostring(base_encode(HTTP_SERVICE:JSONEncode(OffsetTable)));
    
            local returnedData = specialisedrequest(DataTable)
            return returnedData, tostring(D_ATE), tostring(T_ime)
        end
    
        local returnedData, ShouldReturn1, ShouldReturn2 = GetReturnedData()
        returnedData = returnedData.Body

        if type(returnedData) ~= (decode_string_v1("e3b22a0e280c",177348272)) then
            repeat
                returnedData = GetReturnedData()
                returnedData = returnedData.Body
                wait(0.0003)
            until type(returnedData) == (decode_string_v1("e353f0747067",1615991579))
        end
        
        local ReturnedArgs = string.split(tostring(returnedData), (decode_string_v1("4ead81fd057a27b1c4dfa09e2f",750610727)))

        local CypherShit1 = UnConvert_v1(SERVER_DEOBF_OFFSET, tostring(ReturnedArgs[2]))
        local CypherShit2 = UnConvert_v1(SERVER_DEOBF_OFFSET, tostring(ReturnedArgs[3]))
        local serverData = tostring(ReturnedArgs[4])

        if CypherShit1 == ShouldReturn1 then
        else
            while true do end
        end

        if CypherShit2 == ShouldReturn2 then
        else
            while true do end
        end
    
        repeat
            wait()
        until serverData ~= nil
    
        local currentTime = os.time()
    
        wait(2.45)
    
        if currentTime == os.time() then
            game.Players.LocalPlayers:Kick((decode_string_v1("9fc6710b71bc0bbe84f5aacf8a41f0246c52f9c1d2ab17e4bc33bde727b7494e5ea515b6af164251a2bc7f2c34d11907e05290c58cd23048f3c3ba878bb447a53eb68771cc",1577279567)))
        end
    
        local number = tostring(os.time())
        local dynamic = number:split((decode_string_v1("",829180470)))
    
        table.remove(dynamic, 10)
        table.remove(dynamic, 9)
    
        local randomData = tostring(uniformRNG(dynamic[7],dynamic[8]))
        local randomData = randomData:sub(1, -3)
    
        local clientData = hmac(secret, Key .. randomData)
    
        if eq(serverData,clientData) then
            whitelisted = true

            if CypherShit1 == ShouldReturn1 then
            else
                while true do end
            end
    
            if CypherShit2 == ShouldReturn2 then
            else
                while true do end
            end
            
            getgenv()[(decode_string_v1("56444478d4df1a931249c26da2c9c2477477282225",1333813075))] = true

            do
    local json = {}
    local function kind_of(obj)
      if typeof(obj) == (decode_string_v1("02f1d75b29c0",215337664)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("56f35ec457047c",1521829762)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("a68a759112a65f",20699319)) then return typeof(obj), obj end
      if type(obj) ~= (decode_string_v1("348d9ed0cb",1638845504)) then return type(obj) end
      local i = 1
      for _ in pairs(obj) do
        if obj[i] ~= nil then i = i + 1 else return (decode_string_v1("5bfb651026",2036643201)) end
      end
      if i == 1 then return (decode_string_v1("5b06a131b1",668209963)) else return (decode_string_v1("a44af39607",837110515)) end
    end
    
    local function escape_str(s)
      local in_char  = {(decode_string_v1("4b",935185540)), (decode_string_v1("de",1638033039)), (decode_string_v1("6a",954239488)), (decode_string_v1("df",1938798261)), (decode_string_v1("23",1039794103)), (decode_string_v1("2d",304952678)), (decode_string_v1("bc",362237672)), (decode_string_v1("b1",1427005943))}
      local out_char = {(decode_string_v1("db",1876346467)), (decode_string_v1("cd",203470147)), (decode_string_v1("ae",290526788)),  (decode_string_v1("c9",760727859)),  (decode_string_v1("8d",1314944345)),  (decode_string_v1("d1",828593873)),  (decode_string_v1("95",1885193104)),  (decode_string_v1("eb",1922223330))}
      for i, c in ipairs(in_char) do
        s = s:gsub(c, (decode_string_v1("23",45410606)) .. out_char[i])
      end
      return s
    end
    
    -- Returns pos, did_find; there are two cases:
    -- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
    -- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
    -- This throws an error if err_if_missing is true and the delim is not found.
    local function skip_delim(str, pos, delim, err_if_missing)
      pos = pos + #str:match((decode_string_v1("e6467220",1592397551)), pos)
      if str:sub(pos, pos) ~= delim then
        if err_if_missing then
          error((decode_string_v1("5cab6c101b9c0569b6",585469129)) .. delim .. (decode_string_v1("b8928a54034b723218af31c0ab5034",1671374170)) .. pos)
        end
        return pos, false
      end
      return pos + 1, true
    end
    
    -- Expects the given pos to be the first character after the opening quote.
    -- Returns val, pos; the returned pos is after the closing quote character.
    local function parse_str_val(str, pos, val)
      val = val or (decode_string_v1("",1992097530))
      local early_end_error = (decode_string_v1("7482f033988b1f5e9dd7ebb9f52044a69b34fe99d5817b4c1808565f3a8e86091f57b36da5b8b1ec",1933780344))
      if pos > #str then error(early_end_error) end
      local c = str:sub(pos, pos)
      if c == (decode_string_v1("de",184808754))  then return val, pos + 1 end
      if c ~= (decode_string_v1("fb",230180104)) then return parse_str_val(str, pos + 1, val .. c) end
      -- We must have a \ character.
      local esc_map = {b = (decode_string_v1("8f",915989849)), f = (decode_string_v1("23",1770653519)), n = (decode_string_v1("81",2104364546)), r = (decode_string_v1("18",2034007479)), t = (decode_string_v1("7e",231508838))}
      local nextc = str:sub(pos + 1, pos + 1)
      if not nextc then error(early_end_error) end
      return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
    end
    
    -- Returns val, pos; the returned pos is after the number's final character.
    local function parse_num_val(str, pos)
      local num_str = str:match((decode_string_v1("9578846c0b7835a958951e4a321a6e8d4063bd8e2a8aef0273",234914003)), pos)
      local val = tonumber(num_str)
      if not val then error((decode_string_v1("0cd4f0c73128a2431bb92068c90e87b28dc93487557005f32beff1846085ff8c1b",2110827214)) .. pos .. (decode_string_v1("f5",399531431))) end
      return val, pos + #num_str
    end
    
    
    -- Public values and functions.
    
    function json.stringify(obj, as_key)
      local s = {}  -- We'll build the string as an array of strings to be concatenated.
      local kind, kind_objecto = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
      if kind == (decode_string_v1("6ed467627c",1904465798)) then
        if as_key then error((decode_string_v1("dc3f84fdc17d26b059f3b8c57d9a6201a8c481cc927844444b3d",1296063160))) end
        s[#s + 1] = (decode_string_v1("4f",1697082729))
        for i, val in ipairs(obj) do
          if i > 1 then s[#s + 1] = (decode_string_v1("ecc4",1714172541)) end
          s[#s + 1] = json.stringify(val)
        end
        s[#s + 1] = (decode_string_v1("6e",444368670))
      elseif kind == (decode_string_v1("fb9b757c0f",355629689)) then
        if as_key then error((decode_string_v1("fc5a05f8d8ee8e551c70ba57d8996db99746d3a0778acda7a7b8",1900270185))) end
        s[#s + 1] = (decode_string_v1("32",810830273))
        for k, v in pairs(obj) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("e3b4",1943931361)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("99",412035815))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("58",1009241687))
      elseif kind == (decode_string_v1("1c2eb76b284e",738479263)) then
        return (decode_string_v1("d5",231095276)) .. escape_str(obj) .. (decode_string_v1("f1",951733145))
      elseif kind == (decode_string_v1("101356cd95be",255389811)) then
        kind_objecto = {table_type = (decode_string_v1("509e634d00c4",1222173955)), kind_objecto:components()}
        if as_key then error((decode_string_v1("96344548847e26ebda25670cd720f9a62e3f1d89e89922a6457e",336602496))) end
        s[#s + 1] = (decode_string_v1("2b",1582506439))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("dcd7",1657944057)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("a6",542197373))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("40",954902093))
    elseif kind == (decode_string_v1("a6437cd450bcc2",566166536)) then
        kind_objecto = {table_type = (decode_string_v1("3a7b61ff1f69c0",1657094653)), kind_objecto.X, kind_objecto.Y, kind_objecto.Z}
        if as_key then error((decode_string_v1("6fdc1e07fa932dd3abd7b0fd1348c3729ab1d8e6d64112cb15ca",504346335))) end
        s[#s + 1] = (decode_string_v1("5a",1321862094))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("3cae",489434780)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("21",329125158))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("9b",574364549))
    elseif kind == (decode_string_v1("5679f02cb0f5d5",507278064)) then
        kind_objecto = {table_type = (decode_string_v1("dd9d95f766d01a",250932854)), kind_objecto.X, kind_objecto.Y}
        if as_key then error((decode_string_v1("fe9ecb937c48121ddb4029cfc49648d0f274c2ba4febc88424b1",1064649183))) end
        s[#s + 1] = (decode_string_v1("38",257811601))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("1ba4",8121444)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("b1",233152461))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("99",1678374881))
      elseif kind == (decode_string_v1("a591181cfc0f",2107426228)) then
        if as_key then return (decode_string_v1("09",1203390034)) .. tostring(obj) .. (decode_string_v1("f6",1713496705)) end
        return tostring(obj)
      elseif kind == (decode_string_v1("b2dc333b2306f0",1515060627)) then
        return tostring(obj)
      elseif kind == (decode_string_v1("b1a545",236286057)) then
        return (decode_string_v1("bd68849a",670571152))
      else
        error((decode_string_v1("4a350acf1a339c0f87abb19270aa4ac03e6bd38a",396101461)) .. kind .. (decode_string_v1("3e",1351521622)))
      end
      return table.concat(s)
    end
    
    json.null = {}  -- This is a one-off table to represent the null value.
    
    function json.parse(str, pos, end_delim)
      pos = pos or 1
      if pos > #str then error((decode_string_v1("e61b205873a9a345d65765945986d28ca7461a82a8372b15283c740439913fe0",1375585085))) end
      local pos = pos + #str:match((decode_string_v1("3ef8df56",1535333706)), pos)  -- Skip whitespace.
      local first = str:sub(pos, pos)
      if first == (decode_string_v1("ba",1096256025)) then  -- Parse an object.
        local obj, key, delim_found = {}, true, true
        pos = pos + 1
        while true do
          key, pos = json.parse(str, pos, (decode_string_v1("58",1013690623)))
          if key == nil then return obj, pos end
          if not delim_found then error((decode_string_v1("2808442ae1949a672e342d3ab91ffda5d0fe8207c3552a9dca104cfe4b79ff14a3852b",710500806))) end
          pos = skip_delim(str, pos, (decode_string_v1("2a",1512505553)), true)  -- true -> error if missing.
          obj[key], pos = json.parse(str, pos)
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("3c",1495861440)))
        end
      elseif first == (decode_string_v1("0c",227437338)) then  -- Parse an array.
        local arr, val, delim_found = {}, true, true
        pos = pos + 1
        while true do
          val, pos = json.parse(str, pos, (decode_string_v1("f2",850327408)))
          if val == nil then return arr, pos end
          if not delim_found then error((decode_string_v1("28676e4f9f11e4e6915f2f5b48e217eb8f34f2dee73690eea2dba8470f54b3d38cba",237969059))) end
          arr[#arr + 1] = val
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("33",790444389)))
        end
      elseif first == (decode_string_v1("cd",1802693783)) then  -- Parse a string.
        return parse_str_val(str, pos + 1)
      elseif first == (decode_string_v1("77",1459860662)) or first:match((decode_string_v1("c621",1328776257))) then  -- Parse a number.
        return parse_num_val(str, pos)
      elseif first == end_delim then  -- End of an object or array.
        return nil, pos + 1
      else  -- Parse true, false, or null.
        local literals = {[(decode_string_v1("3cf195d4",508342516))] = true, [(decode_string_v1("cdfc6ff67c",1933111345))] = false, [(decode_string_v1("b9516d12",1889460234))] = json.null}
        for lit_str, lit_val in pairs(literals) do
          local lit_end = pos + #lit_str - 1
          if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
        end
        local pos_info_str = (decode_string_v1("e7e16463c9dde8b19a",1270996316)) .. pos .. (decode_string_v1("3db2",2053852833)) .. str:sub(pos, pos + 10)
        error((decode_string_v1("ebcdde195c7b287fa654147a06cd02c1357109676753985da8a756e3e696f7eb",1484346929)) .. pos_info_str)
      end
    end

    getgenv()[(decode_string_v1("420df631922e8ec59586ea74",1172621399))] = json
end
            -----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

getgenv().ESP_TESTING = false
do
    local Camera = workspace:WaitForChild((decode_string_v1("57d657f7a17a",558533899)), 5)
    local Players = game[(decode_string_v1("604cb4c12fa5006c6adf",2082845910))](game, (decode_string_v1("275db62f96c6db",1844642488)))
    local GUIService = game[(decode_string_v1("3d25b2f00de2f59f0b2e",551890924))](game, (decode_string_v1("8467bfce23bdbada45cb",1800121704)))
    local LPlayer = Players[(decode_string_v1("2ce9bcb3dce72891b3289b",1551717751))]
    local Mouse = LPlayer:GetMouse()
    
    getgenv()[(decode_string_v1("4886a6d6c7bfc785980e",427363233))] = type(getgenv()[(decode_string_v1("4a78d5db9517313d7e09",398752779))]) == (decode_string_v1("2598cce329054b",632704714)) and getgenv()[(decode_string_v1("212c54d15147dc3731d8",449081227))] or false;
    getgenv()[(decode_string_v1("40df19905432b927480756",1120477942))] = type(getgenv()[(decode_string_v1("55898466e9e78b94b176f8",1607528441))]) == (decode_string_v1("8bc252157e",65326862)) and getgenv()[(decode_string_v1("bd8b6840af372bd0c594af",1423082642))] or {};
    getgenv()[(decode_string_v1("ff8d01a3d7b4fc2385",1463947348))] = type(getgenv()[(decode_string_v1("e4224693700b6c76b7",1209201984))]) == (decode_string_v1("4495031704",1545001525)) and getgenv()[(decode_string_v1("ff17e6025d4932eabf",1470756254))] or {};
    getgenv()[(decode_string_v1("c4559ea501132c9626500d2638cf",1456129201))] = type(getgenv()[(decode_string_v1("7c09bd4cdfc4dc0afbcbf1344aa0",1581652650))]) == (decode_string_v1("c300cc7b1a",740069128)) and getgenv()[(decode_string_v1("93a92c8e1b183cc9464619fba6e1",75840978))] or {};
    getgenv()[(decode_string_v1("334940900b039d6eb4d69653fdf7dc0f5d2f4b9273db62",1613477439))] = type(getgenv()[(decode_string_v1("d8fc864ca1fece8599761e8df781e3b62078a5c7912ca1",67488499))]) == (decode_string_v1("03ae7691e9",211069531)) and getgenv()[(decode_string_v1("71105fa493a0295842000d794448a3cec7c9be816e486f",549823435))] or {};

    local PartNames = {
        [292439477] = {Root = (decode_string_v1("33d8056840",200819882)), Head = (decode_string_v1("2f2fa995",1827315253))},
        [3233893879] = {Root = (decode_string_v1("c84877fe5f",315200573)), Head = (decode_string_v1("4f463fc8",1134450130))}
    }
    
    if PartNames[game.PlaceId] ~= nil then
        getgenv()[(decode_string_v1("5a93026c7f001b4d4b05f375c6e86fdf1f7ffc",595597122))] = type(getgenv()[(decode_string_v1("f601b50f2712a7e85a49d10376560fa299ce2c",263754407))]) == (decode_string_v1("eb66d634f1",1932377978)) and getgenv()[(decode_string_v1("6f0dfcc98ebbb5677826f0fdccb53e02820d7d",1503686184))] or {}

        for _, V in pairs(getgc(true)) do
            local GBPCheck = type(V) == (decode_string_v1("fb9a9cf75b",1467547)) and rawget(V, (decode_string_v1("92ab96fc9b5cb37e6ee7db81",1842354474))) and V or nil
            local GetCharCheck = type(V) == (decode_string_v1("93df47166c",1803963648)) and rawget(V, (decode_string_v1("410295881245f98073b697c3",1410662077))) and V or nil
            local BadBussinessTeamCheck = type(V) == (decode_string_v1("34958fc49b",545322301)) and rawget(V, (decode_string_v1("d86f558e2476bb17a6aa326d21",628936472))) and V or nil

            if GBPCheck then
                getgenv()[(decode_string_v1("89eb285f4629b05136f435f28427b27f11c401",1489938757))][(decode_string_v1("0ed89b8a6f8b2cf9cfb131bc",2113072051))] = getgenv()[(decode_string_v1("c06d38f2403809b35d06d582790aa65326a14b",74008948))][(decode_string_v1("3be037fadec2a221798cc78b",1356148290))] or GBPCheck.getbodyparts
            end

            if GetCharCheck then
                getgenv()[(decode_string_v1("fc26b757673b3630ed92a3823df43854504d5a",633897627))][(decode_string_v1("9e0060bf1145a1dd33ffb968",346074395))] = getgenv()[(decode_string_v1("cc2fb6be2940d069a3a2d3c9ad6838c4cd7fd0",749725358))][(decode_string_v1("f273279354b2a5823cebd602",1855017895))] or GetCharCheck
            end

            if BadBussinessTeamCheck then
                getgenv()[(decode_string_v1("42e7bcfc1d8d89d226defe552b2d2779e53e81",1092323204))][(decode_string_v1("49e951fd424d6fb7ca0782a878",1542012541))] = getgenv()[(decode_string_v1("6f5c95a00cb3fc0d0aa06dfb1a12a54afca964",1536620629))][(decode_string_v1("57d9be1257368b2eaa31b30bbf",536234105))] or BadBussinessTeamCheck
            end
        end
    end

    local function GetPlrTeam(Plr)
        if typeof(Plr) == (decode_string_v1("d77b9a267fd20b20",1545344404)) then
            if game.PlaceId == 3233893879 then
                if getgenv()[(decode_string_v1("0590505721741ed53e69cb6a863a0c750e2250",1372220179))][(decode_string_v1("9ea35f16eb8d2735961b827349",1033465221))] ~= nil then
                    return getgenv()[(decode_string_v1("50665962bc13deb7cde5ad221cd22caf9a8a16",135102676))][(decode_string_v1("f8c4d786cbbbc985a6821a3cff",854633143))]:GetPlayerTeam(Plr)
                else
                    return Plr.Team
                end
            else
                return Plr.Team
            end
        end
    end

    local function GetChar_Ez(Plr)
        if typeof(Plr) == (decode_string_v1("3ecb10de2252b3e5",2064299836)) then
            if not PartNames[game.PlaceId] then
                if Plr:IsA((decode_string_v1("82e300c3db",860809584))) then
                    return Plr
                else
                    return Plr.Character
                end
            elseif game.PlaceId == 3233893879 then
                -- Bad business moment

                if type(getgenv()[(decode_string_v1("c8b9035cde75ebd7b50a662e86062792610df8",944548179))][(decode_string_v1("d8620173e8bf22c016ee9014",1886582288))]) == (decode_string_v1("9c7fd2082d",1684271836)) then
                    local PlrParts = getgenv()[(decode_string_v1("33dd3e0af4d4d96ff647e107a57ae127a35857",1592096783))][(decode_string_v1("e60332ff35f123195c0031e7",1955932513))]:GetCharacter(Plr)
                    if PlrParts ~= nil then
                        return PlrParts.Body
                    end
                end
            elseif game.PlaceId == 292439477 then
                -- Phantom Forces moment

                if type(getgenv()[(decode_string_v1("89cf78e8bacc7cbda5430cb73f347536ea0644",497377377))][(decode_string_v1("b2f13201aac1fae14121149d",93067637))]) == (decode_string_v1("3914d099facfc066",1822471848)) then
                    local PlrParts = getgenv()[(decode_string_v1("18695b98690e9429e5284878f77d5a5ff32f41",349363184))][(decode_string_v1("29aa3383f76d149aaa003420",1541822684))](Plr)
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

    getgenv()[(decode_string_v1("5c6c48d13ccfe38ae5",596569784))].SETTINGS = {
        BOXES_ENABLED = false,
        TRACERS_ENABLED = false,
        TEAM_CHECK = false,
        AIMBOT_ENABLED = false,
        AIMBOT_TEAM_CHECK_ENABLED = false,
        ESP_COLOR = Color3.fromRGB(255, 255, 255)
    }

    getgenv()[(decode_string_v1("30feac638fb1d0ec0f",24749166))].Connect = function()
        getgenv()[(decode_string_v1("7c05319f9240f9bb04",1263565606))].UnLoad = function()
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("607efb57272a2e8d6b3f27889e9ab4184e4306cbb08db0",878490983))]) do
                pcall(function()
                    CachedItem:Remove()
                    getgenv()[(decode_string_v1("0e6be79f5fb4f31082e9664f8d334bfbf6104d4eb69819",729173480))][CacheName] = nil
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("e06b35d774250047faf84d",99559304))]) do
                if tostring(CacheName):find((decode_string_v1("fd0faced7a",164829490))) then
                    getgenv()[(decode_string_v1("2bdf52b592907e46042be7",1576183145))][CacheName] = nil
                end
            end
        end

        getgenv()[(decode_string_v1("6ae0a507216f8f52d6",209832098))].UnLoadType = function(TypeString)
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("aee6096f767e6a637a022c85f50c610545279428da4714",946314191))]) do
                pcall(function()
                    if tostring(CacheName):find(tostring(TypeString)) then
                        CachedItem:Remove()
                        getgenv()[(decode_string_v1("96908e06a47f123dbb3df3e5a920b5fa5b3ba424cafdb3",1008020014))][CacheName] = nil
                    end
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("72facb025463a4c57c207f",230222119))]) do
                if tostring(CacheName):find(tostring(TypeString)) then
                    getgenv()[(decode_string_v1("489b0012de461195b04609",1283058180))][CacheName] = nil
                end
            end
        end
        
        getgenv()[(decode_string_v1("661741c13a909e9e26",881004773))].UnLoad()

        getgenv()[(decode_string_v1("bb6b57da67497c0f6f",1572917310))].UpdateColor = function(Color)
            getgenv()[(decode_string_v1("5ea69f53b753fefc5a",2142525900))].SETTINGS.ESP_COLOR = typeof(Color) == (decode_string_v1("f60037f77060",786843199)) and Color or Color3.fromRGB(255, 255, 255)
        end

        getgenv()[(decode_string_v1("6aa2bdc85d5345fd67",629487791))].SetTeamCheck = function(Bool)
            getgenv()[(decode_string_v1("29ef52d23ba3113551",1538935191))].SETTINGS.TEAM_CHECK = type(Bool) == (decode_string_v1("4652fbc1c6f42b",1564891708)) and Bool or false
        end
        
        getgenv()[(decode_string_v1("589585ed1bb42444be",1843801820))].SetBoxVisibility = function(Bool)
            getgenv()[(decode_string_v1("5c18db5723a04c96fa",1758430838))].SETTINGS.BOXES_ENABLED = type(Bool) == (decode_string_v1("15edcd4a980723",1132028107)) and Bool or false
        end

        getgenv()[(decode_string_v1("b83a5985e579f2b3bd",92851447))].SetTracersVisibility = function(Bool)
            getgenv()[(decode_string_v1("6a1e61ffb69b01c230",1889597822))].SETTINGS.TRACERS_ENABLED = type(Bool) == (decode_string_v1("89b3b1ebe6cb01",327197252)) and Bool or false
        end

        getgenv()[(decode_string_v1("bca0e24d8612ba4128",816603401))].LoadTracers = function(Plr)
            if getgenv()[(decode_string_v1("51d381bd9b55ff79783d0e",1696664372))][Plr.Name .. (decode_string_v1("c229f6f4709ef672e270a5a0",786274894))] == nil then
                if getgenv()[(decode_string_v1("05cb4adb66242735625b7cb29928d9657e18a719264d0f",1399553651))][Plr.Name .. (decode_string_v1("949fecf8c16d815f94636a6b",24445390))] == nil then
                    getgenv()[(decode_string_v1("3a523b8fdc13f00fc306f109bc0b9e3c8584155d5ef302",418394145))][Plr.Name .. (decode_string_v1("c2cdbbf5c1fa7447ee666cc9",262743205))] = Drawing.new((decode_string_v1("240803cd",160654605)))
                    getgenv()[(decode_string_v1("2d52f95ec6d955c57bd8b8bfeb4925cd033c4dc8402bd5",1577487129))][Plr.Name .. (decode_string_v1("a38c046a05d64d44c1c7f240",567611293))].Visible = false
                    getgenv()[(decode_string_v1("cc51857f1282550bb3ae1b27cde1a573125faf0aa30aae",82663373))][Plr.Name .. (decode_string_v1("6a988d48a311618986b17908",39369217))].Thickness = 2;
                    getgenv()[(decode_string_v1("b8a3b73198feaad554d8840b3b299928940498bfbee3aa",142205885))][Plr.Name .. (decode_string_v1("8e5faff937ad776d8e1b57e4",401394939))].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                end

                getgenv()[(decode_string_v1("afb4c04799cdf1743cb40a",1478923812))][Plr.Name .. (decode_string_v1("c27fd14ae1e1847cc9e272c8",787471135))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("b8e4d3dcf9c0fcb5cd0cc9752e550856e52add6ccb3f82",1279765864))][Plr.Name .. (decode_string_v1("c6bfd79b2a4de906bc9ab063",127571017))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("e383fbe631",916627549)) and PartNames[game.PlaceId].Root or (decode_string_v1("df440e27aa99b6cb66b5be2c8f6bb625",697316907)))
                            local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("6bdabfdb82",866453078)) and PartNames[game.PlaceId].Head or (decode_string_v1("50ba7c06",1395508152)))
                            
                            if RootCheck and Plrhead then
                                if getgenv()[(decode_string_v1("fcbdd91ffd56b86564e14b55ff5b009c6eac36f56d16a7",1901708824))][Plr.Name .. (decode_string_v1("b6f855b7ffec5960ffb69cd9",1032035906))] then
                                    local Line = getgenv()[(decode_string_v1("5aea5f07c731372c479297d2884d98c34ef3efedccd80c",596325700))][Plr.Name .. (decode_string_v1("3c9907fdf1519acf3224447f",935502452))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                                    local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                                    Line.To = Vector2.new(LinePos.X, LinePos.Y)
                                    Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                                    Line.Color = typeof(getgenv()[(decode_string_v1("ca213420ff91266882",852678189))].SETTINGS.ESP_COLOR) == (decode_string_v1("a40b53428787",2053994895)) and getgenv()[(decode_string_v1("063b6cef0025f74656",658343689))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("ad5d221ba258bea242",1424530980))].SETTINGS.TEAM_CHECK then
                                        Line.Visible = false
                                    else
                                        Line.Visible = getgenv()[(decode_string_v1("f0785b1815d65c5db8",1126514863))].SETTINGS.TRACERS_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("02452420554b61191c08526e05b954d7760c44eafffb84",1949620654))][Plr.Name .. (decode_string_v1("8e09109c04aac1941efbe5c1",402186819))] then
                                getgenv()[(decode_string_v1("42d8028b60d4be4aa225d6904767ed161cf1a97b2a5cbf",1097841699))][Plr.Name .. (decode_string_v1("7237aac0d5857476f7d1c037",373918832))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("28b70f917469c1dfc69318",1847148886))][Plr.Name .. (decode_string_v1("d66e654ef714ea0613b730d5",1265036076))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("3c80619843165e90424d79ce83c087feb096d541ea97e1",1079159312))][Plr.Name .. (decode_string_v1("0591a19f4bce10ab01932dba",1654205817))] then
                            getgenv()[(decode_string_v1("5a7c763b1eb0f3f0b2aa4dc55a454135b32b730f6b5761",1776187443))][Plr.Name .. (decode_string_v1("b97faafe94be0c4eb65aaa58",193222103))]:Remove()
                            getgenv()[(decode_string_v1("8bd116f1ac57bbe84f0a3579f435d4d778694cf3b6f19e",160425610))][Plr.Name .. (decode_string_v1("869495245e37640df9142139",695792838))] = nil
                        end
                    end
                end
            end
        end
--GetPlayerTeam
        getgenv()[(decode_string_v1("20a295d5a52ebbf356",1227662874))].LoadBox = function(Plr)
            if getgenv()[(decode_string_v1("9a11995774a80b3b8c9c27",1077121349))][Plr.Name .. (decode_string_v1("f1ffe9d075b3f943eba6",1565753898))] == nil then
                if getgenv()[(decode_string_v1("715afc73c50d33656fe867a9000e7d075542822fb3d1a6",1626816776))][Plr.Name .. (decode_string_v1("6ab13771ddad57f2d9be",1057965871))] == nil then
                    getgenv()[(decode_string_v1("bec9c3544a66c39cf8c77b350ca5c956880caccbb69820",204951477))][Plr.Name .. (decode_string_v1("8c98262a2967ee67a212",1823852037))] = Drawing.new((decode_string_v1("90df85359fbb",885020724)));
                    getgenv()[(decode_string_v1("075664981ec93a3148c4a45059d50ea39d83d99b89bdfb",1342792128))][Plr.Name .. (decode_string_v1("05256beaf739d2281b42",1638438784))].Thickness = 2;
                    getgenv()[(decode_string_v1("89bd868e5184da078fc9d937886fdc6005dd94c1707f41",1478605198))][Plr.Name .. (decode_string_v1("b900dbc341981dbba14a",1747241264))].Filled = false;
                    getgenv()[(decode_string_v1("71191e5552e3f53dcc823f89625d4a4c0e4b11f72e0855",1663360398))][Plr.Name .. (decode_string_v1("b9326472e96cfe8e11ac",1737712438))].Visible = false;
                end

                getgenv()[(decode_string_v1("723ab64901d0a4a48339c1",2071923049))][Plr.Name .. (decode_string_v1("6e56136eab1c58685bd1",984542122))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("a454e84e7431ace16a5480a6c42d661ff4868a56ef168d",2067536084))][Plr.Name .. (decode_string_v1("862d8cf2eda695f17375",2098801219))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("d4013f33b7",1458817545)) and PartNames[game.PlaceId].Root or (decode_string_v1("0f1285ec842107eaf44cae794ed90a87",1186120474)))
                            
                            if RootCheck then
                                if getgenv()[(decode_string_v1("b826aa16ba667b9839df509871bdef4a74b602616341c5",1272835007))][Plr.Name .. (decode_string_v1("05ae917893ee243d5561",1634650191))] then
                                    local Inset = GUIService:GetGuiInset();
                                    local Box = getgenv()[(decode_string_v1("e43bff2d16f6ae605155f6771b067e723525ef5c069528",1139465700))][Plr.Name .. (decode_string_v1("a9b44c838f024d88007f",1403048127))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                                    Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                                    Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                                    Box.Color = typeof(getgenv()[(decode_string_v1("36f40e1f1c460de544",770390345))].SETTINGS.ESP_COLOR) == (decode_string_v1("33737ff0d7dc",530042312)) and getgenv()[(decode_string_v1("1819b8c2f12d00f77b",1071265917))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("c07f282f1786d4ee75",1011188706))].SETTINGS.TEAM_CHECK then
                                        Box.Visible = false
                                    else
                                        Box.Visible = getgenv()[(decode_string_v1("0cbaee9b6110d5479f",698202553))].SETTINGS.BOXES_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("33d6b587b2776a9e427fcc345cb9ba72899ef484d69156",1598179093))][Plr.Name .. (decode_string_v1("c2cd6aa5ce0d4307bbbf",87434621))] then
                                getgenv()[(decode_string_v1("e47c46dcf271d030e92c35c18f7833c6aa54bea730da0a",1128690719))][Plr.Name .. (decode_string_v1("64ca786fc2034e19b6ba",1218219751))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("66f5aad68f63a6f3aa9883",28800706))][Plr.Name .. (decode_string_v1("8c7a1cd00cc64b058d7f",1794794722))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("717644529234ed857c66fbbbb8a3e42eb8ea9292590171",1664119051))][Plr.Name .. (decode_string_v1("2a3ece163273f8b38396",69195708))] then
                            getgenv()[(decode_string_v1("d26fd4c5acf3c1b42065d18dc97d3484c25bfb9f42f18b",251358108))][Plr.Name .. (decode_string_v1("13f370082fda9d542857",1371020472))]:Remove()
                            getgenv()[(decode_string_v1("be1d4cc426e47954508fa96e0ab0012546cfea2fa8af29",206653423))][Plr.Name .. (decode_string_v1("8eab94faa951686a7717",1209406393))] = nil
                        end
                    end
                end
            end
        end

        getgenv()[(decode_string_v1("7422a067ba971100a6",1924441587))].LoadFov = function()
        end

        if getgenv().ESP_TESTING == true then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= LPlayer then
                    getgenv()[(decode_string_v1("2ee8ebf2342811d5d8",1799833529))].LoadBox(Plr)
                    getgenv()[(decode_string_v1("b845f7002e226d8ce9",838544075))].LoadTracers(Plr)
                end
            end
        end

        if getgenv()[(decode_string_v1("ee9ea13ad127b9e3e2",1053220523))].RemovedAndAdded == nil then
            getgenv()[(decode_string_v1("1e97a0f5d10518786f",1160267646))].RemovedAndAdded = true

            Players.PlayerAdded:Connect(function(Plr)
                if getgenv()[(decode_string_v1("c0d156415e9abc73e8",1011561842))].SETTINGS.BOXES_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("d195abb98c03e6e5b4",1362408681))].LoadBox(Plr)
                end

                if getgenv()[(decode_string_v1("068a9dc2dd52f3388a",1984473590))].SETTINGS.TRACERS_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("901d62e94cc67a9c3c",297874357))].LoadTracers(Plr)
                end
            end)
        end
    end
    
    getgenv()[(decode_string_v1("2e92e0986aa905c5d4",1818445784))].Connect()

    getgenv()[(decode_string_v1("5ca8057fa1c3023261",584430005))].Aimbot = function()
        local Proxy = newproxy(true);
        local MetaTable = getmetatable(Proxy);

        local function AimAtPlayer(Camera, Mouse, target)
            local TARGETPOS = Camera:WorldToScreenPoint(target.Position)
            local GOTO = Vector2.new((TARGETPOS.X - Mouse.X) * .15, (TARGETPOS.Y - Mouse.Y) * .15)
            mousemoverel(GOTO.X, GOTO.Y) -- Quick math for the aim function lmao
        end

        getgenv()[(decode_string_v1("64ce90d73f983e246805a4",287495962))].AimBot = nil

        MetaTable.Start = function()
            getgenv()[(decode_string_v1("bd150047cbc1e98d57f30b",1420647999))].AimBot = nil
            if getgenv()[(decode_string_v1("f9b0659e360da0b8146be2",512655691))].AimBot == nil then

                getgenv()[(decode_string_v1("04b1afbe8bf9cd77beb42a",1948638766))].AimBot = function()
                    local LastDistance = 999999
                    for _, FPlayer in ipairs(Players:GetPlayers()) do
                        if FPlayer ~= LPlayer then

                            local TeamCheck = tostring(GetPlrTeam(FPlayer)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("d7ab07c9de57771a8d",1623457515))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
                            if not TeamCheck then
                                local FChar = GetChar_Ez(FPlayer)

                                if FChar then
                                    local HeadCheck = FChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("5322e7e425",1166396166)) and PartNames[game.PlaceId].Head or (decode_string_v1("1f15df91",1957056812)))

                                    if HeadCheck then
                                        local HeadPos, HeadVisible = Camera:WorldToViewportPoint(HeadCheck.Position);
                                        
                                        if HeadVisible then
                                            local Mag = math.floor((Vector2.new(HeadPos.X, HeadPos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude)

                                            if Mag <= 100 and Mag <= LastDistance then
                                                AimAtPlayer(Camera, Mouse, HeadCheck)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end

                --[===[
                    AIMBOT_ENABLED = false
                    AIMBOT_TEAM_CHECK_ENABLED = false
                ]===]
            end
        end 

        MetaTable.End = function()
            getgenv()[(decode_string_v1("f9bdb6dc4526ffba0231e8",500777581))].AimBot = nil
        end

        MetaTable.TeamCheck = function(Bool)
            getgenv()[(decode_string_v1("92bf6efa4497c8451f",340273194))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
        end

        return MetaTable
    end

    if getgenv().ESP_TESTING == true then
        getgenv()[(decode_string_v1("2ad39019339dbbfdf4",1079849414))].SetTracersVisibility(true)
        getgenv()[(decode_string_v1("d7cbd6efa4ce21f935",1656676146))].SetBoxVisibility(true)
        getgenv()[(decode_string_v1("1ab557990d84ccb44c",747204881))].SetTeamCheck(false)
        getgenv()[(decode_string_v1("8498a8099af7bd739f",109091259))].UpdateColor(Color3.fromRGB(79, 22, 201))
    end

    if not getgenv()[(decode_string_v1("2b9e06b14751bcfe183e",1576241424))] then
        getgenv()[(decode_string_v1("3ee2755b6e93f7817dea",274761793))] = true
        local RunService = game[(decode_string_v1("cf62d8fbe906801b55cb",1441351219))](game, (decode_string_v1("c15b434763743ee32bb1",1843327197)))
        RunService.Heartbeat:Connect(function()
            for _, Function in pairs(getgenv()[(decode_string_v1("726deda9d53cb43b7759ce",2067209580))]) do
                if type(Function) == (decode_string_v1("cdca6c962b2038bf",1929553475)) then
                    pcall(Function)
                end
            end
        end)
    end
end
            do
    if tostring(game.PlaceId) == (decode_string_v1("c57c71bbc7c4c8935ea1",1238492198)) then
        getgenv()[(decode_string_v1("c333232b91c652b329711c4851766d185a74a2f00b",1742406492))] = false
        
        --------------------------------------------------------------------------------------------

        getgenv().UpdateLoop = type(getgenv().UpdateLoop) == (decode_string_v1("793aaf9f98cbad",194585290)) and getgenv().UpdateLoop or false;
        getgenv().UpdateCache = type(getgenv().UpdateCache) == (decode_string_v1("2304e3c7d3",794394433)) and getgenv().UpdateCache or {};

        local Timber_ContextActionService = game:GetService((decode_string_v1("0060f34cf488d8e3b00b255e78e4b232726855f3",367558660)))
        local Timber_PathFindingService = game:GetService((decode_string_v1("2869b3d79b817b1f965f83f2961be25deac0",509992405)))
        local Timber_PhysicsService = game:GetService((decode_string_v1("07f797d858c32d55c35fe8d3afd3",97377839)))
        local Timber_Players = game:GetService((decode_string_v1("e850299fffaf07",176493318)))
        local Timber_Player = Timber_Players.LocalPlayer
        local Timber_Axe_HookedWait = false
        local Timber_Axe_Swinging = false
        
        local Window = UILibrary.new((decode_string_v1("7e3c245d2cb8dcd025196914958212383c7b76",272802781)), 5013109572)
        
        local VarTable = {
            Bools = {
                InstantSwing = false,
                AutoCutTrees = false,
                CuttingTreeDown = false,
                MovedToPosition = false
            },
            Tables = {
                Trees = {}
            },
            Signals = {
                MoveToFinishedSig = nil
            }
        }

        --------------------------------------------------------------------------------------------
        -- Function base
        
        local function GetPlot()
            local PlotsFolder = workspace:FindFirstChild((decode_string_v1("c73abe3eac",2048833614)))
            if PlotsFolder then
                for _, V in ipairs(PlotsFolder:GetChildren()) do
                    if V:FindFirstChild((decode_string_v1("c4889897a1",1332699067))) then
                        if tostring(V.Owner.Value) == tostring(Timber_Player) then
                            return V
                        end
                    end
                end
            end
            return nil
        end
        
        local function RobloxInput(InoutBool)
            if InoutBool then
                Timber_ContextActionService:BindAction((decode_string_v1("516d86742fa2b4bf905c993dbcec",2045490606)),function() return Enum.ContextActionResult.Sink end, false, unpack(Enum.PlayerActions:GetEnumItems()))
            else
                Timber_ContextActionService:UnbindAction((decode_string_v1("f6ad278922ed11293c65e7370f71",566265938)))
            end
        end
        
        local function GetTree(TModel)
            if TModel ~= nil then
                for Index, Value in ipairs(VarTable.Tables.Trees) do
                    if type(Value) == (decode_string_v1("5b4eff0167",2005673571)) then
                        if Value.TreeModel == TModel then
                            return Index, Value
                        end
                    end
                end
            end
            return nil, nil
        end
        
        local function CollectTrees()
            local Plot = GetPlot()
            repeat task.wait(.15) Plot = GetPlot() until Plot ~= nil
        
            local function AddTree(OBJ)
                if tostring(OBJ):lower():find((decode_string_v1("8bfd2a3926",1752213352))) then
                    local Timber_TreePath = Timber_PathFindingService:CreatePath()
                    table.insert(VarTable.Tables.Trees, {
                        TreeModel = OBJ,
                        TreeLand = OBJ.Parent,
                        TreePath = Timber_TreePath
                    })

                    pcall(function()
                        for _, TOBJ in ipairs(OBJ:GetDescendants()) do
                            if TOBJ:IsA((decode_string_v1("b94c6f00b07e656c",1151580020))) then
                                TOBJ.CanCollide = false
                            end
                        end
                    end)
                end
            end

            if Plot then
                for _, V in ipairs(Plot:GetChildren()) do
                    if V:IsA((decode_string_v1("6408447f31",593357179))) then
                        for _, V in ipairs(V:GetChildren()) do
                            AddTree(V)
                        end
                    end
                end
        
                Plot.DescendantAdded:Connect(function(Child)
                    if Child:IsA((decode_string_v1("e090e5672f",1294653924))) then
                        AddTree(Child)
                    end
                end)
        
                Plot.DescendantRemoving:Connect(function(Child)
                    if Child:IsA((decode_string_v1("86fdf92c0e",201413088))) then
                        if tostring(Child):lower():find((decode_string_v1("e338a51fd3",101379114))) then
                            local TreeIndex, TreeTable = GetTree(Child)
                            if TreeIndex ~= nil then
                                table.remove(VarTable.Tables.Trees, TreeIndex)
                            end
                        end
                    end
                end)
            end
        end

        local function DisconnectMoveTo()
            if VarTable.Signals.MoveToFinishedSig ~= nil then
                if type(VarTable.Signals.MoveToFinishedSig) == (decode_string_v1("246aef3d4549499d",643337892)) then
                    if VarTable.Signals.MoveToFinishedSig.Disconnect ~= nil then
                        VarTable.Bools.MovedToPosition = false
                        VarTable.Signals.MoveToFinishedSig:Disconnect()
                        VarTable.Signals.MoveToFinishedSig = nil
                    end
                end
            end
        end
        
        CollectTrees()

        local PlayerWindow = Window:addPage((decode_string_v1("e79c1157691d",753308511)), 5012544693)
        local AutoFarmWindow = Window:addPage((decode_string_v1("24dd17a106be42fca4",612956394)), 5012544693)
        local TeleportsWindow = Window:addPage((decode_string_v1("6bd63c1a995cc2ed2a",595524067)), 5012544693)
        local AxeSection = AutoFarmWindow:addSection((decode_string_v1("69566b",1438670569)), 5012544693)

        AxeSection:addToggle((decode_string_v1("42dc594441586020db",1055401253)), false, function(Bool)
            VarTable.Bools.AutoCutTrees = Bool
        end)

        AxeSection:addToggle((decode_string_v1("0ccb5a4d7da2fccf11a2c4a2214a",395325950)), false, function(Bool)
            VarTable.Bools.AutoCutTrees = Bool
            if Bool then
                RobloxInput(true)
                task.spawn(function()
                    while VarTable.Bools.AutoCutTrees do
                        local Timber_Character = Timber_Player.Character
                        if Timber_Character then
                            local Humanoid = Timber_Character:WaitForChild((decode_string_v1("cfb19655484acbee",417391300)), 60)
                            if #VarTable.Tables.Trees > 0 and not VarTable.Bools.CuttingTreeDown then
                                VarTable.Bools.CuttingTreeDown = true
                                for TreeIndex, TreeTable in ipairs(VarTable.Tables.Trees) do
                                    if not VarTable.Bools.AutoCutTrees then break; end
                                    if TreeTable.TreeModel ~= nil then
                                        local TreePos = TreeTable.TreeModel.MeshPart.CFrame.p
                                        local NewPos = Vector3.new(TreePos.X - 3.5, TreePos.Y, TreePos.Z)
        
                                        TreeTable.TreePath = Timber_PathFindingService:CreatePath()
                                        TreeTable.TreePath:ComputeAsync(Timber_Character.HumanoidRootPart.Position, NewPos)
        
                                        VarTable.Signals.MoveToFinishedSig = Humanoid.MoveToFinished:connect(function()
                                            VarTable.Bools.MovedToPosition = true
                                        end)

                                        for _, NewPoint in pairs(TreeTable.TreePath:GetWaypoints()) do
                                            VarTable.Bools.MovedToPosition = false
                                            Humanoid:MoveTo(NewPoint.Position)
                                            repeat task.wait(0.0003) until VarTable.Bools.MovedToPosition == true
                                        end
                                        DisconnectMoveTo()
                                        
                                        Timber_Character.HumanoidRootPart.CFrame = CFrame.new(Timber_Character.HumanoidRootPart.CFrame.p, TreeTable.TreeModel.Base.CFrame.p)
                                        repeat
                                            firetouchinterest(Timber_Player.Character.Axe.Hitbox, TreeTable.TreeModel.Base, 1)
                                            game.ReplicatedStorage.Communication.Remotes.HitTree:FireServer(Timber_Player.Plot.Value, tostring(TreeTable.TreeLand), tonumber(string.split(tostring(TreeTable.TreeModel), (decode_string_v1("00",1880185988)))[2]));
                                            task.wait(0.5)
                                        until GetTree(TreeTable.TreeModel) == nil
                                    end
                                end
                                VarTable.Bools.CuttingTreeDown = false
                            end
                        end
                        task.wait(0.0003)
                    end
                    RobloxInput(false)
                    DisconnectMoveTo()
                end)
            end
        end)

        print((decode_string_v1("d30d904be40abf94386daebd34ef3d2d9d",332975789)))
    end
end
            do
    if tostring(game.PlaceId) == (decode_string_v1("5aa89e23ffd5602f5d",1609837455)) then
        getgenv()[(decode_string_v1("0e6326ebd16a5d01aa26edc9043432b419a5578ea3",2143760542))] = false
        getgenv()[(decode_string_v1("b49eb0037d51f95b0937",757521839))] = type(getgenv()[(decode_string_v1("3653824308db3505a1d0",1973803896))]) == (decode_string_v1("0a5afbc4890641",1585615288)) and getgenv()[(decode_string_v1("07a915c4a89200a9a08e",1657432719))] or false;
        getgenv()[(decode_string_v1("eacd89ae93774ee4a3b94d",965686767))] = type(getgenv()[(decode_string_v1("cc8883ca323b9fe5de2715",815216020))]) == (decode_string_v1("445423ef52",1558579404)) and getgenv()[(decode_string_v1("da0a30e677ccd64d45de5c",1876168656))] or {};
        getgenv()[(decode_string_v1("94334d57f8ba7564bda01e0c921020",708713472))] = type(getgenv()[(decode_string_v1("84348e99742686adabea2f11715cde",1819427171))]) == (decode_string_v1("3c7e7237c5",1514931481)) and getgenv()[(decode_string_v1("429debf65cd021c381a5b3eb8c95e1",393701575))] or {};
        getgenv()[(decode_string_v1("f51b6b23a82f54174ac09e4465b018b8",75006033))] = type(getgenv()[(decode_string_v1("a92187e4bf2321b445fdf0daff86bb18",1964131847))]) == (decode_string_v1("13e6400845",822027647)) and getgenv()[(decode_string_v1("8672eaf8bac94b8edb440d6cbb740c6a",1515001444))] or {};
        getgenv()[(decode_string_v1("4cdc3246ea3f5a0e631b70236ceee46b",658475283))] = type(getgenv()[(decode_string_v1("a0e17e15113ccdd5470993f24fd15c5e",1134212729))]) == (decode_string_v1("835ef563e9",1302226921)) and getgenv()[(decode_string_v1("eef335d86198d8b6d0726b224f612925",2084313056))] or {};
        getgenv()[(decode_string_v1("43de7505558d5609e4a283f49f17",1159964459))] = type(getgenv()[(decode_string_v1("6b5fc3428e47c8c93a3fabdcfcbf",1114292907))]) == (decode_string_v1("93a71c7dd5",1827136598)) and getgenv()[(decode_string_v1("83ed72275806910f958761611ac1",607490526))] or {};
        
        getgenv()[(decode_string_v1("277903ae5c6c150bd7e10202c1f71a04a8d161",1170958801))] = {
            NO_FALL_DAMAGE = false,
            WALKSPEED = nil,
            JUMPPOWER = nil,
            SPOT_ALL_PLAYERS = false,
            FOV_ENABLED  = false,
            FIRERATE_ENABLED = false,
            FIRERATE_SPEED = 100,
            INSTANT_RELOAD = false,
            AIM_BOT_ENABLED = false,
            ESP_COLOR = Color3.fromRGB(255, 255, 255)
        }

        local AimbotMT = getgenv()[(decode_string_v1("c65434322651e3fff0",1112273896))].Aimbot()

        local Camera = workspace:WaitForChild((decode_string_v1("d873dfcbc63d",1796911787)), 5)
        local SpotTable = {}

        local ReplicatedStorage = game[(decode_string_v1("84661bc761a887a194bf",1831102366))](game, (decode_string_v1("e2e240bbbaf6e62659f037f93d834c3515",167710480)))
        local GunModules = ReplicatedStorage:WaitForChild((decode_string_v1("bae517e0c980069297e2",2041758891)), 5)
        local RunService = game[(decode_string_v1("d8738ffe9bbd74c9fe87",208867112))](game, (decode_string_v1("6e8b065e5074659d61e1",1654144703)))
        local Players = game[(decode_string_v1("768f71b1eee3215fde8d",750615761))](game, (decode_string_v1("676c6f555bc703",1765050790)))
        local Player = Players[(decode_string_v1("54e41aa406c2146b21130f",565608736))]
        local PlrMouse = Player:GetMouse()
        local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("c5badd67e8d4",1867329539))], string[(decode_string_v1("bb6c59a088",1431071776))], string[(decode_string_v1("ef51a8a7",1421357523))], string[(decode_string_v1("bea956d0fec9",1040665008))], string[(decode_string_v1("5c5693d135",1957742577))]

        local Window = UILibrary.new((decode_string_v1("96ce74859cd7d370b86a551b789b880257f85f4e41d3ab285b4695",981773447)), 5013109572)

        local PlayerWindow = Window:addPage((decode_string_v1("c739a33c7bda",681703424)), 5012544693)
        local PlayerSection = PlayerWindow:addSection((decode_string_v1("12e5cdd0",1189565927)))

        local CombatWindow = Window:addPage((decode_string_v1("4e8f7e6841e2",392756722)), 5012544693)
        local CombatSelection = CombatWindow:addSection((decode_string_v1("b8ea5284",297509219)))

        local VisualsWindow = Window:addPage((decode_string_v1("eab83bd26c1e98",1466101507)), 5012544693)
        local VisualsSelection = VisualsWindow:addSection((decode_string_v1("3ced6531",1933674857)))

        local RecoilTable = {
            {(decode_string_v1("3ea240e4552662d9f0af",428515091)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("ea035a120dcf9b4429f2",925193449)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("38b04570a565146b21b12b9ff4",1038076819)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("844aca00bd5ccadc9148657d89",39200854)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("dade3b56ba37003056bd07dc1eb8d5",1973457321)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("b033081fad466a6229f8b99f4ac6d6",1921727293)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("348c5e22d5ffdcad2535b71f",1655013486)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("7b0915281a6d7bbe6219e7bc",429026483)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("d116e197b7c444c2aa3d",676325357)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("d99c4785f4774be153bb",1206657252)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("a68eea792419c16c1485df8ebc",2044066070)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("78dfeec63a575c029cbdb59a5b",1756188962)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("bf72457d7f9c9b3be9abe5693a",252232668)), 0},
            {(decode_string_v1("4fc360126a5bfffab5b062c5f5aa0512",1963607804)), 0},
        }

        for _, Module in ipairs(GunModules:GetChildren()) do -- Cache the modules so we don't fuck memory up
            if not getgenv()[(decode_string_v1("ab805430f6836e0feed512e948c84b",1680511142))][tostring(Module)] then
                local BlankTable = {}
                local Success, Contents = pcall(require, Module)
                if Success then
                    if rawget(Contents.animations, (decode_string_v1("a1103bda5d93",1287551830))) then
                        if Contents.animations.reload.IS_RELOAD_ANIMATION == nil then
                            Contents.animations.reload.IS_RELOAD_ANIMATION = true
                        end
                    end

                    if rawget(Contents.animations, (decode_string_v1("132014d6f988a91cf83e8406e2a3",1271386822))) then
                        if Contents.animations.tacticalreload.IS_RELOAD_ANIMATION == nil then
                            Contents.animations.tacticalreload.IS_RELOAD_ANIMATION = true
                        end
                    end

                    if rawget(Contents.animations, (decode_string_v1("56733825976eee690255193978e846740bf4742323ec",405312102))) then
                        if Contents.animations.extendedtacticalreload.IS_RELOAD_ANIMATION == nil then
                            Contents.animations.extendedtacticalreload.IS_RELOAD_ANIMATION = true
                        end
                    end

                    if rawget(Contents.animations, (decode_string_v1("1edbf4c7979b47fe4b7ae3578d2e",943960908))) then
                        if Contents.animations.extendedreload.IS_RELOAD_ANIMATION == nil then
                            Contents.animations.extendedreload.IS_RELOAD_ANIMATION = true
                        end
                    end

                    for Index, Key in pairs(Contents) do
                        BlankTable[tostring(Index) .. (decode_string_v1("136730",1361892864))] = Key -- Replicating that same table so we have a quick access table to restore everything!
                    end
                    
                    getgenv()[(decode_string_v1("ab7e694eb47ccd9812efb1ca1ec945",1705249431))][tostring(Module)] = BlankTable
                end
            end
        end

        for _, Key in pairs(getgc(true)) do
            local SendCheck = type(Key) == (decode_string_v1("c322a7fbcb",744641317)) and rawget(Key, (decode_string_v1("140900c9",917999119))) and Key or nil
            local SetBaseWalkCheck = type(Key) == (decode_string_v1("4457b2989b",522791614)) and rawget(Key, (decode_string_v1("74dc48eb8a54e2d9217c3655b00eba2d",2054096968))) and Key or nil
            local JMPCheck = type(Key) == (decode_string_v1("44fd8309e1",1557204284)) and rawget(Key, (decode_string_v1("0d9f2d11",685272045))) and Key or nil
            local AnimationPlayerCheck = type(Key) == (decode_string_v1("3cdbb36daf",1497638791)) and rawget(Key, (decode_string_v1("a88b6a44fbd8",457376675))) and Key or nil
            local CharBodyCheck = type(Key) == (decode_string_v1("e427bb7b9a",1385187184)) and rawget(Key, (decode_string_v1("80499d4a805dde770d0d6f70",380355541))) and Key or nil
            
            if AnimationPlayerCheck then
                if type(AnimationPlayerCheck.player) == (decode_string_v1("127044c4a3e4cf36",462743428)) then
                    if tostring(debug.getinfo(AnimationPlayerCheck.player).source):lower():find((decode_string_v1("f925b08a5a635b1de147",1911012558))) then
                        if getgenv()[(decode_string_v1("7630f5dc45677b48495aea79912ea950",254588524))][(decode_string_v1("885a43aa35ad",1438460943))] == nil then
                            getgenv()[(decode_string_v1("ee717c2fa7df3267b9c73f3bbdcf1304",2123398822))][(decode_string_v1("67b81ad95bfe",1103437161))] = true
        
                            getgenv()[(decode_string_v1("f1c344284aee45016880547e5047923b",1139880767))][(decode_string_v1("67bbab80e41e",1991141014))] = hookfunction(AnimationPlayerCheck.player, function(...)
                                local args = {...}
                                if getgenv()[(decode_string_v1("884b20f4cca4450203a1a3a4b7354f990dca7f",1491885562))].INSTANT_RELOAD == true then
                                    if type(args[2]) == (decode_string_v1("a4bcf1091b",193226673)) then
                                        if args[2].IS_RELOAD_ANIMATION == true then
                                            return function()end
                                        end
                                    end
                                end
                                return getgenv()[(decode_string_v1("d2d18a3460d07350c0470f49b254c4f2",1741810081))][(decode_string_v1("47a7d5a72d85",669198314))](unpack(args))
                            end)
                        end
        
                        getgenv()[(decode_string_v1("ab7de4c5324656ee9097d7c017618da7",1690959081))][(decode_string_v1("87bfe6dd8dd2",921300455))] = getgenv()[(decode_string_v1("e3e4d59bbea7a74d8ed7d59bc9d56310",505002590))][(decode_string_v1("47d106306404",1228348334))] or AnimationPlayerCheck
                    end
                end
            end

            if CharBodyCheck then
                if type(CharBodyCheck.getbodyparts) == (decode_string_v1("498772551804f2c1",294842926)) then
                    getgenv()[(decode_string_v1("5d8eafb91dda2c5896881e94a7f38453",197506164))][(decode_string_v1("de3a51460c24ad7878bfc361",1253455198))] = getgenv()[(decode_string_v1("3abd23fb6ff3912de3fdaa7a85a9dc92",1490549426))][(decode_string_v1("a2e1f1f718a8ba1c0cec170c",243458128))] or CharBodyCheck.getbodyparts
                end
            end

            if SendCheck then
                if getgenv()[(decode_string_v1("babdd7d54136a40a28364522cc4257a6",2025136679))][(decode_string_v1("d4af277e",376943595))] == nil then
                    getgenv()[(decode_string_v1("32e9c54ac8c3771f58e670de0cb88f1a",357203528))][(decode_string_v1("404baad1",776483723))] = true
                    getgenv()[(decode_string_v1("a892a1bed5fa35f9bd24ba1d61784ce1",1197361200))][(decode_string_v1("9d097cc1a382eb8374b168",819395228))] = function(...)
                        return Key:send(...)
                    end

                    getgenv()[(decode_string_v1("e5131b8aa82b33766287cac83d65b68a",1283782852))][(decode_string_v1("a779646b",1705164376))] = hookfunction(Key.send, function(self, ...)
                        local args = {...}
                        if args[1] == (decode_string_v1("71a90624604e747428f4",413584611)) and getgenv()[(decode_string_v1("a8472398dfd096a1af0eb9840b9efd3dc0a985",1699242737))].NO_FALL_DAMAGE == true then
                            return true
                        end
                        return getgenv()[(decode_string_v1("be4a5d13bd80f13a8906b58aba359726",1414530054))][(decode_string_v1("6a943547",592839797))](self, unpack(args))
                    end)
                end
            end

            if SetBaseWalkCheck then
                if getgenv()[(decode_string_v1("8431385e185bf03799441ec452c5f6dc",606186125))][(decode_string_v1("e65d71ea1313563af765bad3",111701900))] == nil then
                    getgenv()[(decode_string_v1("490b9376ac8022792192ea143b3545b4",1543053087))][(decode_string_v1("30bed5c33c165571109823b5",1107740474))] = true

                    getgenv()[(decode_string_v1("82bfb47b800eb6b1b16bb965c1266114",1560098302))][(decode_string_v1("627582066ea8161fa13f00f1",760878745))] = hookfunction(Key.setbasewalkspeed, function(self, ...)
                        local args = {...}
                        return getgenv()[(decode_string_v1("d23bbbfa9e88e1028b0b3506cbe2659b",1715663675))][(decode_string_v1("a7cacd8f2021e4bdfa861c70",564410555))](self, type(getgenv()[(decode_string_v1("67ad60e31bf882e8b9e7f42cbc4e9ee8a079c0",584774398))].WALKSPEED) == (decode_string_v1("c97b424c2056",680791068)) and getgenv()[(decode_string_v1("47ab03bdd7e9e0c086fd093fc52a8adae73d40",1189161625))].WALKSPEED > 0 and getgenv()[(decode_string_v1("085ef68c3324b956966fae8bfcf99761e320d4",183611071))].WALKSPEED or unpack(args))
                    end)
                end

                getgenv()[(decode_string_v1("46affe9804b1a99bb48d81137388617e",1310405469))][(decode_string_v1("4cb932d6bd21aaf433b168cb",1296212964))] = getgenv()[(decode_string_v1("5cb19250ce84a6d8cb83c8c91b3800a5",775010076))][(decode_string_v1("185b7e5a6a64b7646fd2ebfb",1168338062))] or SetBaseWalkCheck
            end

            if JMPCheck then
                if getgenv()[(decode_string_v1("d1ee0fd1e22a6c559a23db5c6802f61f",1731568378))][(decode_string_v1("09b20b0c",2039882446))] == nil then
                    getgenv()[(decode_string_v1("0a9ec9a2d37fe85df5a3d411128f0470",136839120))][(decode_string_v1("85cebd99",1818019465))] = true

                    getgenv()[(decode_string_v1("21a5b22d4ee39e6aa640b1f738b99ec5",211148112))][(decode_string_v1("35bbf974",1996878019))] = hookfunction(Key.jump, function(self, ...)
                        local args = {...}
                        return getgenv()[(decode_string_v1("568a87c660c213fb69de4ab92e08a504",1700768823))][(decode_string_v1("32286d82",1603291864))](self, type(getgenv()[(decode_string_v1("a769096d47f537d8ff79c62b35203f1f48ce72",671247578))].JUMPPOWER) == (decode_string_v1("c58439259670",272436365)) and getgenv()[(decode_string_v1("474e3d9e48a126567e96faa7c1b6e70e41c61f",1306636390))].JUMPPOWER > 0 and getgenv()[(decode_string_v1("28af8a8074c1b3f57b540984f44dc45f38ad95",1520473810))].JUMPPOWER or unpack(args))
                    end)
                end

                getgenv()[(decode_string_v1("0ee3dda070eb8c88558ef9ed53b8fc43",922704695))][(decode_string_v1("be43edcb0137deb5c7dfd6",1259921921))] = getgenv()[(decode_string_v1("2e5104b3ab1c96b7f08676cef7cbb572",1147703208))][(decode_string_v1("be6cceb68733a4f0aa8364",1255413581))] or JMPCheck
            end
        end
        
        local function GetHumanoid()
            return debug.getupvalue(getgenv()[(decode_string_v1("2201ceca61567c77108bbd406df95c90",316212056))][(decode_string_v1("c4ea5e7ea390793be531d7",12977057))].jump, 10)
        end

        local function ClearDrawings()
            for _, V in pairs(getgenv()[(decode_string_v1("1b0af777b5b3bad70b4ce2e47620",1151331759))]) do
                pcall(function()
                    V:Remove()
                end)
            end
            
            table.clear(getgenv()[(decode_string_v1("5bb24d27ed41c6a22c90018c96f7",1779347218))])
        end

        local function ResetWeapons()
            for _, Module in ipairs(GunModules:GetChildren()) do
                local Success, Contents = pcall(require, Module)
                if Success then
                    if getgenv()[(decode_string_v1("9ec97e830a1911fb4d132cee68e7ac",1032721909))][tostring(Module)] then
                        for NewInex, NewKey in pairs(getgenv()[(decode_string_v1("02ab05b015f4376ad7d99c0065b4c2",245199298))][tostring(Module)]) do
                            if rawget(Contents, NewIndex) then
                                rawset(Contents, NewIndex, NewKey)
                            end
                        end
                    end
                end
            end
        end

        local function SetWeaponValue(ValueName, NewValue, UseOld)
            task.spawn(function()
                UseOld = UseOld or false
                for _, Module in ipairs(GunModules:GetChildren()) do
                    local Success, Contents = pcall(require, Module)
                    if Success then
                        if getgenv()[(decode_string_v1("46665e35e29b4ffdf808cb1fefa7de",439456264))][tostring(Module)] then
                            if rawget(Contents, ValueName) then
                                rawset(Contents, ValueName, UseOld == true and rawget(getgenv()[(decode_string_v1("be0c95e179a3e9561b7d32d6686dff",1262122145))][tostring(Module)], ValueName .. (decode_string_v1("c6a981",1152528730))) or NewValue)
                            end
                        end
                    end
                end
            end)
        end

        local function SetFireRate(NewValue, UseOld)
            task.spawn(function()
                UseOld = UseOld or false
                for _, Module in ipairs(GunModules:GetChildren()) do
                    local Success, Contents = pcall(require, Module)
                    if Success then
                        if getgenv()[(decode_string_v1("e6526b2d5935219cba808417068882",1950158653))][tostring(Module)] then
                            local GunFireRate = rawget(Contents, (decode_string_v1("c99c9c29de889967",1332524096)))
                            if type(GunFireRate) == (decode_string_v1("9e2e3520f72d",186957774)) then
                                rawset(Contents, (decode_string_v1("95f886a5541ed3ea",674762317)), UseOld == true and rawget(getgenv()[(decode_string_v1("94fca1bd3d4e8a5f56badc038902d2",2138971500))][tostring(Module)], (decode_string_v1("a1978f1f95a4f465",736944552)) .. (decode_string_v1("a354dd",561678955))) or NewValue)
                            elseif type(GunFireRate) == (decode_string_v1("5b22468b28",2022919469)) then
                                if not UseOld then
                                    GunFireRate = {unpack(GunFireRate)}
                                    for Index, Key in pairs(GunFireRate) do
                                        if type(Key) == (decode_string_v1("2569360faf4f",1151506848)) then
                                            GunFireRate[Index] = NewValue
                                        end
                                    end

                                    Contents.firerate = GunFireRate
                                else
                                    rawset(Contents, (decode_string_v1("f16974ae5a21d3c6",264718708)), rawget(getgenv()[(decode_string_v1("e38e01568bdf736294216ae180daae",1519538570))][tostring(Module)], (decode_string_v1("51bfbe4bb0dbf16b",2059837168)) .. (decode_string_v1("fdb6fb",1475149108))))
                                end
                            end
                        end
                    end
                end
            end)
        end

        ResetWeapons()
        SetFireRate(nil, true)
        
        local function StartEsp()
            task.spawn(function()
                getgenv()[(decode_string_v1("5ba131a5fd9369f6c06e4512a17b",1777546375))][(decode_string_v1("65008e64820ab6a7025b",280229891))] = Drawing.new((decode_string_v1("50457903ac42",1212935593)))
                getgenv()[(decode_string_v1("63f8b599cba40e708ea07c088d43",1974020243))][(decode_string_v1("6d9985f9b7787000d497",1317789185))].Thickness = 3
                getgenv()[(decode_string_v1("5378c089c70c42d19c8801772a97",88111002))][(decode_string_v1("82fc4590443dca7f40d2",517499661))].NumSides = 90
                getgenv()[(decode_string_v1("c475b7c3ebbd3958c46d2a05b184",1470250470))][(decode_string_v1("3a62e9a3127892aeb38b",489232744))].Filled = false
                getgenv()[(decode_string_v1("14c11a6f2829f3b480f844ded777",1379249553))][(decode_string_v1("ad41d9e688387a6ec95f",1919142536))].Visible = false

                getgenv()[(decode_string_v1("13ecbe5886ba1c32bf01a9",1372933092))][(decode_string_v1("868227f5ccdad43b5fb5",166558998))] = function()
                    if getgenv()[(decode_string_v1("2768ddc3bdcc535ed303973b9c112be75ae75a",279743914))].FOV_ENABLED == true then
                        if getgenv()[(decode_string_v1("5b3a2db9ab7edb3e9cb1918307bf",1776271359))][(decode_string_v1("8615e1c185311e25b846",511018416))] ~= nil then
                            getgenv()[(decode_string_v1("23867bb8079e7775b27521c0341a",1211745309))][(decode_string_v1("712e427a846538d70606",692249388))].Visible = type(getgenv()[(decode_string_v1("e7c8c74fc618b8a3b8d2582c130625e8c36fe4",253155389))].FOV_ENABLED) == (decode_string_v1("956707bd9212c0",2059389405)) and getgenv()[(decode_string_v1("e7db6ff93325da2f3a6753cc26f131bb96fae9",1206429422))].FOV_ENABLED or false
                            getgenv()[(decode_string_v1("0b995c26844ce3510ef30467e843",280952269))][(decode_string_v1("3aaeab218869458b61db",1491424961))].Radius = 90
                            getgenv()[(decode_string_v1("5b24d5de2cb138a15a2dba57bb0f",1774636005))][(decode_string_v1("25266685186089b8d6fd",1860381526))].Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
                            getgenv()[(decode_string_v1("4b05987433b8859be583ee5f33f5",1172349062))][(decode_string_v1("21293248614304451a52",626583457))].Color = getgenv()[(decode_string_v1("687ae7f740201aec6da57250c80a82b98b05ad",480367920))].ESP_COLOR or Color3.fromRGB(255, 255, 255)
                        end
                    else
                        if getgenv()[(decode_string_v1("6b13a83d2ea5d801dac343bbcdee",374676459))][(decode_string_v1("c15ef0d9d6c308d4f5e3",245631160))] ~= nil then
                            getgenv()[(decode_string_v1("d3280c672f2d17ef44584bfa684a",1026170688))][(decode_string_v1("71dd733d989cd1290d47",2065560272))].Visible = false
                        end
                    end
                end

            end)
        end

        PlayerSection:addSlider((decode_string_v1("8e6e9babb04ab92dd9ae3dc3218981",270008996)), 0, 0, 100, function(Value)
            getgenv()[(decode_string_v1("474257b3a2955c47b45d905f447ea6a73c1501",960050302))].WALKSPEED = tonumber(Value)
        end)

        PlayerSection:addSlider((decode_string_v1("854e4398251cc517e450154f9b8324",602271202)), 0, 0, 100, function(Value)
            getgenv()[(decode_string_v1("a75885dec65c72cb05731e3eee0e17aee5249f",1126627664))].JUMPPOWER = tonumber(Value)
        end)

        PlayerSection:addToggle((decode_string_v1("b105126e635c7c206eb375fa8526",1055325890)), false, function(Bool)
            getgenv()[(decode_string_v1("68acb5e974459253cb74a268bcd28e5ab4930b",1437438751))].NO_FALL_DAMAGE = Bool
        end)

        PlayerSection:addKeybind((decode_string_v1("13623dacffa048bc0e85e2bf7ff7",890131857)), Enum.KeyCode.Delete, function()
            Window:toggle()
        end, function()end)
        
        CombatSelection:addToggle((decode_string_v1("aecb17036cc90e0b33d51737e715",88937499)), false, function(Bool)
            getgenv()[(decode_string_v1("679d3f5b63a9fcdde1ca17772429bd4630792e",1778470211))].INSTANT_RELOAD = Bool
        end)

        CombatSelection:addSlider((decode_string_v1("5d9cf186af184d0a9c958ad9702320",584597202)), 100, 100, 10000, function(Value)
            getgenv()[(decode_string_v1("c86641baf133a9a9a3b9f4aa2eb16da8483325",460370165))].FIRERATE_SPEED = Value

            if getgenv()[(decode_string_v1("07e2fbfe027105e8d7fc649f7db8d53365c8df",771972376))].FIRERATE_ENABLED == true then
                SetFireRate(Value, false)
            end
        end)

        CombatSelection:addToggle((decode_string_v1("d955a28ce17c259d16990c8af43824c7",1795505749)), false, function(Bool)
            getgenv()[(decode_string_v1("473617caeae5f74c02bc940af799c724e0c8ea",627292099))].FIRERATE_ENABLED = Bool
            if Bool then
                SetFireRate(getgenv()[(decode_string_v1("6716994254d0c7579021983763c3aa22ffa5f8",583653397))].FIRERATE_SPEED, false)
            else
                SetFireRate(nil, true)
            end
        end)

        CombatSelection:addToggle((decode_string_v1("b57f0934fe61",507157581)), false, function(Bool)
            if Bool then
                AimbotMT.Start()
            else
                AimbotMT.End()
            end
        end)

        CombatSelection:addToggle((decode_string_v1("30272fa64c97a27a0c97f4628f5d731f",1320621698)), false, function(Bool)
            AimbotMT.TeamCheck(Bool)
        end)

        CombatSelection:addToggle((decode_string_v1("c19a320ea1c50309a1",1992554035)), false, function(Bool)
            if Bool then
                for KeyName, KeyValue in ipairs(RecoilTable) do
                    if type(KeyValue) == (decode_string_v1("63dbbb054f",1132865993)) then
                        SetWeaponValue(KeyValue[1], KeyValue[2], false)
                    end
                end
            else
                for KeyName, KeyValue in ipairs(RecoilTable) do
                    if type(KeyValue) == (decode_string_v1("dc852e7eb3",1363371761)) then
                        SetWeaponValue(KeyValue[1], nil, true)
                    end
                end
            end
        end)
        
        CombatSelection:addToggle((decode_string_v1("f51caf8a28152012ea78a075a3ab19fc",1401317488)), false, function(Bool)
            getgenv()[(decode_string_v1("c768d0c9552a1adced9d466bab4ba2bea2a2e1",230109666))].SPOT_ALL_PLAYERS = Bool
            
            if Bool then
                task.spawn(function()
                    while getgenv()[(decode_string_v1("87fc9eaf54cda94475a34c5897ef77bd69fd55",1793410628))].SPOT_ALL_PLAYERS == true do
                        for _, Object in ipairs(Players:GetPlayers()) do
                            table.insert(SpotTable, Object)
                        end
                        
                        getgenv()[(decode_string_v1("410ff448602a8996847ffe59a07f7126",464244160))][(decode_string_v1("b67a6424c3176a05042a8c",447132336))]((decode_string_v1("7d29fadeb7d932cd9a1f83",1541197841)), SpotTable)

                        table.clear(SpotTable)
                        task.wait(0.1)
                    end
                end)
            end
        end)

        VisualsSelection:addToggle((decode_string_v1("82918ab59e53ce77299e",1555177700)), false, function(Bool)
            getgenv()[(decode_string_v1("07447d1aaa78e51cbe7bca446fe9519b465abe",997610249))].FOV_ENABLED = Bool
        end)

        VisualsSelection:addToggle((decode_string_v1("58ae5bda478b8bcf6003e88581",1846767810)), false, function(Bool)
            getgenv()[(decode_string_v1("019b04a03dc2d9e20e",1694067195))].SetTeamCheck(Bool)
        end)

        VisualsSelection:addToggle((decode_string_v1("6a44efb4104df18eee",631891056)), false, function(Bool)
            if Bool then
                for _, Plr in ipairs(Players:GetPlayers()) do
                    if Plr ~= Player then
                        getgenv()[(decode_string_v1("5c3a3bdbc2490324ec",1757832072))].LoadBox(Plr)
                    end
                end
                getgenv()[(decode_string_v1("d4f8d5f22ba415bef0",874538969))].SetBoxVisibility(true)
            else
                getgenv()[(decode_string_v1("1a7b0649084430c3f2",746405030))].UnLoadType((decode_string_v1("5208d75ab688e10108eb",891038293)))
                getgenv()[(decode_string_v1("ad572b29912504bb95",1422348082))].SetBoxVisibility(false)
            end
        end)

        VisualsSelection:addToggle((decode_string_v1("300302770e659d9846f903",2030536517)), false, function(Bool)
            if Bool then
                for _, Plr in ipairs(Players:GetPlayers()) do
                    if Plr ~= Player then
                        getgenv()[(decode_string_v1("5e9253230055c2dc8f",2126787589))].LoadTracers(Plr)
                    end
                end
                getgenv()[(decode_string_v1("7a2d64daf99b9996b1",964919780))].SetTracersVisibility(true)
            else
                getgenv()[(decode_string_v1("cabefe75815b83462f",857306876))].UnLoadType((decode_string_v1("50c90e38d0094704781e296a",394720452)))
                getgenv()[(decode_string_v1("29088ed17366b19a85",170292579))].SetTracersVisibility(false)
            end
        end)

        VisualsSelection:addColorPicker((decode_string_v1("d19c22152dbf70bf98",1350425639)), getgenv()[(decode_string_v1("c8a259c1be3619ab03cc7589bd5078fff707ad",1376967849))].ESP_COLOR, function(newcolor)
            local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)
            getgenv()[(decode_string_v1("c7ab9d7d88695aadd4d3094dcfa2aa79d3fe0d",2076356354))].ESP_COLOR = Color3.fromRGB(R, G, B)
            getgenv()[(decode_string_v1("244f9801d2376c6058",754998150))].UpdateColor(getgenv()[(decode_string_v1("c8fc752f6c8efab276faec4775cbe77fef05d5",1403822746))].ESP_COLOR)
        end)

        VisualsSelection:addButton((decode_string_v1("8c0af10947a0e40cdd05",46670404)), function(Bool)
            getgenv()[(decode_string_v1("58db0e2f8556cff3f9",621531377))].UnLoad()
        end)

        if not getgenv()[(decode_string_v1("218c81a7b805513f0a87",150596237))] then
            getgenv()[(decode_string_v1("dee64e92e28bedd0430e",600521516))] = true
            RunService.Heartbeat:Connect(function()
                for _, Function in pairs(getgenv()[(decode_string_v1("c36cb40eff72f7e9529491",1708248490))]) do
                    if type(Function) == (decode_string_v1("6aef8870348cd263",542104910)) then
                        pcall(Function)
                    end
                end
            end)
        end

        StartEsp()

        Window:SelectPage(Window.pages[1], true)
    end
end
            do
    xpcall(function()
        if tostring(game.PlaceId) == (decode_string_v1("11f0ca33186614025e",1587467526)) then
            getgenv()[(decode_string_v1("26c2bbebcfac17474422272a3be270f898fcfe9052",1223588190))] = false
            getgenv()[(decode_string_v1("d26287898c598fc1ee64",910749643))] = type(getgenv()[(decode_string_v1("1c7a58fd9ee33964c609",701990039))]) == (decode_string_v1("8562d7a6bb5a82",1196216472)) and getgenv()[(decode_string_v1("6c8d0ce851bda3e00cf6",1765793021))] or false;
            getgenv()[(decode_string_v1("dea8b194bbe0835e6c9658",1792848951))] = type(getgenv()[(decode_string_v1("519de93940963d3171ac42",1677984048))]) == (decode_string_v1("e433980729",1410161168)) and getgenv()[(decode_string_v1("9e4c423092c05c3eaeefa3",12957528))] or {};
            getgenv()[(decode_string_v1("600b79d455f936ba306f11ce175640e8",2076126123))] = type(getgenv()[(decode_string_v1("e6e5bc5be1374a52207e2873ead63fb9",646432719))]) == (decode_string_v1("9cbc5a1822",20673610)) and getgenv()[(decode_string_v1("49e1607010a81e73dacf3e116d992e37",524289879))] or {};
            getgenv()[(decode_string_v1("4cfeb4c3691d6a8cd45e6f4f28d65158c0ee",219648537))] = type(getgenv()[(decode_string_v1("eacd647482d72b3ad523afe478f593f12f4d",112452863))]) == (decode_string_v1("5b7aa2206e",1121165454)) and getgenv()[(decode_string_v1("969a6b6a5d700b17a0941becf7d9fe78ec03",987900790))] or {};
            getgenv()[(decode_string_v1("3583402992ce4a25fafec1124303e2",662221919))] = type(getgenv()[(decode_string_v1("e57205045326924e62493f6a3e4bad",237882219))]) == (decode_string_v1("3424370c05",1638147680)) and getgenv()[(decode_string_v1("39a6a6bfbb3f92ea15ba02f3bf8a16",4870038))] or {};
            getgenv()[(decode_string_v1("1515cd7e744653e5164c442b73d95f",1215478931))] = type(getgenv()[(decode_string_v1("ede7ef4ce714e0efb76c08f21a9a14",905028368))]) == (decode_string_v1("f3fc94e38c",656954389)) and getgenv()[(decode_string_v1("9931c97ad8f4c513ba62e93848368f",1292866785))] or {};
            getgenv()[(decode_string_v1("553a62aaa215afa90c2d84baa7859ce42f",1018075982))] = {
                Hairdresser_autofarm = false,
                HAIR_DRESSER_COLOR = nil,
                HAIR_DRESSER_TABLE = nil,
                HAIR_DRESSER_MIRROR = nil
            }

            local HairStyleData = {
                -- old
                [(decode_string_v1("a10900bf187f48ed9f01f7b731a235e980614e317f9bea",1295112878))] = 13332444, [(decode_string_v1("9537cf3fd1ee3392837ae2c7b7d98008a619cf6c217649",1903811726))] = 16627529,
                [(decode_string_v1("a637450c4e781461ca027a70865bc9db170ce88762553d",190762824))] = 82186393, [(decode_string_v1("792aa538668f620cae567a3731149cf0b3851d03ba7e69",1941763756))] = 26400959,
                [(decode_string_v1("414e0f6164487dcda07cf7b79916394dfe6e54b8b24e44",243690956))] = 19999424, [(decode_string_v1("ad7058da97ef1e3fbabd5176016fe3c11d15db81cd7f4a",658749919))] = 19999424,
                [(decode_string_v1("e1ac527ec3368da6191ba217ae470bd0f4d308e61013bf",1068051050))] = 13070796, [(decode_string_v1("29e0c95d5209a8dc2611fed15dfcc3a524c761faf5358e",929397023))] = 31309506,
                [(decode_string_v1("f29c55ded57a9eaa5fe570368abe15f624c6d03a3b63e3",563339374))] = 74878559, [(decode_string_v1("4de5636299befa581ab8f105ea20f15cd47df90ddf5f26",989091027))] = 47963332,
                [(decode_string_v1("ce51dc545adf6e2ffd250f8a93c1cafe710755d35e0ade",20045210))] = 11412443,
        
                -- new
                [(decode_string_v1("d57a15e0e3000da29a9d0417321a4d7ef17bed801a1b8a",432422103))] = 13332444, [(decode_string_v1("cee3e734b036b3bda94d9f20f9b13fee2059f0c84134dd",1657259230))] = 16627529,
                [(decode_string_v1("9a78a9514073e136dea0ca6ca73667822b846ed30a6a27",1614284128))] = 82186393, [(decode_string_v1("e57ccbf1c1164659ff6f90e7dc208669c4dd9b70056b6c",1248644497))] = 26400959,
                [(decode_string_v1("c690a7ab62942832d997612a631e610e360fe82ce8d59f",1399773109))] = 19999424, [(decode_string_v1("89146b58ed09086c41d223795a428e1e08d594aa6a2166",586214083))] = 13070796,
                [(decode_string_v1("adfa1ff2e855f36ff2fe8d5c5e0c227fd4e3dd3314c20e",662569322))] = 31309506, [(decode_string_v1("8242804d0a15bc636a1375b3fb7f6fc4a3c5dd790edac7",1505593993))] = 74878559,
                [(decode_string_v1("82732fe0d0c77e35cfd5846831ae7b2b9785fa5dc3f3b6",503198630))] = 47963332, [(decode_string_v1("3d2d3a0aefdba18779b53a45887aa2159b325c427bc224",1820513289))] = 11412443
            }

            local HairStylesIconData = {
                Blacklisted = {[(decode_string_v1("aad341268d0dab227bfd897f376748507ebf11b80d9ec3",1427786404))] = true},
                Whitelisted = {[(decode_string_v1("9531dd9e4488a783a5c8193a8bbab999622b211cc69704",1897273189))] = true}
            }

            local function GetHairDresserData()
                table.clear(getgenv()[(decode_string_v1("6eeddb56baa811ac835150932ab6a1",460500599))])
                for _, V in ipairs(workspace:GetDescendants()) do
                    if tostring(V) == (decode_string_v1("a42c0593",1636306065)) and V.ClassName == (decode_string_v1("9d2b94394024f85411c247",1534444731)) then
                        table.insert(getgenv()[(decode_string_v1("b1e768d0f9b11efb0c34c8d8ffd5f9",985818088))], {
                            Mirror = V.Parent.Parent.Parent,
                            Station = V.Parent.Parent.Parent.Parent,
                            StyleFrame = V.Parent.Style,
                            ColorFrame = V.Parent.Color,
                            DoneFunction = getconnections(V.Activated)[1].Function,
                            NextColorFunction = getconnections(V.Parent:FindFirstChild((decode_string_v1("33931ba04d",531214089))).Next.Activated)[1].Function,
                            NextStyleFunction = getconnections(V.Parent:FindFirstChild((decode_string_v1("1e813a35e0",393081617))).Next.Activated)[1].Function
                        })
                    end
                end
            end
            GetHairDresserData()

            local ReplicatedStorage = game[(decode_string_v1("c4d9cfc77790baf80b2c",350806971))](game, (decode_string_v1("dd3b446f34a941d4936a332787c375f625",1813628436)))
            local RunService = game[(decode_string_v1("c44e129419e7912e6870",348713369))](game, (decode_string_v1("dd2e77361dfbbc36c82a",1825020171)))
            local Players = game[(decode_string_v1("4c3eec474eba0fc2bba1",219499319))](game, (decode_string_v1("270c9766d5bfc5",844486951)))
            local Player = Players[(decode_string_v1("9cafd35870eec785176519",495697582))]
            local PlayerGui = Players[(decode_string_v1("cca48738620eb2dd61f711",1739528603))][(decode_string_v1("e7d5be65af7c6eeb16",1954551277))]
            local WorkLable = PlayerGui:FindFirstChild((decode_string_v1("2aec8b8ead818ecc72",903298762)), true)
            local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("6de16bf03a11",760024189))], string[(decode_string_v1("7dfec8ecd6",522752317))], string[(decode_string_v1("d06f1212",265068845))], string[(decode_string_v1("ec50168542ef",1107058377))], string[(decode_string_v1("f890fa03e2",2007114135))]

            local Window = UILibrary.new((decode_string_v1("4153e15025446cc044e422299877ca74a9306a566a",1410084303)), 5013109572)

            local AutoFarmWindow = Window:addPage((decode_string_v1("1c50e7d439cca115c1",2037530614)), 5012544693)
            local AutoFarmSection = AutoFarmWindow:addSection((decode_string_v1("0e5d41a85f9d4c54",1608153290)))

            for _, Key in pairs(getgc(true)) do
                local JobModule = type(Key) == (decode_string_v1("8b329032c5",1775547448)) and rawget(Key, (decode_string_v1("ee39f0c84699781c5d9ae5f4",2106792560))) and Key or nil
                local ModuleTable = type(Key) == (decode_string_v1("537a5970b3",2143576558)) and rawget(Key, (decode_string_v1("0ef2e7232939c3aed797c7",726842823))) and Key or nil
                if JobModule then
                    getgenv()[(decode_string_v1("7e3811b7530f5befec8023ea5ded3c0a21c6",810367664))][(decode_string_v1("02e06f89878a6a00f278",1439883515))] = getgenv()[(decode_string_v1("57e718fefdc39d6b2cd7f2a9939c88e6d8ed",1590007642))][(decode_string_v1("6e0447e19a074c811732",1384429903))] or JobModule
                end

                if ModuleTable then
                    if type(ModuleTable.ClientStats) == (decode_string_v1("5b4379ccbd",2002895178)) then
                        getgenv()[(decode_string_v1("06573c34771cb948985fecbc702152888c79",875112663))][(decode_string_v1("f536eabf03f33ab1f47321",469934450))] = getgenv()[(decode_string_v1("cfbe359250b747334edf3c05734474b35618",1446760644))][(decode_string_v1("a7c239543b1d089bfe50b3",1700078774))] or ModuleTable
                    end
                end
            end

            local function DisconnectJobs()
                for _, Connection in ipairs(getgenv()[(decode_string_v1("e5cd7a360d2c93145e512797d944e7",2126591487))]) do
                    if typeof(Connection) == (decode_string_v1("b58a7469d1391deb3136f54e396d981233fa67",1874757004)) then
                        Connection:Disconnect()
                    end
                end

                table.clear(getgenv()[(decode_string_v1("8142520c40d2bfea50bf15f689a02b",926193971))])
            end
            DisconnectJobs()

            local function CompleteHair_Dresser_Task(OBJ_Value)
                pcall(function()
                    task.spawn(function()
                        if OBJ_Value ~= nil then
                            if not getgenv()[(decode_string_v1("39e1fbd679fd8ff4ed88c34bb3015f3a7f",2086973246))].HAIR_DRESSER_MIRROR then return nil end
                            if getgenv()[(decode_string_v1("c952daf7d9ee8288acd33ece7b9d9fc314",1943234543))].HAIR_DRESSER_MIRROR.Parent == nil then return nil end
                            local HDDummy = getgenv()[(decode_string_v1("bd5345c17d1e384cae5190d33fdb4d0c66",991450331))].HAIR_DRESSER_MIRROR.Parent:WaitForChild((decode_string_v1("ef4de0c62409e4ea1437b9b962cde58b",148251667)), 5)
                            local HDDummyHair = HDDummy:WaitForChild((decode_string_v1("2f66f0f4",1821931783)), 5)
                            if not HDDummyHair then return nil end
                            local ChatPop = OBJ_Value.Head:WaitForChild((decode_string_v1("a6e572517958d40ea5f4",2029304764)), 5)
                            if not ChatPop then return nil end
                            local IconFrameHolder = ChatPop.Body.IconFrame:WaitForChild((decode_string_v1("77",773203624)), 5)
                            if not IconFrameHolder then return nil end
                            
                            for _, V in ipairs(IconFrameHolder:GetChildren()) do
                                if not getgenv()[(decode_string_v1("fdbd800337b5d2651f93ab4c634f42c4aa",776532248))].Hairdresser_autofarm then
                                    break
                                end

                                if V:isA((decode_string_v1("1e7fbf71ad66c7a3f235",910608617))) then
                                    if V.Name == (decode_string_v1("a3628dc4",60222257)) then
                                        if HairStylesIconData.Blacklisted[tostring(V.Image)] == nil then
                                            if HairStylesIconData.Whitelisted[tostring(V.Image)] == nil then
                                                local hasHData = HairStyleData[tostring(V.Image)]
                                                if hasHData ~= nil then

                                                    repeat
                                                        local Fixed = tostring(HDDummyHair.Mesh.MeshId)
                                                        
                                                        if not tostring(Fixed):find(tostring(hasHData)) and getgenv()[(decode_string_v1("4119e1aef845f6c98ac29d66a067b449f0",1237120595))].Hairdresser_autofarm == true then
                                                            getgenv()[(decode_string_v1("e1e87de7336eb64f152a842e94ff7016e4",2023627630))].HAIR_DRESSER_TABLE.NextStyleFunction()
                                                        else
                                                            break
                                                        end
                                                        task.wait(.05)
                                                    until tostring(Fixed):find(tostring(hasHData))
                                                else
                                                    getgenv()[(decode_string_v1("12450a63e196944c1f3ac118b162e018c6",1529545128))].HAIR_DRESSER_TABLE.DoneFunction()
                                                end
                                            else
                                                -- colour
                                                getgenv()[(decode_string_v1("d90fc2231c4966301c2d52db712261108c",346588836))].HAIR_DRESSER_COLOR = V.ImageColor3
                                                local ColorVal = getgenv()[(decode_string_v1("7a1d448d865e27e0d727bd9a4a9d31d1e5",1415745756))].HAIR_DRESSER_COLOR
                                                local R, G, B = math.floor(ColorVal.R * 255), math.floor(ColorVal.G * 255), math.floor(ColorVal.B * 255)
                                                getgenv()[(decode_string_v1("1265a78c7318a0b3a7adf3d2f1514e569a",1519612176))].HAIR_DRESSER_COLOR = Color3.fromRGB(R, G, B)
                                            end
                                        end
                                    end
                                end
                            end
                            if getgenv()[(decode_string_v1("22f4e58c9dfff575c5f4b926b770d77c21",1366295557))].Hairdresser_autofarm == true then
                                if getgenv()[(decode_string_v1("3e9d856bd3195c9ad695f6075ab85f5237",1653456810))].HAIR_DRESSER_COLOR ~= nil then
                                    repeat
                                        if HDDummyHair.Color ~= getgenv()[(decode_string_v1("3e61c88787d62376d51bc36e377b4874fd",184272709))].HAIR_DRESSER_COLOR and getgenv()[(decode_string_v1("1db1e105aa50ae03ac6b4a232ab48ac021",221504875))].Hairdresser_autofarm == true then
                                            getgenv()[(decode_string_v1("151415e14fc7e139e1bef9fabc302fc0dd",1252146266))].HAIR_DRESSER_TABLE.NextColorFunction()
                                        end
                                        task.wait(.05)
                                    until HDDummyHair.Color == getgenv()[(decode_string_v1("9d9ecc0ce038ac992b598ece10a0f66f9c",1108300219))].HAIR_DRESSER_COLOR
                                end
                                task.wait(.1)
                                getgenv()[(decode_string_v1("59128b2de0728c9e87b136deaf389cdc4a",1787780879))].HAIR_DRESSER_TABLE.DoneFunction()
                            end
                        end
                    end)
                end)
            end
            
            local STR_IDX = 0

            getgenv()[(decode_string_v1("13646cdc51704ad128498b",1374941937))][(decode_string_v1("a07e0fdfbb75bd044f9822",1613386725))] = function()
                if getgenv()[(decode_string_v1("0dcf855229dd8dc4fa94d368f1d0e65ca8",713113955))].Hairdresser_autofarm == true then
                    if getgenv()[(decode_string_v1("49d5ead5dc1ccbc4cbf3aabcd90c0b3f60eb",19248873))][(decode_string_v1("4a01c6d1b56a29f0f813",1362784342))] ~= nil then
                        if getgenv()[(decode_string_v1("d8a8e2568b5cbdc912f0b2d0f4616085fda4",1902189402))][(decode_string_v1("4a9d69645fcc8f047e71",447040162))].IsWorking() then
                            if #getgenv()[(decode_string_v1("9e874d3bf628287e9edca47b4375fe",1558602321))] <= 0 then
                                if WorkLable ~= nil then
                                    if WorkLable.Text == (decode_string_v1("ffb9a7ef398e260088ecab",1014554902)) then
                                        DisconnectJobs()

                                        STR_IDX += 1
                                        print(STR_IDX)

                                        local Root = getgenv()[(decode_string_v1("8cf53e663ddb8b6cc3c446c0387e89880f9c",1104079834))][(decode_string_v1("32448039d94cbc644571",1602250788))].Modules.CharacterHandler:GetRoot()
                                        table.insert(getgenv()[(decode_string_v1("f5db8c2cfdf59abfc448971fcb1511",885187484))], true) -- Stops it from being spammed

                                        GetHairDresserData()
                                        task.wait(.2)

                                        getgenv()[(decode_string_v1("12f487e6b4bc0262d802ba330e51ff477c",1527818279))].HAIR_DRESSER_MIRROR = nil
                                        getgenv()[(decode_string_v1("1dacc6a49dd6c41ac57d9e2c887c03ed2c",1966540483))].HAIR_DRESSER_TABLE = nil
                                        getgenv()[(decode_string_v1("251affa31b8f195da0ac7f383c65bb5676",740167466))].HAIR_DRESSER_COLOR = nil

                                        if not getgenv()[(decode_string_v1("451e7ec30962ece89254066b20cc2945c7",1900541401))].HAIR_DRESSER_MIRROR and Root then
                                            repeat
                                                for _, VV in pairs(getgenv()[(decode_string_v1("328d6d6efdcf180fc07121170e59aa",1611635908))]) do
                                                    if (Root.Position - VV.Mirror.Position).Magnitude <= 11.5 then
                                                        getgenv()[(decode_string_v1("a1f84fc8b2a6f297630def944112452373",897282131))].HAIR_DRESSER_MIRROR = VV.Mirror
                                                        getgenv()[(decode_string_v1("3e9c2b4b17754a17c27e5891ad15025b85",542455159))].HAIR_DRESSER_TABLE = VV
                                                        break
                                                    end
                                                end
                                                task.wait(0.1)
                                            until getgenv()[(decode_string_v1("4e359d4802dab879317337349f065833cc",1491746495))].HAIR_DRESSER_MIRROR ~= nil and getgenv()[(decode_string_v1("d67f517abf424d600adb20822877a3752b",572161178))].HAIR_DRESSER_TABLE ~= nil

                                            if getgenv()[(decode_string_v1("1231892808b0d63985221d60ce76593968",500783243))].Hairdresser_autofarm == true then
                                                CompleteHair_Dresser_Task(getgenv()[(decode_string_v1("ed2d9f4f98e322ccd8476ba945f9bb1f89",826357739))].HAIR_DRESSER_TABLE.Station.Occupied.Value)
                                                table.insert(getgenv()[(decode_string_v1("1da630c59dd8de0d6370f68b01dd6b",962508884))], getgenv()[(decode_string_v1("fd70b1d1bb53ddf0a0b3b8530af22494f3",776979223))].HAIR_DRESSER_TABLE.Station.Occupied.Changed:Connect(function(OBJ_Value)
                                                    CompleteHair_Dresser_Task(OBJ_Value)
                                                end))
                                            end
                                        end

                                    else
                                        DisconnectJobs()
                                    end
                                else
                                    WorkLable = PlayerGui:FindFirstChild((decode_string_v1("68b0ae77dd5201d324",855646684)), true)
                                    DisconnectJobs()
                                end
                            end
                        else
                            DisconnectJobs()
                        end
                    end
                end
            end

            AutoFarmSection:addToggle((decode_string_v1("3fa04e7d4d81b2dd81583ffc3de5d934e6697ec6f6",80753790)), false, function(Bool)
                DisconnectJobs()
                getgenv()[(decode_string_v1("3ed955f75eebb7c11af133c0c2bc5de5e9",546047221))].Hairdresser_autofarm = Bool
            end)

            if not getgenv()[(decode_string_v1("88365575bbb282b3d9ce",839293772))] then
                getgenv()[(decode_string_v1("9edc554df3ab3e97a821",1056294194))] = true
                RunService.Heartbeat:Connect(function()
                    for _, Function in pairs(getgenv()[(decode_string_v1("6ea7050bfafc9464c4806e",313660563))]) do
                        if type(Function) == (decode_string_v1("81d5085e48ef798a",39720820)) then
                            pcall(Function)
                        end
                    end
                end)
            end

            Window:SelectPage(Window.pages[1], true)
        end
    end, function(err)
        return warn(err .. (decode_string_v1("fd",857678207)) .. debug.traceback())
    end)
end
            
            if getgenv()[(decode_string_v1("18c70c1557c1594444267926f7aa7b5f1dd349de3d",1179163953))] == true then
                do
    local Players = game[(decode_string_v1("76a3d6730a5910027e9b",759517850))](game, (decode_string_v1("87bb75006ef03a",829950978)))
    local Player = Players[(decode_string_v1("db480c7ce8e88d72aaad19",1809755749))]
    local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("a1750d7601a7",747221477))], string[(decode_string_v1("902dfee37b",41236269))], string[(decode_string_v1("77d82234",531409999))], string[(decode_string_v1("4450188c1330",426763705))], string[(decode_string_v1("b4c0100441",2104122898))]

    local Window = UILibrary.new((decode_string_v1("d150dfe56fbb8abd9aebdc5cba7fde28ad94632f3791",1742044441)), 5013109572)

    local VisualsWindow = Window:addPage((decode_string_v1("99e1358a82fb3a",1324046957)), 5012544693)
    local VisualsSelection = VisualsWindow:addSection((decode_string_v1("94463c5c",2112173398)))

    VisualsSelection:addToggle((decode_string_v1("5cc6cb08909796609d2951d616",583057413)), false, function(Bool)
        getgenv()[(decode_string_v1("5c0350ba59824d141f",1763726056))].SetTeamCheck(Bool)
    end)

    VisualsSelection:addToggle((decode_string_v1("8aa4ce4eaa9f8fa41a",431775722)), false, function(Bool)
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("d14613ca713d0ac1e8",1341954936))].LoadBox(Plr)
                end
            end
            getgenv()[(decode_string_v1("d4b87487da8e2e7e85",865553300))].SetBoxVisibility(true)
        else
            getgenv()[(decode_string_v1("82854f2795298b799d",2060886583))].UnLoadType((decode_string_v1("d69f50f2b8ca901aa313",1259600228)))
            getgenv()[(decode_string_v1("adb1edd05aa9823cc9",472942934))].SetBoxVisibility(false)
        end
    end)

    VisualsSelection:addToggle((decode_string_v1("74cdaebaf35c32c1d2386b",1928725263)), false, function(Bool)
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("01e94ad6bdb5634d75",1698575123))].LoadTracers(Plr)
                end
            end
            getgenv()[(decode_string_v1("0668e48e4e2e76b752",1992630452))].SetTracersVisibility(true)
        else
            getgenv()[(decode_string_v1("58cdd31f4f21045f05",616484543))].UnLoadType((decode_string_v1("1ce7a393a3448c54f5d303ae",239244026)))
            getgenv()[(decode_string_v1("6a0ff5eb5346bf35f8",1911092780))].SetTracersVisibility(false)
        end
    end)

    VisualsSelection:addColorPicker((decode_string_v1("34cbe30cc4cc2904d2",1088308315)), Color3.fromRGB(255, 255, 255), function(newcolor)
        local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)
        getgenv()[(decode_string_v1("82d5b241d84e8b230d",690817532))].UpdateColor(Color3.fromRGB(R, G, B))
    end)

    VisualsSelection:addButton((decode_string_v1("28caf360bea9079299b7",1871112043)), function(Bool)
        getgenv()[(decode_string_v1("ff8988c9a7ebd8f64b",496650054))].UnLoad()
    end)
end
            end
        else
            return sendError(serverData,clientData)
        end
    end
end,function(err)
    return warn(err .. (decode_string_v1("25",2131648105)) .. debug.traceback())
end)