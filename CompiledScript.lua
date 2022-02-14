local function decode_string_v1(str, seed)
    repeat
       seed = seed * 3
    until seed > 2 ^ 43
    
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
getgenv().Key = (decode_string_v1("ae968d7dbd451b89e8ee8e0fe5c08075c6195c85812451af4c",724708601));
getgenv().DiscordWebhook = (decode_string_v1("53c3c4a5",1002119559));
getgenv().WebhookEnabled = false;
getgenv().GubVersion = (decode_string_v1("4b8196",1577020875));

local CLIENT_DEOBF_OFFSET = 3;
local SERVER_DEOBF_OFFSET = 1;
local StartTimer = os.time()
local UILibrary = loadstring(game:HttpGet((decode_string_v1("30fdbd53ec4e34394d73445203e33ebcaf2f1797f317ea30e5a1480f7e8e03a71e836dc5a9a742e1447ba74bafefd2650a5f691c6fafb3b0dccade5a8bb993c9a21ac16e9a8cee413fa8925c60",1397841749)), true))()
local library = loadstring(game:HttpGet((decode_string_v1("20c09b72ea470bc72196e38cfd48ca5d8f176d13032ee6e053324f8400c2e88bf8406539065d007e9e2be404be4150c2247fb4a87d145cf3b65625407001b8eeb6407b638e62b835fc968b270ac6f0210ad7da282ad936976677c70485988087f300",149903639))))()
library:Notification((decode_string_v1("eec7fc5a048d74",2103148567)), (decode_string_v1("7940bcba0ba6fefaaf7b9a0b8b929e043cacaa8631209dfe5f53c9a7ffecbd4d18afaaf59df58421bc5516f31a33",734728224)), 10, Color3.fromRGB(255, 255, 255))

if not isfolder((decode_string_v1("3bac95f91b9647cb80cc61d510a5",454930185))) then
makefolder((decode_string_v1("9db2fa5bace03bf1dd69bff938fe",20140243)))
end

for i, v in pairs(game:GetService((decode_string_v1("d200ce65caabdd",252745938))):GetDescendants()) do
pcall(function()
if v.Name == (decode_string_v1("60eda02c",2058163147)) then
   v.Parent.Parent:Destroy()
end
end)
end

local function identify()
local Executor = string.lower(identifyexecutor())
local ExecutorTable = nil
if string.find(Executor, (decode_string_v1("01c169e83755b1",60306478))) then
ExecutorTable = {
   (decode_string_v1("687e9485005f32",1274407784)),
   syn.request
}
end
if string.find(Executor, (decode_string_v1("9b73e0c7",1596426301))) then
ExecutorTable = {
   (decode_string_v1("5cc96bd4",1128738710)),
   request
}
end
if string.find(Executor, (decode_string_v1("26f85893",1500640728))) then
ExecutorTable = {
   (decode_string_v1("2577550d4b9e",1838026321)),
   request
}
end
if string.find(Executor, (decode_string_v1("a5523e1dac14",1730587885))) then
ExecutorTable = {
   (decode_string_v1("c80fded81e6fdbb22d5b00",1054465844)),
   http.request
}
end
if string.find(Executor, (decode_string_v1("5a8dc4",700148172))) then
ExecutorTable = {
   (decode_string_v1("88014b0a360b298d",1810469885)),
   request
}
end
if string.find(Executor, (decode_string_v1("879aa1",2113371087))) then
ExecutorTable = {
   (decode_string_v1("a70f2596a00f4f59c1b8ab92",780797789)),
   http_request
}
end
if string.find(Executor, (decode_string_v1("4fe1aa19",369082815))) then
ExecutorTable = {
   (decode_string_v1("044a2027fae7ef577acc",342362987)),
   http_request
}
end
if string.find(Executor, (decode_string_v1("0ea4377e",231855025))) then
ExecutorTable = {
   (decode_string_v1("e3d0d9ba7616ee",513133728)),
   httprequest
}
end
if string.find(Executor, (decode_string_v1("aaf056185ce5e222",857433424))) then
ExecutorTable = {
   (decode_string_v1("f0440fe4987cf1b2",1123070359)),
   http_request
}
end
if getgenv().WRD_LOADED ~= nil then
ExecutorTable = {
   (decode_string_v1("1d1f6960bcd3e360",966060064)),
   http_request
}
end
if getgenv().unlock_module ~= nil and getgenv().setscriptable ~= nil and getgenv().import ~= nil then
ExecutorTable = {
   (decode_string_v1("68166e397d676ab1adcdb6a625bbd4",1271741240)),
   http_request
}
end
if getgenv().OXYGEN_LOADED ~= nil then
ExecutorTable = {
   (decode_string_v1("72d7798c40bee0e7",779980209)),
   http_request
}
end
if ExecutorTable == nil then
library:Notification((decode_string_v1("5e6abc73a5b89efead167e8eab",1764091377)), (decode_string_v1("28148a74986fa517e19e9cc901f00ffd050f0980d1e0577777b90a8e2aee61a523ef2fe209910ee6bb749375a7112c469e2eb62a2cdaaf37200aa42baf3b1a359a6cc3b91f61d255",1855380802)), 10, Color3.fromRGB(255, 255, 255))
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
library:Notification((decode_string_v1("6f7efa44c56c9e4feb1e9d6d8f15",1504738882)), (decode_string_v1("88c6460a19ebe76c8e3efe592b014b3b6988df5cb7621fee1f7558ac32956c5b3bb3ff683650f8658bde6fc2bad65b7decefa89d09a6eab13dd898201329b3eb3b4f263f02",359191410)), 15, Color3.fromRGB(255, 255, 255))
elseif serverData == (decode_string_v1("4cd8568c8bac67bc2acde48d7ca94823092a5166b3a94dbb2935917929fa6d895b2fb5a9b5d37fd6ea1634a7596b4bf0",1064068759)) then
library:Notification((decode_string_v1("7156cde65b933ff8572007768e01",1642475419)), (decode_string_v1("5f87621dce4ca2430105bb3da536d5080d6ad3111cac049a4db77c5ff305df308c078d856163a4811f5701736a8d573f29e4edf6d5afeeea61",1389786445)), 15, Color3.fromRGB(255, 255, 255))
elseif serverData == (decode_string_v1("e8d39d8a239ddc9b78a4aa58175a47fcc96b11bddc7cf5d08a",135838770)) then
library:Notification((decode_string_v1("bed25f5273a30491e8a142e7541f",1873030169)), (decode_string_v1("203cbc31cd82ff3d32d034323e8449b02673a45ddda1735d00461b18d912114a232ab798df5c40a0b5e7c0197208bdc3e121d1ff7d06c54fb7e53d7cf2",1042871120)), 15, Color3.fromRGB(255, 255, 255))
elseif serverData == (decode_string_v1("bfe9bfcfad5712207d854181620963fc72101ff0",1740787181)) then
library:Notification((decode_string_v1("f6597ae13257098ac302ea94168e8ac6",1388836065)), (decode_string_v1("b5ffffc723b28ef543e218d8d6bc641582a1667fb6af46c10ff9cdf2bc1f432245eba0577f7b96c7a4d2af88664d8b9c3de75741b8747ad11006e945be0a794a1a2b23595f",1359899687)), 15, Color3.fromRGB(255, 255, 255))
else
library:Notification((decode_string_v1("50c8bb260bfda75f7cdbd7f2598b",1215639833)), (decode_string_v1("25b5927ddf92ce8ed4c5e19690d8de6b7d495835d069d94eb855cab6bf55a9db8b12bd0dba2437051688ca7a7bca88100e2ecfe3b097e4c2d337d11924b6ac3f608dcf913dd94668abab42fb9eed3213961968858d3bc5c06ce89b367dc062ef1c85392517b517c2e51d96a3f906050ee6d99d6d94acdc69b3",486272543)), 15, Color3.fromRGB(255, 255, 255))
setclipboard((decode_string_v1("84c91ba8652e70a203d7dfe3d1dff2992506c98f9d49c3657a3c985851b2480dc713adc0adecc38b2855d29271732c6c64995612597dfd10de07beeba4ad",326170811)) .. clientData .. (decode_string_v1("78b298454d3c7768433275e0",1650165892)) .. exploit .. (decode_string_v1("b8bb59b181679e3e",1685580051)) .. Key .. (decode_string_v1("37028ea291cc94b65019e07fecc9c3fc",103007247)) .. serverData .. (decode_string_v1("b73aee3156df8499c9570a15accbf2f032",1292872807)) .. tostring(newtime))
end

specialisedrequest({
Url = (decode_string_v1("5f3f47b482f7949b5f38799ce9c0cd70011ebfcb872a1aafd10852a2f6",427668886)),
Method = (decode_string_v1("07b6dfc2",881079203)),
Headers = {
   [(decode_string_v1("686faddd196f3deb1743a194",1165843383))] = (decode_string_v1("c222e2a68466f67e0b9d16f0b82ca734",829635173));
   [(decode_string_v1("8108a3cf8967",1555290267))] = (decode_string_v1("108fea9ecd5bc08d762a966072aa720d3a5519",163002743));
},
Body = game:GetService((decode_string_v1("2fac4840397b6d6fd3716f",609060300))):JSONEncode({
   [(decode_string_v1("b03344",1213431840))] = (decode_string_v1("427723a07f3a20955386568c4cb4",406708042));
   [(decode_string_v1("b772ea53",1731411087))] = {
       [(decode_string_v1("247f8b65",3728788))] = (decode_string_v1("f4bd73cec94e6ca0411d",1277630384))
   };
   [(decode_string_v1("45c338e53e",1263091424))] = (decode_string_v1("4aa06c3733f26f2396f7765b2f5caba96664039c234563d24c27b34736b80f32ec0b58c0",1980281920));
})
})
end

local random = Random.new()
local letters = {(decode_string_v1("6b",181074706)),(decode_string_v1("01",1115781540)),(decode_string_v1("bc",1298141265)),(decode_string_v1("ab",430622491)),(decode_string_v1("ae",1267934686)),(decode_string_v1("0d",872943069)),(decode_string_v1("b1",1726715241)),(decode_string_v1("2f",1128497970)),(decode_string_v1("fe",908770802)),(decode_string_v1("ae",576071221)),(decode_string_v1("94",23459170)),(decode_string_v1("73",782271534)),(decode_string_v1("ca",1239469041)),(decode_string_v1("c9",2068458455)),(decode_string_v1("cc",2129312579)),(decode_string_v1("88",471768852)),(decode_string_v1("94",1841676711)),(decode_string_v1("12",1346901044)),(decode_string_v1("e8",606394400)),(decode_string_v1("83",1305411738)),(decode_string_v1("fe",1056564547)),(decode_string_v1("f6",508419768)),(decode_string_v1("11",1382294918)),(decode_string_v1("7f",881839869)),(decode_string_v1("c6",1188301432)),(decode_string_v1("bd",910707828))}

