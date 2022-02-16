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
		getgenv().Key = (decode_string_v1("f00c97db20ddc43ecc17f7284ee8a16d",2108761067));
		getgenv().DiscordWebhook = (decode_string_v1("63710f12",1787939337));
		getgenv().WebhookEnabled = false;
		getgenv().GubVersion = (decode_string_v1("9d49ed",472742411));

		local CLIENT_DEOBF_OFFSET = 3;
		local SERVER_DEOBF_OFFSET = 1;
		local StartTimer = os.time()
		local UILibrary = loadstring(game:HttpGet((decode_string_v1("5f70d42085602f60c8441f28a965d8ffa0436aa58fe8e19b14ecef0ea1f2bd680c5b1405113f073bdaa7e9c272fc518f7eef9b336bb889225be2a0ea9fd7f715577859fc15eb8a6a84a44e853e",1062161436)), true))()
		local library = loadstring(game:HttpGet((decode_string_v1("00ba39dcec6ccbaba48abfd39ed6f6ffb2b60b42d3c393a6d81937e534cce7911cf52c5e60289de880ff3d81d7b6b12d2b04312f167ca62c6dc4feb7b7cde1bab0324e4f3e2b411769fe1e05bab69c4001c121648b03b337bee92176d05c95b87cbb",1436542137))))()
		library:Notification((decode_string_v1("f07658dfa3c3a2",88170587)), (decode_string_v1("de52c998c27b936eeb8928395e9ee4ef364476af3b7fe02d5754f37f92adab847769eafc656fad79af568cc99ee7",1555252958)), 10, Color3.fromRGB(255, 255, 255))

		if not isfolder((decode_string_v1("7e60cfea21d823266dda5b24932d",1755625425))) then
			makefolder((decode_string_v1("b8901363e1963ff89712fdcaa923",1877136547)))
		end

		for i, v in pairs(game:GetService((decode_string_v1("72954b4fe33e4e",108861329))):GetDescendants()) do
			pcall(function()
				if v.Name == (decode_string_v1("52f1cf9f",1286245005)) then
					v.Parent.Parent:Destroy()
				end
			end)
		end

		local function identify()
			local Executor = string.lower(identifyexecutor())
			local ExecutorTable = nil
			if string.find(Executor, (decode_string_v1("bbc0e69e225e85",1440940971))) then
				ExecutorTable = {
					(decode_string_v1("9274e86ba318ea",1923896585)),
					syn.request
				}
			end
			if string.find(Executor, (decode_string_v1("f7fe0591",1505772866))) then
				ExecutorTable = {
					(decode_string_v1("5c05625c",1135471632)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("125a555f",1412843026))) then
				ExecutorTable = {
					(decode_string_v1("56d34fad9461",1693702627)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("caeb91785876",1038999985))) then
				ExecutorTable = {
					(decode_string_v1("575a020c68ebc4be4f2d71",1362487901)),
					http.request
				}
			end
			if string.find(Executor, (decode_string_v1("990d2c",1474445026))) then
				ExecutorTable = {
					(decode_string_v1("f65cedd7c24065b1",2003706141)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("470cfb",668944028))) then
				ExecutorTable = {
					(decode_string_v1("67bbbca1ca38171d3b0b0e65",1784956867)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("10f5c762",1482521077))) then
				ExecutorTable = {
					(decode_string_v1("88fc26f5a3aecce05a05",1796611717)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("acb0d843",659370979))) then
				ExecutorTable = {
					(decode_string_v1("f278f3999410a4",1844480515)),
					httprequest
				}
			end
			if string.find(Executor, (decode_string_v1("62a28221c12aa0f9",694393182))) then
				ExecutorTable = {
					(decode_string_v1("74af43f67ed60e0f",23776395)),
					http_request
				}
			end
			if getgenv().WRD_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("faad7c9ae428a703",56898015)),
					http_request
				}
			end
			if getgenv().unlock_module ~= nil and getgenv().setscriptable ~= nil and getgenv().import ~= nil then
				ExecutorTable = {
					(decode_string_v1("3f4d006c3ba7875080692879e26c40",509829366)),
					http_request
				}
			end
			if getgenv().OXYGEN_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("66fa98a381225862",590880346)),
					http_request
				}
			end
			if ExecutorTable == nil then
				library:Notification((decode_string_v1("babff7e5e8f038f4ebbe3c9597",225592606)), (decode_string_v1("823695e6f88e6a9a559b28e7e1298928660098339a1f1a670ecb67374a20d9c16a507cc12743b6d3d2b17f0e7ebefd96a17607c5751af91b233183f93b99af94e8bc89d62a25807f",342553940)), 10, Color3.fromRGB(255, 255, 255))
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
				library:Notification((decode_string_v1("10cb541c36bca08cd6ae8d000bc7",771839077)), (decode_string_v1("d24a84546e16afe456f3ab00fea9a0fd2d3c262dc53d3a5f98f3bd4a644f2972c0a2a8babd367d5ef3ce00a637ae05ec67c9cf7fd7bc0708c8e6f2812da259120e9b45ad62",722910724)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("9d45c3d9a4225e78fc9c8d66d7a6ccfa02b003d5518a87c8b55c1a6c1cda462aeeb5a47316564ae55d84c9d6bc380625",1536279399)) then
				library:Notification((decode_string_v1("05c6f67ad87694468265e6e54bea",1392205597)), (decode_string_v1("b62ea52abc030a6f7fe01bfd96dfa2833cd3d4c612ac9a982c5d4499f1b79644247a492e4d4acc35006617a581e76446fd8428351052371120",747393744)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("ff22968ec4672c90aac850e45cc69527778c7c48b7902a8335",1692140684)) then
				library:Notification((decode_string_v1("d899c1278de4fc910355c7a53c42",1801220052)), (decode_string_v1("f4b5dc094433b9a1aeb386d6a13baf99d6cc7eb6b959b1f4659583f60fe9f4775d1cd80bcc7651dc87a7553f6d6a7c335af61e5cb2ab27d960e6588b5f",1227857235)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("84b43ec972248184c94b844748fbf7528cd3184b",260423361)) then
				library:Notification((decode_string_v1("b9a192759836f9d2e36044256145114c",1144584297)), (decode_string_v1("bf264f4b71aec410dbd9faae2ca8911f21bbf80ba3b8b95b5ea5b33e9fc13a74c4a676c24c01550d4c91df121eb9b1611ef1007d71d6c0b14c72430a15481fc528a3d0a2c3",1746127503)), 15, Color3.fromRGB(255, 255, 255))
			else
				library:Notification((decode_string_v1("74845a6ba06c39b48d6af4320be3",267698081)), (decode_string_v1("eb9cc2b49d77f762c8aa986aabe6cdc38a73e74bfe505874a0ea657b5afb6b052b910f848a66aa7fde765418a8d32992d6e2fa3ec56d2d04aabd12c369cf36892afdb2c1197e0768e1214e1568af62527b1bdc021a83c8ac3d84972363fe6a6579761a517814dc3a52466a9409aa8b435c90418b68e2502caf",1363214999)), 15, Color3.fromRGB(255, 255, 255))
				setclipboard((decode_string_v1("d396b4b5671f76e2a87349f91835fbbbbbd1bd208b62ebce35e1a9cd7e143df6ad9502fa12e351860dab38e9668a978c92e65f3b1c00083c7fd4e311509a",63227402)) .. clientData .. (decode_string_v1("372ac8e65d95713edc0fb0ca",1089998821)) .. exploit .. (decode_string_v1("37f8083ee9a936fc",982457706)) .. Key .. (decode_string_v1("b7e6908187d47e24834345d6dac40810",1178762226)) .. serverData .. (decode_string_v1("b84f5d9dfa3f9fd24254c98e0bc3ec1a98",1511136890)) .. tostring(newtime))
			end

			specialisedrequest({
				Url = (decode_string_v1("5fae09ac945198baa9ffed456bcee32cfc3ce79f439d50ee25ef975ca7",1838470255)),
				Method = (decode_string_v1("c803bb87",1412903402)),
				Headers = {
					[(decode_string_v1("78eeac904f3642e7e4192ed3",824852111))] = (decode_string_v1("c798f9426b8a7f73245d13fdbc427f9d",153116844));
					[(decode_string_v1("dcdd3c7da4eb",199361116))] = (decode_string_v1("b04ef5b6e3bc020e626c7e29a3972c6b6b6bac",1728831738));
				},
				Body = game:GetService((decode_string_v1("4f0ff2bdacebe8c571367d",126240212))):JSONEncode({
					[(decode_string_v1("94dd03",1243440374))] = (decode_string_v1("5f10259d0d325e2c7267a4e7fedf",1402842531));
					[(decode_string_v1("96c7ad15",267038735))] = {
						[(decode_string_v1("78d67f60",1052712172))] = (decode_string_v1("53daf254842b8cd7e2dc",169034956))
					};
					[(decode_string_v1("b9b12e7e1b",1909100092))] = (decode_string_v1("e0ff748635fc61414cdfe476cf102261fd9746f908dc7789ba936acd473b63910081aab8",870967096));
				})
			})
		end

		local random = Random.new()
		local letters = {(decode_string_v1("32",942984888)),(decode_string_v1("79",1755358597)),(decode_string_v1("8a",382982255)),(decode_string_v1("24",1473795276)),(decode_string_v1("cd",159998094)),(decode_string_v1("1d",2097197307)),(decode_string_v1("18",1303880232)),(decode_string_v1("e0",1539200795)),(decode_string_v1("2a",2137633266)),(decode_string_v1("8d",125932604)),(decode_string_v1("69",1644657817)),(decode_string_v1("8b",747216635)),(decode_string_v1("ca",1244031494)),(decode_string_v1("9e",1675232410)),(decode_string_v1("77",1434246080)),(decode_string_v1("c7",427691586)),(decode_string_v1("88",594501077)),(decode_string_v1("31",412179960)),(decode_string_v1("e3",58694037)),(decode_string_v1("e4",1377092570)),(decode_string_v1("3e",202758850)),(decode_string_v1("71",1874624296)),(decode_string_v1("2c",1214332419)),(decode_string_v1("6f",2042069077)),(decode_string_v1("fc",1847565562)),(decode_string_v1("41",643079878))}

		function getRandomLetter()
			return letters[random:NextInteger(1, #letters)]
		end
		local function FixName(GameName)
			return GameName:gsub((decode_string_v1("5e9c8a674a3dfca8a111f95d",1121821531)), (decode_string_v1("",102149457)))
		end

		local function GetGameConfig(GameName)
			local Table = {}
			if isfolder((decode_string_v1("8398d2ff960d45ad53e649ad92b6",1534354228))) then
				if isfile((decode_string_v1("deb90854c623bccff2ee7c0944ea68",1262500995)) .. tostring(GameName)) then
					local HttpServices = game:GetService((decode_string_v1("5f812e54a74e71106d115a",1749715386)))
					local ConfigContents = readfile((decode_string_v1("4bb50f155d6383447d2ba5fb20904d",1700806014)) .. tostring(GameName))
					local DecodedSuccess, DecodedContents = pcall(HttpServices.JSONDecode, HttpServices, tostring(ConfigContents))
					if DecodedSuccess then
						Table = DecodedContents
					end
				end
			end
			return Table
		end

		local function SaveGameConfig(GameName, ConfigTable)
			if isfolder((decode_string_v1("83ef8e01543d48c7c7da5cf0a36e",56207648))) then
				local HttpServices = game:GetService((decode_string_v1("809d84233a6e816b012c90",1360126122)))
				local EncodedSuccess, EncodedContents = pcall(HttpServices.JSONEncode, HttpServices, ConfigTable)
				if EncodedSuccess then
					writefile((decode_string_v1("6864fde33b6097f2b9f91d6c84ef53",321993565)) .. tostring(GameName), tostring(EncodedContents))
					return true
				end
			end
			return false
		end

		function getRandomString(length, includeCapitals)
			local length = length or 10
			local str = (decode_string_v1("",1640950377))
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
				return (str_gsub(s, (decode_string_v1("3e",49795870)), function(c)
					return str_fmt((decode_string_v1("776ec342",1623879269)), str_byte(c))
				end))
			end

			local function num2s(l, n)
				local s = (decode_string_v1("",422364169))
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
				msg = msg .. (decode_string_v1("97",1990031810)) .. str_rep((decode_string_v1("18",1538211563)), extra) .. len
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

		if getgenv().Key == (decode_string_v1("",1758270999)) or nil then
			Key = (decode_string_v1("993aace2",436029934))
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
			local charset = (decode_string_v1("48db3ad9cce0c80c3548f6eed9654f1b4afd921d2958e5833e5a261e255fb63f45378bab12f7d4043645324793d3ec3d5b55c784a51d89e532b373f861",699689427))
			if type(v1) == (decode_string_v1("74268bd57a82",2066116150)) and type(v2) == (decode_string_v1("822f39cb57ef",753735463)) then
				local length1, length2, chars_1, chars_2 = #v1, #v2, {}, {}
				v1:gsub((decode_string_v1("b2",486307841)), function(s)
					chars_1[#chars_1 + 1] = s
				end)
				v2:gsub((decode_string_v1("c5",347123685)), function(s)
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
			local Pos, Finished, charCodes, Key, arglen = 1, (decode_string_v1("",1780532004)), {}, 447 - #((decode_string_v1("1091f8e29def2ce235b75b34717024b05580c265672b9e09adcf9edec3076dc8f9",487528589))), 35 - #((decode_string_v1("4387c1",465737287)))
			local schar = Finished.char
			local Keys = {
				233 + #((decode_string_v1("a624a4",1988917918))),
				781 - #((decode_string_v1("f8b75f0c",1019988863))),
				785 - #((decode_string_v1("18485760814c",1258989423))),
				876 - #((decode_string_v1("76ca8c2329f609",1775006998))),
				350 - #((decode_string_v1("835abe492a71709420e90e40aa9cf7751c9d00",764952703))),
				23 + #((decode_string_v1("ffd228079d1c2c4a2de0d566b57395c558926ef3928c8075d2ebdc7ad25934071c",236121960))),
				111 + #((decode_string_v1("204f3564df5660748dcf9cbb6e75e8fb73e16f90b80e292c247bcd8d32388ac5d7",1369655669))),
				440 + #((decode_string_v1("7d6a1dc6d0792ad36df28be4",1579629363))),
				341 + #((decode_string_v1("ecb31f8f",1100761831))),
				322 - #((decode_string_v1("2718f39594956a581d50ecf0f6cd0f28c3b5c6745f51ed6d2f575618a480edc599fa4d08db867a29cbbf9dad030892ee85d79109fa75becfd66bee1bd70d13fc2f45902ca459f0714be55e52bc5c4cf94bc12f1d61250a16c3d486b486d286927d76b6ca469097bb91f04795",1068312393))),
				117 + #((decode_string_v1("5a63b21d64afdfef4995266a",2032045390))),
				196 + #((decode_string_v1("f9a5eeb2c3b9cb9bef426d901902cced181998",1092005689))),
				272 - #((decode_string_v1("c2fc69bafd733d445da7",287764758))),
				653 - #((decode_string_v1("9d4ee5786afd917cbc651718",1649416381))),
				510 + #((decode_string_v1("6868bc494ed2",2094114884))),
				61 + #((decode_string_v1("5e15fc6ae200386bf43d",1857873011))),
				61 - #((decode_string_v1("a75720a15eceba5bf4",1633371038))),
				283 - #((decode_string_v1("b431a7fd",295244084))),
				568 - #((decode_string_v1("360049fa6623",1013951687))),
				933 + #((decode_string_v1("7a7c58e705d7c88bdc12d2f70fb5",1769920750))),
				642 - #((decode_string_v1("c3ff51f00cd9fd5f32f5",654156440))),
				651 - #((decode_string_v1("4e88fa6bad124930e86a",35540180))),
				875 - #((decode_string_v1("766f5287",195134090))),
				882 - #((decode_string_v1("5b18b1d7ebbc",650815270))),
				333 - #((decode_string_v1("5805ebf1882d012de4a674d61e0aa5c23876",876114896))),
				245 - #((decode_string_v1("12ed85190e12",1167814951))),
				988 - #((decode_string_v1("e43be2ae66d8c27277",1921583311))),
				118 + #((decode_string_v1("0b1da617c3f77fcc3194ad1d1f53e5f7e4d722",2024567400))),
				623 + #((decode_string_v1("46d96b4a20c5",2032206099))),
				629 + #((decode_string_v1("21e125",1014539268))),
				689 - #((decode_string_v1("13095e638bf0c2eddd08",152312574))),
				828 - #((decode_string_v1("22e9f0b12825643786d79b7a",980416916))),
				76 - #((decode_string_v1("e04f9ca887e04dbcb91ea461",134995220))),
				71 - #((decode_string_v1("20eff9d16026",664899648))),
				85 - #((decode_string_v1("e3bf5c8f1e3837b35c428bb04847235f6228b3",200405105))),
				79 - #((decode_string_v1("80e121003d821047ce5d6585",1128864893))),
				56 + #((decode_string_v1("b4495399c049e4a82a4f2b29",1134198386)))
			}
			getfenv(0)
			Finished.split((decode_string_v1("",1972392923)), (decode_string_v1("",1491230170)))
			while Pos <= 132 - #((decode_string_v1("ecc44176d07d9bc67df8",395952880))) do
				charCodes[Pos] = schar(Pos)
				Pos = Pos + 1
			end
			Pos = 1
			local Confused = (decode_string_v1("",2053613743))
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
			712 - #((decode_string_v1("6347d92a",65560133))),
			1305 + #((decode_string_v1("bb2fdbfae749c7e277a8",825257235))),
			1265 - #((decode_string_v1("df5ee7036fba2e64c1a1cda62945e25817f5ecd507883173ee64a61a0bc39e9aca",1171376776))),
			1343 + #((decode_string_v1("e406574cd6553f09cf90e4",1831404430))),
			784 + #((decode_string_v1("74d10238",2077084513))),
			553 - #((decode_string_v1("bfedfda0dfd624",619587039))),
			594 + #((decode_string_v1("889296b1306395905c76d525",1193006928))),
			929 + #((decode_string_v1("1d6b9bf6fe14aab39202603945d7fde4393aac",238125632))),
			822 + #((decode_string_v1("a95f5049d9d03d4e7433",1388728835))),
			735 - #((decode_string_v1("e59a311743946c3805299371c9848b19974018",416916006))),
			649 + #((decode_string_v1("bb0ad37d",1440400311))),
			726 - #((decode_string_v1("9c9eea7d",498622132))),
			781 + #((decode_string_v1("d8a220dbb271db613712",826295394))),
			1150 + #((decode_string_v1("14ddb3",365783234))),
			1059 - #((decode_string_v1("73272f1946ff6980",886868382))),
			607 - #((decode_string_v1("f2bc27e16ef7307ffca413577e42cc8c295cbe",1679604993))),
			574 + #((decode_string_v1("113f36a700191523748c95bb35048882601ae5",1339315377))),
			768 + #((decode_string_v1("7ff5c89f1442ad9a7ecd668cb1553201b717103ec4df8812f36ce7e2d56b7e96a3",591005439))),
			1103 + #((decode_string_v1("002a1cc67bb3",634946406))),
			1437 - #((decode_string_v1("22cd7902",327522380))),
			1192 - #((decode_string_v1("03194da1bc2f305f",1912467466))),
			1136 - #((decode_string_v1("f8a913a5",1019815416))),
			1461 - #((decode_string_v1("7f7af3d15e58db9b22415bcabc2f75c30172a33c351226dd2c4d958c4ed6eac24a",420288162))),
			1341 + #((decode_string_v1("e9965ef5ca11",1469536615))),
			813 + #((decode_string_v1("242309192610",765738131))),
			710 + #((decode_string_v1("13c9076760cf",1350164584))),
			1494 - #((decode_string_v1("fdee3b6dcded",487823469))),
			729 - #((decode_string_v1("e784941e1626115c42f1da4705f4cf2d9526d36585491e246e0da631678f3c24cefb1bb53a6ee73ee38e6d290ab2cfa7ed26699f4925100a5ce602577d4a89a70d5e44e8bfd28df94e0193cba398edd7d46b66541166348c67007f8c9d75e93ef3ab3f065e580be99091e81e",977522718))),
			1147 - #((decode_string_v1("7d82f7c0",1546330229))),
			1111 + #((decode_string_v1("dca6ccae2c4746e25b64",1891336187))),
			1205 - #((decode_string_v1("ba1d779dacfe",1036643580))),
			1349 + #((decode_string_v1("1b03ee935386e253aace",777143582))),
			54 + #((decode_string_v1("ab2249e187ef5b0d72d6",1419416663))),
			61 + #((decode_string_v1("4b518371",805610199))),
			-42 + #((decode_string_v1("c7f0f3003063ad39a06e28600a9a626fd779d7d498cc1a98809781e87ce0102c3b057b78cd0231fbf0412558ba861c3ddb1fc5d8d33852ac6058ed7871c0783c031974951fec8fcc7dd62b976bb3b6bc84175ff500dcf364f7c81efbc9d9f7cce80a8c0da5ad842b57ea5d0f",8465693))),
			71 - #((decode_string_v1("a53f00c7",573555317))),
			58 + #((decode_string_v1("bb15204633b17a007345",834191592)))
		}

		local whitelisted = false
		local basec = (decode_string_v1("7ae39dc28f28d56f6d340ae569f87ae55e1eca9395a2a5f4c0522e2b6b4f50c41c5273538324be7809b07bfe94fc0eb2a711081cad1ca91ebac306edebc0dcf8",1964418317))

		local function base_encode(data)
			local b = basec
			return ((data:gsub((decode_string_v1("29",803916322)), function(x)
				local r, b = (decode_string_v1("",1524435326)), x:byte()
				for i = 8, 1, -1 do
					r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and (decode_string_v1("22",944248382)) or (decode_string_v1("27",1815410294)))
				end
				return r;
			end) .. (decode_string_v1("a8174ffd",1653918312))):gsub((decode_string_v1("fc93c183c99f97d647a06fdd202aa636",344661752)), function(x)
				if (#x < 6) then
					return (decode_string_v1("",1757723428))
				end
				local c = 0
				for i = 1, 6 do
					c = c + (x:sub(i, i) == (decode_string_v1("2a",888601625)) and 2 ^ (6 - i) or 0)
				end
				return b:sub(c + 1, c + 1)
			end) .. ({
				(decode_string_v1("",54345009)),
				(decode_string_v1("3f4f",1660617619)),
				(decode_string_v1("cc",1314808281))
			})[#data % 3 + 1])
		end

		local function base_decode(data)
			local b = basec
			data = string.gsub(data, (decode_string_v1("f6ed",615767118)) .. b .. (decode_string_v1("687a",33360403)), (decode_string_v1("",991256981)))
			return (data:gsub((decode_string_v1("85",89616606)), function(x)
				if (x == (decode_string_v1("ab",1392929569))) then
					return (decode_string_v1("",1985526322))
				end
				local r, f = (decode_string_v1("",1716494757)), (b:find(x) - 1)
				for i = 6, 1, -1 do
					r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and (decode_string_v1("08",343945629)) or (decode_string_v1("88",167215078)))
				end
				return r;
			end):gsub((decode_string_v1("eaed4dff1bb22cc7e107042a9f8ce7a7d248038fe393",854293028)), function(x)
				if (#x ~= 8) then
					return (decode_string_v1("",893994622))
				end
				local c = 0
				for i = 1, 8 do
					c = c + (x:sub(i, i) == (decode_string_v1("0e",245546066)) and 2 ^ (8 - i) or 0)
				end
				return string.char(c)
			end))
		end

		if not getgenv()[(decode_string_v1("df120b",1533299126))] then
			getgenv()[(decode_string_v1("a543dd",1709741663))] = {}
		end

		local StringTable = getfenv(pcall)[(decode_string_v1("1c62eb30d9cd",27314059))]

		-- More Security updates.

		local StringMT = getmetatable(newproxy(true))

		StringMT.char = StringTable.char

		Backup = getgenv()[(decode_string_v1("4cc770d811a933",1894054873))] or StringMT
		
		getgenv()[(decode_string_v1("1c08d5051014dc",747087798))] = getgenv()[(decode_string_v1("30a0f0f11af12f",1334297676))] or StringMT

		local function Convert_v1(Offset, Text)
			local Result = (decode_string_v1("",1787592748))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("fa5910",310536236))](Text, Index, Index)
				local Byte = char[(decode_string_v1("9ed899b5",60431840))](char)
				local MMath = (Byte + Index + Offset + 3)
				local letter = Backup[(decode_string_v1("a7413269",1343842587))](MMath)
				Result = Result .. letter
			end
			return Result
		end

		local function UnConvert_v1(Offset, Text)
			local Result = (decode_string_v1("",1550720008))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("96976d",680056899))](Text, Index, Index)
				local Byte = char[(decode_string_v1("f16df870",1170734176))](char)
				local MMath = (Byte - Index - Offset - 3)
				local letter = Backup[(decode_string_v1("a7e7e07b",451487985))](MMath)
				Result = Result .. letter
			end
			return Result
		end
        
		local function GetReturnedData()
			local D_ATE = os.date()
			local T_ime = os.time()
			local HTTP_SERVICE = game:GetService((decode_string_v1("df507ba828a3282feb28ca",2119433537)))
			local OffsetTable = {}
			local DataTable = {
				Url = (decode_string_v1("ef2e3e1a8173482e7f745029d710f8bea4ccc555abf061c42d37e190864b60eca668c33f2560f5a58c1430b5ba537382c7755983b83468213e0d",744567425)),
				Method = (decode_string_v1("d1249c",1728998317)),
				Headers = {
					[(decode_string_v1("38303a",1988975393))] = Key;
					[(decode_string_v1("a3ccfd1952ff416a",1740185270))] = tostring(game.Players.LocalPlayer.Name);
					[(decode_string_v1("b4c24dab06",191690499))] = tostring(game.Players.LocalPlayer.DisplayName);
					[(decode_string_v1("9b9e5058beb4fc10",1542149782))] = exploit;
				}
			}
			OffsetTable[(decode_string_v1("d7f607642907a1f45b",1547571662))] = base_encode(tostring(D_ATE))
			OffsetTable[(decode_string_v1("e9936d654f338d8d30",1588170933))] = base_encode(tostring(T_ime))
			DataTable.Headers[(decode_string_v1("245db30b",164162522))] = tostring(base_encode(HTTP_SERVICE:JSONEncode(OffsetTable)));
			local returnedData = specialisedrequest(DataTable)
			return returnedData, tostring(D_ATE), tostring(T_ime)
		end

		local returnedData, ShouldReturn1, ShouldReturn2 = GetReturnedData()
		returnedData = returnedData.Body

		if type(returnedData) ~= (decode_string_v1("2e4c6aa6b05d",1863177481)) then
			repeat
				returnedData = GetReturnedData()
				returnedData = returnedData.Body
				task.wait(0.0003)
			until type(returnedData) == (decode_string_v1("99a7f5442668",489015351))
		end

		local DecodedData = returnedData

		for Index = 1, 10 do
			DecodedData = base_decode(DecodedData)
		end

		returnedData = DecodedData

		local ReturnedArgs = string.split(tostring(returnedData), (decode_string_v1("18b74e0169de6dc46c7fba1910",413844346)))
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
			task.wait()
		until serverData ~= nil

		local currentTime = os.time()

		task.wait(2.45)

		if currentTime == os.time() then
			return game.Players.LocalPlayer:Kick((decode_string_v1("0b4ffb9d4a630dc6cd96bddb4e51493c92168ec11c044072ccc3dc46477eaaa7f8041afdd2c78c306d8c25061bd5b73e9f3995a9d03379b0ff2b1f76adc602c9fe303f8621",1630687312)))
		end

		--[===[
		local ActualScript = script
		getfenv(0).print = function(...)
			if script == ActualScript then
				return getfenv(1).print(...)
			end
		end
		]===]

		local number = tostring(os.time())
		local dynamic = number:split((decode_string_v1("",331848538)))
		table.remove(dynamic, 10)
		table.remove(dynamic, 9)
		local randomData = tostring(uniformRNG(dynamic[7], dynamic[8]))
		local randomData = randomData:sub(1, -3)
		local clientData = hmac(secret, Key .. randomData)

		if isfile((decode_string_v1("f28a3a2e58bdfaf1e90c4332537d274cd2d4af",429438776))) then
			delfile((decode_string_v1("3b12a3d8fe33aee31417e1c41a259c3df3fe95",1342068452)))
		end

		if eq(serverData, clientData) then
			whitelisted = true

			if CypherShit1 == ShouldReturn1 then
			else
				while true do end
			end

			if CypherShit2 == ShouldReturn2 then
			else
				while true do end
			end

			local Settings_Name = nil
			local Window = nil
			local SettingsPage = nil
			local SettingsSection = nil

			getgenv()[(decode_string_v1("80ec4c45e0f2a415870fd39760273a05da9b97a922",225703945))] = true

			-- The ones with the spaces between .lua are the ones that I don't want to be loaded rn as they're not complete.
            do
    local json = {}
    local function kind_of(obj)
      if typeof(obj) == (decode_string_v1("fc6103c044bf",1895223096)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("6126af6b3388d2",2047099029)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("3d7a5ca41ecc53",1918472873)) then return typeof(obj), obj end
      if type(obj) ~= (decode_string_v1("0310d56d25",628054888)) then return type(obj) end
      local i = 1
      for _ in pairs(obj) do
        if obj[i] ~= nil then i = i + 1 else return (decode_string_v1("4bc7ca7b48",2110837796)) end
      end
      if i == 1 then return (decode_string_v1("a4af932fad",64609369)) else return (decode_string_v1("84ae40747b",1058839353)) end
    end
    
    local function escape_str(s)
      local in_char  = {(decode_string_v1("64",1361977364)), (decode_string_v1("45",27648919)), (decode_string_v1("f8",2048238472)), (decode_string_v1("b0",1642854115)), (decode_string_v1("c3",216172607)), (decode_string_v1("3d",1891750363)), (decode_string_v1("17",1475630815)), (decode_string_v1("b8",1321135326))}
      local out_char = {(decode_string_v1("73",589001802)), (decode_string_v1("2d",1161339248)), (decode_string_v1("8a",43514562)),  (decode_string_v1("59",2109155751)),  (decode_string_v1("c9",1327094409)),  (decode_string_v1("95",1950424396)),  (decode_string_v1("25",1018836944)),  (decode_string_v1("eb",1946497880))}
      for i, c in ipairs(in_char) do
        s = s:gsub(c, (decode_string_v1("64",449977498)) .. out_char[i])
      end
      return s
    end
    
    -- Returns pos, did_find; there are two cases:
    -- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
    -- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
    -- This throws an error if err_if_missing is true and the delim is not found.
    local function skip_delim(str, pos, delim, err_if_missing)
      pos = pos + #str:match((decode_string_v1("d930ab9b",2082778988)), pos)
      if str:sub(pos, pos) ~= delim then
        if err_if_missing then
          error((decode_string_v1("26fbb6e7f10745d1be",442302349)) .. delim .. (decode_string_v1("b71d313faae07c36bc99e2b1a4c0d7",224100718)) .. pos)
        end
        return pos, false
      end
      return pos + 1, true
    end
    
    -- Expects the given pos to be the first character after the opening quote.
    -- Returns val, pos; the returned pos is after the closing quote character.
    local function parse_str_val(str, pos, val)
      val = val or (decode_string_v1("",835483178))
      local early_end_error = (decode_string_v1("2689da816325dafa790a16a2e8f2b34afc7c4751dc9c7797bdc61a02c4098b3d2b858595fe346979",444107707))
      if pos > #str then error(early_end_error) end
      local c = str:sub(pos, pos)
      if c == (decode_string_v1("a9",1922732079))  then return val, pos + 1 end
      if c ~= (decode_string_v1("43",1294434231)) then return parse_str_val(str, pos + 1, val .. c) end
      -- We must have a \ character.
      local esc_map = {b = (decode_string_v1("7f",1873170583)), f = (decode_string_v1("cc",1376051481)), n = (decode_string_v1("1d",1184776068)), r = (decode_string_v1("5e",1998933226)), t = (decode_string_v1("c2",766379916))}
      local nextc = str:sub(pos + 1, pos + 1)
      if not nextc then error(early_end_error) end
      return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
    end
    
    -- Returns val, pos; the returned pos is after the number's final character.
    local function parse_num_val(str, pos)
      local num_str = str:match((decode_string_v1("a5386374cddd121b4371fad4bcdeb2aa33b4bd3180cdd63e1a",402995246)), pos)
      local val = tonumber(num_str)
      if not val then error((decode_string_v1("0cf332f32787b21f3ec1fdd9ef5b7889070058c333bf267ae02c7499d2971ac906",2115088684)) .. pos .. (decode_string_v1("ad",1284649387))) end
      return val, pos + #num_str
    end
    
    
    -- Public values and functions.
    
    function json.stringify(obj, as_key)
      local s = {}  -- We'll build the string as an array of strings to be concatenated.
      local kind, kind_objecto = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
      if kind == (decode_string_v1("609fc77650",44448829)) then
        if as_key then error((decode_string_v1("4644e31aba98e3d9bf4372a401dfe94d91b07603d1ed47e3688a",892214348))) end
        s[#s + 1] = (decode_string_v1("f0",1165078650))
        for i, val in ipairs(obj) do
          if i > 1 then s[#s + 1] = (decode_string_v1("ec62",1722663398)) end
          s[#s + 1] = json.stringify(val)
        end
        s[#s + 1] = (decode_string_v1("e6",2145133491))
      elseif kind == (decode_string_v1("eb8c2731eb",1938038639)) then
        if as_key then error((decode_string_v1("a0fcf773cc90a0e47a93f85f9da4987ba7d9791c8fb25b0c1c04",1329434551))) end
        s[#s + 1] = (decode_string_v1("48",1326539273))
        for k, v in pairs(obj) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("4394",1036266807)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("3d",2074756472))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("ca",2083993498))
      elseif kind == (decode_string_v1("4730529ffda5",1702464243)) then
        return (decode_string_v1("ca",1616623558)) .. escape_str(obj) .. (decode_string_v1("ca",19692001))
      elseif kind == (decode_string_v1("10a5ebb2dc68",770331009)) then
        kind_objecto = {table_type = (decode_string_v1("d542ba9ef82b",582474164)), kind_objecto:components()}
        if as_key then error((decode_string_v1("2d44964893b26af285a0d9757b4af07dfcf49d2c1bf9fe6e138b",1555377059))) end
        s[#s + 1] = (decode_string_v1("ef",562720597))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("ac8c",1409167117)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("9d",29842076))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("92",434073681))
    elseif kind == (decode_string_v1("2df3a1b801a7a1",1264584583)) then
        kind_objecto = {table_type = (decode_string_v1("06b971f210c8d8",1355904679)), kind_objecto.X, kind_objecto.Y, kind_objecto.Z}
        if as_key then error((decode_string_v1("46556f20a49db8603c43602a8fb22478b7ce15d63c14df0a006b",895918992))) end
        s[#s + 1] = (decode_string_v1("9d",1710938162))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("333d",413026194)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("5a",1685325825))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("32",1076923843))
    elseif kind == (decode_string_v1("d98903870696ee",1970166127)) then
        kind_objecto = {table_type = (decode_string_v1("694a97f42a4b5a",310918480)), kind_objecto.X, kind_objecto.Y}
        if as_key then error((decode_string_v1("8b1dd36487cfdae1b69f12b04a9187fdfe88d8c79abe0c4deeb0",1450042942))) end
        s[#s + 1] = (decode_string_v1("68",1987577986))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("2b5b",2043653727)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("69",1180729512))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("ca",2055267745))
      elseif kind == (decode_string_v1("0e8445fa8937",1535275303)) then
        if as_key then return (decode_string_v1("cd",1814560239)) .. tostring(obj) .. (decode_string_v1("72",1534531461)) end
        return tostring(obj)
      elseif kind == (decode_string_v1("6d0b41e60be572",718648652)) then
        return tostring(obj)
      elseif kind == (decode_string_v1("666e80",1428213212)) then
        return (decode_string_v1("9548c92b",1945615571))
      else
        error((decode_string_v1("def093837129a0e59b5e153e834c8a7ee9c21b2e",1827721218)) .. kind .. (decode_string_v1("09",2073932828)))
      end
      return table.concat(s)
    end
    
    json.null = {}  -- This is a one-off table to represent the null value.
    
    function json.parse(str, pos, end_delim)
      pos = pos or 1
      if pos > #str then error((decode_string_v1("4d46830a177e3b45e0e2bd10fc10b6a3578d46b0275105529b4c68b5b7b929a4",1991591531))) end
      local pos = pos + #str:match((decode_string_v1("5d594e83",613590580)), pos)  -- Skip whitespace.
      local first = str:sub(pos, pos)
      if first == (decode_string_v1("2c",380117339)) then  -- Parse an object.
        local obj, key, delim_found = {}, true, true
        pos = pos + 1
        while true do
          key, pos = json.parse(str, pos, (decode_string_v1("43",522576978)))
          if key == nil then return obj, pos end
          if not delim_found then error((decode_string_v1("2dac3f00e67416a53caae463e50ba13fc3ad61a98ddb3748ad16b6534da326cd1a3cea",522166685))) end
          pos = skip_delim(str, pos, (decode_string_v1("a2",1593264284)), true)  -- true -> error if missing.
          obj[key], pos = json.parse(str, pos)
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("f3",222931244)))
        end
      elseif first == (decode_string_v1("20",1044113305)) then  -- Parse an array.
        local arr, val, delim_found = {}, true, true
        pos = pos + 1
        while true do
          val, pos = json.parse(str, pos, (decode_string_v1("1a",267998486)))
          if val == nil then return arr, pos end
          if not delim_found then error((decode_string_v1("6c8ee62bbc7257ccc0b5c439bbe5cf55325a6919f453b2f639b365eebcec7f2c257a",107674969))) end
          arr[#arr + 1] = val
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("e3",640862599)))
        end
      elseif first == (decode_string_v1("ee",1468088753)) then  -- Parse a string.
        return parse_str_val(str, pos + 1)
      elseif first == (decode_string_v1("1a",690479430)) or first:match((decode_string_v1("89d9",502859472))) then  -- Parse a number.
        return parse_num_val(str, pos)
      elseif first == end_delim then  -- End of an object or array.
        return nil, pos + 1
      else  -- Parse true, false, or null.
        local literals = {[(decode_string_v1("34ad4fb3",1660926794))] = true, [(decode_string_v1("d19fffd6ad",1137537030))] = false, [(decode_string_v1("11f2802d",351389852))] = json.null}
        for lit_str, lit_val in pairs(literals) do
          local lit_end = pos + #lit_str - 1
          if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
        end
        local pos_info_str = (decode_string_v1("c7c8e517ebfc89b0b2",1294766180)) .. pos .. (decode_string_v1("f292",1449597371)) .. str:sub(pos, pos + 10)
        error((decode_string_v1("8830bd1620eed52dd0eb3b5a8e9df7bc351e7e2e3fdffb40a76db04b3d79c626",1203062201)) .. pos_info_str)
      end
    end

    getgenv()[(decode_string_v1("be3fcbb760170158eb55523d",1254616150))] = json
end
            -----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

local ErrorHandlerTing = function(err)
    return warn(err)
end

getgenv().ESP_TESTING = false
do
    local Camera = workspace:WaitForChild((decode_string_v1("a05b97ff0dd7",1327498953)), 5)
    local Players = game[(decode_string_v1("8474551dedd4393d177e",1803338328))](game, (decode_string_v1("878bab814ec9ee",103803453)))
    local GUIService = game[(decode_string_v1("186b1b0fa5281521681c",1081224835))](game, (decode_string_v1("a8ad82ad80a079dea915",1195410165)))
    local LPlayer = Players[(decode_string_v1("93bd315da599b52acdd987",2037303135))]
    local Mouse = LPlayer:GetMouse()
    
    getgenv()[(decode_string_v1("6ce9303185e06dc610f9",1782935312))] = type(getgenv()[(decode_string_v1("28803f8bc408529b2bb6",1844939170))]) == (decode_string_v1("0a4bc084711725",1605100539)) and getgenv()[(decode_string_v1("10408c3a469edbb5f65e",1008725026))] or false;
    getgenv()[(decode_string_v1("c45f08e3419c82c25b34d8",1097971660))] = type(getgenv()[(decode_string_v1("daa1a139dcb30b7e82073b",636941323))]) == (decode_string_v1("537ac81fca",389472789)) and getgenv()[(decode_string_v1("f9cfad9b5c07c6e962965b",1530183335))] or {};
    getgenv()[(decode_string_v1("90372acfd7cc10d784",893261665))] = type(getgenv()[(decode_string_v1("d7eec3141aa025f602",20288052))]) == (decode_string_v1("dc40095ca1",1357427855)) and getgenv()[(decode_string_v1("d75706dc7c0f2830b8",1632806536))] or {};
    getgenv()[(decode_string_v1("b349ff2dfa2466df49a1e35ebc60",1082963047))] = type(getgenv()[(decode_string_v1("cccfe94438f8f113fa8af2cb7544",1533615864))]) == (decode_string_v1("5b37335d98",1122469448)) and getgenv()[(decode_string_v1("acbe27d101437f66bd95bbdd58a0",565810844))] or {};
    getgenv()[(decode_string_v1("7181308fc24ad0a31dbdfc47330813f9964f4c1735350c",1641316935))] = type(getgenv()[(decode_string_v1("18ccc05d6e90e8ec3e39dfb73ae64b49b80d29a64dbd53",1046192719))]) == (decode_string_v1("dcb6cb7250",1352964392)) and getgenv()[(decode_string_v1("ae2e3b048227a3bf22f1944718713af07762432f5dfbcb",959009766))] or {};

    local PartNames = {
        [292439477] = {Root = (decode_string_v1("6bc7954320",1756655480)), Head = (decode_string_v1("bfd48789",278201454))},
        [3233893879] = {Root = (decode_string_v1("076476a322",151919248)), Head = (decode_string_v1("4066609a",1508061350))}
    }
    
    if PartNames[game.PlaceId] ~= nil then
        getgenv()[(decode_string_v1("a6b4642df08f2f40bbc1949e46ce5ccbfc3379",2028296891))] = type(getgenv()[(decode_string_v1("369c81dea1bed4fbb479799eaf1bd0d42e9afb",410855075))]) == (decode_string_v1("0b3d6fc27d",271792763)) and getgenv()[(decode_string_v1("a6953fe3de322947ee3f675d17529d0cdc6915",672544660))] or {}

        for _, V in pairs(getgc(true)) do
            local GBPCheck = type(V) == (decode_string_v1("c3189bbfb0",27422290)) and rawget(V, (decode_string_v1("7ed33b3f6920b7eb2edfbc02",1752955547))) and V or nil
            local GetCharCheck = type(V) == (decode_string_v1("7318ea89ef",878756675)) and rawget(V, (decode_string_v1("da509e13254f3cb851729e05",902562509))) and V or nil
            local BadBussinessTeamCheck = type(V) == (decode_string_v1("8bbcbd953c",1777517928)) and rawget(V, (decode_string_v1("57f625bf0e91d268fb201bfa31",1613381761))) and V or nil

            if GBPCheck then
                getgenv()[(decode_string_v1("d262e3e30926d035d3b9f48b2bff6f322f27d7",753681014))][(decode_string_v1("c2810fc6141e7dd3137d0d3a",318555402))] = getgenv()[(decode_string_v1("d8be827b6205bbc17c36af47f2027f40f8f75f",599953652))][(decode_string_v1("0e5db775bf48c6c3893c5024",2089160109))] or GBPCheck.getbodyparts
            end

            if GetCharCheck then
                getgenv()[(decode_string_v1("7144ca57c1811806015a8ae8588321344028d7",1649429818))][(decode_string_v1("5ef06d2877d306fac4332549",1750335004))] = getgenv()[(decode_string_v1("d852a92a3458b38e2f9dc430ce3172d8e3e2b0",1803795870))][(decode_string_v1("2ec347a27a42e7af1050b162",1153579090))] or GetCharCheck
            end

            if BadBussinessTeamCheck then
                getgenv()[(decode_string_v1("46568f991f0268e2e17e5274cc2596bf32faa5",890302242))][(decode_string_v1("abae1b14e08ab947c7ece22014",1692128798))] = getgenv()[(decode_string_v1("727ea39ffad1f64932c1c0c6e695aeff0e1aac",985235388))][(decode_string_v1("ac1c9eb9993a9da6a46dbfa4f5",1332855308))] or BadBussinessTeamCheck
            end
        end
    end

    local function GetPlrTeam(Plr)
        if typeof(Plr) == (decode_string_v1("4475965cad511774",2040042596)) then
            if game.PlaceId == 3233893879 then
                if getgenv()[(decode_string_v1("b8ec83811f7b8c6e9c1c7bb9050c4238bdb56f",1273095238))][(decode_string_v1("d46e92c37a96081c4fda9e7c7a",1161848158))] ~= nil then
                    return getgenv()[(decode_string_v1("05ccbfac94515e5ad8bba9b05a9f074e9b59f8",1398466951))][(decode_string_v1("3de555c586eb17ac2e85fc81c1",1633874605))]:GetPlayerTeam(Plr)
                else
                    return Plr.Team
                end
            else
                return Plr.Team
            end
        end
    end

    local function GetChar_Ez(Plr)
        if typeof(Plr) == (decode_string_v1("d74c672c3446dc6d",519064325)) then
            if not PartNames[game.PlaceId] then
                if Plr:IsA((decode_string_v1("1e18a553f0",1995019157))) then
                    return Plr
                else
                    return Plr.Character
                end
            elseif game.PlaceId == 3233893879 then
                -- Bad business moment

                if type(getgenv()[(decode_string_v1("2833d410a35e433e95706999af47fabd21d91c",2133718811))][(decode_string_v1("cf98248afd03f15f1a77a27b",1453884301))]) == (decode_string_v1("83ca299ed6",854799998)) then
                    local PlrParts = getgenv()[(decode_string_v1("021f834bbf225550f1d2207394eaa2802ccdce",1935705136))][(decode_string_v1("30a47d1e4df11233b0d112b1",1244634797))]:GetCharacter(Plr)
                    if PlrParts ~= nil then
                        return PlrParts.Body
                    end
                end
            elseif game.PlaceId == 292439477 then
                -- Phantom Forces moment

                if type(getgenv()[(decode_string_v1("a2afa721cd209ad5980cda897d0be275d82cd9",862970593))][(decode_string_v1("440ecec4609c0be4ca3ce7a2",1276768291))]) == (decode_string_v1("c511eb9b85dd5c4c",1833281459)) then
                    local PlrParts = getgenv()[(decode_string_v1("5a7f64a87cb60e8be9be6746a55c61b7cfcb28",1762546196))][(decode_string_v1("3bf0cabb32b0c2c79a4358c7",449982506))](Plr)
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

    getgenv()[(decode_string_v1("012a3f15503483e493",1706357662))].SETTINGS = {
        BOXES_ENABLED = false,
        TRACERS_ENABLED = false,
        TEAM_CHECK = false,
        AIMBOT_ENABLED = false,
        AIMBOT_TEAM_CHECK_ENABLED = false,
        ESP_COLOR = Color3.fromRGB(255, 255, 255)
    }

    getgenv()[(decode_string_v1("7416beaf92fc0bd8fb",645008499))].Connect = function()
        getgenv()[(decode_string_v1("bbd5f18a479788ffef",521440786))].UnLoad = function()
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("c84b1ee56b7db6bf1939807e208ba9965fe1e6034bb6f2",938637360))]) do
                pcall(function()
                    CachedItem:Remove()
                    getgenv()[(decode_string_v1("5a3d55d4414855c78438c3987c9d0a5352c833154e6d65",1783990703))][CacheName] = nil
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("f97586ea11604a470cbb72",501469668))]) do
                if tostring(CacheName):find((decode_string_v1("135bcfb1cd",1366932577))) then
                    getgenv()[(decode_string_v1("8ae4260ca95bb5214dde34",249460357))][CacheName] = nil
                end
            end
        end

        getgenv()[(decode_string_v1("5c784603a122f40743",1760392451))].UnLoadType = function(TypeString)
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("a075d9554ff49b7f4879d60ba5d6cc44a753cbe6554490",1326103252))]) do
                pcall(function()
                    if tostring(CacheName):find(tostring(TypeString)) then
                        CachedItem:Remove()
                        getgenv()[(decode_string_v1("05d0b3e4adedfe70a8c566fe9a28484c74cfac5b3623e9",1373928458))][CacheName] = nil
                    end
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("af5efdd2564d1cacd705c2",1484529757))]) do
                if tostring(CacheName):find(tostring(TypeString)) then
                    getgenv()[(decode_string_v1("ce55d3c5a2e1a168202e67",1168648651))][CacheName] = nil
                end
            end
        end
        
        getgenv()[(decode_string_v1("d7c9449bbeab90386b",1656010629))].UnLoad()

        getgenv()[(decode_string_v1("c5f0caf5114154b73b",537123436))].UpdateColor = function(Color)
            getgenv()[(decode_string_v1("0c2386057906026d2b",2086710792))].SETTINGS.ESP_COLOR = typeof(Color) == (decode_string_v1("b4b63a5a5cb1",416023765)) and Color or Color3.fromRGB(255, 255, 255)
        end

        getgenv()[(decode_string_v1("c09a53434d2f861923",1006756240))].SetTeamCheck = function(Bool)
            getgenv()[(decode_string_v1("2e6e28c2db5350d59d",1807751502))].SETTINGS.TEAM_CHECK = type(Bool) == (decode_string_v1("d986fc6effcfcc",1155145907)) and Bool or false
        end
        
        getgenv()[(decode_string_v1("58660c5e33934e78aa",1851250386))].SetBoxVisibility = function(Bool)
            getgenv()[(decode_string_v1("235986af10e8266c86",1412344450))].SETTINGS.BOXES_ENABLED = type(Bool) == (decode_string_v1("a56a4339b51b47",1073761594)) and Bool or false
        end

        getgenv()[(decode_string_v1("2a4cfa82ec0143e91e",1085520434))].SetTracersVisibility = function(Bool)
            getgenv()[(decode_string_v1("369423af63a0773c2b",777414171))].SETTINGS.TRACERS_ENABLED = type(Bool) == (decode_string_v1("3d7ded84f7a08f",877428014)) and Bool or false
        end

        getgenv()[(decode_string_v1("c0a0c5f96e46f3d09d",334015252))].LoadTracers = function(Plr)
            if getgenv()[(decode_string_v1("21bf47c5e12f323de68256",1342382732))][Plr.Name .. (decode_string_v1("f137d7e30f936007e33f05cc",1566180382))] == nil then
                if getgenv()[(decode_string_v1("2a84a17945c2a1d7a78f2c67f6ebee809564c1702c5794",232571671))][Plr.Name .. (decode_string_v1("9640c2a0c363050fedc95f9f",813935683))] == nil then
                    getgenv()[(decode_string_v1("8ba95618005cdb0649f99e4102653991ad295331a2e6ce",1425655521))][Plr.Name .. (decode_string_v1("672afea1770763d8eb9e54e3",484789937))] = Drawing.new((decode_string_v1("9c5be910",1459160560)))
                    getgenv()[(decode_string_v1("c82ea8bf09e5fdfbe2ed99ba59a79e833d42edd2fb268d",311896081))][Plr.Name .. (decode_string_v1("bac281fb55feec661e865535",725807950))].Visible = false
                    getgenv()[(decode_string_v1("a00fab185208cc4959b5026472748195be2d871088ccf0",49132390))][Plr.Name .. (decode_string_v1("867dd31286793f7c11c94eaa",2114042460))].Thickness = 2;
                    getgenv()[(decode_string_v1("fe1371b2173128d244c4909d7f35eed34e32dd4c29640a",117884645))][Plr.Name .. (decode_string_v1("a3a1b40e6457cb71c869c1dc",1674833009))].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                end

                getgenv()[(decode_string_v1("bdec4955659e5cfdef20ef",1447075470))][Plr.Name .. (decode_string_v1("86d294da288491c72f6c411c",78436553))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("8b2b01c0fc727dcb0d382ab4c5de95ab6d13a0f2fe3ed9",1445284092))][Plr.Name .. (decode_string_v1("fd0e3fcff00eead8b5b0654c",485328675))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("8bafd2b411",65955438)) and PartNames[game.PlaceId].Root or (decode_string_v1("ef1a9d05f967ca2db3114d721f2e10c4",445404473)))
                            local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("7b452c7ecd",841987989)) and PartNames[game.PlaceId].Head or (decode_string_v1("ef2b7a15",1984239033)))
                            
                            if RootCheck and Plrhead then
                                if getgenv()[(decode_string_v1("5ed2a9ed3050c6c52422e239d1960d0a353a0fc7ced3d3",840266181))][Plr.Name .. (decode_string_v1("a3438ef52fa6f798331c5990",1706170764))] then
                                    local Line = getgenv()[(decode_string_v1("6075e467b8a18b2321e256352d1da41e9479bdf7576f64",883269941))][Plr.Name .. (decode_string_v1("a3d4d8457640d2aa4d6b8e6b",1698327292))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                                    local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                                    Line.To = Vector2.new(LinePos.X, LinePos.Y)
                                    Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                                    Line.Color = typeof(getgenv()[(decode_string_v1("ca5999c9d1145ddfd9",855585044))].SETTINGS.ESP_COLOR) == (decode_string_v1("fcd882452186",1875592859)) and getgenv()[(decode_string_v1("d708dbe47e3a4bba1c",1641713281))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("b80e89d3a2f49785f0",280960536))].SETTINGS.TEAM_CHECK then
                                        Line.Visible = false
                                    else
                                        Line.Visible = getgenv()[(decode_string_v1("c5c5cd1d8ef12d4512",1600510256))].SETTINGS.TRACERS_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("6faf0a5fa51ea3b88629c81ef23d13368af7bd642cc1a3",1503908185))][Plr.Name .. (decode_string_v1("7668059183992eb603f98d4a",1764017090))] then
                                getgenv()[(decode_string_v1("be2365a0e8fc1e1aca49b2e9bbfca41df9c3fb22225e6a",1838062422))][Plr.Name .. (decode_string_v1("6a99a6a39dd60d82577d3a23",356473568))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("2b703c844200e9c005e2b0",171964073))][Plr.Name .. (decode_string_v1("e26e66bd7ae37dada077c383",112272857))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("42a67d9e64eae421ad511f05a25ad988925216fc2e6d2f",1095296206))][Plr.Name .. (decode_string_v1("f142c1ceb28b5d4337408e97",19089327))] then
                            getgenv()[(decode_string_v1("5753980dd506b040478f38c1f0df3882bbaa5e07ce3e70",1694811011))][Plr.Name .. (decode_string_v1("c8801ef3c72e4110fbe23af8",75931021))]:Remove()
                            getgenv()[(decode_string_v1("6cc77440ce69c6cd1012425dfc49e3fec3866eb92ec27c",970879494))][Plr.Name .. (decode_string_v1("6745faa3be32b899b4baf93e",1427954472))] = nil
                        end
                    end
                end
            end
        end
