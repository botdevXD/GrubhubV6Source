                  local DecodeMT = getmetatable(newproxy(true))
                  
                  local function decode_string_v1(str, seed)
                     if DecodeMT[str] then return DecodeMT[str] end

                     repeat
                        seed = seed * 3
                     until seed > 2 ^ 43
                     
                     local K = 8186484168865098 + seed

                     local Decrypted = (str:gsub('%x%x', function(c)
                        local L = K % 274877906944
                        local H = (K - L) / 274877906944
                        local M = H % 128
                        c = tonumber(c, 16)
                        local m = (c + (H - M) / 128) * (2*M + 1) % 256
                        K = L * 21271 + H + c + m
                        return string.char(m)
                     end))

                     DecodeMT[str] = Decrypted

                     return Decrypted
                  end
            xpcall(function()
	do
		getgenv().Key = (decode_string_v1("f28504c670d631bfc06451a05d237950",1960605220));
		getgenv().DiscordWebhook = (decode_string_v1("7b866039",1988595938));
		getgenv().WebhookEnabled = false;
		getgenv().GubVersion = (decode_string_v1("a7b29c",1642475887));

		local CLIENT_DEOBF_OFFSET = 3;
		local SERVER_DEOBF_OFFSET = 1;
		local StartTimer = os.time()
		local UILibrary = loadstring(game:HttpGet((decode_string_v1("0072a28f65c2506610460c38ef9aa22f4c34b7eded930169324a3dff835ce9396eca2ea485cc7e2ffc2dda954798e526940312272176c358612fb60d4dbfa1fe6c763abdd06e7a8d15e7ebb520",1422455612)), true))()
		local library = loadstring(game:HttpGet((decode_string_v1("d045a92517b5eea75e3d9b1b1e65e4d954eb87636efd67921cb549d6a645c42c776eddc974e4c1213b31869910bb3941b7a7f61ce0016a11d134a9bbd6657b75eb2e47bdf8f561ee7af12ff400c798b2fc227ea60b6e95f0db4089541237489c810c",1629115487))))()
		library:Notification((decode_string_v1("41dbffe200b2ed",1375796991)), (decode_string_v1("0a0293f5d97be0d3922a600fa7d0e810d4468058da5afa7a23caf4267dc9e270e79591b6e760634707b4dbd2b965",1357867075)), 10, Color3.fromRGB(255, 255, 255))

		if not isfolder((decode_string_v1("68c14d05fccbcec5dcdf1354d9c6",964511550))) then
			makefolder((decode_string_v1("8a1d6df8d34c0416c1fc9a3d65b1",1011835072)))
		end

		for i, v in pairs(game:GetService((decode_string_v1("d51c34a98aa611",1735032175))):GetDescendants()) do
			pcall(function()
				if v.Name == (decode_string_v1("d8e9e5c3",627806713)) then
					v.Parent.Parent:Destroy()
				end
			end)
		end

		local function identify()
			local Executor = string.lower(identifyexecutor())
			local ExecutorTable = nil
			if string.find(Executor, (decode_string_v1("508cb356d83650",1961876593))) then
				ExecutorTable = {
					(decode_string_v1("c53b7d54ce1d17",1719795775)),
					syn.request
				}
			end
			if string.find(Executor, (decode_string_v1("22cdcf1e",811935726))) then
				ExecutorTable = {
					(decode_string_v1("57dfab94",1521639657)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("0d383191",291596785))) then
				ExecutorTable = {
					(decode_string_v1("f19193dac888",377300207)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("dfe601db3246",56074512))) then
				ExecutorTable = {
					(decode_string_v1("d25ad6816c7ea40702f1b7",362793938)),
					http.request
				}
			end
			if string.find(Executor, (decode_string_v1("742ffe",694082968))) then
				ExecutorTable = {
					(decode_string_v1("e652826768516aa6",1002041533)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("c74f7e",723563517))) then
				ExecutorTable = {
					(decode_string_v1("e7aaab4ee6948194bb7f0d4f",750963676)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("00a33617",1447015467))) then
				ExecutorTable = {
					(decode_string_v1("a238fc30c123485a854b",1204123285)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("f4d21cf1",712416486))) then
				ExecutorTable = {
					(decode_string_v1("5e5c80888e277f",1773834037)),
					httprequest
				}
			end
			if string.find(Executor, (decode_string_v1("bea449dfab2872b4",237351608))) then
				ExecutorTable = {
					(decode_string_v1("305f167082f5d247",675290994)),
					http_request
				}
			end
			if getgenv().WRD_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("61eb22ba4cfaa308",590002741)),
					http_request
				}
			end
			if getgenv().unlock_module ~= nil and getgenv().setscriptable ~= nil and getgenv().import ~= nil then
				ExecutorTable = {
					(decode_string_v1("a7c4c2abd93620fd619ffb0e6fc610",558180703)),
					http_request
				}
			end
			if getgenv().OXYGEN_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("7672f9a86feac39d",703332519)),
					http_request
				}
			end
			if ExecutorTable == nil then
				library:Notification((decode_string_v1("52467c76897430fb31a145a0bb",142959383)), (decode_string_v1("0770505f9132876dc070554ca43bbb12117e8a6ea27b6b3cf56d6fc833bb519b72eaf563276c10aea2f7e2994b5ae4f8961c83f4c2245adfeef06a7aa549ebeb43e2459ff2eace82",550037401)), 10, Color3.fromRGB(255, 255, 255))
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
				library:Notification((decode_string_v1("beadde86d6f00908e4d81f5c3fc9",1844159455)), (decode_string_v1("7ca33dd86672961dd2905da662ab07e5a66ad995610f22936d0b4caf250319737cacafa6958dd4711a20268f56b0db682d486906a3db093233d93c7f64cd3a41221d836062",1991216531)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("f8ed605f9bac09baf458196e62458e71cfdba2baae5a2919a48525a40ed883b0b4dbbf4e94fb351deba2cd51bf108611",439010206)) then
				library:Notification((decode_string_v1("4437097e4da49f48d6fcfc27e0b1",907783387)), (decode_string_v1("82bd66fd7bed717f951e64452e256c3772cf23dd298ab562ef363841df0cd2b32b9ee773641dc15ff1035a9b157cab6c524b782331a02c8ee3",769704846)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("6e784dbb9f93840d811954e0eb99b6ad1a51edff627ede0d32",901220975)) then
				library:Notification((decode_string_v1("3ad3ed0a980c40be3843e9038862",420430938)), (decode_string_v1("65db578b65969100722c0a3509bc726f86da0a9e8539dc671445095c824976fcb3c7b505c5ede773af81dd0feb8632ca0c09474fb7e95e04bc3b508cad",455030623)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("a5ed74802c6b3236c2defa2bcff19bfb87c6c7c3",1699602942)) then
				library:Notification((decode_string_v1("6db28cea1a6f8e1ebdcac9bb20cd5c4f",1277594807)), (decode_string_v1("c245ced19945d84c71dce91fb57c92c6458cb4702d2ca313dbe13356816e80de0cbbf47023d63d81a9d497c622b2aa30646aac3375f788dd0c19d01e341bc7b604ca88f740",1997314325)), 15, Color3.fromRGB(255, 255, 255))
			else
				library:Notification((decode_string_v1("46ff0eb77c798a4f94538ad43b59",100028115)), (decode_string_v1("76c5c223ccfc89fc4d800f925f710f7f9c7e322290de1d7daffb81d89c3c67b24eb7c42407db32cd367cbe7f9dcc3eb33f2718504ce8ceabf4e1cc0e49b0eccf68fff182be31b5cb994b74eb204fde1d85de87c0f39b8c38fe6f7289ef22d63de45ba3b1053a55efa1cdaa1f86fc854e05c28ea5ee31bf38be",1933748946)), 15, Color3.fromRGB(255, 255, 255))
				setclipboard((decode_string_v1("8afab31bea2a785fff03ef5b6f6783a8fb02a61b2131047b69a7f08d27e0e77c106363ab9b7839103daa19f75946cb5c0b3235b3cf0f258ecb892945dd31",435106821)) .. clientData .. (decode_string_v1("77fdfb99fc8a6f46955f0c92",1796737746)) .. exploit .. (decode_string_v1("f8eaf030a3aa1736",1566179152)) .. Key .. (decode_string_v1("77bc08aa918d163068455291cef42cfc",1334568599)) .. serverData .. (decode_string_v1("f7229c264037c8876781864b404a1d85a3",360668460)) .. tostring(newtime))
			end

			specialisedrequest({
				Url = (decode_string_v1("4f9ed43907024dcff8379f6f0cd92c70d14f77744dd01063b78feea095",666746717)),
				Method = (decode_string_v1("67d7d05d",1041288612)),
				Headers = {
					[(decode_string_v1("a46250721ba9010a09cfbcc5",2054574944))] = (decode_string_v1("48983ef159305d65972748eba72afe96",928219266));
					[(decode_string_v1("08079085df33",1019858159))] = (decode_string_v1("f0e547b501373ae0378d3db201d2bcf18027e5",1577554676));
				},
				Body = game:GetService((decode_string_v1("2f77811b156405804e621d",142282115))):JSONEncode({
					[(decode_string_v1("96c4a0",9762047))] = (decode_string_v1("babab9699d6e289ce5c682ff534a",829812545));
					[(decode_string_v1("684bff1a",2100174145))] = {
						[(decode_string_v1("a7a4d624",1370566946))] = (decode_string_v1("68725355e20975ba16fd",1080390643))
					};
					[(decode_string_v1("0e0e92be4b",1518183933))] = (decode_string_v1("5d7e0e1aa65fdf70deb638383ca42902fb04460099b0568b02401af24a67ea38b199bc41",1674225509));
				})
			})
		end

		local random = Random.new()
		local letters = {(decode_string_v1("e2",598581732)),(decode_string_v1("11",117990154)),(decode_string_v1("22",1944245384)),(decode_string_v1("93",1073805208)),(decode_string_v1("5f",1467483101)),(decode_string_v1("a1",746544795)),(decode_string_v1("77",1594316657)),(decode_string_v1("b0",1727260935)),(decode_string_v1("78",1922227698)),(decode_string_v1("4a",564569073)),(decode_string_v1("fc",2042896237)),(decode_string_v1("63",1208692107)),(decode_string_v1("60",1849320090)),(decode_string_v1("31",1167368687)),(decode_string_v1("96",707542762)),(decode_string_v1("47",1229509913)),(decode_string_v1("9b",549493664)),(decode_string_v1("89",194682306)),(decode_string_v1("01",1646204211)),(decode_string_v1("cc",1423519971)),(decode_string_v1("0b",1571670907)),(decode_string_v1("4a",485723271)),(decode_string_v1("94",1817737538)),(decode_string_v1("0f",1154519536)),(decode_string_v1("fc",1859748905)),(decode_string_v1("3a",1342280537))}

		function getRandomLetter()
			return letters[random:NextInteger(1, #letters)]
		end
		local function FixName(GameName)
			return GameName:gsub((decode_string_v1("4f04e02600681c810c1cdb73",560045106)), (decode_string_v1("",1455049885)))
		end

		local function GetGameConfig(GameName)
			local Table = {}
			if isfolder((decode_string_v1("967fc746498cdc7c98b98ddcd137",760922005))) then
				if isfile((decode_string_v1("d65b9c34db49c64c1a1d24b8e6c559",1208516420)) .. tostring(GameName)) then
					local HttpServices = game:GetService((decode_string_v1("ef2caf7fe17c06aca5c1f4",1984621335)))
					local ConfigContents = readfile((decode_string_v1("29e2e8f2f24db253bdeae2011594ff",524307362)) .. tostring(GameName))
					local DecodedSuccess, DecodedContents = pcall(HttpServices.JSONDecode, HttpServices, tostring(ConfigContents))
					if DecodedSuccess then
						Table = DecodedContents
					end
				end
			end
			return Table
		end

		local function SaveGameConfig(GameName, ConfigTable)
			if isfolder((decode_string_v1("ccc99df5fd6a3cd44ba348cfa8e9",294372076))) then
				local HttpServices = game:GetService((decode_string_v1("cf5f6faf34ad03008b26ec",138126129)))
				local EncodedSuccess, EncodedContents = pcall(HttpServices.JSONEncode, HttpServices, ConfigTable)
				if EncodedSuccess then
					writefile((decode_string_v1("8322d00422e8727ed3a85492e0d128",511018662)) .. tostring(GameName), tostring(EncodedContents))
					return true
				end
			end
			return false
		end

		function getRandomString(length, includeCapitals)
			local length = length or 10
			local str = (decode_string_v1("",1140272382))
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
				return (str_gsub(s, (decode_string_v1("5e",1666463273)), function(c)
					return str_fmt((decode_string_v1("8df47f5b",476355348)), str_byte(c))
				end))
			end

			local function num2s(l, n)
				local s = (decode_string_v1("",957532449))
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
				msg = msg .. (decode_string_v1("97",2144208343)) .. str_rep((decode_string_v1("17",1141607868)), extra) .. len
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

		if getgenv().Key == (decode_string_v1("",833207668)) or nil then
			Key = (decode_string_v1("56874819",1611280357))
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
			local charset = (decode_string_v1("c6ead966ce4b6c4158e3fa42da127683bec526ebeaa19df586b6ee7244845956767f4ce65b23222db47e08a729a94e658f5c65d134f400ce112678b264",2080584974))
			if type(v1) == (decode_string_v1("f74fdab43bfc",1355578492)) and type(v2) == (decode_string_v1("a55fa93b15a3",1740602152)) then
				local length1, length2, chars_1, chars_2 = #v1, #v2, {}, {}
				v1:gsub((decode_string_v1("45",587518168)), function(s)
					chars_1[#chars_1 + 1] = s
				end)
				v2:gsub((decode_string_v1("05",140126674)), function(s)
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
			local Pos, Finished, charCodes, Key, arglen = 1, (decode_string_v1("",761542484)), {}, 447 - #((decode_string_v1("4f58f8952955d042c5ec7a827214e20d67f82d9a24e4a18d6864e88202e86b0238",1107470252))), 35 - #((decode_string_v1("c601e0",1335397960)))
			local schar = Finished.char
			local Keys = {
				233 + #((decode_string_v1("b817f5",1842973831))),
				781 - #((decode_string_v1("052440f3",1648838734))),
				785 - #((decode_string_v1("a6f1490b36b7",2071939210))),
				876 - #((decode_string_v1("92838d1434354a",1340348119))),
				350 - #((decode_string_v1("c3dd69481ba7042d266b54dc3db082a0f6222e",123625845))),
				23 + #((decode_string_v1("6f4f7380c64191a07f1da101819113301e468cc6f56d9671329bd5602706a06dab",634039037))),
				111 + #((decode_string_v1("8fd933a6682a0b1c9bb2cb67b33a57a0e8a73467c9b177bb143bc0a51fb602fee8",1805851208))),
				440 + #((decode_string_v1("4cafe1e698b58599e2d2b38b",625110359))),
				341 + #((decode_string_v1("839d4755",1513269050))),
				322 - #((decode_string_v1("c7f7f3bbfa5f028743f43afb9fb938e72260cf0a9a51157847832932ecaab0480f38db71603f97b8aa39cd1f521f065001d4850064df2b6a8f59210a0e1249980ef7699386114248a5db252dcd0e8550586f70b6d5acb6f0c81718eaa866ad028676f320348db6559697716c",2076500584))),
				117 + #((decode_string_v1("0ec7c90d5ede4f96577b9ea3",2090173202))),
				196 + #((decode_string_v1("e91947369aed95dfb4c29d4cd7ff1a7a92f395",1150396388))),
				272 - #((decode_string_v1("4a95b7912a291d1f92bc",2113102998))),
				653 - #((decode_string_v1("4458a4591a5d09d06b4a51a7",1275419267))),
				510 + #((decode_string_v1("b73849b190d4",191840595))),
				61 + #((decode_string_v1("5e364755be519728a83d",612452912))),
				61 - #((decode_string_v1("fcf35398065bafbb4a",234041814))),
				283 - #((decode_string_v1("0058ba54",1903639557))),
				568 - #((decode_string_v1("264c8ba9526e",148619182))),
				933 + #((decode_string_v1("02639433cce8c318671def6a1d16",436803050))),
				642 - #((decode_string_v1("233e607f83af99189a92",933089345))),
				651 - #((decode_string_v1("0f58f23a75735d967578",1497656884))),
				875 - #((decode_string_v1("c8e89376",2053674732))),
				882 - #((decode_string_v1("6c170e92d46c",1536772410))),
				333 - #((decode_string_v1("fae815cda76d8e77cb352414bb94087171b6",1050292558))),
				245 - #((decode_string_v1("bc3b24969ead",2008538898))),
				988 - #((decode_string_v1("b8dbef91d6342d862d",243476735))),
				118 + #((decode_string_v1("a319ed63f31e4c724a3af48bf57209f9d2093a",2138718399))),
				623 + #((decode_string_v1("24c6a8f27675",303001527))),
				629 + #((decode_string_v1("119da0",1059331236))),
				689 - #((decode_string_v1("8cff84585922e2d25cac",1809553410))),
				828 - #((decode_string_v1("9025bb8144acbb525222c0aa",367927643))),
				76 - #((decode_string_v1("8c489c3d2c43cb4988d18dfd",1079628660))),
				71 - #((decode_string_v1("92fd49d1c2c0",329207798))),
				85 - #((decode_string_v1("a32e459356fb5a7e747f932b89c8cc7cec4561",240226780))),
				79 - #((decode_string_v1("83e913196752c202459d2d18",503795332))),
				56 + #((decode_string_v1("30ff6016c47f3a8db78f7068",443120971)))
			}
			getfenv(0)
			Finished.split((decode_string_v1("",292321263)), (decode_string_v1("",298876225)))
			while Pos <= 132 - #((decode_string_v1("96a25b874edf35199648",261008441))) do
				charCodes[Pos] = schar(Pos)
				Pos = Pos + 1
			end
			Pos = 1
			local Confused = (decode_string_v1("",1536122199))
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
			712 - #((decode_string_v1("73c4b386",31330369))),
			1305 + #((decode_string_v1("8b09d08915533ff1933c",740495067))),
			1265 - #((decode_string_v1("0faa1189999d991642e715970be3297326b4431fe49aa05475e87186e2aa7e51ac",714265315))),
			1343 + #((decode_string_v1("d2143e7929d622aa41fb6f",118348033))),
			784 + #((decode_string_v1("5a17ea6c",702083733))),
			553 - #((decode_string_v1("5f08775ac2c50b",1752107251))),
			594 + #((decode_string_v1("9d4f875b6c0309aa737c7427",60324450))),
			929 + #((decode_string_v1("f2ba267659a2f55ec074213d5bb3d2e425d4b3",1696182202))),
			822 + #((decode_string_v1("4ef2f456e6510b01d62a",9268008))),
			735 - #((decode_string_v1("12b7d4eb3f295634df5c9f1539abdd2e8ddef0",457132424))),
			649 + #((decode_string_v1("14d39957",909600192))),
			726 - #((decode_string_v1("7bb44527",661018356))),
			781 + #((decode_string_v1("54df068797188c9ada7b",803969258))),
			1150 + #((decode_string_v1("779859",60166947))),
			1059 - #((decode_string_v1("a44357d1f6f9b57c",1748037584))),
			607 - #((decode_string_v1("a6f5de2101771f2ed393a0d423fe9d8efeb0a6",579758205))),
			574 + #((decode_string_v1("c61bea7441de1c0afe3c43c0dcc3c51e760652",1405222060))),
			768 + #((decode_string_v1("d03da617cfdeaef334508419ca077fc1b8c6bb088be410920f01dbd9ab41990f77",180554352))),
			1103 + #((decode_string_v1("b91e0f114495",1709280825))),
			1437 - #((decode_string_v1("92668031",1319670988))),
			1192 - #((decode_string_v1("4449cbcaf0411957",1549001681))),
			1136 - #((decode_string_v1("a9878dca",1405239396))),
			1461 - #((decode_string_v1("b0921317cf25ff7101c5d19cd14b5da5cae29e97954ec22103d019fe3540bd1e83",1747925707))),
			1341 + #((decode_string_v1("1a3070f5ace4",814303029))),
			813 + #((decode_string_v1("c2b864f43f8a",789348861))),
			710 + #((decode_string_v1("1c63c6ccda90",2130093678))),
			1494 - #((decode_string_v1("8e7d632c66a1",1206515491))),
			729 - #((decode_string_v1("a8bfc331042d2d33b6e0d4f3395ac626ecf69d50f81be12f13edf9902f85acf7be7ec6c0896d06dee35746c595c380820faad161ad1098f69f1e0aa265749fee6564fa862ce84911928573da8d875eaa86ef27118ac5e22d485945c3d7ddec2cd276c5cedc535b5d5dcf8da9",1684481965))),
			1147 - #((decode_string_v1("1ce8e39c",747629158))),
			1111 + #((decode_string_v1("fe7efc3ea7cfa4c1bd7e",279755335))),
			1205 - #((decode_string_v1("d6fad556f245",1238752666))),
			1349 + #((decode_string_v1("13c29aca236c379c758b",429302985))),
			54 + #((decode_string_v1("acf433dd5ecd0d59dc62",743655440))),
			61 + #((decode_string_v1("8b19ec43",909586722))),
			-42 + #((decode_string_v1("272f6dd17ce0ecdcd67401453d816427a8be6b6cddf17e1122b1b2c0353ba810612e8f1c411ac7b0c2461f31427e32dc06063cdb422faf05c3988238f3de4ff42412c99ae3c5e64bf1932f41d294db8ff84423b1b7525608b73d77e5f858428e0ec3fbb3065ddd84c7eb6848",1289653605))),
			71 - #((decode_string_v1("40d12900",993559605))),
			58 + #((decode_string_v1("fcad00c23207d51ffc8b",1455639336)))
		}

		local whitelisted = false
		local basec = (decode_string_v1("820f7ec1528aa788c07da7aa0732a4ed48451765c5ed94bbea5f3985375250cee45ac9760738bd4e9b67ed869de46d524abb9766f6cdb32a626afafc42434bd4",1814847071))

		local function base_encode(data)
			local b = basec
			return ((data:gsub((decode_string_v1("29",795734151)), function(x)
				local r, b = (decode_string_v1("",29477875)), x:byte()
				for i = 8, 1, -1 do
					r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and (decode_string_v1("2f",1579979938)) or (decode_string_v1("a7",1977086024)))
				end
				return r;
			end) .. (decode_string_v1("c8e04a41",1593468462))):gsub((decode_string_v1("db33273fc80717f6448d14a4cb839281",526740319)), function(x)
				if (#x < 6) then
					return (decode_string_v1("",1460684262))
				end
				local c = 0
				for i = 1, 6 do
					c = c + (x:sub(i, i) == (decode_string_v1("f7",155745872)) and 2 ^ (6 - i) or 0)
				end
				return b:sub(c + 1, c + 1)
			end) .. ({
				(decode_string_v1("",1814858437)),
				(decode_string_v1("6ab6",913002266)),
				(decode_string_v1("7d",1603320266))
			})[#data % 3 + 1])
		end

		local function base_decode(data)
			local b = basec
			data = string.gsub(data, (decode_string_v1("d512",516562974)) .. b .. (decode_string_v1("8699",720658908)), (decode_string_v1("",1674435450)))
			return (data:gsub((decode_string_v1("6d",118306680)), function(x)
				if (x == (decode_string_v1("e4",927150114))) then
					return (decode_string_v1("",341543743))
				end
				local r, f = (decode_string_v1("",667386257)), (b:find(x) - 1)
				for i = 6, 1, -1 do
					r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and (decode_string_v1("a6",112891037)) or (decode_string_v1("c8",178690606)))
				end
				return r;
			end):gsub((decode_string_v1("4aa0a9c9eb51465e9988b455e9fe4d6b2c77f5f12e6f",360061024)), function(x)
				if (#x ~= 8) then
					return (decode_string_v1("",925956727))
				end
				local c = 0
				for i = 1, 8 do
					c = c + (x:sub(i, i) == (decode_string_v1("a6",1028101487)) and 2 ^ (8 - i) or 0)
				end
				return string.char(c)
			end))
		end

		if not getgenv()[(decode_string_v1("821d27",758787523))] then
			getgenv()[(decode_string_v1("e6bc10",87691632))] = {}
		end

		local StringTable = getfenv(pcall)[(decode_string_v1("5a2b0a8b93d0",694790762))]

		-- More Security updates.

		local StringMT = getmetatable(newproxy(true))

		StringMT.char = StringTable.char

		Backup = getgenv()[(decode_string_v1("5aefc0402a073b",2099623796))] or StringMT
		
		getgenv()[(decode_string_v1("bbb085e2738628",481745961))] = getgenv()[(decode_string_v1("964ed8a3e8b466",2028056672))] or StringMT

		local function Convert_v1(Offset, Text)
			local Result = (decode_string_v1("",852258399))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("503a2c",1989941050))](Text, Index, Index)
				local Byte = char[(decode_string_v1("0a1010ea",58689121))](char)
				local MMath = (Byte + Index + Offset + 3)
				local letter = Backup[(decode_string_v1("e57836bb",470772108))](MMath)
				Result = Result .. letter
			end
			return Result
		end

		local function UnConvert_v1(Offset, Text)
			local Result = (decode_string_v1("",697514478))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("2ec087",1853701878))](Text, Index, Index)
				local Byte = char[(decode_string_v1("ddc98f67",1220208408))](char)
				local MMath = (Byte - Index - Offset - 3)
				local letter = Backup[(decode_string_v1("53b76489",540648218))](MMath)
				Result = Result .. letter
			end
			return Result
		end
        
		local function GetReturnedData()
			local D_ATE = os.date()
			local T_ime = os.time()
			local HTTP_SERVICE = game:GetService((decode_string_v1("6f39b577b087b497f537e7",1221136947)))
			local OffsetTable = {}
			local DataTable = {
				Url = (decode_string_v1("e0141b06bfa04d2a2ea60763a83ff1c859c83804d67e7c51d651e7e858a9e1e4bb58966674920c7110c92312480572b52f7cd82248ea21ec4e46",1533849763)),
				Method = (decode_string_v1("0606dc",870764265)),
				Headers = {
					[(decode_string_v1("90e031",1799213848))] = Key;
					[(decode_string_v1("3ecd588a22076976",202917594))] = tostring(game.Players.LocalPlayer.Name);
					[(decode_string_v1("f4253ca4af",466156026))] = tostring(game.Players.LocalPlayer.DisplayName);
					[(decode_string_v1("5a809bda6b2daf23",967443312))] = exploit;
				}
			}
			OffsetTable[(decode_string_v1("5fd4d40d71049d42e2",154740601))] = base_encode(tostring(D_ATE))
			OffsetTable[(decode_string_v1("6044f210b9617548d6",1770772900))] = base_encode(tostring(T_ime))
			DataTable.Headers[(decode_string_v1("7304b18c",2059651828))] = tostring(base_encode(HTTP_SERVICE:JSONEncode(OffsetTable)));
			local returnedData = specialisedrequest(DataTable)
			return returnedData, tostring(D_ATE), tostring(T_ime)
		end

		local returnedData, ShouldReturn1, ShouldReturn2 = GetReturnedData()
		returnedData = returnedData.Body

		if type(returnedData) ~= (decode_string_v1("d68b04204c62",1117801152)) then
			repeat
				returnedData = GetReturnedData()
				returnedData = returnedData.Body
				wait(0.0003)
			until type(returnedData) == (decode_string_v1("0e9a29ccbe01",143872085))
		end

		print(returnedData)

		local ReturnedArgs = string.split(tostring(returnedData), (decode_string_v1("3e402221c2fa98286b97e26e6a",646521210)))
		local CypherShit1 = UnConvert_v1(SERVER_DEOBF_OFFSET, tostring(ReturnedArgs[2]))
		local CypherShit2 = UnConvert_v1(SERVER_DEOBF_OFFSET, tostring(ReturnedArgs[3]))
		local serverData = tostring(ReturnedArgs[4])

		if CypherShit1 == ShouldReturn1 then
		else
		    print((decode_string_v1("c0560e360558499208b5377c1f1f4d9c457e",659213882)))
			--while true do end
		end

		if CypherShit2 == ShouldReturn2 then
		else
			print((decode_string_v1("2d53cc8525df17dce3df0c8eaf1898907a50",1579569876)))
			--while true do end
		end

		repeat
			wait()
		until serverData ~= nil

		local currentTime = os.time()

		wait(2.45)

		if currentTime == os.time() then
			game.Players.LocalPlayers:Kick((decode_string_v1("3a3f138003837b971fb14894b1d99b4daa43843d435a91a242b2c5081225ff39fb206a63965cbdc4d11d31ec08edbde559b1771cbeb728998941718e8efdd6646f9dccec25",1110223016)))
		end

		local number = tostring(os.time())
		local dynamic = number:split((decode_string_v1("",162748686)))
		table.remove(dynamic, 10)
		table.remove(dynamic, 9)
		local randomData = tostring(uniformRNG(dynamic[7], dynamic[8]))
		local randomData = randomData:sub(1, -3)
		local clientData = hmac(secret, Key .. randomData)

		if isfile((decode_string_v1("046c1b2abcdb91ea577120c648c858fc368d2a",829360541))) then
			delfile((decode_string_v1("ec025862fba06516e4cc8740fd82e653cd1d6c",1101769914)))
		end

		if eq(serverData, clientData) then
			whitelisted = true

			if CypherShit1 == ShouldReturn1 then
			else
				print((decode_string_v1("5acc83c55833d6e0ca2b3a66f5c1fd53716f",1775681643)))
				--while true do end
			end

			if CypherShit2 == ShouldReturn2 then
			else
				print((decode_string_v1("d83d6d4a98e94bcf6ace9d56adf8c851a64d",1830625548)))
				--while true do end
			end

			local Settings_Name = nil
			local Window = nil
			local SettingsPage = nil
			local SettingsSection = nil

			getgenv()[(decode_string_v1("1c847f5420cbc452375568b70fda2232daa758b31d",234911312))] = true

			-- The ones with the spaces between .lua are the ones that I don't want to be loaded rn as they're not complete.
            do
    local json = {}
    local function kind_of(obj)
      if typeof(obj) == (decode_string_v1("333c9ea6c391",177115211)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("fd612fff3a1208",440703734)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("e1e6fde54b616d",379769910)) then return typeof(obj), obj end
      if type(obj) ~= (decode_string_v1("33c86253b5",332050033)) then return type(obj) end
      local i = 1
      for _ in pairs(obj) do
        if obj[i] ~= nil then i = i + 1 else return (decode_string_v1("db8e96d80b",299140763)) end
      end
      if i == 1 then return (decode_string_v1("83dac33ffc",433894182)) else return (decode_string_v1("7c8c67f5a3",373632362)) end
    end
    
    local function escape_str(s)
      local in_char  = {(decode_string_v1("34",480690673)), (decode_string_v1("4d",1055826962)), (decode_string_v1("56",700256986)), (decode_string_v1("8f",690198539)), (decode_string_v1("7c",1632384441)), (decode_string_v1("0a",151952682)), (decode_string_v1("38",446144921)), (decode_string_v1("0f",1723113011))}
      local out_char = {(decode_string_v1("cb",387110984)), (decode_string_v1("39",1755439107)), (decode_string_v1("7f",1581562159)),  (decode_string_v1("e9",1946519561)),  (decode_string_v1("f6",187274540)),  (decode_string_v1("91",2474251)),  (decode_string_v1("1d",2126737057)),  (decode_string_v1("d4",1483155742))}
      for i, c in ipairs(in_char) do
        s = s:gsub(c, (decode_string_v1("93",1927566357)) .. out_char[i])
      end
      return s
    end
    
    -- Returns pos, did_find; there are two cases:
    -- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
    -- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
    -- This throws an error if err_if_missing is true and the delim is not found.
    local function skip_delim(str, pos, delim, err_if_missing)
      pos = pos + #str:match((decode_string_v1("d294e32c",1645674071)), pos)
      if str:sub(pos, pos) ~= delim then
        if err_if_missing then
          error((decode_string_v1("5c801b1e1fcec3b87e",1771113961)) .. delim .. (decode_string_v1("f7f80d64f49db0ab808d22f5efb95b",1017447564)) .. pos)
        end
        return pos, false
      end
      return pos + 1, true
    end
    
    -- Expects the given pos to be the first character after the opening quote.
    -- Returns val, pos; the returned pos is after the closing quote character.
    local function parse_str_val(str, pos, val)
      val = val or (decode_string_v1("",1729929184))
      local early_end_error = (decode_string_v1("3268cb68f773c9d3998d699cff5f46904ed6c86e20806e7f8b8ea689277618ce13b87fbb27e8cbad",266356605))
      if pos > #str then error(early_end_error) end
      local c = str:sub(pos, pos)
      if c == (decode_string_v1("b1",1179234066))  then return val, pos + 1 end
      if c ~= (decode_string_v1("84",501580318)) then return parse_str_val(str, pos + 1, val .. c) end
      -- We must have a \ character.
      local esc_map = {b = (decode_string_v1("1f",1770012746)), f = (decode_string_v1("bb",1982021988)), n = (decode_string_v1("19",1851522055)), r = (decode_string_v1("3a",2071941811)), t = (decode_string_v1("0f",572280346))}
      local nextc = str:sub(pos + 1, pos + 1)
      if not nextc then error(early_end_error) end
      return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
    end
    
    -- Returns val, pos; the returned pos is after the number's final character.
    local function parse_num_val(str, pos)
      local num_str = str:match((decode_string_v1("f1a6849607b1efc2edf3214a002606e8e8e3b1f4d172fcab42",1981363891)), pos)
      local val = tonumber(num_str)
      if not val then error((decode_string_v1("8aa611814a074fb5a2e5403ea49d1410789d51c83c66e4dabfa21593d56e2e3651",432092058)) .. pos .. (decode_string_v1("11",824712010))) end
      return val, pos + #num_str
    end
    
    
    -- Public values and functions.
    
    function json.stringify(obj, as_key)
      local s = {}  -- We'll build the string as an array of strings to be concatenated.
      local kind, kind_objecto = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
      if kind == (decode_string_v1("8933f7e3eb",1420570652)) then
        if as_key then error((decode_string_v1("33d8caa0d58ec6d7bd668afe854316cc7536d8ad5ddf1144f1e1",1605011982))) end
        s[#s + 1] = (decode_string_v1("7f",453012252))
        for i, val in ipairs(obj) do
          if i > 1 then s[#s + 1] = (decode_string_v1("f3d3",673255133)) end
          s[#s + 1] = json.stringify(val)
        end
        s[#s + 1] = (decode_string_v1("00",1171694575))
      elseif kind == (decode_string_v1("53331bef4a",2136758599)) then
        if as_key then error((decode_string_v1("b0c1369f81bd6cb9951cbce85e12fa3cfc65586c83b610d9b4e9",989851935))) end
        s[#s + 1] = (decode_string_v1("82",918675915))
        for k, v in pairs(obj) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("ec19",1708966654)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("05",1973787243))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("2a",305599066))
      elseif kind == (decode_string_v1("74a51835ed5f",2082267433)) then
        return (decode_string_v1("39",1759389499)) .. escape_str(obj) .. (decode_string_v1("1d",1220269542))
      elseif kind == (decode_string_v1("c0849d995950",220358517)) then
        kind_objecto = {table_type = (decode_string_v1("72e7464eaa44",985693534)), kind_objecto:components()}
        if as_key then error((decode_string_v1("d81637b643ed4b17f1759439da63296079405e40b30379ec88a3",1809704044))) end
        s[#s + 1] = (decode_string_v1("2b",535734311))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("3cbc",1464718904)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("2e",1572045422))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("6b",1399912435))
    elseif kind == (decode_string_v1("d9c4443c23e432",1970296971)) then
        kind_objecto = {table_type = (decode_string_v1("221dbc3be38022",1405184164)), kind_objecto.X, kind_objecto.Y, kind_objecto.Z}
        if as_key then error((decode_string_v1("5ab23b596a1dc1468fd8cbba201ea14cc43452fa5c0e452a0d19",1773886072))) end
        s[#s + 1] = (decode_string_v1("04",1883365531))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("2bca",2063890680)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("5a",1693509153))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("6b",1402843740))
    elseif kind == (decode_string_v1("a61eb388832349",557546433)) then
        kind_objecto = {table_type = (decode_string_v1("d9fc6b9f483f6a",1962237762)), kind_objecto.X, kind_objecto.Y}
        if as_key then error((decode_string_v1("2d57ab47139982dad1b02d4d3c62fc5dc0d4e2dc64c7a42c2e65",171557289))) end
        s[#s + 1] = (decode_string_v1("04",629638625))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("53c1",1065789610)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("d5",1827372446))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("46",717780562))
      elseif kind == (decode_string_v1("c567ed2b5451",89679147)) then
        if as_key then return (decode_string_v1("a9",641415456)) .. tostring(obj) .. (decode_string_v1("39",1778541685)) end
        return tostring(obj)
      elseif kind == (decode_string_v1("8dae5b42e551d9",597690859)) then
        return tostring(obj)
      elseif kind == (decode_string_v1("454aaa",1259140854)) then
        return (decode_string_v1("b552775c",83428250))
      else
        error((decode_string_v1("ded65ac71ff587e3d7b1eb9be9ecd270a5931d60",1824313270)) .. kind .. (decode_string_v1("49",302028236)))
      end
      return table.concat(s)
    end
    
    json.null = {}  -- This is a one-off table to represent the null value.
    
    function json.parse(str, pos, end_delim)
      pos = pos or 1
      if pos > #str then error((decode_string_v1("b5ceac55102557f049795cc3a0d4573ed3062b6ba3adfddd74d5a4a717a2f267",1909863145))) end
      local pos = pos + #str:match((decode_string_v1("bd1df265",1309758)), pos)  -- Skip whitespace.
      local first = str:sub(pos, pos)
      if first == (decode_string_v1("2b",176470586)) then  -- Parse an object.
        local obj, key, delim_found = {}, true, true
        pos = pos + 1
        while true do
          key, pos = json.parse(str, pos, (decode_string_v1("9b",1730128388)))
          if key == nil then return obj, pos end
          if not delim_found then error((decode_string_v1("b45e6e34965ae8a99bc8135d2b7538c3aff8343954c1d34deaa98d130b22076aa290b1",1243702657))) end
          pos = skip_delim(str, pos, (decode_string_v1("a2",532498256)), true)  -- true -> error if missing.
          obj[key], pos = json.parse(str, pos)
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("1b",1110243803)))
        end
      elseif first == (decode_string_v1("27",1505290281)) then  -- Parse an array.
        local arr, val, delim_found = {}, true, true
        pos = pos + 1
        while true do
          val, pos = json.parse(str, pos, (decode_string_v1("ae",889994975)))
          if val == nil then return arr, pos end
          if not delim_found then error((decode_string_v1("33aea02cb5bd8c62bba7815eb64f2c65273a2e1e6ee204ff3ad38ca07c200d4022a7",1614028642))) end
          arr[#arr + 1] = val
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("3c",1476398107)))
        end
      elseif first == (decode_string_v1("f6",1715774595)) then  -- Parse a string.
        return parse_str_val(str, pos + 1)
      elseif first == (decode_string_v1("1c",1949069910)) or first:match((decode_string_v1("529a",3300757))) then  -- Parse a number.
        return parse_num_val(str, pos)
      elseif first == end_delim then  -- End of an object or array.
        return nil, pos + 1
      else  -- Parse true, false, or null.
        local literals = {[(decode_string_v1("3b4f43a4",958440382))] = true, [(decode_string_v1("5dade2ece9",923884045))] = false, [(decode_string_v1("f1e30b12",939853573))] = json.null}
        for lit_str, lit_val in pairs(literals) do
          local lit_end = pos + #lit_str - 1
          if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
        end
        local pos_info_str = (decode_string_v1("878eff095fc2f4995b",927676088)) .. pos .. (decode_string_v1("c9b1",1290601928)) .. str:sub(pos, pos + 10)
        error((decode_string_v1("a38f1859dadbad74cf21f290e226b82d153bde5507470b88bd2ee15d412589be",553117389)) .. pos_info_str)
      end
    end

    getgenv()[(decode_string_v1("3d87b6f67d98b3eb832445fd",546739858))] = json
end
            -----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

local ErrorHandlerTing = function(err)
    return warn(err)
end

getgenv().ESP_TESTING = false
do
    local Camera = workspace:WaitForChild((decode_string_v1("026db5bf156d",640582191)), 5)
    local Players = game[(decode_string_v1("32e3b6ee535c69e05ddb",1062532655))](game, (decode_string_v1("879c6d6c846a08",1802952016)))
    local GUIService = game[(decode_string_v1("e3acbbfbcaa6162a946b",1521093854))](game, (decode_string_v1("5c33d828cae6479300ee",767424564)))
    local LPlayer = Players[(decode_string_v1("6bb0946ed3e7070737b7b7",357679037))]
    local Mouse = LPlayer:GetMouse()
    
    getgenv()[(decode_string_v1("047a6acff4f937c5e91f",213563886))] = type(getgenv()[(decode_string_v1("9ab6d41fd1273bed6dd4",359785836))]) == (decode_string_v1("5d56ad3cc9f7de",766003921)) and getgenv()[(decode_string_v1("bdcade8abdc3995c5494",479836328))] or false;
    getgenv()[(decode_string_v1("071f1c26a3f018973532b3",1651825240))] = type(getgenv()[(decode_string_v1("70e615163a113a3b373326",1234294648))]) == (decode_string_v1("d460380840",1460151653)) and getgenv()[(decode_string_v1("e2ae31c5fee36b4fe1dbd9",1244924474))] or {};
    getgenv()[(decode_string_v1("6ab2d3e31567871fad",1911316210))] = type(getgenv()[(decode_string_v1("0c7ceaea80705f46e1",2114609549))]) == (decode_string_v1("1b95ab1c77",1235814709)) and getgenv()[(decode_string_v1("203170c8cf4f17cade",15174096))] or {};
    getgenv()[(decode_string_v1("d4257d47e908640aa96d2438d4e0",1733489156))] = type(getgenv()[(decode_string_v1("14ab968ed89dca6ac72fba39822d",50918891))]) == (decode_string_v1("03284d2a98",120275891)) and getgenv()[(decode_string_v1("130a78ed3ab3e64730964a21e8cb",908917904))] or {};
    getgenv()[(decode_string_v1("4e8488b192f4ace820b3d3f4e46e44e86e9e4e74d505d1",130729933))] = type(getgenv()[(decode_string_v1("055bf9e938ccfb45da655517ff9bde6dca8c81585330d7",1375158482))]) == (decode_string_v1("8b03b05abf",1782707287)) and getgenv()[(decode_string_v1("287920ffa9946fc9687f7150b1277c2a7c4f431e01a120",2138003581))] or {};

    local PartNames = {
        [292439477] = {Root = (decode_string_v1("2b8cb36236",699385859)), Head = (decode_string_v1("ef8c6342",10933024))},
        [3233893879] = {Root = (decode_string_v1("572689ccb7",562001400)), Head = (decode_string_v1("ef702d39",663824713))}
    }
    
    if PartNames[game.PlaceId] ~= nil then
        getgenv()[(decode_string_v1("f6f7038158962c5a5db3bc7232582962611b3b",87734366))] = type(getgenv()[(decode_string_v1("4e930031604d62911d197d43236de8c874d5cf",1180637419))]) == (decode_string_v1("935b629d94",1830225024)) and getgenv()[(decode_string_v1("f6350837c666cca52f58c71fc27125d6d2ec59",789431616))] or {}

        for _, V in pairs(getgc(true)) do
            local GBPCheck = type(V) == (decode_string_v1("c395a1f97b",4907127)) and rawget(V, (decode_string_v1("d2d8de0a38e9605aab354183",354193986))) and V or nil
            local GetCharCheck = type(V) == (decode_string_v1("133eea80a5",1269268951)) and rawget(V, (decode_string_v1("4cb2799a987986d9bc4eb74b",1978916745))) and V or nil
            local BadBussinessTeamCheck = type(V) == (decode_string_v1("f3c7213e5b",1994688428)) and rawget(V, (decode_string_v1("5ec04f4e5b5450328a744a6b1a",1755893590))) and V or nil

            if GBPCheck then
                getgenv()[(decode_string_v1("0229050bb9ba4c926ad190e02fd424309ac1ea",1950323252))][(decode_string_v1("e4fc61d3957ca83361873c91",202423138))] = getgenv()[(decode_string_v1("8bc0b328b21b880768a134dce93752a11cdb10",475580231))][(decode_string_v1("8345124dd84242e7241a4c72",1529827150))] or GBPCheck.getbodyparts
            end

            if GetCharCheck then
                getgenv()[(decode_string_v1("6cf717b02a744627c73396501f42ee4affcea5",107755193))][(decode_string_v1("7621bed640a725f21c544a98",754286514))] = getgenv()[(decode_string_v1("6ffddce395d4d12c6f80c09087c8aa412b0dfa",1505166720))][(decode_string_v1("301fffb185f731daeced9493",1243736644))] or GetCharCheck
            end

            if BadBussinessTeamCheck then
                getgenv()[(decode_string_v1("60a6bcc27c0b7f23c7c16c0af8f81db6228e42",881051055))][(decode_string_v1("60d2d25959f4cdbe21a18dc62f",2075401256))] = getgenv()[(decode_string_v1("71635cef1a169656e710a42b8e8db6b1c94767",1637859643))][(decode_string_v1("e69a130b3f425818c679a34fb6",1956707600))] or BadBussinessTeamCheck
            end
        end
    end

    local function GetPlrTeam(Plr)
        if typeof(Plr) == (decode_string_v1("2cda1a7441cc149c",1295055962)) then
            if game.PlaceId == 3233893879 then
                if getgenv()[(decode_string_v1("367cc2e648cb63715e5cca53c3c0885d490553",1233397927))][(decode_string_v1("41edafb1c8450f853561040c52",1404716519))] ~= nil then
                    return getgenv()[(decode_string_v1("3ab834220ff00ee61c1c7d3382334a24ce1851",1254926122))][(decode_string_v1("41d9c01c0ee5cf441971114026",1385128944))]:GetPlayerTeam(Plr)
                else
                    return Plr.Team
                end
            else
                return Plr.Team
            end
        end
    end

    local function GetChar_Ez(Plr)
        if typeof(Plr) == (decode_string_v1("3e3e5365d26c265d",76607468)) then
            if not PartNames[game.PlaceId] then
                if Plr:IsA((decode_string_v1("dee7a9845a",1105297572))) then
                    return Plr
                else
                    return Plr.Character
                end
            elseif game.PlaceId == 3233893879 then
                -- Bad business moment

                if type(getgenv()[(decode_string_v1("6fa239a82cb0130c7d05d11cf69f1d5d3f02c3",504011906))][(decode_string_v1("57af88d2a1ff7e7fcc3aba04",536425899))]) == (decode_string_v1("f361b318ec",665919696)) then
                    local PlrParts = getgenv()[(decode_string_v1("681ec389642f0aa5f6b962177702ed14e7eba1",389647599))][(decode_string_v1("9426fdd18f6af19e53e8181e",2140515180))]:GetCharacter(Plr)
                    if PlrParts ~= nil then
                        return PlrParts.Body
                    end
                end
            elseif game.PlaceId == 292439477 then
                -- Phantom Forces moment

                if type(getgenv()[(decode_string_v1("787d1431eabfac3e36e44afcc4a3140b2a8821",91310728))][(decode_string_v1("de6a8c3a81bac2c61c786201",1259110708))]) == (decode_string_v1("2910f4c172475d34",405913864)) then
                    local PlrParts = getgenv()[(decode_string_v1("befd3f7fbe6bfbc5670fb7d06df06f5a0da8e2",68332950))][(decode_string_v1("5af141233f403923324722bb",679422316))](Plr)
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

    getgenv()[(decode_string_v1("5cb3fe750ce1b5bb79",1782913156))].SETTINGS = {
        BOXES_ENABLED = false,
        TRACERS_ENABLED = false,
        TEAM_CHECK = false,
        AIMBOT_ENABLED = false,
        AIMBOT_TEAM_CHECK_ENABLED = false,
        ESP_COLOR = Color3.fromRGB(255, 255, 255)
    }

    getgenv()[(decode_string_v1("1eeae64f9e55d5f609",386948114))].Connect = function()
        getgenv()[(decode_string_v1("be8d1ec8604f18f999",938192246))].UnLoad = function()
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("57305d8113b3f253a5bec9bedb1ad146daf28a8f14b3f1",555786900))]) do
                pcall(function()
                    CachedItem:Remove()
                    getgenv()[(decode_string_v1("02cda903bc796e4c146b2f5962a37735a6a6ed31430cf1",1923537761))][CacheName] = nil
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("f91ed1678fab66d562a673",1534447409))]) do
                if tostring(CacheName):find((decode_string_v1("186f8bea87",413169367))) then
                    getgenv()[(decode_string_v1("282d213641ccca57e89cd9",1857837694))][CacheName] = nil
                end
            end
        end

        getgenv()[(decode_string_v1("b87f4e3af273ada1c4",843435327))].UnLoadType = function(TypeString)
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("b0e26d9a9634c67b7d28d250a1e16ea45e48b30cdf82ed",997946763))]) do
                pcall(function()
                    if tostring(CacheName):find(tostring(TypeString)) then
                        CachedItem:Remove()
                        getgenv()[(decode_string_v1("572dac22d6ce41f2a829245cf9a641662ff6d080e1d2dc",186244007))][CacheName] = nil
                    end
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("0ed47c22cedbe06cca82e3",2133091326))]) do
                if tostring(CacheName):find(tostring(TypeString)) then
                    getgenv()[(decode_string_v1("24843eb02c921c3e65a6d5",440328109))][CacheName] = nil
                end
            end
        end
        
        getgenv()[(decode_string_v1("06bf835d9bef231293",662941720))].UnLoad()

        getgenv()[(decode_string_v1("066d80d0e011509018",220982631))].UpdateColor = function(Color)
            getgenv()[(decode_string_v1("2ee904a07fe609af36",606389530))].SETTINGS.ESP_COLOR = typeof(Color) == (decode_string_v1("cab9bf1a9cf1",920170077)) and Color or Color3.fromRGB(255, 255, 255)
        end

        getgenv()[(decode_string_v1("20a88e86d51dcb86db",1232387634))].SetTeamCheck = function(Bool)
            getgenv()[(decode_string_v1("963addad34c57257bd",999171332))].SETTINGS.TEAM_CHECK = type(Bool) == (decode_string_v1("7d9d3bf0bc1df3",1960083683)) and Bool or false
        end
        
        getgenv()[(decode_string_v1("f22a06edc46b0f22ba",414259571))].SetBoxVisibility = function(Bool)
            getgenv()[(decode_string_v1("bbe440420fdd1fb650",1563012377))].SETTINGS.BOXES_ENABLED = type(Bool) == (decode_string_v1("fdc89c6f126da3",1110913290)) and Bool or false
        end

        getgenv()[(decode_string_v1("1ce0cfeba49891679b",1041902364))].SetTracersVisibility = function(Bool)
            getgenv()[(decode_string_v1("369903b776f3b30ad7",28511103))].SETTINGS.TRACERS_ENABLED = type(Bool) == (decode_string_v1("5d3a1711b87565",774857681)) and Bool or false
        end

        getgenv()[(decode_string_v1("01fe2daa9d6bd6f7d6",1685054875))].LoadTracers = function(Plr)
            if getgenv()[(decode_string_v1("2805db9e5bf5d423b83fb1",204852278))][Plr.Name .. (decode_string_v1("441d69f3d8ab33d12f5aaac5",332413081))] == nil then
                if getgenv()[(decode_string_v1("5ebb11a6c686f10ceaca1108f120d21c8ebfd462ee7774",281190160))][Plr.Name .. (decode_string_v1("86024627798bdb50e3161aa7",2119844780))] == nil then
                    getgenv()[(decode_string_v1("0eba220328ac2cc2faf96ed5145d3310004b4ddcb06d4c",723800678))][Plr.Name .. (decode_string_v1("a93afb7cca0a284237c7b0ab",1388287444))] = Drawing.new((decode_string_v1("6b79d2f2",1896338338)))
                    getgenv()[(decode_string_v1("71db15ede39012bfdaeaf13d35ef77466ab0f044c2bf9e",1654752674))][Plr.Name .. (decode_string_v1("3e607a72cb83a1669091fc67",1928563023))].Visible = false
                    getgenv()[(decode_string_v1("44275de02da59bb799538913e26b4a8bde7a47c80c5b5a",915040689))][Plr.Name .. (decode_string_v1("9b9fa1e2c7eeb0ea49999235",507433266))].Thickness = 2;
                    getgenv()[(decode_string_v1("2d43b1a618684adb245a5f0f8593bea7dd99eaff4887e3",521692688))][Plr.Name .. (decode_string_v1("c8492354f7e0d434367b43b5",2067626384))].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                end

                getgenv()[(decode_string_v1("c36aa48e7ff714c070e5cf",1732832142))][Plr.Name .. (decode_string_v1("5cf5a033a6de3d83cf44e483",1168051484))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("d513dfaaafec2646372cfde944921f759bc2b4d6537cfd",573497662))][Plr.Name .. (decode_string_v1("32751104f627ab7506c6aa97",2003952042))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("235e24f0d1",88551167)) and PartNames[game.PlaceId].Root or (decode_string_v1("002561eb5cf7a045d8601593c59586d9",1704132318)))
                            local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("5324c7d685",2135376634)) and PartNames[game.PlaceId].Head or (decode_string_v1("df2ba083",2117385463)))
                            
                            if RootCheck and Plrhead then
                                if getgenv()[(decode_string_v1("96ab7e8e626d5f2b2beef89570507c9f9034f921e403e3",1009763386))][Plr.Name .. (decode_string_v1("2a11bfaa98a50ff265172e8a",68179321))] then
                                    local Line = getgenv()[(decode_string_v1("4e17736ebf0deb3aad8e8094360358c9e693348ec45065",1169654755))][Plr.Name .. (decode_string_v1("948d0fb27b9b4962bc15b793",655563847))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                                    local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                                    Line.To = Vector2.new(LinePos.X, LinePos.Y)
                                    Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                                    Line.Color = typeof(getgenv()[(decode_string_v1("0c7be33a253584bb0d",2112867734))].SETTINGS.ESP_COLOR) == (decode_string_v1("2ae94eee2aee",2101346144)) and getgenv()[(decode_string_v1("60251ecf03ff5d8e46",262152765))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("ff52fde0dd96b70089",1494258606))].SETTINGS.TEAM_CHECK then
                                        Line.Visible = false
                                    else
                                        Line.Visible = getgenv()[(decode_string_v1("944dbcae1ddf26a3e4",1313776112))].SETTINGS.TRACERS_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("2d9e39cbeba2bbabd263f141b8e5fc66f5db762efa64fd",171337822))][Plr.Name .. (decode_string_v1("32d13ae532b4dad405bbfde0",2035578016))] then
                                getgenv()[(decode_string_v1("05d78877ea6db54dd359aea4199df435147ee3d20b7843",156067545))][Plr.Name .. (decode_string_v1("10ee16375c48be94cfad88aa",749155413))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("ce5e41fb60b7715b8732a2",387486844))][Plr.Name .. (decode_string_v1("20e8a4aba410700aa7ee3eef",284085546))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("2accd12bcc6e5d17e0e933e215aa28191fa73ef737d330",2103228101))][Plr.Name .. (decode_string_v1("e847596b41687a4bc4593b92",912638824))] then
                            getgenv()[(decode_string_v1("5a044ef410112fbec965808207c659e4b348a88c5ee407",1774218658))][Plr.Name .. (decode_string_v1("c89434d46506a27097bd7699",2070176013))]:Remove()
                            getgenv()[(decode_string_v1("ccf86459e15e2dfa78dc752deec7d32dcbbb6d129a811e",741967331))][Plr.Name .. (decode_string_v1("f16c47c82be66d460ac0a94a",1541832257))] = nil
                        end
                    end
                end
            end
        end