function getRandomLetter()
return letters[random:NextInteger(1, #letters)]
end
local function FixName(GameName)
return GameName:gsub((decode_string_v1("8099ed37c39d98dbefaa75ae",275645610)), (decode_string_v1("",478987320)))
end

local function GetGameConfig(GameName)
local Table = {}
if isfolder((decode_string_v1("e44bff82d1952e72cf5432fcba63",1822881582))) then
if isfile((decode_string_v1("21e80f0157e0dd7ffcb2ce8632f6be",1378448642)) .. tostring(GameName)) then
   local HttpServices = game:GetService((decode_string_v1("1fa42381cfd7fd1a2d15ad",95888139)))
   local ConfigContents = readfile((decode_string_v1("d67c108f1ee74a33830ee8671d327f",1203391254)) .. tostring(GameName))
   local DecodedSuccess, DecodedContents = pcall(HttpServices.JSONDecode, HttpServices, tostring(ConfigContents))
   if DecodedSuccess then
       Table = DecodedContents
   end
end
end
return Table
end

local function SaveGameConfig(GameName, ConfigTable)
if isfolder((decode_string_v1("d5fb722c99667e091f3b98c2604f",486524386))) then
local HttpServices = game:GetService((decode_string_v1("b0a1e13bdc5ea055781309",1466641933)))
local EncodedSuccess, EncodedContents = pcall(HttpServices.JSONEncode, HttpServices, ConfigTable)
if EncodedSuccess then
   writefile((decode_string_v1("40369af150edff9f6937ac6ef9003f",685765780)) .. tostring(GameName), tostring(EncodedContents))
   return true
end
end
return false
end

function getRandomString(length, includeCapitals)
local length = length or 10
local str = (decode_string_v1("",242887583))
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
return (str_gsub(s, (decode_string_v1("36",538003118)), function(c)
   return str_fmt((decode_string_v1("89bea629",1534419019)), str_byte(c))
end))
end

local function num2s(l, n)
local s = (decode_string_v1("",899553971))
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
msg = msg .. (decode_string_v1("97",743920435)) .. str_rep((decode_string_v1("17",391387506)), extra) .. len
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

if getgenv().Key == (decode_string_v1("",1164938911)) or nil then
Key = (decode_string_v1("6e2383c0",1523789081))
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
local charset = (decode_string_v1("add387f82a7c16abce67a18b82a8c60b5d5f4e3d84d7abefa1bb4fe4eadbf2221a461c20d975f102d99f7f458a35e9a1e2dbff2bf82e2b154a7983ce73",1676042509))
if type(v1) == (decode_string_v1("867399953269",112537583)) and type(v2) == (decode_string_v1("f238ac2358b6",1087464012)) then
local length1, length2, chars_1, chars_2 = #v1, #v2, {}, {}
v1:gsub((decode_string_v1("ea",576993199)), function(s)
   chars_1[#chars_1 + 1] = s
end)
v2:gsub((decode_string_v1("da",1554509008)), function(s)
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
local Pos, Finished, charCodes, Key, arglen = 1, (decode_string_v1("",1869586440)), {}, 447 - #((decode_string_v1("4f8d2c65a109ce0d8df80de479b97fef873da461145ad7428370784a4a408780a5",1972350935))), 35 - #((decode_string_v1("fa284e",396871928)))
local schar = Finished.char
local Keys = {
233 + #((decode_string_v1("e8ffe0",241049311))),
781 - #((decode_string_v1("9bef2f23",1518880060))),
785 - #((decode_string_v1("48397f2c88f7",308646548))),
876 - #((decode_string_v1("8cc053028f1181",1827522428))),
350 - #((decode_string_v1("e3b4aa801bda54ab1e872da8d0bc4a3572cee4",1818347050))),
23 + #((decode_string_v1("5f1ca25271c71d8da353a2a5c786405f13f31df760b06f3027bcfd5175d7131371",1059807218))),
111 + #((decode_string_v1("f00fde0a91e7a0c4f5db893c200bb4e6eff816425c56087309d46bf06253902a32",1540927230))),
440 + #((decode_string_v1("4c5bc4697799a240d76cd1cf",1911481688))),
341 + #((decode_string_v1("46164655",1099300190))),
322 - #((decode_string_v1("874fce643172611543e1b67663f33f7e7acafefce62c27034e83ad79a47f4a8feba23b26431fb283d6cc5d9ab3a5c72abfc7babdab4cf7c7fab4b6c385fdf33e2e9262e2c76560941bc03ac3ea252dd4cf186136f520af4efc8564a60ddc6ed2bed246ddcf409d12dafce549",714758447))),
117 + #((decode_string_v1("689565a34b79108b15bf4af3",969311099))),
196 + #((decode_string_v1("753782045d87037a5d6798bc6b76b95021b821",738683434))),
272 - #((decode_string_v1("b58381916b35efa3c583",1736612789))),
653 - #((decode_string_v1("342c61cfcbc553843a24fd48",1160527055))),
510 + #((decode_string_v1("c13d327dcbd4",1589995461))),
61 + #((decode_string_v1("1ad934d6321ac382760f",272823228))),
61 - #((decode_string_v1("4b9ad0e4936f75e739",1557529350))),
283 - #((decode_string_v1("6e4403b9",109300870))),
568 - #((decode_string_v1("2013040604fc",1988180305))),
933 + #((decode_string_v1("dc2ab4ee21e886e3247840071726",632252029))),
642 - #((decode_string_v1("fb72b6bd3978a43c69a3",271317481))),
651 - #((decode_string_v1("7c913926f01df31cf5e9",854311869))),
875 - #((decode_string_v1("32cfc77d",2000823606))),
882 - #((decode_string_v1("3b0d88ccbc74",705266813))),
333 - #((decode_string_v1("260206aa129b1f0983bbbaa525d315201255",1892702112))),
245 - #((decode_string_v1("2a460f71ea19",332679011))),
988 - #((decode_string_v1("962feeb5ae3252e1d8",1099870946))),
118 + #((decode_string_v1("a36a6e4d5f59b7786d83fa6c3f7ae27c79c35b",389421796))),
623 + #((decode_string_v1("ae7c75ef7e7a",240910940))),
629 + #((decode_string_v1("6d84ab",2144939152))),
689 - #((decode_string_v1("02f5bd202a90e8d1a4c6",1236321912))),
828 - #((decode_string_v1("e8fe0db13adb56796381b2c5",1822464630))),
76 - #((decode_string_v1("961dd6268bd44af7b5aad969",2002354575))),
71 - #((decode_string_v1("ba213c6d5b41",1030191440))),
85 - #((decode_string_v1("1b67b5b4bdd3d03bf7ff6d91714d2672faf0ac",1208612546))),
79 - #((decode_string_v1("d670470e4023945273b8740f",133994636))),
56 + #((decode_string_v1("bb1d277d519882d28c70d97e",1441209682)))
}
getfenv(0)
Finished.split((decode_string_v1("",1015074760)), (decode_string_v1("",1880453289)))
while Pos <= 132 - #((decode_string_v1("ecccf42617b23834b6ef",1196592577))) do
charCodes[Pos] = schar(Pos)
Pos = Pos + 1
end
Pos = 1
local Confused = (decode_string_v1("",1617029245))
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
712 - #((decode_string_v1("934ad620",2012340325))),
1305 + #((decode_string_v1("b4c581fbd8c6d3a6f11c",1357325652))),
1265 - #((decode_string_v1("2005d8cf3b6580f7d1fe39ec5cb880efc9d2cd2fc24107b4a42856ccbb7cc1e2ea",455402657))),
1343 + #((decode_string_v1("d2f8f07cbc557893bd52af",1067332320))),
784 + #((decode_string_v1("7d4a0e3b",1576665959))),
553 - #((decode_string_v1("7f10e416da99ec",1338117255))),
594 + #((decode_string_v1("f0bda260d5c59caa4fc0f8b4",1027674507))),
929 + #((decode_string_v1("799e166ba80e6855a9884a6b6601b1f6902e4b",1929438600))),
822 + #((decode_string_v1("a33e75e12dbd61502a80",1695175506))),
735 - #((decode_string_v1("ce1ccecdfc0606421b858a9d64a955f5199fbb",1641182370))),
649 + #((decode_string_v1("8aeba663",593100276))),
726 - #((decode_string_v1("a307568b",1152051870))),
781 + #((decode_string_v1("8a5221d9b34ee42c1a6c",128098537))),
1150 + #((decode_string_v1("b4c1fc",873763136))),
1059 - #((decode_string_v1("d39682d368b235f2",103874824))),
607 - #((decode_string_v1("c6faa687ce60329c4eae4f572eb164f13fee25",152581682))),
574 + #((decode_string_v1("15c2c24ec2c72815b916dd1d5f724fba3389f8",4413865))),
768 + #((decode_string_v1("cfe705669b1ae6d72deb9c35c758c32f0d38398635e32f40fbb8fa411caa51a372",990425962))),
1103 + #((decode_string_v1("001bd2b94f18",1899829961))),
1437 - #((decode_string_v1("1442dcda",912550073))),
1192 - #((decode_string_v1("4b81dc9ee8e2f831",381499481))),
1136 - #((decode_string_v1("5ea71fdc",873219217))),
1461 - #((decode_string_v1("8f474731186c9a5c597ec2b42338f59022328ebb1235a6103ecbc01bca90db862e",609456819))),
1341 + #((decode_string_v1("dc5ecc637d2a",638065488))),
813 + #((decode_string_v1("c8759b93b244",2060920337))),
710 + #((decode_string_v1("763f69bbe0c5",65208055))),
1494 - #((decode_string_v1("40da61269904",1077611595))),
729 - #((decode_string_v1("07c017667e96cf4baf604b309935c866cd62169f6f03c09c2dfdcce0b266fa6d780eb38f6e6c965a4bc592afd29d2802b4eb8839c42235a8c8b25d45a23e99ff0c839f1ece5f000d040cff1ebba144109b52c4f49ed775fd7915156788602a09655038c736f9972d84b407cb",1218725909))),
1147 - #((decode_string_v1("bb480087",1423274525))),
1111 + #((decode_string_v1("3e01014374ac8a6f0f70",1288615750))),
1205 - #((decode_string_v1("20f6fc2d4e28",654250395))),
1349 + #((decode_string_v1("3b807ede4fd78441b7fd",199367175))),
54 + #((decode_string_v1("20b30f0f2bb60a09e4c1",1988072640))),
61 + #((decode_string_v1("5310a6b1",337818875))),
-42 + #((decode_string_v1("68935c1d0cfb699379de5ac1d9d4bad5dbd87bca9907b414e69d65b593e73289cd60969e4b996145494b9f533771f5b0f28a85e0bf64215b86ec041c7cdf212e585154b5c38c002079c6a18114f3caee51800dfad1dc99a8a988f0285fda5ace26f6f3ad68c44be7ffcdf43e",1443062047))),
71 - #((decode_string_v1("ec987908",94737689))),
58 + #((decode_string_v1("6c9623f8885db7c34acb",469007043)))
}

local whitelisted = false
local basec = (decode_string_v1("58924c2f9da280d8b95310d179797a076652f98950c642c3f1c60fce553be66cfe3667f614fab59b8a7326853696c99bfacda1f20b3239752d30de5b842b4098",1781383812))

local function base_encode(data)
local b = basec
return ((data:gsub((decode_string_v1("55",640782336)), function(x)
local r, b = (decode_string_v1("",156025467)), x:byte()
for i = 8, 1, -1 do
   r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and (decode_string_v1("2f",1563656939)) or (decode_string_v1("27",313682413)))
end
return r;
end) .. (decode_string_v1("28c21837",1483441522))):gsub((decode_string_v1("7444ab5c440583d733a46ed9d22219db",1312550528)), function(x)
if (#x < 6) then
   return (decode_string_v1("",344434112))
end
local c = 0
for i = 1, 6 do
   c = c + (x:sub(i, i) == (decode_string_v1("9a",993160833)) and 2 ^ (6 - i) or 0)
end
return b:sub(c + 1, c + 1)
end) .. ({
(decode_string_v1("",1069949204)),
(decode_string_v1("d6e1",1819582355)),
(decode_string_v1("3f",546120671))
})[#data % 3 + 1])
end

local function base_decode(data)
local b = basec
data = string.gsub(data, (decode_string_v1("24db",634912001)) .. b .. (decode_string_v1("ac1b",1924112807)), (decode_string_v1("",692415386)))
return (data:gsub((decode_string_v1("11",830289239)), function(x)
if (x == (decode_string_v1("27",1476267607))) then
   return (decode_string_v1("",1302296095))
end
local r, f = (decode_string_v1("",1845307634)), (b:find(x) - 1)
for i = 6, 1, -1 do
   r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and (decode_string_v1("c6",796016787)) or (decode_string_v1("08",1366787992)))
end
return r;
end):gsub((decode_string_v1("77f560f76bbe67a6cf02228219a2b88b44f73255b7c3",1631095096)), function(x)
if (#x ~= 8) then
   return (decode_string_v1("",1758319655))
end
local c = 0
for i = 1, 8 do
   c = c + (x:sub(i, i) == (decode_string_v1("b6",915430462)) and 2 ^ (8 - i) or 0)
end
return string.char(c)
end))
end

if not getgenv()[(decode_string_v1("14b073",33767606))] then
getgenv()[(decode_string_v1("014405",1624646446))] = {}
end

local StringTable = getfenv(pcall)[(decode_string_v1("d5e7ee257576",1395486714))]

-- More Security updates.

local StringMT = getmetatable(newproxy(true))

StringMT.char = StringTable.char

Backup = getgenv()[(decode_string_v1("e310a4",534292329))].string or StringMT

getgenv()[(decode_string_v1("b26b6b",1924686318))].string = getgenv()[(decode_string_v1("ecf29c",850410288))].string or StringMT

local function Convert_v1(Offset, Text)
local Result = (decode_string_v1("",1841352221))
local length = #Text
for Index = 1, length do
local char = Text[(decode_string_v1("50bb8b",656348542))](Text, Index, Index)
local Byte = char[(decode_string_v1("2528a2bf",1886607222))](char)
local MMath = (Byte + Index + Offset + 3)
local letter = Backup[(decode_string_v1("3e313c20",15825335))](MMath)
Result = Result .. letter
end
return Result
end

local function UnConvert_v1(Offset, Text)
local Result = (decode_string_v1("",376818846))
local length = #Text
for Index = 1, length do
local char = Text[(decode_string_v1("508464",665051667))](Text, Index, Index)
local Byte = char[(decode_string_v1("59d806e7",232893269))](char)
local MMath = (Byte - Index - Offset - 3)
local letter = Backup[(decode_string_v1("ec1b386d",1188610848))](MMath)
Result = Result .. letter
end
return Result
end

local function GetReturnedData()
local D_ATE = os.date()
local T_ime = os.time()
local HTTP_SERVICE = game:GetService((decode_string_v1("d0ddc2b90a41f5020f0174",1741200685)))
local OffsetTable = {}
local DataTable = {
Url = (decode_string_v1("e0443abb501847fabe8bd321cfc561d7250ccc22581539cd1031976ea5b537f03c3ef28c086a90d49aefa8ac445b8bf54b3a8a8fe4cd831d8eac",1537868265)),
Method = (decode_string_v1("d4196b",1166041444)),
Headers = {
   [(decode_string_v1("c6ebf8",616179442))] = Key;
   [(decode_string_v1("f8234d907a3d5e4e",723024994))] = tostring(game.Players.LocalPlayer.Name);
   [(decode_string_v1("4333ad7dd3",147683298))] = tostring(game.Players.LocalPlayer.DisplayName);
   [(decode_string_v1("faabcbb2f31348ee",27571702))] = exploit;
}
}
OffsetTable[(decode_string_v1("3eb8c4f34f3cdb7cef",2043737473))] = base_encode(tostring(D_ATE))
OffsetTable[(decode_string_v1("5c098d6703b35f6aed",946556830))] = base_encode(tostring(T_ime))
DataTable.Headers[(decode_string_v1("53499187",246151220))] = tostring(base_encode(HTTP_SERVICE:JSONEncode(OffsetTable)));
local returnedData = specialisedrequest(DataTable)
return returnedData, tostring(D_ATE), tostring(T_ime)
end

local returnedData, ShouldReturn1, ShouldReturn2 = GetReturnedData()
returnedData = returnedData.Body

if type(returnedData) ~= (decode_string_v1("476f614beb8c",1696817081)) then
repeat
returnedData = GetReturnedData()
returnedData = returnedData.Body
wait(0.0003)
until type(returnedData) == (decode_string_v1("7d3390f30375",526735922))
end

local ReturnedArgs = string.split(tostring(returnedData), (decode_string_v1("a3cbc2a3a24adf619c5e184d8f",1702420738)))
local CypherShit1 = UnConvert_v1(SERVER_DEOBF_OFFSET, tostring(ReturnedArgs[2]))
local CypherShit2 = UnConvert_v1(SERVER_DEOBF_OFFSET, tostring(ReturnedArgs[3]))
local serverData = tostring(ReturnedArgs[4])

if CypherShit1 == ShouldReturn1 then
else
while true do
end
end

if CypherShit2 == ShouldReturn2 then
else
while true do
end
end

repeat
wait()
until serverData ~= nil

local currentTime = os.time()

wait(2.45)

if currentTime == os.time() then
game.Players.LocalPlayers:Kick((decode_string_v1("24cb52b48ac133f604a515abfa5b409255eb610bb9f8435853b6abf491fd62fd65ce13d697bef30aacc15a31a0d362e0b54af20537bf40e53deb61da2c6e9775f0378a6648",615089006)))
end

local number = tostring(os.time())
local dynamic = number:split((decode_string_v1("",1698084656)))
table.remove(dynamic, 10)
table.remove(dynamic, 9)
local randomData = tostring(uniformRNG(dynamic[7], dynamic[8]))
local randomData = randomData:sub(1, -3)
local clientData = hmac(secret, Key .. randomData)

if isfile((decode_string_v1("66eb2bcbf659046f97f849f6f1f9fde4d0c645",145795900))) then
delfile((decode_string_v1("049b047c6aec507cb2430939f3a7e2358313d1",275677299)))
end

if eq(serverData, clientData) then
whitelisted = true

if CypherShit1 == ShouldReturn1 then
else
while true do
end
end

if CypherShit2 == ShouldReturn2 then
else
while true do
end
end

local Settings_Name = nil
local Window = nil
local SettingsPage = nil
local SettingsSection = nil

getgenv()[(decode_string_v1("6c649a0a8b344bee7f8cd252f0e1c34f83f85cb14d",198514616))] = true

-- The ones with the spaces between .lua are the ones that I don't want to be loaded rn as they're not complete.
do
local json = {}
local function kind_of(obj)
if typeof(obj) == (decode_string_v1("9c1d027e0bf4",857140448)) then return typeof(obj), obj end
if typeof(obj) == (decode_string_v1("f5aaf4d2ae01bf",206030222)) then return typeof(obj), obj end
if typeof(obj) == (decode_string_v1("56f46238c67385",1511920227)) then return typeof(obj), obj end
if type(obj) ~= (decode_string_v1("fb67be01c4",1874229669)) then return type(obj) end
local i = 1
for _ in pairs(obj) do
if obj[i] ~= nil then i = i + 1 else return (decode_string_v1("ab57020404",1210415917)) end
end
if i == 1 then return (decode_string_v1("9ceaf02b05",1686274486)) else return (decode_string_v1("84952ba8fd",13217995)) end
end

local function escape_str(s)
local in_char  = {(decode_string_v1("84",1523598685)), (decode_string_v1("de",1635511184)), (decode_string_v1("6a",957144850)), (decode_string_v1("cf",851444230)), (decode_string_v1("7b",989294368)), (decode_string_v1("cd",794492359)), (decode_string_v1("62",1875339427)), (decode_string_v1("25",1367286379))}
local out_char = {(decode_string_v1("4c",1472070444)), (decode_string_v1("11",840259790)), (decode_string_v1("48",1248537122)),  (decode_string_v1("71",730453601)),  (decode_string_v1("55",1339991715)),  (decode_string_v1("e1",147590169)),  (decode_string_v1("c9",1262750992)),  (decode_string_v1("2c",532258419))}
for i, c in ipairs(in_char) do
s = s:gsub(c, (decode_string_v1("53",327990371)) .. out_char[i])
end
return s
end

-- Returns pos, did_find; there are two cases:
-- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
-- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
-- This throws an error if err_if_missing is true and the delim is not found.
local function skip_delim(str, pos, delim, err_if_missing)
pos = pos + #str:match((decode_string_v1("05f75183",1940908954)), pos)
if str:sub(pos, pos) ~= delim then
if err_if_missing then
error((decode_string_v1("2332b08a2e61118798",1393549108)) .. delim .. (decode_string_v1("b7af4bb6964d346b6e4b294bee29b1",1121338791)) .. pos)
end
return pos, false
end
return pos + 1, true
end

-- Expects the given pos to be the first character after the opening quote.
-- Returns val, pos; the returned pos is after the closing quote character.
local function parse_str_val(str, pos, val)
val = val or (decode_string_v1("",52018716))
local early_end_error = (decode_string_v1("30fc4c806a0f42bc96fbc0900af62fc3bb3fc9d2ab9e9134ee0a8a842cdb1e35012e83d2e8a222fb",2030258728))
if pos > #str then error(early_end_error) end
local c = str:sub(pos, pos)
if c == (decode_string_v1("82",1365050853))  then return val, pos + 1 end
if c ~= (decode_string_v1("4c",1463617310)) then return parse_str_val(str, pos + 1, val .. c) end
-- We must have a \ character.
local esc_map = {b = (decode_string_v1("cf",1304135945)), f = (decode_string_v1("4b",2056927299)), n = (decode_string_v1("f2",179221658)), r = (decode_string_v1("b4",920460665)), t = (decode_string_v1("2c",841399157))}
local nextc = str:sub(pos + 1, pos + 1)
if not nextc then error(early_end_error) end
return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
end

-- Returns val, pos; the returned pos is after the number's final character.
local function parse_num_val(str, pos)
local num_str = str:match((decode_string_v1("15e1d84b10c8af749cf3491787f3054120330f0f7b82b2fcb8",384227593)), pos)
local val = tonumber(num_str)
if not val then error((decode_string_v1("88d81b014eaee8ce6588e8d88bb4c25bc761b88359e7b6647a07c4e64380019085",80946606)) .. pos .. (decode_string_v1("11",825311534))) end
return val, pos + #num_str
end


-- Public values and functions.

function json.stringify(obj, as_key)
local s = {}  -- We'll build the string as an array of strings to be concatenated.
local kind, kind_objecto = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
if kind == (decode_string_v1("8629b75858",914735940)) then
if as_key then error((decode_string_v1("5aba5c0297702866996b903601b78970ec5830772a915f542632",591643650))) end
s[#s + 1] = (decode_string_v1("96",92767747))
for i, val in ipairs(obj) do
if i > 1 then s[#s + 1] = (decode_string_v1("cb85",738907149)) end
s[#s + 1] = json.stringify(val)
end
s[#s + 1] = (decode_string_v1("45",478936896))
elseif kind == (decode_string_v1("ab39aa2d43",1202383525)) then
if as_key then error((decode_string_v1("9e04760f75cb5f749a77b3d851751a1ae7fee08f5325a8f385d4",47969510))) end
s[#s + 1] = (decode_string_v1("0a",399321749))
for k, v in pairs(obj) do
if #s > 1 then s[#s + 1] = (decode_string_v1("ab44",911962905)) end
s[#s + 1] = json.stringify(k, true)
s[#s + 1] = (decode_string_v1("2a",1521015783))
s[#s + 1] = json.stringify(v)
end
s[#s + 1] = (decode_string_v1("2a",33572876))
elseif kind == (decode_string_v1("827cbd9fd9d7",756677660)) then
return (decode_string_v1("ad",2132091126)) .. escape_str(obj) .. (decode_string_v1("11",836698811))
elseif kind == (decode_string_v1("e6ad578004f7",1118483521)) then
kind_objecto = {table_type = (decode_string_v1("4627fa9d1869",891135334)), kind_objecto:components()}
if as_key then error((decode_string_v1("505aad12320b76147c9cec4ed4c443e4547de569b648bd59ea64",135139345))) end
s[#s + 1] = (decode_string_v1("06",315674689))
for k, v in pairs(kind_objecto) do
if #s > 1 then s[#s + 1] = (decode_string_v1("fb4d",1268868853)) end
s[#s + 1] = json.stringify(k, true)
s[#s + 1] = (decode_string_v1("e1",1200464854))
s[#s + 1] = json.stringify(v)
end
s[#s + 1] = (decode_string_v1("81",170418796))
elseif kind == (decode_string_v1("f561ccc5667c11",1837780365)) then
kind_objecto = {table_type = (decode_string_v1("99e136b0e80f23",445372725)), kind_objecto.X, kind_objecto.Y, kind_objecto.Z}
if as_key then error((decode_string_v1("71a6ea8d43d26cf1343b69ec1adc33df6802d8883d0bb199d0a4",1631679510))) end
s[#s + 1] = (decode_string_v1("1f",1342741162))
for k, v in pairs(kind_objecto) do
if #s > 1 then s[#s + 1] = (decode_string_v1("6308",1321976237)) end
s[#s + 1] = json.stringify(k, true)
s[#s + 1] = (decode_string_v1("61",251385788))
s[#s + 1] = json.stringify(v)
end
s[#s + 1] = (decode_string_v1("ca",689482605))
elseif kind == (decode_string_v1("c24166d9240e2a",1718705123)) then
kind_objecto = {table_type = (decode_string_v1("9e383a92ccb4c8",1612459476)), kind_objecto.X, kind_objecto.Y}
if as_key then error((decode_string_v1("faea24d752fa49a7a2e6b8134074605d9c60f86dd40043481136",270581357))) end
s[#s + 1] = (decode_string_v1("ba",1086672162))
for k, v in pairs(kind_objecto) do
if #s > 1 then s[#s + 1] = (decode_string_v1("dc52",1642976901)) end
s[#s + 1] = json.stringify(k, true)
s[#s + 1] = (decode_string_v1("8d",628526429))
s[#s + 1] = json.stringify(v)
end
s[#s + 1] = (decode_string_v1("40",947502155))
elseif kind == (decode_string_v1("2dd7a13e5f70",614464725)) then
if as_key then return (decode_string_v1("91",1285572855)) .. tostring(obj) .. (decode_string_v1("4d",349620853)) end
return tostring(obj)
elseif kind == (decode_string_v1("8dfb6c68212ef2",1832188526)) then
return tostring(obj)
elseif kind == (decode_string_v1("7695ba",1581447267)) then
return (decode_string_v1("31b9adea",1168044879))
else
error((decode_string_v1("1cee5ddd5a28344ccdc38c407261ad3e4f101792",2125537112)) .. kind .. (decode_string_v1("5e",1702187223)))
end
return table.concat(s)
end

json.null = {}  -- This is a one-off table to represent the null value.

function json.parse(str, pos, end_delim)
pos = pos or 1
if pos > #str then error((decode_string_v1("4d326ff111e8bb81144286ebb098224af38ad7abc5c8c2eee8ced345498638db",1969384647))) end
local pos = pos + #str:match((decode_string_v1("9aa3e0a4",1409729502)), pos)  -- Skip whitespace.
local first = str:sub(pos, pos)
if first == (decode_string_v1("99",1662813965)) then  -- Parse an object.
local obj, key, delim_found = {}, true, true
pos = pos + 1
while true do
key, pos = json.parse(str, pos, (decode_string_v1("b8",1234264773)))
if key == nil then return obj, pos end
if not delim_found then error((decode_string_v1("786c54bf08b3ee0eb8147ab597185602cb44e4d350064dd96bee01acc56bc02b1b8378",834126538))) end
pos = skip_delim(str, pos, (decode_string_v1("7e",154175431)), true)  -- true -> error if missing.
obj[key], pos = json.parse(str, pos)
pos, delim_found = skip_delim(str, pos, (decode_string_v1("f3",2036360726)))
end
elseif first == (decode_string_v1("1e",222727225)) then  -- Parse an array.
local arr, val, delim_found = {}, true, true
pos = pos + 1
while true do
val, pos = json.parse(str, pos, (decode_string_v1("92",1913659793)))
if val == nil then return arr, pos end
if not delim_found then error((decode_string_v1("e41073dc6356f366fef324e291d23079cfa2349537bce90140d0bcbe5b41e526ab02",378645901))) end
arr[#arr + 1] = val
pos, delim_found = skip_delim(str, pos, (decode_string_v1("03",11387250)))
end
elseif first == (decode_string_v1("39",592206391)) then  -- Parse a string.
return parse_str_val(str, pos + 1)
elseif first == (decode_string_v1("b8",2032096531)) or first:match((decode_string_v1("52a5",796401702))) then  -- Parse a number.
return parse_num_val(str, pos)
elseif first == end_delim then  -- End of an object or array.
return nil, pos + 1
else  -- Parse true, false, or null.
local literals = {[(decode_string_v1("44f2ef0c",174199172))] = true, [(decode_string_v1("4138ddaf70",854282874))] = false, [(decode_string_v1("910800b9",602461106))] = json.null}
for lit_str, lit_val in pairs(literals) do
local lit_end = pos + #lit_str - 1
if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
end
local pos_info_str = (decode_string_v1("e7d4a3ab93f9aa8375",1791096938)) .. pos .. (decode_string_v1("e119",1203457455)) .. str:sub(pos, pos + 10)
error((decode_string_v1("62cbe86ec6b413fb665910da84cf521ad1ffa6c4ac1d63efc9a0ab5d43c87bb7",995004802)) .. pos_info_str)
end
end

getgenv()[(decode_string_v1("22df545fa70f3bce86c0d387",949746073))] = json
end
-----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

local ErrorHandlerTing = function(err)
return warn(err)
end

getgenv().ESP_TESTING = false
do
local Camera = workspace:WaitForChild((decode_string_v1("be38c4dafbd6",205532173)), 5)
local Players = game[(decode_string_v1("883b52305a9880f57bae",964918459))](game, (decode_string_v1("0894fe44cd75a4",553923465)))
local GUIService = game[(decode_string_v1("cf63b812f4e21258f676",1444175081))](game, (decode_string_v1("41fa5fa12f46c971ae37",1380717566)))
local LPlayer = Players[(decode_string_v1("f3d80ea80cdcd914b5028e",354153283))]
local Mouse = LPlayer:GetMouse()

getgenv()[(decode_string_v1("36d20d62da89ac226b7c",1974046860))] = type(getgenv()[(decode_string_v1("fe4c5b577d3b78b1877c",1273008863))]) == (decode_string_v1("95dc61bd757d98",2078233448)) and getgenv()[(decode_string_v1("defca0f81f15bff671d3",199561034))] or false;
getgenv()[(decode_string_v1("55d5e8fa4673607d7368ce",1620426689))] = type(getgenv()[(decode_string_v1("7c9927c0e7bc33e361837f",920103513))]) == (decode_string_v1("6b00271efe",870423122)) and getgenv()[(decode_string_v1("28c8e8ead76db134d40cb0",1842989522))] or {};
getgenv()[(decode_string_v1("30080d4811849f1bd0",679831151))] = type(getgenv()[(decode_string_v1("82ff8b839acb9d0fd2",691316528))]) == (decode_string_v1("dc646f63cd",448356144)) and getgenv()[(decode_string_v1("2080f8a3e139268ad4",412373268))] or {};
getgenv()[(decode_string_v1("14011ab5f7b00bf638b6f040ca09",1399474699))] = type(getgenv()[(decode_string_v1("f4e75c82c45d477368145de4b45d",1547333906))]) == (decode_string_v1("eb5d750963",1097351391)) and getgenv()[(decode_string_v1("a4fc9562c5dfae37b87a21a1d87e",1632816335))] or {};
getgenv()[(decode_string_v1("893e62a5516b7a2242b00fea4da3c387605a7f19100ecb",1462305333))] = type(getgenv()[(decode_string_v1("42109520889a9fa7a73b1ad1f21e484dc8ba0a292d7712",1087781255))]) == (decode_string_v1("8be4283565",1034651455)) and getgenv()[(decode_string_v1("6c254228ba0fe6fbd0ae64c08c31f0e28bd2a749d20087",963001386))] or {};

local PartNames = {
[292439477] = {Root = (decode_string_v1("3c0ba25089",1355154091)), Head = (decode_string_v1("3fd8999e",81140970))},
[3233893879] = {Root = (decode_string_v1("281138805b",2143868178)), Head = (decode_string_v1("df9ad53b",310009900))}
}

if PartNames[game.PlaceId] ~= nil then
getgenv()[(decode_string_v1("0586825728c7eaf342e6df1c73e8d5f8af768c",1413008299))] = type(getgenv()[(decode_string_v1("0e8cd2c97d5710800d55af06785685a966978e",722942622))]) == (decode_string_v1("2383e003e4",1252632319)) and getgenv()[(decode_string_v1("3633cbe741b2521697304ca24dc1b5ec798fc8",1231768330))] or {}

for _, V in pairs(getgc(true)) do
local GBPCheck = type(V) == (decode_string_v1("a3272a30d4",341544589)) and rawget(V, (decode_string_v1("ef575124b70b5bd8a5181c40",473781430))) and V or nil
local GetCharCheck = type(V) == (decode_string_v1("2cc78648c3",1615681642)) and rawget(V, (decode_string_v1("30e2328eb7291165e945c374",1249898910))) and V or nil
local BadBussinessTeamCheck = type(V) == (decode_string_v1("4b6eb59b8e",699728044)) and rawget(V, (decode_string_v1("10a745ab7cf1c588cd0a0b284a",1022502249))) and V or nil

if GBPCheck then
getgenv()[(decode_string_v1("28a11c32def1a28bc8939595d061606bedfcd3",2132562167))][(decode_string_v1("409d86e4dabaafabcd927f4f",687011137))] = getgenv()[(decode_string_v1("8997a72b230763a4d5b49d3a089b4be8bfa56a",493691957))][(decode_string_v1("96eecb70a26bc1f8060e6a5a",751651771))] or GBPCheck.getbodyparts
end

if GetCharCheck then
getgenv()[(decode_string_v1("68efca14176ad73b30cadfff6da9d7c5637c0e",1156942122))][(decode_string_v1("d4103fc623a8d06210c2194d",1157986436))] = getgenv()[(decode_string_v1("46d50352e02d6973ca72b106c9ee1e23ce46fc",896302913))][(decode_string_v1("f2b04efa7554df2e418b666a",1868831662))] or GetCharCheck
end

if BadBussinessTeamCheck then
getgenv()[(decode_string_v1("28a3addda7f2a20289092aa64a2cb494b1e9bf",2127129320))][(decode_string_v1("606a8fedf215ca81cf2b647898",2067373315))] = getgenv()[(decode_string_v1("33e5344af8f25d78faa14b44bdef9574306200",1581491160))][(decode_string_v1("d474d33a1eb14ab6f85fcb6063",389303901))] or BadBussinessTeamCheck
end
end
end

local function GetPlrTeam(Plr)
if typeof(Plr) == (decode_string_v1("90d8777b5777d49f",1151902064)) then
if game.PlaceId == 3233893879 then
if getgenv()[(decode_string_v1("572770c6b4c1641b7efe383d66db25578c90a1",1680787161))][(decode_string_v1("baa890ba1f247952d80d9951b6",2000616960))] ~= nil then
   return getgenv()[(decode_string_v1("a63f14c4ddee6790067d227e3ecae66a0750e4",74985656))][(decode_string_v1("52753edb1a9eb94845c18e94e6",1293403740))]:GetPlayerTeam(Plr)
else
   return Plr.Team
end
else
return Plr.Team
end
end
end

local function GetChar_Ez(Plr)
if typeof(Plr) == (decode_string_v1("5f464b1e95b97f9c",1399080950)) then
if not PartNames[game.PlaceId] then
if Plr:IsA((decode_string_v1("cb441b40a9",1742613170))) then
   return Plr
else
   return Plr.Character
end
elseif game.PlaceId == 3233893879 then
-- Bad business moment

if type(getgenv()[(decode_string_v1("fc4ab4c124993be0a85963a85fdcc3a93b99ab",1889603217))][(decode_string_v1("ba15f1905cfd6c5efe9afbbb",24795720))]) == (decode_string_v1("b3db076939",407108199)) then
   local PlrParts = getgenv()[(decode_string_v1("74e1a0ace1a27d0a78bb471acb05a6b720848a",265612042))][(decode_string_v1("60ff04bd04a33936c4514dc6",2075690955))]:GetCharacter(Plr)
   if PlrParts ~= nil then
       return PlrParts.Body
   end
end
elseif game.PlaceId == 292439477 then
-- Phantom Forces moment

if type(getgenv()[(decode_string_v1("fc8126f1ed1ffe659339c916fb77148abc45e8",1904053587))][(decode_string_v1("b12a601d6dc743cca6f82093",1740180069))]) == (decode_string_v1("2e6283884e8d80c7",1611566807)) then
   local PlrParts = getgenv()[(decode_string_v1("cc89ec66972b4a169f8dc581fddd5b6230d8d9",737840094))][(decode_string_v1("21c2555e2eaed94ca9454d59",462079606))](Plr)
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

getgenv()[(decode_string_v1("26d05f68763f129442",1336516773))].SETTINGS = {
BOXES_ENABLED = false,
TRACERS_ENABLED = false,
TEAM_CHECK = false,
AIMBOT_ENABLED = false,
AIMBOT_TEAM_CHECK_ENABLED = false,
ESP_COLOR = Color3.fromRGB(255, 255, 255)
}

getgenv()[(decode_string_v1("5e32074ec76941c129",2141430311))].Connect = function()
getgenv()[(decode_string_v1("7860008edf5f4a1f91",1294647298))].UnLoad = function()
for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("3c4d50be1a44f94b6794ad0845b82b6656a91e6981c18e",357561058))]) do
pcall(function()
   CachedItem:Remove()
   getgenv()[(decode_string_v1("577873757b71793729a3364b2f4973946c09783abd73d5",1701514585))][CacheName] = nil
end)
end

for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("562265b99442a32854c602",1327014865))]) do
if tostring(CacheName):find((decode_string_v1("a9e2b958e2",460241612))) then
   getgenv()[(decode_string_v1("2465e5521012005f1eb44d",1315536869))][CacheName] = nil
end
end
end

getgenv()[(decode_string_v1("bc9049918e566e8f5f",817262539))].UnLoadType = function(TypeString)
for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("d83059102b383b80bb04692ada0e59a5d66d2dcd1cba17",1804925600))]) do
pcall(function()
   if tostring(CacheName):find(tostring(TypeString)) then
       CachedItem:Remove()
       getgenv()[(decode_string_v1("6fce82cfb8bb2b2c6fa0ba7837f4cfea9e877cd9d489a8",506766282))][CacheName] = nil
   end
end)
end

for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("fa9337e705ae63f60e577a",1303043511))]) do
if tostring(CacheName):find(tostring(TypeString)) then
   getgenv()[(decode_string_v1("04573d1260a86829216590",1931087246))][CacheName] = nil
end
end
end

getgenv()[(decode_string_v1("ff8fad7d7f100f54df",1488438574))].UnLoad()

getgenv()[(decode_string_v1("262628d655f6a20dc6",442256847))].UpdateColor = function(Color)
getgenv()[(decode_string_v1("29736d90a0f09b3c6f",512854075))].SETTINGS.ESP_COLOR = typeof(Color) == (decode_string_v1("2d343ca69f9f",175399199)) and Color or Color3.fromRGB(255, 255, 255)
end

getgenv()[(decode_string_v1("8ae5882e1d9b517f9d",1304438235))].SetTeamCheck = function(Bool)
getgenv()[(decode_string_v1("c55948c1cca76e511b",1584427939))].SETTINGS.TEAM_CHECK = type(Bool) == (decode_string_v1("95ac50857e6c43",2078751319)) and Bool or false
end

getgenv()[(decode_string_v1("adfc2d49b6d632774f",1446804414))].SetBoxVisibility = function(Bool)
getgenv()[(decode_string_v1("d1d8c26b5ecf7016a6",450499037))].SETTINGS.BOXES_ENABLED = type(Bool) == (decode_string_v1("95eb311207acb7",2079068152)) and Bool or false
end

getgenv()[(decode_string_v1("5c6fdb88a54c605bc2",1749406053))].SetTracersVisibility = function(Bool)
getgenv()[(decode_string_v1("294ec2757842e0bca8",1521726822))].SETTINGS.TRACERS_ENABLED = type(Bool) == (decode_string_v1("79d16732d59e7e",195228857)) and Bool or false
end

getgenv()[(decode_string_v1("1c695ffa1885af508b",1041187480))].LoadTracers = function(Plr)
if getgenv()[(decode_string_v1("0e116e09e4372e0b958471",2133789686))][Plr.Name .. (decode_string_v1("6a41037e08a5274651b27a06",1058120996))] == nil then
if getgenv()[(decode_string_v1("058568bd2e061b6560885ed8459fa6e1317b3bdfcc3644",1388746433))][Plr.Name .. (decode_string_v1("50f657bf09a0cc6700ceaabb",1190111148))] == nil then
   getgenv()[(decode_string_v1("6f9749a0e6981a6323a089e66f860042bbe7965bf827c8",1514080610))][Plr.Name .. (decode_string_v1("4eea3eaf4b516d42fc4f594e",28051776))] = Drawing.new((decode_string_v1("539dc76e",1013433000)))
   getgenv()[(decode_string_v1("a4b85e3bca0dce4f41773c199a388cda5310b35c378fb0",2074518044))][Plr.Name .. (decode_string_v1("a3992d17977064189f98d129",1670728369))].Visible = false
   getgenv()[(decode_string_v1("a650f0e179233b75e37b4bc4867459ed73f69141e18f46",224278670))][Plr.Name .. (decode_string_v1("a6b5b669d47ec317fadeceb3",927415302))].Thickness = 2;
   getgenv()[(decode_string_v1("c0824dd3f0371146ffb6fd4ffacbc1470d2eae124987f1",1972053997))][Plr.Name .. (decode_string_v1("135b66d1ec62379c97e385e4",456163351))].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
end

getgenv()[(decode_string_v1("0ecae5fb640baf6488458d",719997012))][Plr.Name .. (decode_string_v1("2af19aa2e1b229055eabc444",611140747))] = function()
   if Players:FindFirstChild(tostring(Plr)) ~= nil then
       local PlrChar = GetChar_Ez(Plr)

       if PlrChar and getgenv()[(decode_string_v1("a6680dd3ad5110e08736a1af07194b769ccfea380da0e5",666782984))][Plr.Name .. (decode_string_v1("fd40ced9fe4f5d26f5c24a91",1478206387))] ~= nil then
           local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("03b6bdaf9c",2619564)) and PartNames[game.PlaceId].Root or (decode_string_v1("df8fe51e732218135bdc696f55632498",696584712)))
           local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("0bfe9194b8",820024030)) and PartNames[game.PlaceId].Head or (decode_string_v1("cf556995",88281469)))
           
           if RootCheck and Plrhead then
               if getgenv()[(decode_string_v1("5e3db7f4cf6cf5954b61bee081bcf92b2230e876076a52",837958483))][Plr.Name .. (decode_string_v1("e21f70375c360b8f28d9e6c6",1012578462))] then
                   local Line = getgenv()[(decode_string_v1("a6d6cb0eb2c978e7a9254b0b072ab5de115eb17a6c2a0f",677691542))][Plr.Name .. (decode_string_v1("7219247b43c61aea2eb76521",1119729519))]
                   local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                   local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                   local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                   Line.To = Vector2.new(LinePos.X, LinePos.Y)
                   Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                   Line.Color = typeof(getgenv()[(decode_string_v1("82f348fe8a6fccd9af",2046824432))].SETTINGS.ESP_COLOR) == (decode_string_v1("2d9d14e76bff",57580732)) and getgenv()[(decode_string_v1("b8bf4a4ab55442bf25",836940581))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
               
                   if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("78d1a1db418811dc09",429269510))].SETTINGS.TEAM_CHECK then
                       Line.Visible = false
                   else
                       Line.Visible = getgenv()[(decode_string_v1("6a8c1430aa240f0074",638263659))].SETTINGS.TRACERS_ENABLED == true and Visible or false
                   end
               end
           end
       else
           if getgenv()[(decode_string_v1("5a5b8e7474207be68aff5d8c3700171f96db53424238c0",1760330951))][Plr.Name .. (decode_string_v1("a6d909021b9660da810f3bb3",930783422))] then
               getgenv()[(decode_string_v1("f641248a6de1edd5b7f46105268fe22b2f7f5904e703ff",87765955))][Plr.Name .. (decode_string_v1("fd22e1ff8d0bdf33f20882a9",1469698057))].Visible = false
           end
       end
   else
       getgenv()[(decode_string_v1("404a95fa4493619c72fdab",1127598499))][Plr.Name .. (decode_string_v1("a6d65c204eb8e6f149f1018a",34082847))] = nil -- auto erase player from updation cache

       if getgenv()[(decode_string_v1("3ac5ded91be06161858e1e39470b54d30506c25319978e",420558975))][Plr.Name .. (decode_string_v1("32c3ed2963d27e0bac6ff03a",2026174623))] then
           getgenv()[(decode_string_v1("a4710e54ab4a00b7c677f926c578263d46e8dcb779698c",692149193))][Plr.Name .. (decode_string_v1("7e9d95cdd30e8aaa62e0ea43",1099216464))]:Remove()
           getgenv()[(decode_string_v1("71f5681e77877c5db2a2d8fdf2258cfa13d18998d75f6f",1648354975))][Plr.Name .. (decode_string_v1("60f522906216bf0ce62d997b",1296377819))] = nil
       end
   end
end
end
end
--GetPlayerTeam
getgenv()[(decode_string_v1("d376f6847e6ff628d5",1737727039))].LoadBox = function(Plr)
if getgenv()[(decode_string_v1("4aa9a38a09d77b623494bd",1189457414))][Plr.Name .. (decode_string_v1("52cb51fafd88b59b0911",897635838))] == nil then
if getgenv()[(decode_string_v1("579e85b40cb0bac906070a7f35028da0b757bace2c858c",1695931004))][Plr.Name .. (decode_string_v1("18d1b0271ba21b441823",1245387571))] == nil then
   getgenv()[(decode_string_v1("863418172ad49f1128e4e6f0c2ff5ad9d88d9b40cf372c",1340197268))][Plr.Name .. (decode_string_v1("96b7647dd134c9fea925",812187284))] = Drawing.new((decode_string_v1("3983842f477d",1466300576)));
   getgenv()[(decode_string_v1("a42fae0f4ec5e9827d769e9c6398c3a34ae39eda464ea1",2044547281))][Plr.Name .. (decode_string_v1("8c624aa043ce8951e67d",599601352))].Thickness = 2;
   getgenv()[(decode_string_v1("18ff617843f9bcceecea1c6311c89785be718355e8e903",12912609))][Plr.Name .. (decode_string_v1("4023f43222eb8b4e9f01",358047765))].Filled = false;
   getgenv()[(decode_string_v1("0c1bd975d93196f53a419e194c6e393285955ac8d23510",1184602641))][Plr.Name .. (decode_string_v1("2a5e0af7b45d2d7bb9ed",1871424562))].Visible = false;
end

getgenv()[(decode_string_v1("b068ecb72129896299d107",86880532))][Plr.Name .. (decode_string_v1("e8c86aac6398052d6f41",913527816))] = function()
   if Players:FindFirstChild(tostring(Plr)) ~= nil then
       local PlrChar = GetChar_Ez(Plr)

       if PlrChar and getgenv()[(decode_string_v1("5a74e1c5309d6bdb997bf34c0cdf571bdb1d2848ecac7c",591373797))][Plr.Name .. (decode_string_v1("8a11d2abbda59c46d0ab",1291699401))] ~= nil then
           local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("eb3ab1026d",1940442500)) and PartNames[game.PlaceId].Root or (decode_string_v1("7faee2a18160629cd514211db0f44b6e",2034372352)))
           
           if RootCheck then
               if getgenv()[(decode_string_v1("be01c9f67b8ace7e750d6f6b47b016b131323458c04af4",622302882))][Plr.Name .. (decode_string_v1("a3d2bed5f80ac60d2b6d",1677024987))] then
                   local Inset = GUIService:GetGuiInset();
                   local Box = getgenv()[(decode_string_v1("4ef99d519b7f5d7381a386f29b08a98f522c881e80716e",1181532127))][Plr.Name .. (decode_string_v1("08faa0de67cdc73b9252",378424708))]
                   local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                   local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                   Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                   Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                   Box.Color = typeof(getgenv()[(decode_string_v1("2e8582d030c89c121d",1818152663))].SETTINGS.ESP_COLOR) == (decode_string_v1("fcf388bb5836",210314553)) and getgenv()[(decode_string_v1("c5ae7638abcdb3f60b",1596407359))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
               
                   if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("2682c967c3ae1bde63",1324574288))].SETTINGS.TEAM_CHECK then
                       Box.Visible = false
                   else
                       Box.Visible = getgenv()[(decode_string_v1("d75ac710140abdc6ad",554993788))].SETTINGS.BOXES_ENABLED == true and Visible or false
                   end
               end
           end
       else
           if getgenv()[(decode_string_v1("a684c2490ad3301f20b5875fb65cf11fdc8e4eb7f9faef",2037588288))][Plr.Name .. (decode_string_v1("05ed99a61d8285118a22",550485922))] then
               getgenv()[(decode_string_v1("ae88dac09b3882a526c6118aaaa9c48bfcc46527620698",948795650))][Plr.Name .. (decode_string_v1("5eb1f1894552ec2cc20b",869352058))].Visible = false
           end
       end
   else
       getgenv()[(decode_string_v1("f9d4f47002dfc978982df6",1536981535))][Plr.Name .. (decode_string_v1("9b3578b2c13cf8a6dcbc",510345505))] = nil -- auto erase player from updation cache

       if getgenv()[(decode_string_v1("123f0a90d23877c1eb26d41560a038c196a264b40aac49",1202303115))][Plr.Name .. (decode_string_v1("206fbd317a805ef6c2ed",853029133))] then
           getgenv()[(decode_string_v1("d8711801264d4e720f3d7b9f42df91b81d5fbefdc8dfca",598872570))][Plr.Name .. (decode_string_v1("cc0ba67ace502578bf57",348844818))]:Remove()
           getgenv()[(decode_string_v1("5a3e89eee423aa2b3d4a87d564245da0dc7cfb1a561c15",1779877016))][Plr.Name .. (decode_string_v1("00db2150f60e6776fb40",634513397))] = nil
       end
   end
end
end
end

getgenv()[(decode_string_v1("88f894eb4cfe7f94e4",731143321))].LoadFov = function()
end

if getgenv().ESP_TESTING == true then
for _, Plr in ipairs(Players:GetPlayers()) do
if Plr ~= LPlayer then
   getgenv()[(decode_string_v1("2aabcdcb48599b541b",1072496060))].LoadBox(Plr)
   getgenv()[(decode_string_v1("82be31f1a17e398cb5",2050220320))].LoadTracers(Plr)
end
end
end

if getgenv()[(decode_string_v1("c5f6db4d4df75d962e",1619479401))].RemovedAndAdded == nil then
getgenv()[(decode_string_v1("e2175fe3e427d43667",916685988))].RemovedAndAdded = true

Players.PlayerAdded:Connect(function(Plr)
if getgenv()[(decode_string_v1("c5ae6f1463a7bacce8",1616050446))].SETTINGS.BOXES_ENABLED == true or getgenv().ESP_TESTING == true then
   getgenv()[(decode_string_v1("ee97f26f7dd5f63bd3",350260900))].LoadBox(Plr)
end

if getgenv()[(decode_string_v1("01775b486fb5cfc0fa",558950950))].SETTINGS.TRACERS_ENABLED == true or getgenv().ESP_TESTING == true then
   getgenv()[(decode_string_v1("822a0e3b247e0c3b00",2044127114))].LoadTracers(Plr)
end
end)
end
end

getgenv()[(decode_string_v1("d336554715d5ef973e",1742598743))].Connect()

getgenv()[(decode_string_v1("82fa2a1d128c1a0ba8",231383781))].Aimbot = function()
local Proxy = newproxy(true);
local MetaTable = getmetatable(Proxy);

local function AimAtPlayer(Camera, Mouse, target)
local TARGETPOS = Camera:WorldToScreenPoint(target.Position)
local GOTO = Vector2.new((TARGETPOS.X - Mouse.X) * .15, (TARGETPOS.Y - Mouse.Y) * .15)
mousemoverel(GOTO.X, GOTO.Y) -- Quick math for the aim function lmao
end

getgenv()[(decode_string_v1("042a5437aa93094469a0a2",1918117713))].AimBot = nil

MetaTable.Start = function()
getgenv()[(decode_string_v1("c4ad066e3626eea48f8470",121563748))].AimBot = nil
if getgenv()[(decode_string_v1("960df7787125ce6da45447",876517318))].AimBot == nil then

getgenv()[(decode_string_v1("f9671a4f7131f68750d12c",18516386))].AimBot = function()
   local LastDistance = 999999
   for _, FPlayer in ipairs(Players:GetPlayers()) do
       if FPlayer ~= LPlayer then

           local TeamCheck = tostring(GetPlrTeam(FPlayer)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("5c44b253cba0c4882e",1751859095))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
           if not TeamCheck then
               local FChar = GetChar_Ez(FPlayer)

               if FChar then
                   local HeadCheck = FChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("43326a0255",965009086)) and PartNames[game.PlaceId].Head or (decode_string_v1("8f0fd8a2",1304849406)))

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


end
end 

MetaTable.End = function()
getgenv()[(decode_string_v1("6cdb8d1d3d862b9a505cbd",595493270))].AimBot = nil
end

MetaTable.TeamCheck = function(Bool)
getgenv()[(decode_string_v1("6a0e37e5fee2ca21ac",209626577))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
end

return MetaTable
end

if getgenv().ESP_TESTING == true then
getgenv()[(decode_string_v1("1edcfb926ede00ed62",43007313))].SetTracersVisibility(true)
getgenv()[(decode_string_v1("f670f4288d2c1f6d77",1222592046))].SetBoxVisibility(true)
getgenv()[(decode_string_v1("78a24b3126ee210ecf",1285758093))].SetTeamCheck(false)
getgenv()[(decode_string_v1("5ce5308306aba84537",194953290))].UpdateColor(Color3.fromRGB(79, 22, 201))
end

if not getgenv()[(decode_string_v1("66a10c4a7d3270900454",776551641))] then
getgenv()[(decode_string_v1("c391a3b072f4fdffe6a9",192330876))] = true
local RunService = game[(decode_string_v1("0a51a53aa058313f3cac",1237470833))](game, (decode_string_v1("194909751a3214df0a73",872027904)))
RunService.Heartbeat:Connect(function()
for _, Function in pairs(getgenv()[(decode_string_v1("c344aa23c3306aba232278",1742538909))]) do
if type(Function) == (decode_string_v1("517102887454ef4c",2060475749)) then
   xpcall(Function, ErrorHandlerTing)
end
end
end)
end
end
--Timber. lua_compile_spot
--PhantomForces. lua_compile_spot
--BloxBurg. lua_compile_spot
local VRService = game:GetService((decode_string_v1("f525f99ac0a7ce775c",1872343675)))

do
local function WorldZeroInit()
local MarketService = game:GetService((decode_string_v1("9431472352113360035cf29c8bdfbbfb5c4c",2112492128)))
local VRService = game:GetService((decode_string_v1("5d0da522ec5e384af7143d",1209787377)))

local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
if isSuccessful then
if info.Creator.Name == (decode_string_v1("b9dc9a6bd956056abe43c15e00",171195474)) then
--

getgenv()[(decode_string_v1("4abf7ae60435da25b3cab522a693c2420210bcd637",1186892933))] = false

--------------------------------------------------------------------------------------------

getgenv().UpdateLoop = type(getgenv().UpdateLoop) == (decode_string_v1("b27b72a9a62ea6",1502294949)) and getgenv().UpdateLoop or false;
getgenv().UpdateCache = type(getgenv().UpdateCache) == (decode_string_v1("44b6aaee81",513766590)) and getgenv().UpdateCache or {};
getgenv().MOB_ESP_OBJECTS = type(getgenv().MOB_ESP_OBJECTS) == (decode_string_v1("ebe8798af8",639939949)) and getgenv().MOB_ESP_OBJECTS or {};
getgenv().MOB_ESP_CONNECTIONS = type(getgenv().MOB_ESP_CONNECTIONS) == (decode_string_v1("6380e9c5d7",378385368)) and getgenv().MOB_ESP_CONNECTIONS or {};

local GameConfigFile = GetGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("d5931fffae",1090003506)))
Settings_Name = (decode_string_v1("908cd4edb55c1926395175980ef0d9454cb863770bd5a9266ebd74",1128104298))

getgenv()[Settings_Name] = {
   AutoAttackMobs = GameConfigFile.AutoAttackMobs or false,
   AutoPickupCoins = GameConfigFile.AutoPickupCoins or false,
   AntiIdle = GameConfigFile.AntiIdle or false,
   MobESP = GameConfigFile.MobESP or false,
   MobESPRenderDistance = GameConfigFile.MobESPRenderDistance or 250
}

Window = UILibrary.new((decode_string_v1("322b7ee94983f0dbec3dc682bbff31e68115cd225f209d",1067164126)), 5013109572)

local TweenService = game:GetService((decode_string_v1("fcbac12b4f02b4c92fd3b918",1683125232)))
local Player = game.Players.LocalPlayer
local Character = nil
local PlayerPosition = nil
local PlayerLookVector = nil
local RootPart = nil
local ItemTable = nil

local ActionsModule = require(game.ReplicatedStorage.Client.Actions);
local CombatModule = require(game.ReplicatedStorage.Shared.Combat);
local AnimationModule = require(game.ReplicatedStorage.Client.Animations);

local MobsFolder = workspace:FindFirstChild((decode_string_v1("11cb4517",509844842)))

local AutoFarmWindow = Window:addPage((decode_string_v1("699d145d8d392ac40d",1425518915)), 5012544693)
local VisualsWindow = Window:addPage((decode_string_v1("85901ecf22ba7b",891314036)), 5012544693)
local TeleportsWindow = Window:addPage((decode_string_v1("b3fbf9c4121a52af7d",1278892563)), 5012544693)
local AutoFarmSection = AutoFarmWindow:addSection((decode_string_v1("b63e7a06c82148a3",1361548887)), 5012544693)
local VisualsSection = VisualsWindow:addSection((decode_string_v1("d24a7041bc0cbdad",1743162650)), 5012544693)

local Camera = workspace.Camera
local GUIService = game[(decode_string_v1("d4120cb48d68fcc3ca50",1159677101))](game, (decode_string_v1("5727869d21ed6fb4edc9",528627692)))

local function GetNearMobs()

   local Mobs = {}
   local HitBoxSize = Vector3.new(25, 15, 25)

   if RootPart then

       local MobParams = OverlapParams.new()
       MobParams.FilterDescendantsInstances = MobsFolder:GetChildren()
       MobParams.CollisionGroup = (decode_string_v1("bb81e736fbcd57",871592247))
       MobParams.FilterType = Enum.RaycastFilterType.Whitelist

       local FoundInBox = workspace:GetPartBoundsInBox(RootPart.CFrame, HitBoxSize, MobParams)

       if FoundInBox ~= nil then
           for _, Part in ipairs(FoundInBox) do
               if Part:IsA((decode_string_v1("ea751cd3b6ab99df",1598689451))) then
                   if Part.Name == (decode_string_v1("b41a75131be979d0",1252529431)) then
                       table.insert(Mobs, Part.Parent)
                   end
               end
           end
       end

   end

   return Mobs
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
               Box = Drawing.new((decode_string_v1("3406b8cda7d6",303773995))),
               ESPText = Drawing.new((decode_string_v1("93cbb538",654318948)))
           }

           local Box =  getgenv().MOB_ESP_OBJECTS[Mob].Box
           local ESPText =  getgenv().MOB_ESP_OBJECTS[Mob].ESPText

           ESPText.Text = (decode_string_v1("",187518128))
           ESPText.Color = Color3.fromRGB(255, 255, 255);
           ESPText.Size = 20.0
           ESPText.Visible = false
           ESPText.Outline = true
           ESPText.Center = true

           Box.Thickness = 2;
           Box.Filled = false;
           Box.Visible = false;
           
           getgenv().UpdateCache[Mob] = function()
               local Collider = Mob:FindFirstChild((decode_string_v1("0c1345e67abb3ae5",1186864012)))

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

                   ESPText.Text = string.format((decode_string_v1("18befd1b47a90dc231ee40c496e04f2aa2c080b1fedf0215",135864635)), Mob.Name, tostring( math.floor( (MobPos - PlayerPosition).Magnitude ) ) )

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

                           local CreatureHealthFolder = Mob:FindFirstChild((decode_string_v1("ff027dc601a2e86365b1ccd863e99ce6",1227510006)))

                           if CreatureHealthFolder then
                               local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("7ff3b7b97d77",1337315936)))
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
           if typeof(V) == (decode_string_v1("ed80ae2028425762762a974f67169af76a8913",999633184)) then
               V:Disconnect()
               getgenv().MOB_ESP_CONNECTIONS[I] = nil
           end
       end
   end

   ESP_META.StartConnections = function()
       ESP_META.EndConnections()

       getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("20b4153d4013e8ff",839155849))] = MobsFolder.ChildAdded:Connect(function(Mob)
           ESP_META.AddEsp(Mob)
       end)

       getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("9cd3c7c7908cd8671f61",865009508))] = MobsFolder.ChildRemoved:Connect(function(Mob)
           ESP_META.RemoveEsp(Mob)
       end)
   end

   return ESP_META