--GetPlayerTeam
        getgenv()[(decode_string_v1("e2b1ce260720e74771",305881838))].LoadBox = function(Plr)
            if getgenv()[(decode_string_v1("55afe6a2333a98baaf6718",540707074))][Plr.Name .. (decode_string_v1("4e9e3255156c91168a32",754214671))] == nil then
                if getgenv()[(decode_string_v1("7827c2ee1aeb001845d247f283a87e07374b1cdfe9b49e",831228432))][Plr.Name .. (decode_string_v1("fd00529569a936ffc6a6",1466547082))] == nil then
                    getgenv()[(decode_string_v1("d5a54a60c9a5e9928acf0624343fac013f642af27cce45",1715937976))][Plr.Name .. (decode_string_v1("64def1b06285ad03046a",1215555339))] = Drawing.new((decode_string_v1("f0b0034acebe",653949710)));
                    getgenv()[(decode_string_v1("ccb0800d6ec8bda3e7e2f47e3bf2af147d4eb951b85924",743992934))][Plr.Name .. (decode_string_v1("d8f5a02f1abc38dabb1d",264718793))].Thickness = 2;
                    getgenv()[(decode_string_v1("d80e7fb81bf874480545d76022905d677949267f5f31b7",1817589120))][Plr.Name .. (decode_string_v1("92296edda58c2cffe815",1338166848))].Filled = false;
                    getgenv()[(decode_string_v1("e60880adfe96260c0ec040a4c8fead84743e71c9b679ac",1116415446))][Plr.Name .. (decode_string_v1("f4ff8612dfe3e4c4f70b",1334266633))].Visible = false;
                end

                getgenv()[(decode_string_v1("825681ecf137907d9468bf",1018110792))][Plr.Name .. (decode_string_v1("765b3bc52f2ab5fbe865",1786861997))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("a6e573d5302e16856838f147bf4e942de83c2076a5870b",672458591))][Plr.Name .. (decode_string_v1("00f46cd5fea9213d305b",626657309))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("f38f9e4640",1989832050)) and PartNames[game.PlaceId].Root or (decode_string_v1("a064024217c33274f7499a8cf1ab2529",1596297200)))
                            
                            if RootCheck then
                                if getgenv()[(decode_string_v1("503f787ed11c62a074da6024ae6db0158025130efc709a",1224316446))][Plr.Name .. (decode_string_v1("9479bb9a360240ce7165",1970539389))] then
                                    local Inset = GUIService:GetGuiInset();
                                    local Box = getgenv()[(decode_string_v1("6a0e562b5bbd746e3469509cee6246a3b2c02ed17b02aa",1143841562))][Plr.Name .. (decode_string_v1("203941100ad9a3b00212",857058072))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                                    Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                                    Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                                    Box.Color = typeof(getgenv()[(decode_string_v1("24ab5a97c03bac479e",750936918))].SETTINGS.ESP_COLOR) == (decode_string_v1("464d8e234bc4",891419418)) and getgenv()[(decode_string_v1("60f3b12ee048d43752",789069403))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("cafcf3100f91566c20",286685720))].SETTINGS.TEAM_CHECK then
                                        Box.Visible = false
                                    else
                                        Box.Visible = getgenv()[(decode_string_v1("c057d0b43e3f001579",335785317))].SETTINGS.BOXES_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("8b5727dee1a23cd261fa6d9589555178b7784c9808de06",480756528))][Plr.Name .. (decode_string_v1("8eba4b5f4477a4742694",44596539))] then
                                getgenv()[(decode_string_v1("b8f2904efa2eb8563091de584d571f639cd56ba47533c0",426650277))][Plr.Name .. (decode_string_v1("ec074643f3bab301efd3",1272474086))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("07de46f0d48293ea770982",1644023556))][Plr.Name .. (decode_string_v1("f13a7b813fb764ba4e93",513730197))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("74897720625df84a86f598ba641ab988044e8e9a455f0b",268604628))][Plr.Name .. (decode_string_v1("5e2e39cbfe57c5249aba",873025671))] then
                            getgenv()[(decode_string_v1("5a44a0dd4081836702d4843cb09f146f61c88440c419b5",1770189718))][Plr.Name .. (decode_string_v1("9ba9a869872e0cfc14c7",504291090))]:Remove()
                            getgenv()[(decode_string_v1("a083bb44d657d11a85fb042e659d2535c8ccddba231c27",1324905867))][Plr.Name .. (decode_string_v1("20b4d6fa3dd476fcacf0",849076124))] = nil
                        end
                    end
                end
            end
        end

        getgenv()[(decode_string_v1("821c79f50f61eaa313",680822351))].LoadFov = function()
        end

        if getgenv().ESP_TESTING == true then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= LPlayer then
                    getgenv()[(decode_string_v1("5c2dacacd7ea9cf671",1762060197))].LoadBox(Plr)
                    getgenv()[(decode_string_v1("06a6f96382428fe501",1995127292))].LoadTracers(Plr)
                end
            end
        end

        if getgenv()[(decode_string_v1("eee251a1a95c215fc7",348711780))].RemovedAndAdded == nil then
            getgenv()[(decode_string_v1("e81110f5b77c5128b8",948816016))].RemovedAndAdded = true

            Players.PlayerAdded:Connect(function(Plr)
                if getgenv()[(decode_string_v1("822b953135f0e38a66",2053902704))].SETTINGS.BOXES_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("1a6270b1336f3bc4df",740893218))].LoadBox(Plr)
                end

                if getgenv()[(decode_string_v1("90f760dc8b10d771eb",900959905))].SETTINGS.TRACERS_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("ccc5dcb6491b83bb53",1149651424))].LoadTracers(Plr)
                end
            end)
        end
    end
    
    getgenv()[(decode_string_v1("23d7a73a29fcc73452",1386494426))].Connect()

    getgenv()[(decode_string_v1("bb2ae9010d3265bd04",1542891495))].Aimbot = function()
        local Proxy = newproxy(true);
        local MetaTable = getmetatable(Proxy);

        local function AimAtPlayer(Camera, Mouse, target)
            local TARGETPOS = Camera:WorldToScreenPoint(target.Position)
            local GOTO = Vector2.new((TARGETPOS.X - Mouse.X) * .15, (TARGETPOS.Y - Mouse.Y) * .15)
            mousemoverel(GOTO.X, GOTO.Y) -- Quick math for the aim function lmao
        end

        getgenv()[(decode_string_v1("2c026b5cdbd9a6c6a00391",38387992))].AimBot = nil

        MetaTable.Start = function()
            getgenv()[(decode_string_v1("af99878d6e3f936d96fbf0",487181282))].AimBot = nil
            if getgenv()[(decode_string_v1("6cb35952ffd687ebfffe7d",1764334714))].AimBot == nil then

                getgenv()[(decode_string_v1("cc4e7d19b103106a7f8289",811961990))].AimBot = function()
                    local LastDistance = 999999
                    for _, FPlayer in ipairs(Players:GetPlayers()) do
                        if FPlayer ~= LPlayer then

                            local TeamCheck = tostring(GetPlrTeam(FPlayer)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("1e0a001d70bdae2605",1165388778))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
                            if not TeamCheck then
                                local FChar = GetChar_Ez(FPlayer)

                                if FChar then
                                    local HeadCheck = FChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("eba583a4c3",1957347463)) and PartNames[game.PlaceId].Head or (decode_string_v1("bf3d9d8e",1066698967)))

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
            getgenv()[(decode_string_v1("80c7d05189f45be150d427",2026963142))].AimBot = nil
        end

        MetaTable.TeamCheck = function(Bool)
            getgenv()[(decode_string_v1("d45589fa9a28d8b59d",867871609))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
        end

        return MetaTable
    end

    if getgenv().ESP_TESTING == true then
        getgenv()[(decode_string_v1("014f1a46683eb3ad02",1670229416))].SetTracersVisibility(true)
        getgenv()[(decode_string_v1("74399ba30cf212c44f",1923038057))].SetBoxVisibility(true)
        getgenv()[(decode_string_v1("8af11b08b1e888b0b1",1304136278))].SetTeamCheck(false)
        getgenv()[(decode_string_v1("7a1e7940a6f74d5b69",969881442))].UpdateColor(Color3.fromRGB(79, 22, 201))
    end

    if not getgenv()[(decode_string_v1("40ae365107fec9e070e5",1113857637))] then
        getgenv()[(decode_string_v1("e099d836ccce6d9a8877",894893348))] = true
        local RunService = game[(decode_string_v1("cffeb92f095ac3fbfa16",1443782072))](game, (decode_string_v1("6112a6638e5e95b2eaf6",953594465)))
        RunService.Heartbeat:Connect(function()
            for _, Function in pairs(getgenv()[(decode_string_v1("324cf151d61d1ecfd7493f",380491500))]) do
                if type(Function) == (decode_string_v1("6ada8982f276d949",1634227381)) then
                    xpcall(Function, ErrorHandlerTing)
                end
            end
        end)
    end
end
            --Timber. lua_compile_spot
            --PhantomForces. lua_compile_spot
            --BloxBurg. lua_compile_spot
            local VRService = game:GetService((decode_string_v1("fdd5dfd58cc7def9ea",1322724529)))

do
    local function WorldZeroInit()
        local MarketService = game:GetService((decode_string_v1("1eaa9d84cd20e4c695ad85ade74d7d5a3041",220442351)))
        local VRService = game:GetService((decode_string_v1("0961862ca6b4c76d13f3ac",348017211)))
    
        local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
        if isSuccessful then
            if info.Creator.Name == (decode_string_v1("e7a03d083e52565acee20d73b3",1610487726)) then
                --

                getgenv()[(decode_string_v1("07309558a459c653972b95cdb27e23f40f6c22a690",545710225))] = false
            
                --------------------------------------------------------------------------------------------
        
                getgenv().UpdateLoop = type(getgenv().UpdateLoop) == (decode_string_v1("8175bfbaf81ed0",2004405607)) and getgenv().UpdateLoop or false;
                getgenv().UpdateCache = type(getgenv().UpdateCache) == (decode_string_v1("9331f2c54e",1050265476)) and getgenv().UpdateCache or {};
                getgenv().MOB_ESP_OBJECTS = type(getgenv().MOB_ESP_OBJECTS) == (decode_string_v1("03f4461895",1907840004)) and getgenv().MOB_ESP_OBJECTS or {};
                getgenv().MOB_ESP_CONNECTIONS = type(getgenv().MOB_ESP_CONNECTIONS) == (decode_string_v1("44a46dbe46",1568483379)) and getgenv().MOB_ESP_CONNECTIONS or {};
        
                local GameConfigFile = GetGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("7dd2f03bc1",2032714714)))
                Settings_Name = (decode_string_v1("c299dd0135b4e9575266f196447ae5d0329b49712c880ae7c1afba",1842381942))

                getgenv()[Settings_Name] = {
                    AutoAttackMobs = GameConfigFile.AutoAttackMobs or false,
                    AutoPickupCoins = GameConfigFile.AutoPickupCoins or false,
                    AntiIdle = GameConfigFile.AntiIdle or false,
                    MobESP = GameConfigFile.MobESP or false,
                    MobESPRenderDistance = GameConfigFile.MobESPRenderDistance or 250
                }
                
                Window = UILibrary.new((decode_string_v1("520c3fb265c54040cbfca3c2584498f0d95453533d5e3d",1287158945)), 5013109572)
    
                local TweenService = game:GetService((decode_string_v1("b333a5dc9f7b72f7d38b20f7",824481816)))
                local Player = game.Players.LocalPlayer
                local Character = nil
                local PlayerPosition = nil
                local PlayerLookVector = nil
                local RootPart = nil
                local ItemTable = nil
                local WorldTeleports = {}
                local WorldIDs = {}

                local ActionsModule = require(game.ReplicatedStorage.Client.Actions);
                local TeleportModule = require(game.ReplicatedStorage.Shared.Teleport);
                local CombatModule = require(game.ReplicatedStorage.Shared.Combat);
                local AnimationModule = require(game.ReplicatedStorage.Client.Animations);
        
                local MobsFolder = workspace:FindFirstChild((decode_string_v1("9420c0a1",2125823078)))
                --[===[local PlayerWindow = Window:addPage("Player", 5012544693)]===]
                local AutoFarmWindow = Window:addPage((decode_string_v1("40e28815046d25fedc",1208301284)), 5012544693)
                local VisualsWindow = Window:addPage((decode_string_v1("f5f477722dc0d9",1865374725)), 5012544693)
                local TeleportsWindow = Window:addPage((decode_string_v1("74bfce2f6c6940fb15",1481993159)), 5012544693)
                local Worlds_TP_Section = TeleportsWindow:addSection((decode_string_v1("1a60a4423ebd",264015488)), 5012544693)
                local AutoFarmSection = AutoFarmWindow:addSection((decode_string_v1("9502d47d77c0a65f",788700690)), 5012544693)
                local VisualsSection = VisualsWindow:addSection((decode_string_v1("561b326aa554ec42",1696467121)), 5012544693)

                local Camera = workspace.Camera
                local GUIService = game[(decode_string_v1("ee02aacd7e404c2309b5",2086411692))](game, (decode_string_v1("4c024cf2ab1ad32df33a",1965241646)))
                
                local function GetNearMobs()

                    local Mobs = {}
                    local HitBoxSize = Vector3.new(25, 15, 25)

                    if RootPart then

                        local MobParams = OverlapParams.new()
                        MobParams.FilterDescendantsInstances = MobsFolder:GetChildren()
                        MobParams.CollisionGroup = (decode_string_v1("b3ecd07e92cf47",1077436467))
                        MobParams.FilterType = Enum.RaycastFilterType.Whitelist

                        local FoundInBox = workspace:GetPartBoundsInBox(RootPart.CFrame, HitBoxSize, MobParams)

                        if FoundInBox ~= nil then
                            for _, Part in ipairs(FoundInBox) do
                                if Part:IsA((decode_string_v1("a514c68774e3b3e3",398724258))) then
                                    if Part.Name == (decode_string_v1("a65d283d06808d38",669861704)) then
                                        table.insert(Mobs, Part.Parent)
                                    end
                                end
                            end
                        end

                    end

                    return Mobs
                end
        
                for _, V in pairs(TeleportModule:GetLocations()) do
                    if V.Name:find((decode_string_v1("fb3116a8ea",1691397531))) then
                        if V.CanTeleport == true then
                            table.insert(WorldTeleports, V.Name)
                            WorldIDs[V.Name] = V.WorldOrderID
                        end
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
                                Box = Drawing.new((decode_string_v1("6ce8c7c2321f",1881001126))),
                                ESPText = Drawing.new((decode_string_v1("04201eca",1380714819)))
                            }
    
                            local Box =  getgenv().MOB_ESP_OBJECTS[Mob].Box
                            local ESPText =  getgenv().MOB_ESP_OBJECTS[Mob].ESPText
    
                            ESPText.Text = (decode_string_v1("",1246439277))
                            ESPText.Color = Color3.fromRGB(255, 255, 255);
                            ESPText.Size = 20.0
                            ESPText.Visible = false
                            ESPText.Outline = true
                            ESPText.Center = true
    
                            Box.Thickness = 2;
                            Box.Filled = false;
                            Box.Visible = false;
                            
                            getgenv().UpdateCache[Mob] = function()
                                local Collider = Mob:FindFirstChild((decode_string_v1("cc0e2d1cb9e15cde",248598552)))

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
    
                                    ESPText.Text = string.format((decode_string_v1("0c2401ed37f420f110f20f3cda2ddddfe7a074080553803f",2070310504)), Mob.Name, tostring( math.floor( (MobPos - PlayerPosition).Magnitude ) ) )
    
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
    
                                            local CreatureHealthFolder = Mob:FindFirstChild((decode_string_v1("00b1b53f26c0b70651766aab7729c838",1669303671)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("409fb7d93f54",167311976)))
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
                            if typeof(V) == (decode_string_v1("7205d1f8c7321319b8001288e05e8746a21e87",1342408835)) then
                                V:Disconnect()
                                getgenv().MOB_ESP_CONNECTIONS[I] = nil
                            end
                        end
                    end

                    ESP_META.StartConnections = function()
                        ESP_META.EndConnections()

                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("20d4879a5234cee8",845873075))] = MobsFolder.ChildAdded:Connect(function(Mob)
                            ESP_META.AddEsp(Mob)
                        end)
        
                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("cbb14bc68b2475d07bc8",1731330803))] = MobsFolder.ChildRemoved:Connect(function(Mob)
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
                
                getgenv()[(decode_string_v1("961ba3539acfeaf7f8b09c",292689452))][(decode_string_v1("05b6ee6f6bcd824d8c67b762a5d47955",1376490282))] = function()
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

                getgenv().UpdateCache[(decode_string_v1("2ebbcd29838828bfeaba",1790867044))] = function()
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
                
                VisualsSection:addSlider((decode_string_v1("82755b3db7ab6f9427a7325d7a6bd1bc25e913",2053908533)), getgenv()[Settings_Name].MobESPRenderDistance, 250, 10000, function(NewValue)
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

                VisualsSection:addToggle((decode_string_v1("c8953663ee97c8",1237179834)), getgenv()[Settings_Name].MobESP, function(Bool)
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

                AutoFarmSection:addToggle((decode_string_v1("8c5320952cdabe8f48b73998d5944ff1a027d7d73060f7a8d1083353c2f5105889bdbc",782659693)), getgenv()[Settings_Name].AutoAttackMobs, function(Bool)
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
                                            local CreatureHealthFolder = Creature:FindFirstChild((decode_string_v1("bf5edc31bec510bb772a8540de3265b9",93351974)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("1f78f6e897da",1935571264)))
                                                
                                                if CreatureHealth then
                                                    
                                                    if CreatureHealth.Value > 0 then
                                                        local CreaturePos = Creature:GetPivot();
    
                                                        --local v14 = AnimationModule:GetAnims().Defender["Attack" .. tostring(AttackIndex)];
                                                        if not ActionsModule:IsBusy() then
                                                            TotalHits = TotalHits + 1
    
                                                            --ActionsModule:FireSkillUsedSignal("Primary");
                                                            --ActionsModule:FireCooldown("Primary");
                                                            ActionsModule:SetBusy((decode_string_v1("3f62a2bc82",506339682)));
                                                        
                                                            if Character then
                                                                PlayerPosition = Character.PrimaryPart.Position
                                                                PlayerLookVector = Character.PrimaryPart.CFrame.LookVector
                                                                RootPart = Character.PrimaryPart
                                                            end
    
                                                            RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
                                                            Camera.CFrame = CFrame.new(Camera.CFrame.p, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
    
                                                            CombatModule:AttackWithSkill((decode_string_v1("b36f6e6eaceaa20b",631482890)) .. tostring(AttackIndex), PlayerPosition, CFrame.new(PlayerPosition, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z)).LookVector * 1.1 );
                                                            
                                                            AttackIndex = math.clamp(AttackIndex + 1, 1, 6)
    
                                                            if AttackIndex > 5 then
                                                                AttackIndex = 1
                                                            end

                                                            CreatureIndex = CreatureIndex + 1
    
                                                            task.wait(0.01)
                                                            ActionsModule:ReleaseBusy((decode_string_v1("046b447b28",1020272158)));
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
                    if A:IsA((decode_string_v1("f40db0b2c4",308135510))) then
                        if tostring(A) == (decode_string_v1("66876adfb7",1572891332)) then
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

                AutoFarmSection:addToggle((decode_string_v1("301ad26f0947fc04",1310512892)), getgenv()[Settings_Name].AntiIdle, function(Bool)
                    getgenv()[Settings_Name].AntiIdle = Bool
                end)
    
                AutoFarmSection:addToggle((decode_string_v1("ad16daaacbf8d6a3cf483797b0d2d75499febf9a1f5cf774e2bb",1681514539)), getgenv()[Settings_Name].AutoPickupCoins, function(Bool)
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
        
                if not getgenv()[(decode_string_v1("f6cfab52d960f17fab70",1105171254))] then
                    getgenv()[(decode_string_v1("24eebe164292eda82fa7",1309340953))] = true
                    RunService.Heartbeat:Connect(function()
                        for _, Function in pairs(getgenv()[(decode_string_v1("e23d5510b71117bdd4973d",415439367))]) do
                            if type(Function) == (decode_string_v1("21012377f8b5cd55",398103055)) then
                                pcall(Function)
                            end
                        end
                    end)
                end
        
                print((decode_string_v1("5051d35ed0f748501daf7e862cc840001b8a5f1dda",2051947773)))
                --
            end
        end    
    end
    
    WorldZeroInit()

    local _Players = game:GetService((decode_string_v1("87d898eb914577",933830860)))
    local _Player = _Players.LocalPlayer
    
    local queue_on_teleport = type(syn) == (decode_string_v1("53e310aa4a",2126667545)) and syn.queue_on_teleport or queue_on_teleport
    
    local RejoinCode = (decode_string_v1("3799d7f39a22da61d8d5208ae810b999521e992180572a76119a6dc34213bea8695c7e7e48ed39986e0dd5b8a47e6b21901ebb419b86a2b8ee88ccd5e9240483a5b6d17ffc3d49b18a056f015e1aa22a100160fdccecce0632861f34c043c355443cd2e293e2fb66f7b01755022bdfc27231315b94ef425ef556b950609cacea5831d19bd73912ad1c97ab5852e122b4e5fbeb6688ffd9feabd14539fcb34702f110342026cdaac9df698dda7ca645ea7e466eef60a0fcae9d96138564a87373a3128397e23ecdeb8ab55e0443b61772eb3e5667154c0f4ad6697654d4ce16aa1b553bb41bbbc07beb65ff20585df40dbcf7743bb254a46cd0ae38206b1287b0de7cc8b5601ec3fa02a8348dcf1e483e722aa8f3d13f0f0fc0cbff130ca4abe2db217d0c1b6fd63badd94d5e7bf34db0ad844130ed614e320987d7e4dbbeedca5651ebfcd8e4038393b3809bdcce55732282b11ec99cea7f62fe6a2f0a05eae23ef040a0161943f6a5c4c5e6e26f6cbe1f5cfb3fd0e8fdbaf3adac520e1ad45472664e4357b4ac08243b040f45474ceeb0f4d22c159b1407912125b1624c00615ec9f39c4a946671457d630d656a8c8586becf9a2a42b1f680fdc5762a11677cffcab44f4db91f8b71e2fe3e5778cbef2dacabac3f5f00ad51d861aa49676389891acf62f472c504410cc14fe2cf02556bce882c1f2a88bd42d78ae03b42f63e8774fe3f598dcc38442fe9ba953b246126a31ebef51e410ebbf5a2237fe4cf964d54591c1080f9c791a1afbd2b75c8e2b33c28936adaada0ca5c3f2f46cec0aa25e48e98fc605e0a6dd5e9998dbda2ba3cd5ebd722182e1e2fd1c30e5db390407efc0584062e7f25430fcbf9c51e5a88dbb585",402939656))

    if not isfile((decode_string_v1("4b43a80298ebc1784e41c439b0ba7f145c50c2",1683106549))) then
        writefile((decode_string_v1("44d6435105b766e3916e16cac40ff92ca4ae0a",1267964328)), tostring(RejoinCode))
    end
    
    queue_on_teleport((decode_string_v1("37e4dab1319aa3783135b941e64ebbcd442857ad57fff2089ba81d28468083d6f0767663b84887fae9477f4fa5a40cb1dc50f4689e531daf4561fdfc35672fab3948e0350d7961c5f8dd975e1bc74e5fbc47a06067ad6d6527acf1dc5c274a6bbc87aead49147e59197615bf",328146222)))
end
            --DaHood. lua_compile_spot

			if getgenv()[(decode_string_v1("283acbec866cacecff01cf9b591995f75b83c9dd15",614539277))] == true then
                do
    local Players = game[(decode_string_v1("6cbe65166badf33ddee9",98420997))](game, (decode_string_v1("a7c7cc5a44bbe0",2023722863)))
    local Player = Players[(decode_string_v1("2c6366db3c7c758e971f12",1578892253))]
    local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("9a6d77927e02",1497100242))], string[(decode_string_v1("eccb4d1dea",854143437))], string[(decode_string_v1("4058ddb9",692789551))], string[(decode_string_v1("9d5699fa4f16",180900172))], string[(decode_string_v1("14830a85bb",308691388))]

    Window = UILibrary.new((decode_string_v1("5c381a5bd50c8a242e0086bd9d62bf37d0a3cace3ea1",776182678)), 5013109572)

    local VisualsWindow = Window:addPage((decode_string_v1("454759b8af91ee",669338678)), 5012544693)
    local VisualsSelection = VisualsWindow:addSection((decode_string_v1("86c7499a",1831692100)))

    local GameConfigFile = GetGameConfig(FixName(tostring((decode_string_v1("137691b2a608edb414",1392161974)))) .. (decode_string_v1("42e833df57",1664101932)))
    Settings_Name = (decode_string_v1("f64c21f89d21c67395c62b0456e7b684edc801a052643fd1281b",1101927378))

    getgenv()[Settings_Name] = {
        Teamcheck = GameConfigFile.Teamcheck or false,
        Boxes = GameConfigFile.Boxes or false,
        Tracers = GameConfigFile.Tracers or false,
        Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
    }

    VisualsSelection:addToggle((decode_string_v1("0c2306c88d8acee6a27285f84c",2092816225)), getgenv()[Settings_Name].Teamcheck, function(Bool)
        getgenv()[Settings_Name].Teamcheck = Bool
        getgenv()[(decode_string_v1("4e3dcd5507883c7c74",15649972))].SetTeamCheck(Bool)
    end)

    VisualsSelection:addToggle((decode_string_v1("b8037cc7df387d02b6",93568709)), getgenv()[Settings_Name].Boxes, function(Bool)
        getgenv()[Settings_Name].Boxes = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("4e28eeae9e5206380d",1276002314))].LoadBox(Plr)
                end
            end
            getgenv()[(decode_string_v1("42853fc62559220579",1134673529))].SetBoxVisibility(true)
        else
            getgenv()[(decode_string_v1("d7607b3099a86ac33c",1631071815))].UnLoadType((decode_string_v1("327e566a0ea49d932b3f",2037574994)))
            getgenv()[(decode_string_v1("1ecc1d081bd4e37c86",1165927150))].SetBoxVisibility(false)
        end
    end)

    VisualsSelection:addToggle((decode_string_v1("ffa67180114076009af61d",495055411)), getgenv()[Settings_Name].Tracers, function(Bool)
        getgenv()[Settings_Name].Tracers = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("2ed9908ce353c7e84b",1802005194))].LoadTracers(Plr)
                end
            end
            getgenv()[(decode_string_v1("2ad42d61c3fb5ca30a",119435017))].SetTracersVisibility(true)
        else
            getgenv()[(decode_string_v1("3098701aaedb9a73e3",674141572))].UnLoadType((decode_string_v1("3278dd9d4c64bf60210c1309",679806888)))
            getgenv()[(decode_string_v1("d7c7984833374ae38c",60968228))].SetTracersVisibility(false)
        end
    end)

    local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color

    getgenv()[(decode_string_v1("7cbf77eccd80016d0e",1258733454))].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

    VisualsSelection:addColorPicker((decode_string_v1("82afe4e0ebbc14e3b8",2060994662)), Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
        local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)

        getgenv()[Settings_Name].Color.R = R
        getgenv()[Settings_Name].Color.G = G
        getgenv()[Settings_Name].Color.B = B

        getgenv()[(decode_string_v1("f078cad23916ea957d",1122041548))].UpdateColor(Color3.fromRGB(R, G, B))
    end)

    VisualsSelection:addButton((decode_string_v1("1c935523a04a28ca452e",704034799)), function(Bool)
        getgenv()[(decode_string_v1("30fa428331b8bd229c",2032333638))].UnLoad()
    end)