--GetPlayerTeam
        getgenv()[(decode_string_v1("e2dbfd535b7755943b",907565860))].LoadBox = function(Plr)
            if getgenv()[(decode_string_v1("7258f30e374b9f717fb27c",693568196))][Plr.Name .. (decode_string_v1("3e5909c2fb2e1254e080",1933277928))] == nil then
                if getgenv()[(decode_string_v1("caf3bacee37464a4c5553ed86e23a6fa546ff7d2f2d03b",928042669))][Plr.Name .. (decode_string_v1("2f559dafbd4055caeb76",1610715006))] == nil then
                    getgenv()[(decode_string_v1("d81b84c6c676c3327174ffc296dea305314528c10191b2",1798120062))][Plr.Name .. (decode_string_v1("13db45a61bc4323e4cf5",5643401))] = Drawing.new((decode_string_v1("aa150074aef0",1040796822)));
                    getgenv()[(decode_string_v1("b45e62c1160132df09d825cc20eaea4acc25b441e4c691",1252324448))][Plr.Name .. (decode_string_v1("2f86fa66fcd7c2ec76d3",538867200))].Thickness = 2;
                    getgenv()[(decode_string_v1("8b8941ad916c447a2ec763ba16c46c3aeb7d2305e465a7",1453997257))][Plr.Name .. (decode_string_v1("cc80c9b5771bdaade454",117355150))].Filled = false;
                    getgenv()[(decode_string_v1("e618de41dc281d454cb698ac949416d5604e0c40828657",372123740))][Plr.Name .. (decode_string_v1("8a2dd9827ebb01d2ef0c",1287629924))].Visible = false;
                end

                getgenv()[(decode_string_v1("2b3a4e9b245506e3672f0d",520398791))][Plr.Name .. (decode_string_v1("7eceac2b7b54870a43ec",1098101944))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("9c550becc6aefb72154236b3cc960298e27078f6a0c52c",852673732))][Plr.Name .. (decode_string_v1("5edafb3052aec193fbc7",875344791))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("e4e1152a54",1380608537)) and PartNames[game.PlaceId].Root or (decode_string_v1("0f58fdbac9c0bfdab4393ecd9dae713c",245915043)))
                            
                            if RootCheck then
                                if getgenv()[(decode_string_v1("c856cbe0fcb4f61fb18a8f7b350ecd33e212c96c42a91f",945792833))][Plr.Name .. (decode_string_v1("2ac955c76b4c77a5daf0",1848916573))] then
                                    local Inset = GUIService:GetGuiInset();
                                    local Box = getgenv()[(decode_string_v1("5ef2ddd4a5280319e448f01f6e70c82c2b69e6d6a51b8f",31221247))][Plr.Name .. (decode_string_v1("baca379eb4b7a60c2fc4",736021563))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                                    Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                                    Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                                    Box.Color = typeof(getgenv()[(decode_string_v1("ad214dab9d5ad37342",159719506))].SETTINGS.ESP_COLOR) == (decode_string_v1("71580ec50f6c",1663966878)) and getgenv()[(decode_string_v1("f0dd1c55eaad481ad0",1126769343))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("668b3461cff3b7f151",883522398))].SETTINGS.TEAM_CHECK then
                                        Box.Visible = false
                                    else
                                        Box.Visible = getgenv()[(decode_string_v1("60d82eeea5b03bacc4",781814253))].SETTINGS.BOXES_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("12f24b1bf3c40f41d03712848fba0d67ffa9740e182cbc",1204717223))][Plr.Name .. (decode_string_v1("3e6ab52a3676712c454c",214954719))] then
                                getgenv()[(decode_string_v1("2d169e6d6b8357ad0f2cdc3a3a49b1dac2fc2edfaf04a0",1576358969))][Plr.Name .. (decode_string_v1("daf18a093aaadc01256d",950659559))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("bdb6cbe0c9eee678932ae1",478836117))][Plr.Name .. (decode_string_v1("20eea20850dab35529cb",855283031))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("1834b7a5e8fa4ab6fae82b1210d382ab978b33b91da4cb",1044191833))][Plr.Name .. (decode_string_v1("308a4e711f486528f4e9",973766004))] then
                            getgenv()[(decode_string_v1("7876c68ecd1f04b68e1dbdb26f5df5647dfde2fa86cc2c",827303800))][Plr.Name .. (decode_string_v1("8c4180dc20a4182e0814",601349130))]:Remove()
                            getgenv()[(decode_string_v1("423652eee01d02c3e0ad5968874cb7a6e539abd8673690",1093978322))][Plr.Name .. (decode_string_v1("004352cf3a2de4eeeb1c",636174422))] = nil
                        end
                    end
                end
            end
        end

        getgenv()[(decode_string_v1("01fdc8eeffc04a377f",1673221098))].LoadFov = function()
        end

        if getgenv().ESP_TESTING == true then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= LPlayer then
                    getgenv()[(decode_string_v1("0cfaeb5d3c439062e0",2120708679))].LoadBox(Plr)
                    getgenv()[(decode_string_v1("20832bc63098269b53",1227609758))].LoadTracers(Plr)
                end
            end
        end

        if getgenv()[(decode_string_v1("508b551f2806529efb",1340166766))].RemovedAndAdded == nil then
            getgenv()[(decode_string_v1("c5206e2f6f703c2885",1617114120))].RemovedAndAdded = true

            Players.PlayerAdded:Connect(function(Plr)
                if getgenv()[(decode_string_v1("6007cb879791aeb384",792145036))].SETTINGS.BOXES_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("84e6283fb810dee37f",976794336))].LoadBox(Plr)
                end

                if getgenv()[(decode_string_v1("1e4e9920e6492b1a5b",1162902492))].SETTINGS.TRACERS_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("1ce2b8e96cde27ffe9",1033677078))].LoadTracers(Plr)
                end
            end)
        end
    end
    
    getgenv()[(decode_string_v1("23c7a7969710973b9a",1390528958))].Connect()

    getgenv()[(decode_string_v1("2604d05e123dd8c50e",1335163174))].Aimbot = function()
        local Proxy = newproxy(true);
        local MetaTable = getmetatable(Proxy);

        local function AimAtPlayer(Camera, Mouse, target)
            local TARGETPOS = Camera:WorldToScreenPoint(target.Position)
            local GOTO = Vector2.new((TARGETPOS.X - Mouse.X) * .15, (TARGETPOS.Y - Mouse.Y) * .15)
            mousemoverel(GOTO.X, GOTO.Y) -- Quick math for the aim function lmao
        end

        getgenv()[(decode_string_v1("26ae92ab2361d201aab976",1211598165))].AimBot = nil

        MetaTable.Start = function()
            getgenv()[(decode_string_v1("51075aac497db67ea7d714",1667508948))].AimBot = nil
            if getgenv()[(decode_string_v1("0e45ce43afd75a9e6f7ba6",2144963036))].AimBot == nil then

                getgenv()[(decode_string_v1("215563a8b369bb23729eaf",451015712))].AimBot = function()
                    local LastDistance = 999999
                    for _, FPlayer in ipairs(Players:GetPlayers()) do
                        if FPlayer ~= LPlayer then

                            local TeamCheck = tostring(GetPlrTeam(FPlayer)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("f0275538cb88afb8e1",372226340))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
                            if not TeamCheck then
                                local FChar = GetChar_Ez(FPlayer)

                                if FChar then
                                    local HeadCheck = FChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("2cc78e4c88",1613189783)) and PartNames[game.PlaceId].Head or (decode_string_v1("4f840de7",2066142795)))

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
            getgenv()[(decode_string_v1("820a0304b1e6e276891efd",1027212419))].AimBot = nil
        end

        MetaTable.TeamCheck = function(Bool)
            getgenv()[(decode_string_v1("187538e40193a98a6b",355808169))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
        end

        return MetaTable
    end

    if getgenv().ESP_TESTING == true then
        getgenv()[(decode_string_v1("30b3abcb2624999a34",2017548759))].SetTracersVisibility(true)
        getgenv()[(decode_string_v1("cc82cd557ab70f4f51",1152624167))].SetBoxVisibility(true)
        getgenv()[(decode_string_v1("0c162b01e667dd6a49",2114158946))].SetTeamCheck(false)
        getgenv()[(decode_string_v1("58406eb4f4b067a53e",620635201))].UpdateColor(Color3.fromRGB(79, 22, 201))
    end

    if not getgenv()[(decode_string_v1("105ffbc86be6021b72d4",1014143760))] then
        getgenv()[(decode_string_v1("211d25308fd2aabb6c93",450363043))] = true
        local RunService = game[(decode_string_v1("18cf987c3244ab7f7cd8",1076665248))](game, (decode_string_v1("a56fb3ab5ec313f8d47e",2045398837)))
        RunService.Heartbeat:Connect(function()
            for _, Function in pairs(getgenv()[(decode_string_v1("8a3c6570ad1eb2cbdbec98",746376036))]) do
                if type(Function) == (decode_string_v1("51d0e065da696c57",2051625267)) then
                    xpcall(Function, ErrorHandlerTing)
                end
            end
        end)
    end
end
            --Timber. lua_compile_spot
            --PhantomForces. lua_compile_spot
            --BloxBurg. lua_compile_spot
            local VRService = game:GetService((decode_string_v1("06e11b0cbb982306b6",150950825)))

do
    local function WorldZeroInit()
        local MarketService = game:GetService((decode_string_v1("9bec10c2cae7eb4f0b02f31f9d753501dc96",462115806)))
        local VRService = game:GetService((decode_string_v1("4502338185740ca0a86dc3",75294702)))
    
        local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
        if isSuccessful then
            if info.Creator.Name == (decode_string_v1("646e954117d6d5c7deb9ec9e97",945183642)) then
                --

                getgenv()[(decode_string_v1("8c82a82b91f939bd363fca596164d768fe2a7edc63",1266339176))] = false
            
                --------------------------------------------------------------------------------------------
        
                getgenv().UpdateLoop = type(getgenv().UpdateLoop) == (decode_string_v1("814d68d129033f",2028224339)) and getgenv().UpdateLoop or false;
                getgenv().UpdateCache = type(getgenv().UpdateCache) == (decode_string_v1("fb84f56289",1847784882)) and getgenv().UpdateCache or {};
                getgenv().MOB_ESP_OBJECTS = type(getgenv().MOB_ESP_OBJECTS) == (decode_string_v1("cccc95eb7d",1441735997)) and getgenv().MOB_ESP_OBJECTS or {};
                getgenv().MOB_ESP_CONNECTIONS = type(getgenv().MOB_ESP_CONNECTIONS) == (decode_string_v1("fb2b3ddbec",1864702741)) and getgenv().MOB_ESP_CONNECTIONS or {};
        
                local GameConfigFile = GetGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("99abacd691",1185432505)))
                Settings_Name = (decode_string_v1("744f1ea0659a62d627046c59a3f7cd75166af7c65b41d96cc5e932",348913141))

                getgenv()[Settings_Name] = {
                    AutoAttackMobs = GameConfigFile.AutoAttackMobs or false,
                    AutoPickupCoins = GameConfigFile.AutoPickupCoins or false,
                    AntiIdle = GameConfigFile.AntiIdle or false,
                    MobESP = GameConfigFile.MobESP or false,
                    MobESPRenderDistance = GameConfigFile.MobESPRenderDistance or 250
                }
                
                Window = UILibrary.new((decode_string_v1("6016b221bc3dbc6ae5f5da6a14870a29dc80eb376160a2",680747830)), 5013109572)
    
                local TweenService = game:GetService((decode_string_v1("3c31cb0ca4f1f8dad7767641",1357713575)))
                local Player = game.Players.LocalPlayer
                local Character = nil
                local PlayerPosition = nil
                local PlayerLookVector = nil
                local RootPart = nil
                local ItemTable = nil
                
                local ActionsModule = require(game.ReplicatedStorage.Client.Actions);
                local CombatModule = require(game.ReplicatedStorage.Shared.Combat);
                local AnimationModule = require(game.ReplicatedStorage.Client.Animations);
        
                local MobsFolder = workspace:FindFirstChild((decode_string_v1("35e9d3dd",1451134472)))
                --[===[local PlayerWindow = Window:addPage("Player", 5012544693)]===]
                local AutoFarmWindow = Window:addPage((decode_string_v1("82376a0f72ecee2042",599030716)), 5012544693)
                local VisualsWindow = Window:addPage((decode_string_v1("69a33cc24321b3",940506371)), 5012544693)
                local TeleportsWindow = Window:addPage((decode_string_v1("0cb2f154856c37a981",176237635)), 5012544693)
                local AutoFarmSection = AutoFarmWindow:addSection((decode_string_v1("f1799a020498b544",1137755127)), 5012544693)
                local VisualsSection = VisualsWindow:addSection((decode_string_v1("7d58613ec8504d20",383207849)), 5012544693)

                local Camera = workspace.Camera
                local GUIService = game[(decode_string_v1("be53eaf0c1a1a4662659",418518165))](game, (decode_string_v1("a8077f214c3fd876f951",1195437047)))
                
                local function GetNearMobs()

                    local Mobs = {}
                    local HitBoxSize = Vector3.new(25, 15, 25)

                    if RootPart then

                        local MobParams = OverlapParams.new()
                        MobParams.FilterDescendantsInstances = MobsFolder:GetChildren()
                        MobParams.CollisionGroup = (decode_string_v1("3bd503dd322273",1927223144))
                        MobParams.FilterType = Enum.RaycastFilterType.Whitelist

                        local FoundInBox = workspace:GetPartBoundsInBox(RootPart.CFrame, HitBoxSize, MobParams)

                        if FoundInBox ~= nil then
                            for _, Part in ipairs(FoundInBox) do
                                if Part:IsA((decode_string_v1("1d901ddd394dad2e",1973981452))) then
                                    if Part.Name == (decode_string_v1("0767b2255dc7fb06",1345701876)) then
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
                                Box = Drawing.new((decode_string_v1("923b3205ff09",1945307506))),
                                ESPText = Drawing.new((decode_string_v1("13811fb6",443403363)))
                            }
    
                            local Box =  getgenv().MOB_ESP_OBJECTS[Mob].Box
                            local ESPText =  getgenv().MOB_ESP_OBJECTS[Mob].ESPText
    
                            ESPText.Text = (decode_string_v1("",581688939))
                            ESPText.Color = Color3.fromRGB(255, 255, 255);
                            ESPText.Size = 20.0
                            ESPText.Visible = false
                            ESPText.Outline = true
                            ESPText.Center = true
    
                            Box.Thickness = 2;
                            Box.Filled = false;
                            Box.Visible = false;
                            
                            getgenv().UpdateCache[Mob] = function()
                                local Collider = Mob:FindFirstChild((decode_string_v1("72b754aa22fe0c16",982790976)))

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
    
                                    ESPText.Text = string.format((decode_string_v1("9a3e6258887deb439f9fe403facc287d43cd1029df284f90",121828491)), Mob.Name, tostring( math.floor( (MobPos - PlayerPosition).Magnitude ) ) )
    
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
    
                                            local CreatureHealthFolder = Mob:FindFirstChild((decode_string_v1("1f1016d9fbb8c1783726df0f0c2f658f",1951776566)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("7f5f3095be3e",99622672)))
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
                            if typeof(V) == (decode_string_v1("b99e3b2b8a84e00778052962ad0697fcc48db9",1206590879)) then
                                V:Disconnect()
                                getgenv().MOB_ESP_CONNECTIONS[I] = nil
                            end
                        end
                    end

                    ESP_META.StartConnections = function()
                        ESP_META.EndConnections()

                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("d7c3498b29e06ddc",162197527))] = MobsFolder.ChildAdded:Connect(function(Mob)
                            ESP_META.AddEsp(Mob)
                        end)
        
                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("1e000631334010a8c6ed",658456588))] = MobsFolder.ChildRemoved:Connect(function(Mob)
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
                
                getgenv()[(decode_string_v1("664b34c40b52bee7ab75b2",86494633))][(decode_string_v1("6860a7918962f09b1084304816e8459f",387221013))] = function()
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

                getgenv().UpdateCache[(decode_string_v1("34377e2e77da0bd346ca",1092688891))] = function()
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
                
                VisualsSection:addSlider((decode_string_v1("88958419f197e96d38479c04c8224beb7ac65a",725836451)), getgenv()[Settings_Name].MobESPRenderDistance, 250, 10000, function(NewValue)
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

                VisualsSection:addToggle((decode_string_v1("c0161d5a6e7be3",618376766)), getgenv()[Settings_Name].MobESP, function(Bool)
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

                AutoFarmSection:addToggle((decode_string_v1("5a4c4be627e4ad1a3bf9a69c61a0feb1d2578a87f6ac6855cbd0590b69b58fce06fc26",882989244)), getgenv()[Settings_Name].AutoAttackMobs, function(Bool)
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
                                            local CreatureHealthFolder = Creature:FindFirstChild((decode_string_v1("a055b7734ab35c92ed1b4cf13d16a4ce",1602007841)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("700ff14843d6",1656132597)))
                                                
                                                if CreatureHealth then
                                                    
                                                    if CreatureHealth.Value > 0 then
                                                        local CreaturePos = Creature:GetPivot();
    
                                                        --local v14 = AnimationModule:GetAnims().Defender["Attack" .. tostring(AttackIndex)];
                                                        if not ActionsModule:IsBusy() then
                                                            TotalHits = TotalHits + 1
    
                                                            --ActionsModule:FireSkillUsedSignal("Primary");
                                                            --ActionsModule:FireCooldown("Primary");
                                                            ActionsModule:SetBusy((decode_string_v1("6285fc5baa",251379897)));
                                                        
                                                            if Character then
                                                                PlayerPosition = Character.PrimaryPart.Position
                                                                PlayerLookVector = Character.PrimaryPart.CFrame.LookVector
                                                                RootPart = Character.PrimaryPart
                                                            end
    
                                                            RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
                                                            Camera.CFrame = CFrame.new(Camera.CFrame.p, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
    
                                                            CombatModule:AttackWithSkill((decode_string_v1("cbbbb3e4c4e1eafc",959529214)) .. tostring(AttackIndex), PlayerPosition, CFrame.new(PlayerPosition, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z)).LookVector * 1.1 );
                                                            
                                                            AttackIndex = math.clamp(AttackIndex + 1, 1, 6)
    
                                                            if AttackIndex > 5 then
                                                                AttackIndex = 1
                                                            end

                                                            CreatureIndex = CreatureIndex + 1
    
                                                            task.wait(0.01)
                                                            ActionsModule:ReleaseBusy((decode_string_v1("ce2a6c426d",1067792567)));
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
                    if A:IsA((decode_string_v1("8601e5a2e1",1801585652))) then
                        if tostring(A) == (decode_string_v1("a9b5cd02ca",752802066)) then
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
    
                AutoFarmSection:addToggle((decode_string_v1("dc543c4492bf7880",1116840240)), getgenv()[Settings_Name].AntiIdle, function(Bool)
                    getgenv()[Settings_Name].AntiIdle = Bool
                end)
    
                AutoFarmSection:addToggle((decode_string_v1("b2e2d542b551ac653c63c56e883f5b4818030604361b513ca2cf",1160518375)), getgenv()[Settings_Name].AutoPickupCoins, function(Bool)
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
        
                if not getgenv()[(decode_string_v1("07cfa47804b94edb1194",181308500))] then
                    getgenv()[(decode_string_v1("56f18e17fbbcf39f3b74",1331116569))] = true
                    RunService.Heartbeat:Connect(function()
                        for _, Function in pairs(getgenv()[(decode_string_v1("0e5300fb2e41e2d9ed1374",240634396))]) do
                            if type(Function) == (decode_string_v1("9a8660b2d1439d68",1480757508)) then
                                pcall(Function)
                            end
                        end
                    end)
                end
        
                print((decode_string_v1("5a509f40a745f599820e3c6df64269b884df8d9845",411238419)))
                --
            end
        end    
    end
    
    WorldZeroInit()

    local _Players = game:GetService((decode_string_v1("675929d9962703",65029313)))
    local _Player = _Players.LocalPlayer
    
    local queue_on_teleport = type(syn) == (decode_string_v1("7b7fc7c78c",278286518)) and syn.queue_on_teleport or queue_on_teleport
    
    local RejoinCode = (decode_string_v1("78ad8020431a1b11e56859f73c543db891f226f99731bbb84d18688c0d38263eef7b083e9842e8837877f36d4b87b5f377e65459458bb7d3fa26cc59f0616cc262ce7194840a0c0b68b4af8ad427dde31f5b92b4861b033c3ba66e89a4d88b32aa249687789e4f6e8c425e02082635f89091276decae057b45f418506783c8c65bf736d1e589340943125c590cc3afd918465f67c7822d86a195ad20c9e9095fab2839bd78fa20c4321e55736d9f2b5819802a98bce5edee1b040e046c167aa58df89d536eb1dd3bdf19424073968c3a3c433619bad9983f407fdf316154c0f89647c539dfce3b65a77f16928d05d8ad695df94017f726cdf69d38830ac10f38abab40038b11b21640bdee2347a210c9b361dfcb8d0e7b398c5761a4049165ae2c2ee7ac26642432c1a52cb6636677781ca382d6656037ac62977d3e87d96109c4c75430feb13da3d041e4cfbe29c914b1108ffe1a79ee0b0d7e082f5997f308f59d9f563659b1157a08dbbb57fe51550e93b4cebffb436a008b96035bbd6339dc3c1daa0d9de921189e891fe9e5179f0f750f851a443f0ee5d2084b7c83398aa142045ec052b0fda0d780a1a3f5f529656f478901405c4ddffc6c63438aa58cfbc0525b1cd6361d1922a23599bdedb64d1bff09a43c63655ae68d2d9e7a94af108f41d29752022580e902043dd351e6239b350b13405eb7463a29f02114f02ec5db5a5420b69f83310f2ec62949296186fb32bd4a8873b1037ad38118955acc7e0208132124611886c62cabab14b53901a18939b26401f60aded8f7b4516dd99dcdd283c7d0f7fe9cf3095c8c40b4759308e9628ca7d916cc34ad60673918ecbb50485b675f09d1ac99c5da564ae021206ace",18132170))

    if not isfile((decode_string_v1("d6e06448634098b61ecc03cafa6668b9800862",1208406889))) then
        writefile((decode_string_v1("d055a0e2d3ba63ac28afa5baf9704b917a0637",797953208)), tostring(RejoinCode))
    end
    
    queue_on_teleport((decode_string_v1("374ab05a13489b4d52018d594e8c18b8297008d7ea2b0c247f4df707805a71b177438be08585de8d618e23e2cc0082745ebc6cb3c145dce6d038a4826c8f6b3b35d2c2f14cd3d552a393e27672d17ca677255cd2b0e1687ba3053652bd62558cbd67519e83ac1391018947d4",1087625526)))
end
            --DaHood. lua_compile_spot

			if getgenv()[(decode_string_v1("805c58c72acce71403b654fcd9d18f5e5af9cb1f4b",2014203444))] == true then
                do
    local Players = game[(decode_string_v1("84ee66f48e8f532c0422",1827378449))](game, (decode_string_v1("876d005b64c6ff",2131944285)))
    local Player = Players[(decode_string_v1("d3797076943063660047e5",1236302050))]
    local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("6d7e54c7ef14",755031032))], string[(decode_string_v1("4c00b9e8ca",1878673521))], string[(decode_string_v1("5a005e5c",674777256))], string[(decode_string_v1("345e62a25b2d",387812585))], string[(decode_string_v1("b113887288",505582633))]

    Window = UILibrary.new((decode_string_v1("cf1eb424b76e0c98f182434fd6cf6273e3d8031d4cef",1427894733)), 5013109572)

    local VisualsWindow = Window:addPage((decode_string_v1("3aebba1d6d1f38",1654978606)), 5012544693)
    local VisualsSelection = VisualsWindow:addSection((decode_string_v1("fc6ba2b0",365391545)))

    local GameConfigFile = GetGameConfig(FixName(tostring((decode_string_v1("af4a2bfa4667f2b7f3",1497165006)))) .. (decode_string_v1("6946ca88d2",1018914578)))
    Settings_Name = (decode_string_v1("132c562ed5ff8226a811db191d567f9407ce3c54a9f3f375543d",468888632))

    getgenv()[Settings_Name] = {
        Teamcheck = GameConfigFile.Teamcheck or false,
        Boxes = GameConfigFile.Boxes or false,
        Tracers = GameConfigFile.Tracers or false,
        Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
    }

    VisualsSelection:addToggle((decode_string_v1("82aebdbd1356eb79102d496319",2053743061)), getgenv()[Settings_Name].Teamcheck, function(Bool)
        getgenv()[Settings_Name].Teamcheck = Bool
        getgenv()[(decode_string_v1("d70e9625e74cf1c54d",552818742))].SetTeamCheck(Bool)
    end)

    VisualsSelection:addToggle((decode_string_v1("da921e5811b7197e2b",396839148)), getgenv()[Settings_Name].Boxes, function(Bool)
        getgenv()[Settings_Name].Boxes = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("5e1bd32bf121cd8647",2126512223))].LoadBox(Plr)
                end
            end
            getgenv()[(decode_string_v1("2914354b463cab37b7",509204723))].SetBoxVisibility(true)
        else
            getgenv()[(decode_string_v1("d7f8c7e1abffa18e9f",548888126))].UnLoadType((decode_string_v1("30611126b71d1eb36a25",966496742)))
            getgenv()[(decode_string_v1("d7dbc79bd9fdcd6e47",1663088187))].SetBoxVisibility(false)
        end
    end)

    VisualsSelection:addToggle((decode_string_v1("7832ec59a2afd7e6981cdf",1290108066)), getgenv()[Settings_Name].Tracers, function(Bool)
        getgenv()[Settings_Name].Tracers = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("84f3a8abf3e8a4defa",987630389))].LoadTracers(Plr)
                end
            end
            getgenv()[(decode_string_v1("8284f7880166590513",2058610818))].SetTracersVisibility(true)
        else
            getgenv()[(decode_string_v1("ff2f80664fa32b8c24",485577803))].UnLoadType((decode_string_v1("8c919d9792cb38c6ccfd39dc",202788341)))
            getgenv()[(decode_string_v1("88a262d11002da44dd",242140091))].SetTracersVisibility(false)
        end
    end)

    local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color

    getgenv()[(decode_string_v1("74752ec6e0471c80b4",644281772))].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

    VisualsSelection:addColorPicker((decode_string_v1("d74d43cd05886b7490",1645036309)), Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
        local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)

        getgenv()[Settings_Name].Color.R = R
        getgenv()[Settings_Name].Color.G = G
        getgenv()[Settings_Name].Color.B = B

        getgenv()[(decode_string_v1("66ba8eea6675e665a0",883559567))].UpdateColor(Color3.fromRGB(R, G, B))
    end)

    VisualsSelection:addButton((decode_string_v1("135712ed44bc08aec073",1379706204)), function(Bool)
        getgenv()[(decode_string_v1("c57844cca1c494ce3c",1608497927))].UnLoad()
    end)