end

local MobESPMeta = MobESP()

MobESPMeta.EndConnections()
for _, Mob in ipairs(MobsFolder:GetChildren()) do
   MobESPMeta.RemoveEsp(Mob)
end

getgenv()[(decode_string_v1("13d91856d1807e703b6171",1377644117))][(decode_string_v1("d55622b5e4fe1371d507836e0c465f25",1727795841))] = function()
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

getgenv().UpdateCache[(decode_string_v1("c6041ab7e314f24e377d",1112911902))] = function()
   if MobsFolder ~= nil then
       if (UpdateTick - os.time()) >= 1 then
           UpdateTick = os.time()

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

VisualsSection:addSlider((decode_string_v1("d1ec3f24e8df0913794c83cfad3f63ac3323ef",152027554)), getgenv()[Settings_Name].MobESPRenderDistance, 250, 10000, function(NewValue)
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

VisualsSection:addToggle((decode_string_v1("e0c21bd7449146",1287909250)), getgenv()[Settings_Name].MobESP, function(Bool)
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

AutoFarmSection:addToggle((decode_string_v1("50091a4c510958d6a4882ee0a6477e62dddcdc2113a5cedd996b236246b5f2cebd7333",1094047391)), getgenv()[Settings_Name].AutoAttackMobs, function(Bool)
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
                           local CreatureHealthFolder = Creature:FindFirstChild((decode_string_v1("dfe75d533f6b226444e392901345371c",2094222800)))

                           if CreatureHealthFolder then
                               local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("80a4014d88de",447611609)))
                               
                               if CreatureHealth then
                                   
                                   if CreatureHealth.Value > 0 then
                                       local CreaturePos = Creature:GetPivot();

                                       --local v14 = AnimationModule:GetAnims().Defender["Attack" .. tostring(AttackIndex)];
                                       if not ActionsModule:IsBusy() then
                                           TotalHits = TotalHits + 1

                                           --ActionsModule:FireSkillUsedSignal("Primary");
                                           --ActionsModule:FireCooldown("Primary");
                                           ActionsModule:SetBusy((decode_string_v1("9db603a048",1569982811)));
                                       
                                           if Character then
                                               PlayerPosition = Character.PrimaryPart.Position
                                               PlayerLookVector = Character.PrimaryPart.CFrame.LookVector
                                               RootPart = Character.PrimaryPart
                                           end

                                           RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
                                           Camera.CFrame = CFrame.new(Camera.CFrame.p, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))

                                           CombatModule:AttackWithSkill((decode_string_v1("933b5908a999ac17",2067952380)) .. tostring(AttackIndex), PlayerPosition, CFrame.new(PlayerPosition, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z)).LookVector * 1.1 );
                                           
                                           AttackIndex = math.clamp(AttackIndex + 1, 1, 6)

                                           if AttackIndex > 5 then
                                               AttackIndex = 1
                                           end

                                           CreatureIndex = CreatureIndex + 1

                                           task.wait(0.01)
                                           ActionsModule:ReleaseBusy((decode_string_v1("f54aa35cf0",154866008)));
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
   if A:IsA((decode_string_v1("2c9b85fb7d",403475755))) then
       if tostring(A) == (decode_string_v1("66bb679a7d",521733061)) then
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