end
			end

			if Window ~= nil and Settings_Name ~= nil then
				local MarketService = game:GetService((decode_string_v1("cc6761a85431b7f6035de78430588739e34f",108676935)))
				SettingsPage = SettingsPage or Window:addPage((decode_string_v1("57b18d36940a7bc7",1351673435)), 5012544693)
				SettingsSection = SettingsSection or SettingsPage:addSection((decode_string_v1("fccd2c6b13",825007033)), 5012544693)
				SettingsSection:addButton((decode_string_v1("3a2f94631d145e939bac6f",233544338)), function()
					local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
					if isSuccessful then
						if tostring(info.Creator.Name) == (decode_string_v1("70deee344fd4d700d4b0535797",305417043)) then
							SaveGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("451c9c55de",1763552651)), getgenv()[Settings_Name])
                        elseif getgenv()[(decode_string_v1("b0e10f2e858c72aadcd944a09fde13018c9a8104d3",260458026))] == true then
							SaveGameConfig(FixName(tostring((decode_string_v1("1c77bf7610470bc6ce",2090996254)))) .. (decode_string_v1("55de78eca1",1940727028)), getgenv()[Settings_Name])
                        else
							SaveGameConfig(FixName(tostring(info.Name)) .. (decode_string_v1("26fc717c53",1440700967)), getgenv()[Settings_Name])
						end
					end
				end)
				SettingsSection:addKeybind((decode_string_v1("6be49905ffd85aa27fa9fbead076",1772047458)), Enum.KeyCode.Home, function()
					Window:toggle()
				end, function()
				end)
			end
		else
			return sendError(serverData, clientData)
		end
	end
end, function(err)
	return warn(err .. (decode_string_v1("41",927322476)) .. debug.traceback())
end)