end
			end

			if Window ~= nil and Settings_Name ~= nil then
				local MarketService = game:GetService((decode_string_v1("2c02fe9a9df4c7d4de601578e6228e0dd1d1",1208684357)))
				SettingsPage = SettingsPage or Window:addPage((decode_string_v1("188609628ba08a08",1162207107)), 5012544693)
				SettingsSection = SettingsSection or SettingsPage:addSection((decode_string_v1("642869514d",1965639608)), 5012544693)
				SettingsSection:addButton((decode_string_v1("c56523b582bc1af0c5ede9",1718783866)), function()
					local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
					if isSuccessful then
						if tostring(info.Creator.Name) == (decode_string_v1("316197820011865c8b420804cc",1405675842)) then
							SaveGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("42df1c62ec",552497017)), getgenv()[Settings_Name])
                        elseif getgenv()[(decode_string_v1("6c4e5efffa0c85522aec3b50e4d84e16ce71358e6e",1781480662))] == true then
							SaveGameConfig(FixName(tostring((decode_string_v1("de408d37a6622a3f44",1792525482)))) .. (decode_string_v1("61e8a5f7be",1973226678)), getgenv()[Settings_Name])
                        else
							SaveGameConfig(FixName(tostring(info.Name)) .. (decode_string_v1("f58e90c649",133505308)), getgenv()[Settings_Name])
						end
					end
				end)
				SettingsSection:addKeybind((decode_string_v1("9cc70a9913f147aab3950e38ccaa",1516306551)), Enum.KeyCode.Home, function()
					Window:toggle()
				end, function()
				end)
			end
		else
			return sendError(serverData, clientData)
		end
	end
end, function(err)
	return warn(err .. (decode_string_v1("35",98829084)) .. debug.traceback())
end)