AutoFarmSection:addToggle((decode_string_v1("5e5782a982871ebf",967680079)), getgenv()[Settings_Name].AntiIdle, function(Bool)
   getgenv()[Settings_Name].AntiIdle = Bool
end)

AutoFarmSection:addToggle((decode_string_v1("692d87a84ac0d11032abb4c26037255fa826863e1904ee2264b8",481539980)), getgenv()[Settings_Name].AutoPickupCoins, function(Bool)
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

if not getgenv()[(decode_string_v1("9633d1ce5e46f9addbff",884093615))] then
   getgenv()[(decode_string_v1("58222e4c2c50150b3d4d",242171460))] = true
   RunService.Heartbeat:Connect(function()
       for _, Function in pairs(getgenv()[(decode_string_v1("2b7b17e7ce45bf63b7d308",1569084865))]) do
           if type(Function) == (decode_string_v1("c1c6816b2ba11b78",1299887015)) then
               pcall(Function)
           end
       end
   end)
end

print((decode_string_v1("0043fb7cebd446114a81a5d19ae8e573ee5b5cf942",114150435)))
--
end
end    
end

WorldZeroInit()

local _Players = game:GetService((decode_string_v1("c7744d0dc35940",1250837119)))
local _Player = _Players.LocalPlayer

local queue_on_teleport = type(syn) == (decode_string_v1("f386517ac6",1961839194)) and syn.queue_on_teleport or queue_on_teleport

local RejoinCode = (decode_string_v1("f7a126feef9c11d2ba3b944b22a52203f60565760c196f16cce5f64408bed80bfa5c6390e8919acb0137e0e5b1d522aa3a5ec81b46bd08a93637b19199b824f71b14610656d968c05f4eca56e558c58f162f6c7a61b3954ffc0922e78f1b1f39faea020906cdcf429fee5d614ac8d59c05fb2f44d01b7aede07433202d7bcdd8ceb9c5debb40073deb93940932c50a01f263db79227f8f9e5cc785f4107fe59ff8831251c89de3bba5eead4afdcb31d734afe4637c5f8a16ffc827e1da330aa674607a0a3fa8922431e412327a3565cacade1af82d352e06edecb81a1a909a6e8e57fa9bf9b8b590cae850021588ce7f5dcfc7a0204173d5d833ac411f466f6684593da90cd9408abf6817e8cdc9f612b6b5ee2807ddb079f90925972debf29884aade5d38d55bf3f1a820f3c9f5042c6204de0ec704dfe30ffbdf779b3c01e059bd4e66d258a7f3160fed36105dcc6242fc5b136225335948059b84ec676a79a626684758f8587c3d55f6c314d3ce890873003522062a3efbc5e0cbe1525778b3e427646bb72eeadf68e97d4f475d4c5d6a55d79bc8eed344c3bbf271ac303252f491be94925ff98ea4577ed6e13cc85a9004ac5458013797b8ddf4f8cb26e1cfe8b5db4597f83fc151f69efef481123661eb949eaedfefcfb8d52c387031239ac732857860920baa1a129c6a2c7d559a06c9eed449814c1e648ce610dc1d2378f545bbf52103cad1045ff5019e043d209d47fc4196387b968102391c12ac5557d643b0e04b9a31eddb88beb234fed17e05978371c6d9e49d5027a4dca2808bae7b918e343d976498453b057cb7966b0378d6cc8d393913a227726fd628c96fbb2ca808bc351e069b52fb301554bd069c5730",1906613864))

if not isfile((decode_string_v1("e4ee971324a8fe8ae6d563b180cab5f4d90e41",1818209688))) then
writefile((decode_string_v1("b83cd99795e97c6454e35551bc7356244b8637",636518128)), tostring(RejoinCode))
end

queue_on_teleport((decode_string_v1("f7f36badbd621efb4cd7e71079111180f091ddd63c6caea3dcf65abca508d24220c39d94fe7aeee9d09afae0154b603bca5614465f970ed010bb4d4e959df16d6da2d492976a577b75bc49f2fbc972fb82c4fff71ce0f8aa4839d25ffc40a1793510061b7ce6cd547ebd4862",628712551)))
end
--DaHood. lua_compile_spot

if getgenv()[(decode_string_v1("c612a9a1ea617e3579b1e16a1322aa0744bc44cb01",110906210))] == true then
do
local Players = game[(decode_string_v1("c4398fe90258bdd82a1e",1055790400))](game, (decode_string_v1("87b560a6688f14",2133790410)))
local Player = Players[(decode_string_v1("db46305aa7db4ba5f70bfd",201814925))]
local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("59580b32edd0",128517297))], string[(decode_string_v1("fab99e3afc",310282166))], string[(decode_string_v1("ac36a2a9",654081465))], string[(decode_string_v1("8366b4438841",507999682))], string[(decode_string_v1("5c152a65dc",1941416527))]

Window = UILibrary.new((decode_string_v1("30c03e350c63d2280cb687af193e285680a30343a754",1249610534)), 5013109572)

local VisualsWindow = Window:addPage((decode_string_v1("314a35139da107",744269824)), 5012544693)
local VisualsSelection = VisualsWindow:addSection((decode_string_v1("2283eb3b",626937987)))

local GameConfigFile = GetGameConfig(FixName(tostring((decode_string_v1("f6e9eca8a1a5f75d75",1100853482)))) .. (decode_string_v1("09bad2d65a",2083605738)))
Settings_Name = (decode_string_v1("589d22e40f37f69d6a99e3290180b5c8cb496754326b92b9969e",244844968))

getgenv()[Settings_Name] = {
Teamcheck = GameConfigFile.Teamcheck or false,
Boxes = GameConfigFile.Boxes or false,
Tracers = GameConfigFile.Tracers or false,
Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
}

VisualsSelection:addToggle((decode_string_v1("9229c983a7f04b282fea715b10",1025367727)), getgenv()[Settings_Name].Teamcheck, function(Bool)
getgenv()[Settings_Name].Teamcheck = Bool
getgenv()[(decode_string_v1("bb1e8e0f1cb7c7ca5f",19390493))].SetTeamCheck(Bool)
end)

VisualsSelection:addToggle((decode_string_v1("82a3f90535e5ca7de3",2078161599)), getgenv()[Settings_Name].Boxes, function(Bool)
getgenv()[Settings_Name].Boxes = Bool
if Bool then
for _, Plr in ipairs(Players:GetPlayers()) do
if Plr ~= Player then
   getgenv()[(decode_string_v1("bba27640820e214413",1551493414))].LoadBox(Plr)
end
end
getgenv()[(decode_string_v1("82d15ad27ee355f150",2053936124))].SetBoxVisibility(true)
else
getgenv()[(decode_string_v1("308ff34ff9855d4345",2005968523))].UnLoadType((decode_string_v1("ac680a336bd48a0b26f4",821009709)))
getgenv()[(decode_string_v1("adbfa42c82e0a42d5f",1446237269))].SetBoxVisibility(false)
end
end)

VisualsSelection:addToggle((decode_string_v1("2ed03d0c6df8dc8f9155b7",609311938)), getgenv()[Settings_Name].Tracers, function(Bool)
getgenv()[Settings_Name].Tracers = Bool
if Bool then
for _, Plr in ipairs(Players:GetPlayers()) do
if Plr ~= Player then
   getgenv()[(decode_string_v1("be13bd7e0bd1ab4a78",940217800))].LoadTracers(Plr)
end
end
getgenv()[(decode_string_v1("012f0ec8c2b3a3df2e",1680417559))].SetTracersVisibility(true)
else
getgenv()[(decode_string_v1("3638ebfa688a63c144",28340022))].UnLoadType((decode_string_v1("1ce428a89f734e279be67e2b",2132951750)))
getgenv()[(decode_string_v1("ff718450ecc32aaabf",1496001626))].SetTracersVisibility(false)
end
end)

local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color

getgenv()[(decode_string_v1("92ff3571423990e38c",1017803413))].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

VisualsSelection:addColorPicker((decode_string_v1("5cd02f7e908735f828",1762848076)), Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)

getgenv()[Settings_Name].Color.R = R
getgenv()[Settings_Name].Color.G = G
getgenv()[Settings_Name].Color.B = B

getgenv()[(decode_string_v1("29671316864254947f",56772319))].UpdateColor(Color3.fromRGB(R, G, B))
end)

VisualsSelection:addButton((decode_string_v1("de57203bace5df7b6f7b",1826002018)), function(Bool)
getgenv()[(decode_string_v1("30c549604d2ae6a6b1",2037723192))].UnLoad()
end)
end
end

if Window ~= nil and Settings_Name ~= nil then
local MarketService = game:GetService((decode_string_v1("f38ae05c07a8e3f510c659dc5b5fcb6f5bd0",1539739310)))
SettingsPage = SettingsPage or Window:addPage((decode_string_v1("4a06b0c4ab9f2963",1261163446)), 5012544693)
SettingsSection = SettingsSection or SettingsPage:addSection((decode_string_v1("cb970399bd",167454697)), 5012544693)
SettingsSection:addButton((decode_string_v1("d2b64907c5f8aea9f41ac3",1089574201)), function()
   local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
   if isSuccessful then
       if tostring(info.Creator.Name) == (decode_string_v1("0ae10429d985b19706c6c1a357",671330197)) then
           SaveGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("b2573c6a5e",487180158)), getgenv()[Settings_Name])
       elseif getgenv()[(decode_string_v1("2898e12191761e9965c7d48c149ffb1bc98630bffe",623596257))] == true then
           SaveGameConfig(FixName(tostring((decode_string_v1("288e7dfff1df9fe683",1869208000)))) .. (decode_string_v1("556cb3431d",1948437887)), getgenv()[Settings_Name])
       else
           SaveGameConfig(FixName(tostring(info.Name)) .. (decode_string_v1("055d2b180b",419032006)), getgenv()[Settings_Name])
       end
   end
end)
SettingsSection:addKeybind((decode_string_v1("5ba89952f82fcf6f5795afc20357",1854335398)), Enum.KeyCode.Home, function()
   Window:toggle()
end, function()
end)
end
else
return sendError(serverData, clientData)
end
end
end, function(err)
return warn(err .. (decode_string_v1("3d",212031685)) .. debug.traceback())
end)
