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
		getgenv().Key = (decode_string_v1("1a2e351757d0f1bcd05000ba4fbdbb5d",826188279));
		getgenv().DiscordWebhook = (decode_string_v1("d3bc3c92",137659876));
		getgenv().WebhookEnabled = false;
		getgenv().GubVersion = (decode_string_v1("fc5ff8",2120211804));

		local CLIENT_DEOBF_OFFSET = 3;
		local SERVER_DEOBF_OFFSET = 1;
		local StartTimer = os.time()
		local UILibrary = loadstring(game:HttpGet((decode_string_v1("b0811523b892338a66256669d4165882bed0bad774e127d480e4a966081e0a08bbe54cd6f1934e8df04e5c7aa889f6d226daf0af3a8cbc9badf69bcf9dd11b7a2d4bb87e9ebb5d7c9de2f911df",1721927752)), true))()
		local library = loadstring(game:HttpGet((decode_string_v1("8f0c52973e10d95457b7a713df07cce2c314a0db9e699bda51ff5d78d888739cea46e79744c03af195317a58baa4e42a5ed5fe7cc884c41f6226d66504fdf9aa4bc9e513645115c978522d2a6c989072d535b42a234ab73be1728c1a427ffd1679f8",198994679))))()
		library:Notification((decode_string_v1("75324cd63ec65b",498723971)), (decode_string_v1("6d8233dbbbd8b95c730a9ca0a4f2d608a11b59df0dc84c266d3110a43da22884b182c0f6b3042434d04700475fba",2053813023)), 10, Color3.fromRGB(255, 255, 255))

		if not isfolder((decode_string_v1("e4279b3f229e72ec614f8c36c1e5",1799624001))) then
			makefolder((decode_string_v1("4b00b244f855fe3da39a7ed886bb",1669694705)))
		end

		for i, v in pairs(game:GetService((decode_string_v1("d5ba6997965fad",1744789224))):GetDescendants()) do
			pcall(function()
				if v.Name == (decode_string_v1("3da89c3f",544794089)) then
					v.Parent.Parent:Destroy()
				end
			end)
		end

		local function identify()
			local Executor = string.lower(identifyexecutor())
			local ExecutorTable = nil
			if string.find(Executor, (decode_string_v1("b40d30f78659ec",1138738313))) then
				ExecutorTable = {
					(decode_string_v1("ce314dfc83fb34",1058697214)),
					syn.request
				}
			end
			if string.find(Executor, (decode_string_v1("33615247",1453384210))) then
				ExecutorTable = {
					(decode_string_v1("7b6877be",178583465)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("7d6f4411",590800525))) then
				ExecutorTable = {
					(decode_string_v1("d253c7ae557d",1735692924)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("92177440e36f",1319658965))) then
				ExecutorTable = {
					(decode_string_v1("571337adc2efc09cf88baa",150751125)),
					http.request
				}
			end
			if string.find(Executor, (decode_string_v1("b28ea7",640003625))) then
				ExecutorTable = {
					(decode_string_v1("ceca5c557ea8e07a",1064836213)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("67ae2d",767276863))) then
				ExecutorTable = {
					(decode_string_v1("a862b950e5a3bc5f28461fa3",1348178068)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("7fc45b67",1753217329))) then
				ExecutorTable = {
					(decode_string_v1("6ab7ec7dad26d3eae61f",1751586387)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("cca719e3",32700186))) then
				ExecutorTable = {
					(decode_string_v1("bae37ea4b90f71",678775507)),
					httprequest
				}
			end
			if string.find(Executor, (decode_string_v1("c0f1deb44291d5df",1226994516))) then
				ExecutorTable = {
					(decode_string_v1("dac9e65fea8c9b8f",398396512)),
					http_request
				}
			end
			if getgenv().WRD_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("a507684436b13d17",314937262)),
					http_request
				}
			end
			if getgenv().unlock_module ~= nil and getgenv().setscriptable ~= nil and getgenv().import ~= nil then
				ExecutorTable = {
					(decode_string_v1("6405cf56e562feddc159505b59f638",800198445)),
					http_request
				}
			end
			if getgenv().OXYGEN_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("0245f6bbeee66aaa",898601279)),
					http_request
				}
			end
			if ExecutorTable == nil then
				library:Notification((decode_string_v1("0e020a2a4dd15d954f111266af",308415932)), (decode_string_v1("22b4999ebbfd6ae249690e454195ecde4b8d8f41ff9e02815c4f6b22a6526d7441daeb22ca1e8067459aa3d0dbc1e8f27cba2973ba4aa3ec93f2e95138fc94c7a883096441bc58d8",794371213)), 10, Color3.fromRGB(255, 255, 255))
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
				library:Notification((decode_string_v1("ae1d79c3c71cfe88fbc996654ec9",957274248)), (decode_string_v1("5a3fed64e11a0f43b9398f3c3fe19c2a202721876ab933055f6314bc5743c8aa1fe3e74a48d4fbf72046408b7a5bd2c86a7c7f5a348f8799fa2fd6a6d7f08c106d1cc861c2",1229101597)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("f808e624e275e1264497c28c9b731181b37916dade6409522563076064c7eb8c288e72a81d76a744521d1333b9f9d358",1309330496)) then
				library:Notification((decode_string_v1("8bae79a86b6cce28acb019ff168c",1429947108)), (decode_string_v1("8a1cddd6b68224d152dcea39c6296152c58953ab0bf6ea8b343dedd554f0a2a36cd04cb5c51a1d54287b80324d01bd8351201ad556a5910a4e",1163164125)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("7da99119bbb8fb14f5deb4a5f764682b3df6053cc1e31bda6b",1388000579)) then
				library:Notification((decode_string_v1("60a28f2a84b1467c637e01b3ac75",887048637)), (decode_string_v1("a8a5879023dd4f57596ba8b2526a6f99f56e2d7853d7edf343f6adc4e0c1d56ccedbf1f84562f9996e4313df2d89000f0e619c8c82e53751a711b0a868",975492123)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("d34d49996b87c86508d62a73da021ff1d4c4805d",1656081769)) then
				library:Notification((decode_string_v1("8dd358d72ab8f9f61258672be8035846",42952997)), (decode_string_v1("2eca3da1053dc89492f8c70b739f9351dfe243f01b3641cc69e7264c0cf8db7b169c20e2366031762472d9063fb3408e56d30ce8fd44c1a1762e9dcf7a1dc268c159cd480d",2075921663)), 15, Color3.fromRGB(255, 255, 255))
			else
				library:Notification((decode_string_v1("a47e194d9a2f67e19b9c8ab1b909",683825087)), (decode_string_v1("1e28992f163297ffb3779680d42dc41ac59e9b6d548f811bb60d988fabd5bb41b47295998d0b1151aca254a696656094b7b82d24d1a455c46fd69e0e6c71a35cf746c071e326fce51230d249bb8c7313d834c60ea4b15cbd42019429331544a1b7af174630face0f642ccec1895b01d25151dd25954e14b686",919801884)), 15, Color3.fromRGB(255, 255, 255))
				setclipboard((decode_string_v1("01be70545b9ac56857ce7d5136db5f4b9163dd7385c52bee46c156c851a49bcf64fa69e51517ff235133df51fd4a49de92aaf4e32b7710f12ca234aff5f0",1689364051)) .. clientData .. (decode_string_v1("b7513cee498163988e9a4d37",613169980)) .. exploit .. (decode_string_v1("372c6812067d1bf3",253999298)) .. Key .. (decode_string_v1("781acf91de182ca9a153ea5170917aac",498233786)) .. serverData .. (decode_string_v1("3712095dfc64272b9d40abab19dfc814d7",109215921)) .. tostring(newtime))
			end

			specialisedrequest({
				Url = (decode_string_v1("f0f4f0e940d176afe253b56b059275601a0f2b20cfd9a4bca3872469fa",1559727844)),
				Method = (decode_string_v1("8780fe37",1048455108)),
				Headers = {
					[(decode_string_v1("e4909a233ec1c885cbbf3bf5",1138679277))] = (decode_string_v1("7c83422da4b801a6c09973222c00234f",1122860941));
					[(decode_string_v1("9fc63eaf11ce",1613699452))] = (decode_string_v1("b08704bce7b8976d93e9c742eaad2d10ea4ec3",1732599341));
				},
				Body = game:GetService((decode_string_v1("9f6fe31be2b15ed1f85dd0",327071409))):JSONEncode({
					[(decode_string_v1("b514e9",1717577197))] = (decode_string_v1("a32ad2da402cbb38d5094db56e1a",1661540570));
					[(decode_string_v1("55a3f144",56540426))] = {
						[(decode_string_v1("d1a7d3b4",1657131115))] = (decode_string_v1("3e0b974e81bbdd9210e7",930037124))
					};
					[(decode_string_v1("29779a405e",1022350868))] = (decode_string_v1("c675f8a0736d4e80b7afc329559ed86b8f088a157a8494420527f747f997c1e924de0d71",797928879));
				})
			})
		end

		local random = Random.new()
		local letters = {(decode_string_v1("bc",2020236696)),(decode_string_v1("61",792337238)),(decode_string_v1("0d",1562925489)),(decode_string_v1("9c",1602920634)),(decode_string_v1("60",112613229)),(decode_string_v1("6a",546983903)),(decode_string_v1("f2",1286906445)),(decode_string_v1("ef",745994287)),(decode_string_v1("06",850255134)),(decode_string_v1("d1",975499603)),(decode_string_v1("9f",20780261)),(decode_string_v1("1b",135664350)),(decode_string_v1("2d",1601077259)),(decode_string_v1("fd",904046935)),(decode_string_v1("3c",1794596085)),(decode_string_v1("48",1369300868)),(decode_string_v1("23",1474253028)),(decode_string_v1("b9",1314403686)),(decode_string_v1("6e",1068566146)),(decode_string_v1("e4",1390111547)),(decode_string_v1("da",1308278210)),(decode_string_v1("be",530941598)),(decode_string_v1("00",413223841)),(decode_string_v1("3f",348456541)),(decode_string_v1("08",1944271445)),(decode_string_v1("25",767012946))}

		function getRandomLetter()
			return letters[random:NextInteger(1, #letters)]
		end
		local function FixName(GameName)
			return GameName:gsub((decode_string_v1("c2c694ab0c25d936b92263e1",2101601538)), (decode_string_v1("",1192978530)))
		end

		local function GetGameConfig(GameName)
			local Table = {}
			if isfolder((decode_string_v1("067c904d38bef2285e72ab1d18b9",1920238019))) then
				if isfile((decode_string_v1("d5fc17bac506bb75004a2796232e12",495471233)) .. tostring(GameName)) then
					local HttpServices = game:GetService((decode_string_v1("00b0809065f80ba1fd06b7",558758459)))
					local ConfigContents = readfile((decode_string_v1("60f9cb6f57f2da3278337b9e9d7b57",914722568)) .. tostring(GameName))
					local DecodedSuccess, DecodedContents = pcall(HttpServices.JSONDecode, HttpServices, tostring(ConfigContents))
					if DecodedSuccess then
						Table = DecodedContents
					end
				end
			end
			return Table
		end

		local function SaveGameConfig(GameName, ConfigTable)
			if isfolder((decode_string_v1("d51784d14c41b8ed1afa652863d4",1469651436))) then
				local HttpServices = game:GetService((decode_string_v1("efc94ac095760523d0c9df",655736223)))
				local EncodedSuccess, EncodedContents = pcall(HttpServices.JSONEncode, HttpServices, ConfigTable)
				if EncodedSuccess then
					writefile((decode_string_v1("b8794641c056a8aaed02bf858681ef",1899163377)) .. tostring(GameName), tostring(EncodedContents))
					return true
				end
			end
			return false
		end

		function getRandomString(length, includeCapitals)
			local length = length or 10
			local str = (decode_string_v1("",761404210))
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
				return (str_gsub(s, (decode_string_v1("6d",1068799516)), function(c)
					return str_fmt((decode_string_v1("a85d0637",392170355)), str_byte(c))
				end))
			end

			local function num2s(l, n)
				local s = (decode_string_v1("",1309644072))
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
				msg = msg .. (decode_string_v1("97",86542508)) .. str_rep((decode_string_v1("17",1082214750)), extra) .. len
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

		if getgenv().Key == (decode_string_v1("",1497514765)) or nil then
			Key = (decode_string_v1("754852c6",642678467))
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
			local charset = (decode_string_v1("7a310418ed46aeea37be72e641da568f7bbdafc3ecd93d940ede02d75a584e2f4161527bf90aba0eb1356587c84fa4a41745f4a9895d5da3d5ce95b56a",1988059926))
			if type(v1) == (decode_string_v1("f7764685f3bc",16689621)) and type(v2) == (decode_string_v1("7d128f9726b4",1552165397)) then
				local length1, length2, chars_1, chars_2 = #v1, #v2, {}, {}
				v1:gsub((decode_string_v1("ca",457665449)), function(s)
					chars_1[#chars_1 + 1] = s
				end)
				v2:gsub((decode_string_v1("65",2109893567)), function(s)
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
			local Pos, Finished, charCodes, Key, arglen = 1, (decode_string_v1("",1572428296)), {}, 447 - #((decode_string_v1("ffa7872e1355a7857c110b3c4195fd325622263790fb6dd210ec873607f62a77f9",2115630340))), 35 - #((decode_string_v1("fed82d",2134962551)))
			local schar = Finished.char
			local Keys = {
				233 + #((decode_string_v1("489ffa",956705174))),
				781 - #((decode_string_v1("d8a355d9",797354062))),
				785 - #((decode_string_v1("6e3b238d0965",635980451))),
				876 - #((decode_string_v1("301859f5644ebe",963525948))),
				350 - #((decode_string_v1("93cb3030a43da9a0113cf4151d41c78a363e7c",1880268487))),
				23 + #((decode_string_v1("ffba6f9b09e696332c209a9dca155a242de1510aad2d07856afeea2513baf138cc",698892205))),
				111 + #((decode_string_v1("303972d4ac396e67e8b1280b5095491de88dfd6d0675ffe473d6b057bf9d9f13a4",1401042975))),
				440 + #((decode_string_v1("78c623a2838c4a71a9021919",1165739808))),
				341 + #((decode_string_v1("c27f5578",959697877))),
				322 - #((decode_string_v1("47ac19b892f3a2dad1e0149583795c8d2c00ea059df954ea53cb3a44f965ecb683aae8d1e52b00ffc0583e05552ea6b020e06147b064d8c99f2202441945454ad850161b87235027d01ea5e6de3e02a099ce934fcf8d581acb9f5e7d21df88979ad9cc26ba83ac03b820beda",434637707))),
				117 + #((decode_string_v1("4bde7c83267e4888d1f34e3b",1698786826))),
				196 + #((decode_string_v1("c9f1ba5ec30a92a5b777ba19a13b728a4f347e",1254001150))),
				272 - #((decode_string_v1("22911d7069c3de9baadb",1946717103))),
				653 - #((decode_string_v1("b2636f1ff9d4ba661bb22f4f",847327366))),
				510 + #((decode_string_v1("6b5b105d0448",1651034668))),
				61 + #((decode_string_v1("f2df1273833460569b79",751374224))),
				61 - #((decode_string_v1("8111d72933122ff954",447528445))),
				283 - #((decode_string_v1("7eea653d",1087990754))),
				568 - #((decode_string_v1("7ab855c02468",590144704))),
				933 + #((decode_string_v1("dc9f3951e70fd3c18e3a33a41365",1881242663))),
				642 - #((decode_string_v1("93a8a24c4f10ec360676",1891508159))),
				651 - #((decode_string_v1("944a96791be5d278419d",138437795))),
				875 - #((decode_string_v1("864d3adf",78236147))),
				882 - #((decode_string_v1("2bee7487fa75",22952427))),
				333 - #((decode_string_v1("f574e050a79adc0cd776ffb100ef85b876ae",563420351))),
				245 - #((decode_string_v1("48d7f9be44a7",307506978))),
				988 - #((decode_string_v1("18c97b2dfba5ae43c7",951142258))),
				118 + #((decode_string_v1("bc4ab47d7b1c092791727df85158884be158c5",1421216315))),
				623 + #((decode_string_v1("1a1f43beaef9",273246261))),
				629 + #((decode_string_v1("61fbf1",792342827))),
				689 - #((decode_string_v1("9b89e99259f2b8118f72",1537931788))),
				828 - #((decode_string_v1("96282ecfcb24c7db018bd023",679345543))),
				76 - #((decode_string_v1("5c06ef5a9b6962640b3a6e24",1197353246))),
				71 - #((decode_string_v1("5a95180b6a06",1261879468))),
				85 - #((decode_string_v1("fb1278d5bb7ab8d6a6a92a377973b20ba8f644",807839856))),
				79 - #((decode_string_v1("24181146e9e0619126668b9a",349999375))),
				56 + #((decode_string_v1("475e364ec286643ead0abe41",6943533)))
			}
			getfenv(0)
			Finished.split((decode_string_v1("",1512289648)), (decode_string_v1("",1614627499)))
			while Pos <= 132 - #((decode_string_v1("f2370ee65b8d66cc001c",757439077))) do
				charCodes[Pos] = schar(Pos)
				Pos = Pos + 1
			end
			Pos = 1
			local Confused = (decode_string_v1("",595377898))
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
			712 - #((decode_string_v1("9c9bb812",163646111))),
			1305 + #((decode_string_v1("337eb25e1e2411fc4fdc",2027892076))),
			1265 - #((decode_string_v1("4f37c1f62e9c0342b4d7a4f29e898fbe9b6d24abe4bf164efd986f04990bb03421",1996177911))),
			1343 + #((decode_string_v1("298f2eec424d20afd10e1e",1545490075))),
			784 + #((decode_string_v1("4caa2a23",1894666685))),
			553 - #((decode_string_v1("2f0ece22dba999",1824603264))),
			594 + #((decode_string_v1("e487fe61d5efd4ed8eb16a16",1823692063))),
			929 + #((decode_string_v1("256d74dadee6318a75076ad92065b526cc58d7",340708182))),
			822 + #((decode_string_v1("3e2ca27e03120392b092",1947626992))),
			735 - #((decode_string_v1("5e08f89e3ed7106e49400633c952a5d3b0eaca",1494286205))),
			649 + #((decode_string_v1("b2cb8042",1940857458))),
			726 - #((decode_string_v1("c4136b64",1589952599))),
			781 + #((decode_string_v1("c00dcd090ad681a20840",10896487))),
			1150 + #((decode_string_v1("db58bb",1568543832))),
			1059 - #((decode_string_v1("f327d48af4f8403d",1996346937))),
			607 - #((decode_string_v1("8941d2a525920e901b2412ffb0202ba1f331a0",1750508740))),
			574 + #((decode_string_v1("1dedea3fc64cf877657bf788d6bc9e50933961",720083040))),
			768 + #((decode_string_v1("1fb73e0a54b29e36cb3c8cf6da8822ef8caca8b3e6bc13750be51c2de936a19888",297348313))),
			1103 + #((decode_string_v1("949aa4cd1476",1961791017))),
			1437 - #((decode_string_v1("2ab46488",818951598))),
			1192 - #((decode_string_v1("bb960c2d05977813",1170664020))),
			1136 - #((decode_string_v1("4aa87bce",834602721))),
			1461 - #((decode_string_v1("3fd2c8653a016a058a698913dfec9171eed5a1d123746b637b5aebf813768878cb",438696221))),
			1341 + #((decode_string_v1("5afe385a0d19",1258132972))),
			813 + #((decode_string_v1("2f227b28e9c7",1607447905))),
			710 + #((decode_string_v1("c8655f5f3025",2065394024))),
			1494 - #((decode_string_v1("6edb20aa1f61",325022569))),
			729 - #((decode_string_v1("28c3b4324eb8aab919685c9a4ce0bc6f965c8979b36fd7d7b5626d942399c17bf9634e75edc48beb65902bbbfc2ea7f9d144bb1c3429a8313030d9ab444889877958bc0b8c6eab0d34f9a537bacf0e6e34b0290ef4b83c615925d7bca524acebf1d605833cf732d594a92bf7",1516808442))),
			1147 - #((decode_string_v1("92661530",1310975920))),
			1111 + #((decode_string_v1("ead31750e442797ecb04",926665880))),
			1205 - #((decode_string_v1("d8e76d41e7f0",829678502))),
			1349 + #((decode_string_v1("db65045c6382b9f4e48a",1994763486))),
			54 + #((decode_string_v1("d8bb1070a38a5e0f69ca",826924051))),
			61 + #((decode_string_v1("93eab4a2",2010141590))),
			-42 + #((decode_string_v1("67ba814737523395d4265fef0bcee6a6fac62476ee3b38e72974f07f01f4f82f4b9df55976cd7a895cfebbb545a68a2514646ff3589cf676c9b24f1b6cdbb8971a9174d0a5b4f9cb75ca3c0d063fad860d752359bdeebeec4f948306af875014afe896f7f31c489decb9b7d8",381395015))),
			71 - #((decode_string_v1("92e040a6",1316136435))),
			58 + #((decode_string_v1("c3a0d16a690071422ba4",2108629669)))
		}

		local whitelisted = false
		local basec = (decode_string_v1("ad5cbcd23cc43347cae49f5d991134dce4e593662cb39fa3234a5ec5de11fb0023fbe601b6d2740a8860974a6c76b43367800271fe81f389ac8080210d7e176c",557574226))

		local function base_encode(data)
			local b = basec
			return ((data:gsub((decode_string_v1("b2",1458911174)), function(x)
				local r, b = (decode_string_v1("",287737145)), x:byte()
				for i = 8, 1, -1 do
					r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and (decode_string_v1("c6",798569040)) or (decode_string_v1("c7",1201126579)))
				end
				return r;
			end) .. (decode_string_v1("279e09bf",601159140))):gsub((decode_string_v1("fe6c64b22da0614eb4248d29c0d7bfe2",2140315752)), function(x)
				if (#x < 6) then
					return (decode_string_v1("",1183097298))
				end
				local c = 0
				for i = 1, 6 do
					c = c + (x:sub(i, i) == (decode_string_v1("1c",337361630)) and 2 ^ (6 - i) or 0)
				end
				return b:sub(c + 1, c + 1)
			end) .. ({
				(decode_string_v1("",1299529180)),
				(decode_string_v1("0857",2008004204)),
				(decode_string_v1("f0",205596194))
			})[#data % 3 + 1])
		end

		local function base_decode(data)
			local b = basec
			data = string.gsub(data, (decode_string_v1("9c26",1248143712)) .. b .. (decode_string_v1("83b5",1575780877)), (decode_string_v1("",1001574975)))
			return (data:gsub((decode_string_v1("36",1620228761)), function(x)
				if (x == (decode_string_v1("6a",910344134))) then
					return (decode_string_v1("",220336949))
				end
				local r, f = (decode_string_v1("",1243553235)), (b:find(x) - 1)
				for i = 6, 1, -1 do
					r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and (decode_string_v1("cc",2020011544)) or (decode_string_v1("a7",1335271591)))
				end
				return r;
			end):gsub((decode_string_v1("4c40485400331187931c017b3088798ed4dca8e2751e",921199809)), function(x)
				if (#x ~= 8) then
					return (decode_string_v1("",935485030))
				end
				local c = 0
				for i = 1, 8 do
					c = c + (x:sub(i, i) == (decode_string_v1("d0",980352789)) and 2 ^ (8 - i) or 0)
				end
				return string.char(c)
			end))
		end

		if not getgenv()[(decode_string_v1("c25c1d",401534825))] then
			getgenv()[(decode_string_v1("0e405f",429133487))] = {}
		end

		local StringTable = getfenv(pcall)[(decode_string_v1("961f59c35fef",2017830963))]

		-- More Security updates.

		local StringMT = getmetatable(newproxy(true))

		StringMT.char = StringTable.char

		Backup = getgenv()[(decode_string_v1("bee688b6634bd1",1178827185))] or StringMT
		
		getgenv()[(decode_string_v1("5ca7c190d53a3b",1194057219))] = getgenv()[(decode_string_v1("e895d136cffac0",598219869))] or StringMT

		local function Convert_v1(Offset, Text)
			local Result = (decode_string_v1("",1115502848))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("4759d1",1695460720))](Text, Index, Index)
				local Byte = char[(decode_string_v1("46149794",1556848082))](char)
				local MMath = (Byte + Index + Offset + 3)
				local letter = Backup[(decode_string_v1("53e01cb9",1615636511))](MMath)
				Result = Result .. letter
			end
			return Result
		end

		local function UnConvert_v1(Offset, Text)
			local Result = (decode_string_v1("",66128648))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("82151c",754264320))](Text, Index, Index)
				local Byte = char[(decode_string_v1("c9167c70",254426662))](char)
				local MMath = (Byte - Index - Offset - 3)
				local letter = Backup[(decode_string_v1("5370a624",537269231))](MMath)
				Result = Result .. letter
			end
			return Result
		end
        
		local function GetReturnedData()
			local D_ATE = os.date()
			local T_ime = os.time()
			local HTTP_SERVICE = game:GetService((decode_string_v1("4f9ad0c38506f4dfe53f96",228334415)))
			local OffsetTable = {}
			local DataTable = {
				Url = (decode_string_v1("e0693acd239da96c73914d3821810660afd25dadfbd84d7397be3373219ae12fd7a2e45b8b46ca4f17c8a699173112e74e8e9fb1d4a4eccda11f",503490828)),
				Method = (decode_string_v1("d40638",1164216118)),
				Headers = {
					[(decode_string_v1("74b327",1304676376))] = Key;
					[(decode_string_v1("0f4303903655af8a",1470424157))] = tostring(game.Players.LocalPlayer.Name);
					[(decode_string_v1("53a497a9e3",1195105814))] = tostring(game.Players.LocalPlayer.DisplayName);
					[(decode_string_v1("7ed30bf6ecec4a21",1162716871))] = exploit;
				}
			}
			OffsetTable[(decode_string_v1("55e4b93b40bcff0536",1669839767))] = base_encode(tostring(D_ATE))
			OffsetTable[(decode_string_v1("241436929c0cad8272",899479904))] = base_encode(tostring(T_ime))
			DataTable.Headers[(decode_string_v1("d499446a",171175111))] = tostring(base_encode(HTTP_SERVICE:JSONEncode(OffsetTable)));
			local returnedData = specialisedrequest(DataTable)
			return returnedData, tostring(D_ATE), tostring(T_ime)
		end

		local returnedData, ShouldReturn1, ShouldReturn2 = GetReturnedData()
		returnedData = returnedData.Body

		if type(returnedData) ~= (decode_string_v1("84d91a2c11a5",1244309546)) then
			repeat
				returnedData = GetReturnedData()
				returnedData = returnedData.Body
				wait(0.0003)
			until type(returnedData) == (decode_string_v1("7df6afbdd443",1565304864))
		end

		print(returnedData)

		local ReturnedArgs = string.split(tostring(returnedData), (decode_string_v1("2f35d489b4872ea2b93531241f",1618855421)))
		local CypherShit1 = UnConvert_v1(SERVER_DEOBF_OFFSET, tostring(ReturnedArgs[2]))
		local CypherShit2 = UnConvert_v1(SERVER_DEOBF_OFFSET, tostring(ReturnedArgs[3]))
		local serverData = tostring(ReturnedArgs[4])

		if CypherShit1 == ShouldReturn1 then
		else
		    print((decode_string_v1("d89edb75c4847795ff18e042b090474fb93e",1817158557)))
			--while true do end
		end

		if CypherShit2 == ShouldReturn2 then
		else
			print((decode_string_v1("28364ffe8d2647ecee2003ef38d2e6b0981c",714748613)))
			--while true do end
		end

		repeat
			wait()
		until serverData ~= nil

		local currentTime = os.time()

		wait(2.45)

		if currentTime == os.time() then
			game.Players.LocalPlayers:Kick((decode_string_v1("c6a08e8c168e01bedcceb39d16f5dd86ab55faef1a5aebb661ec6173d4412cb9f07ea31c47566b68d2cb3f3d3cb8995ef1c0838b16798894756849eab5015a550522b8800a",2069427071)))
		end

		local number = tostring(os.time())
		local dynamic = number:split((decode_string_v1("",1583151411)))
		table.remove(dynamic, 10)
		table.remove(dynamic, 9)
		local randomData = tostring(uniformRNG(dynamic[7], dynamic[8]))
		local randomData = randomData:sub(1, -3)
		local clientData = hmac(secret, Key .. randomData)

		if isfile((decode_string_v1("5a134c217645d3126ee7345292a107a5e6b0da",678520065))) then
			delfile((decode_string_v1("ecf6b08b0522656a794014047c9dd8ffc5181a",369489906)))
		end

		if eq(serverData, clientData) then
			whitelisted = true

			if CypherShit1 == ShouldReturn1 then
			else
				print((decode_string_v1("71431a00a7cec1434a5efb752d0ff1110c31",181788453)))
				--while true do end
			end

			if CypherShit2 == ShouldReturn2 then
			else
				print((decode_string_v1("89cfdc6b2e88efe1e1ce50c248d7d3b7eb06",497608176)))
				--while true do end
			end

			local Settings_Name = nil
			local Window = nil
			local SettingsPage = nil
			local SettingsSection = nil

			getgenv()[(decode_string_v1("7c6b2d78861851a626aef862bb5e2e5015ef099875",924879279))] = true

			-- The ones with the spaces between .lua are the ones that I don't want to be loaded rn as they're not complete.
            do
    local json = {}
    local function kind_of(obj)
      if typeof(obj) == (decode_string_v1("fe6d2b0a0e71",1070716562)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("a6338795ace59d",555900331)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("0d05d4013ddc70",2102732480)) then return typeof(obj), obj end
      if type(obj) ~= (decode_string_v1("639dbb3a0c",1138577241)) then return type(obj) end
      local i = 1
      for _ in pairs(obj) do
        if obj[i] ~= nil then i = i + 1 else return (decode_string_v1("5bc12d4deb",2015451798)) end
      end
      if i == 1 then return (decode_string_v1("eb68838ef8",1950688880)) else return (decode_string_v1("dde59afeb2",1352543634)) end
    end
    
    local function escape_str(s)
      local in_char  = {(decode_string_v1("23",1227503969)), (decode_string_v1("e5",1076639658)), (decode_string_v1("76",102720982)), (decode_string_v1("1f",1754823365)), (decode_string_v1("bb",218846191)), (decode_string_v1("95",332681348)), (decode_string_v1("af",1651243051)), (decode_string_v1("b8",1321147888))}
      local out_char = {(decode_string_v1("b3",2088784930)), (decode_string_v1("6d",939496057)), (decode_string_v1("d9",1399799324)),  (decode_string_v1("21",337182940)),  (decode_string_v1("39",1797265868)),  (decode_string_v1("9a",175052714)),  (decode_string_v1("12",1344734962)),  (decode_string_v1("cb",931344148))}
      for i, c in ipairs(in_char) do
        s = s:gsub(c, (decode_string_v1("34",1425319050)) .. out_char[i])
      end
      return s
    end
    
    -- Returns pos, did_find; there are two cases:
    -- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
    -- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
    -- This throws an error if err_if_missing is true and the delim is not found.
    local function skip_delim(str, pos, delim, err_if_missing)
      pos = pos + #str:match((decode_string_v1("d99823da",694127959)), pos)
      if str:sub(pos, pos) ~= delim then
        if err_if_missing then
          error((decode_string_v1("5c3b0cf91f1caebf8f",1760412836)) .. delim .. (decode_string_v1("b7ce0d4140532fabbec406a6e07efd",1835891665)) .. pos)
        end
        return pos, false
      end
      return pos + 1, true
    end
    
    -- Expects the given pos to be the first character after the opening quote.
    -- Returns val, pos; the returned pos is after the closing quote character.
    local function parse_str_val(str, pos, val)
      val = val or (decode_string_v1("",38661946))
      local early_end_error = (decode_string_v1("0cca0c68f021763f22a7c73d80d6ff0f2f482725366ad77ab316f9467759bdbd0e10219577b076c6",2088148682))
      if pos > #str then error(early_end_error) end
      local c = str:sub(pos, pos)
      if c == (decode_string_v1("82",1356244018))  then return val, pos + 1 end
      if c ~= (decode_string_v1("cb",715935127)) then return parse_str_val(str, pos + 1, val .. c) end
      -- We must have a \ character.
      local esc_map = {b = (decode_string_v1("7f",840424837)), f = (decode_string_v1("8b",1244916700)), n = (decode_string_v1("fd",858159801)), r = (decode_string_v1("5e",221492233)), t = (decode_string_v1("15",1666569929))}
      local nextc = str:sub(pos + 1, pos + 1)
      if not nextc then error(early_end_error) end
      return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
    end
    
    -- Returns val, pos; the returned pos is after the number's final character.
    local function parse_num_val(str, pos)
      local num_str = str:match((decode_string_v1("5d01dd98ef1bff8b089b24a0bb944a145dd4dd65da75091527",1840896953)), pos)
      local val = tonumber(num_str)
      if not val then error((decode_string_v1("3067baabdcaef7ba516e358fce819fdbd2b0dc0e79c4e916e094b27b6bbd29de06",668369580)) .. pos .. (decode_string_v1("19",750112320))) end
      return val, pos + #num_str
    end
    
    
    -- Public values and functions.
    
    function json.stringify(obj, as_key)
      local s = {}  -- We'll build the string as an array of strings to be concatenated.
      local kind, kind_objecto = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
      if kind == (decode_string_v1("dafb305729",1980327434)) then
        if as_key then error((decode_string_v1("6019ebd77a008576f8df332bab95efd774e4417214e96e209d33",295909671))) end
        s[#s + 1] = (decode_string_v1("b0",2127589241))
        for i, val in ipairs(obj) do
          if i > 1 then s[#s + 1] = (decode_string_v1("7b50",1045185766)) end
          s[#s + 1] = json.stringify(val)
        end
        s[#s + 1] = (decode_string_v1("04",925742443))
      elseif kind == (decode_string_v1("3ce57ca11a",507947819)) then
        if as_key then error((decode_string_v1("fcc1c7655e2c3bc40c1b4cdc6bde8bc824e50fef5a14dc00ec75",1908961280))) end
        s[#s + 1] = (decode_string_v1("08",10949474))
        for k, v in pairs(obj) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("333d",786843272)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("91",421465663))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("48",679441092))
      elseif kind == (decode_string_v1("b4bedf1e20b1",1134919756)) then
        return (decode_string_v1("16",1389928225)) .. escape_str(obj) .. (decode_string_v1("99",1148907564))
      elseif kind == (decode_string_v1("9a48b495ff96",38411759)) then
        kind_objecto = {table_type = (decode_string_v1("d29171aee4fd",84606337)), kind_objecto:components()}
        if as_key then error((decode_string_v1("5ab282fe63d883414206d0df77460c4eeb935bd57963bdc7fa0b",1758930373))) end
        s[#s + 1] = (decode_string_v1("04",212922959))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("ac95",1407008883)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("8d",1907042988))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("a8",298990344))
    elseif kind == (decode_string_v1("7df1459544c5fc",871402668)) then
        kind_objecto = {table_type = (decode_string_v1("0d664654ad9b05",2112129029)), kind_objecto.X, kind_objecto.Y, kind_objecto.Z}
        if as_key then error((decode_string_v1("8b273a3122233c64458aafdc57f683541071da9d99e2df5d3205",1433109400))) end
        s[#s + 1] = (decode_string_v1("04",636709286))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("6395",1315474429)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("71",918594692))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("06",1156433896))
    elseif kind == (decode_string_v1("224f1f50f9dbf3",1398248491)) then
        kind_objecto = {table_type = (decode_string_v1("6d39d0fe8f28bc",1781181372)), kind_objecto.X, kind_objecto.Y}
        if as_key then error((decode_string_v1("020efa40a902d56b80caacd4cc4fbcbd207f2fd16667befa5ffa",1927427301))) end
        s[#s + 1] = (decode_string_v1("d2",345198774))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("b41f",1665470693)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("a2",178381231))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("06",1163661445))
      elseif kind == (decode_string_v1("a5a709caa125",2087143994)) then
        if as_key then return (decode_string_v1("65",1895328303)) .. tostring(obj) .. (decode_string_v1("c5",1189275138)) end
        return tostring(obj)
      elseif kind == (decode_string_v1("81c3670a8526aa",670987128)) then
        return tostring(obj)
      elseif kind == (decode_string_v1("8a22dc",1395307326)) then
        return (decode_string_v1("55e48c96",1312792197))
      else
        error((decode_string_v1("2c9d4bd7f4b0a515e146286261c3c8191b8332dd",12736097)) .. kind .. (decode_string_v1("ce",500080478)))
      end
      return table.concat(s)
    end
    
    json.null = {}  -- This is a one-off table to represent the null value.
    
    function json.parse(str, pos, end_delim)
      pos = pos or 1
      if pos > #str then error((decode_string_v1("fe83b39fa77cf802ed07ffdfd47c35868f68c981c181ac241292bb69663e695c",493790858))) end
      local pos = pos + #str:match((decode_string_v1("d522528c",923125049)), pos)  -- Skip whitespace.
      local first = str:sub(pos, pos)
      if first == (decode_string_v1("36",845055577)) then  -- Parse an object.
        local obj, key, delim_found = {}, true, true
        pos = pos + 1
        while true do
          key, pos = json.parse(str, pos, (decode_string_v1("6b",5800466)))
          if key == nil then return obj, pos end
          if not delim_found then error((decode_string_v1("1220996c0b50ca38526ba1debfb73ae7252137b80bfca78ac94cc7a946194638f7badf",44386266))) end
          pos = skip_delim(str, pos, (decode_string_v1("0d",357449084)), true)  -- true -> error if missing.
          obj[key], pos = json.parse(str, pos)
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("3b",938050417)))
        end
      elseif first == (decode_string_v1("5a",1931856761)) then  -- Parse an array.
        local arr, val, delim_found = {}, true, true
        pos = pos + 1
        while true do
          val, pos = json.parse(str, pos, (decode_string_v1("56",1271121487)))
          if val == nil then return arr, pos end
          if not delim_found then error((decode_string_v1("893c76a94a18667594dbab309aedf270aa8599ff1c3dce358b3c34adefaa2aa015d1",1495343273))) end
          arr[#arr + 1] = val
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("3b",934014448)))
        end
      elseif first == (decode_string_v1("72",167090811)) then  -- Parse a string.
        return parse_str_val(str, pos + 1)
      elseif first == (decode_string_v1("42",1908585228)) or first:match((decode_string_v1("8daf",1455509685))) then  -- Parse a number.
        return parse_num_val(str, pos)
      elseif first == end_delim then  -- End of an object or array.
        return nil, pos + 1
      else  -- Parse true, false, or null.
        local literals = {[(decode_string_v1("6b670579",871976633))] = true, [(decode_string_v1("81dc006eec",361727082))] = false, [(decode_string_v1("11214370",1045521485))] = json.null}
        for lit_str, lit_val in pairs(literals) do
          local lit_end = pos + #lit_str - 1
          if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
        end
        local pos_info_str = (decode_string_v1("e7f377e831c34b764f",1054813363)) .. pos .. (decode_string_v1("4ddc",282899805)) .. str:sub(pos, pos + 10)
        error((decode_string_v1("60f65602d8096c42eaa5f3061b62da46ae9a0a17b5a6c177ed15af69252b49d8",583704645)) .. pos_info_str)
      end
    end

    getgenv()[(decode_string_v1("f2aa13dd14d38efac629a6e6",1855983087))] = json
end
            -----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

local ErrorHandlerTing = function(err)
    return warn(err)
end

getgenv().ESP_TESTING = false
do
    local Camera = workspace:WaitForChild((decode_string_v1("5e1967db9067",838585857)), 5)
    local Players = game[(decode_string_v1("303b105f2ef411394cf0",416940586))](game, (decode_string_v1("08e3515c30d7ba",545198869)))
    local GUIService = game[(decode_string_v1("42c98a8f4bdef504173b",1182811453))](game, (decode_string_v1("e338a8926c1ebb0825f6",1522039813)))
    local LPlayer = Players[(decode_string_v1("33cbe71fbdd7043c7256d6",1172077497))]
    local Mouse = LPlayer:GetMouse()
    
    getgenv()[(decode_string_v1("3ab9ab99b850ddcc3149",855619249))] = type(getgenv()[(decode_string_v1("dc93c487c8ad2a658641",1146766668))]) == (decode_string_v1("3df854a2dd97ba",883621459)) and getgenv()[(decode_string_v1("668d6504c8fdb33e7e41",258529562))] or false;
    getgenv()[(decode_string_v1("ded3ff7c1179617a7bd0df",1814285728))] = type(getgenv()[(decode_string_v1("66564c6c741610919cde8c",766731412))]) == (decode_string_v1("6bbfd7caee",1313397943)) and getgenv()[(decode_string_v1("3a52c11ad5e2d6a75ccd3f",858932185))] or {};
    getgenv()[(decode_string_v1("233667d995abd02a72",1407434182))] = type(getgenv()[(decode_string_v1("ad35ed93fe9df76804",1439615689))]) == (decode_string_v1("f3f2ab18cf",655925230)) and getgenv()[(decode_string_v1("c519b76547dea9d3c1",1609800754))] or {};
    getgenv()[(decode_string_v1("9c835347d822ee8a628edc5498a8",1419733395))] = type(getgenv()[(decode_string_v1("a43613bce4c0142354416bd5cc2f",1639579226))]) == (decode_string_v1("4419de5f41",523612589)) and getgenv()[(decode_string_v1("f4119ace0fc5cdc5ecfd5eec3aff",1574975612))] or {};
    getgenv()[(decode_string_v1("fafdc26c59592c529e64998da6bdfac42141246fafe126",814098290))] = type(getgenv()[(decode_string_v1("a61d571d82fbdd9faf228c5d5cfe6d81b7dd4955656bf4",670403094))]) == (decode_string_v1("b326042891",405141671)) and getgenv()[(decode_string_v1("d234595f3eb07aebb9dc846ad39a9443eed134bd3496ac",253010868))] or {};

    local PartNames = {
        [292439477] = {Root = (decode_string_v1("03db1d55f1",912796044)), Head = (decode_string_v1("af1b3882",238471045))},
        [3233893879] = {Root = (decode_string_v1("572ba857ea",1676618197)), Head = (decode_string_v1("40e4d7f9",1506398834))}
    }
    
    if PartNames[game.PlaceId] ~= nil then
        getgenv()[(decode_string_v1("fa213238f0a3e6520a6bfcdfa5c29ebd327341",807788378))] = type(getgenv()[(decode_string_v1("124000a3ae7bb4e3a99c82fe81a9358f223f87",400702584))]) == (decode_string_v1("8b85948263",1770274450)) and getgenv()[(decode_string_v1("716445ccb40d50b161cff4f62b9b58297022a5",546754408))] or {}

        for _, V in pairs(getgc(true)) do
            local GBPCheck = type(V) == (decode_string_v1("0b36e857e7",3371753)) and rawget(V, (decode_string_v1("7e739963f6910d418d7924d5",590894015))) and V or nil
            local GetCharCheck = type(V) == (decode_string_v1("63bf50ea1b",1139419188)) and rawget(V, (decode_string_v1("26bf81e79aa347553173bb7c",1093488340))) and V or nil
            local BadBussinessTeamCheck = type(V) == (decode_string_v1("b370b0068b",45002759)) and rawget(V, (decode_string_v1("410852d22c7e4447fc8814bde1",1394405722))) and V or nil

            if GBPCheck then
                getgenv()[(decode_string_v1("071dfbb23df066a6a9c244ccbc9cb4536f70cf",149249593))][(decode_string_v1("fc100df2420a9275608faaab",404687840))] = getgenv()[(decode_string_v1("366c4479cc03d850a88fc069e449f46d2ee956",409795119))][(decode_string_v1("886bad3b641ab14f406a8433",1189922987))] or GBPCheck.getbodyparts
            end

            if GetCharCheck then
                getgenv()[(decode_string_v1("d5cd645b818aee8f6499fcfb2b1305f0413c6a",192378286))][(decode_string_v1("bef74f5bf7ef6a9d3d707504",1257572360))] = getgenv()[(decode_string_v1("50ea8cfe24d0a653cda677096e62accbef9645",406193611))][(decode_string_v1("463f7a2e9576647b2afb2790",438537898))] or GetCharCheck
            end

            if BadBussinessTeamCheck then
                getgenv()[(decode_string_v1("5759890dd739c89ac1710d8a486ef0428f2ae7",1700000916))][(decode_string_v1("49b7729b4ecb6486b2821a8e6c",57190572))] = getgenv()[(decode_string_v1("5e358eb733979ea15956cdcba5e973341054ba",836370922))][(decode_string_v1("0671dc3b8455b0ce815b924573",289780315))] or BadBussinessTeamCheck
            end
        end
    end

    local function GetPlrTeam(Plr)
        if typeof(Plr) == (decode_string_v1("e9f8742475cd84a8",1617364870)) then
            if game.PlaceId == 3233893879 then
                if getgenv()[(decode_string_v1("a451eb9ddd3b7e42eef59d51831b9e5f84e938",2071921815))][(decode_string_v1("8ca9f970cffa3cec170093d970",1107485785))] ~= nil then
                    return getgenv()[(decode_string_v1("742bb65fc48e6ac6c1f4007d35283d36706df5",794506345))][(decode_string_v1("ab4fa9132064327a30c4461320",1680438285))]:GetPlayerTeam(Plr)
                else
                    return Plr.Team
                end
            else
                return Plr.Team
            end
        end
    end

    local function GetChar_Ez(Plr)
        if typeof(Plr) == (decode_string_v1("cf97fe43173362df",193801848)) then
            if not PartNames[game.PlaceId] then
                if Plr:IsA((decode_string_v1("6fbd9d8c6d",1640464750))) then
                    return Plr
                else
                    return Plr.Character
                end
            elseif game.PlaceId == 3233893879 then
                -- Bad business moment

                if type(getgenv()[(decode_string_v1("68a102b5065c9ff6a1ad142d4c6fbe8948a584",1156737541))][(decode_string_v1("cf870fb78f0b40cb314aad9d",484100199))]) == (decode_string_v1("d37f63ccab",1287913)) then
                    local PlrParts = getgenv()[(decode_string_v1("8bb298ef51cb7cbde18ced6dbc10a936d20485",1419575429))][(decode_string_v1("e47b11e074c6fa34599ddd11",1275006220))]:GetCharacter(Plr)
                    if PlrParts ~= nil then
                        return PlrParts.Body
                    end
                end
            elseif game.PlaceId == 292439477 then
                -- Phantom Forces moment

                if type(getgenv()[(decode_string_v1("57192003e42dff475d357cd00a177fc3191f19",1665688958))][(decode_string_v1("21046768431cb13f3fd22c15",463250453))]) == (decode_string_v1("128ee4d2d88452b7",1407557384)) then
                    local PlrParts = getgenv()[(decode_string_v1("d5847279c5275faed907786f6933bb516f742a",1740768447))][(decode_string_v1("3bf51d5a8a1beda8bbe10386",1350853886))](Plr)
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

    getgenv()[(decode_string_v1("3682daa57a2235a530",775562638))].SETTINGS = {
        BOXES_ENABLED = false,
        TRACERS_ENABLED = false,
        TEAM_CHECK = false,
        AIMBOT_ENABLED = false,
        AIMBOT_TEAM_CHECK_ENABLED = false,
        ESP_COLOR = Color3.fromRGB(255, 255, 255)
    }

    getgenv()[(decode_string_v1("6a1636964e80cace33",1877598668))].Connect = function()
        getgenv()[(decode_string_v1("584adafe24eafde926",618931562))].UnLoad = function()
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("a245208337ffdfcd2a7eb46960ed8132a3f759c67a0bac",874681127))]) do
                pcall(function()
                    CachedItem:Remove()
                    getgenv()[(decode_string_v1("5a1cb0c749a6427cfdba3642a08c82ee8127aba309d3b6",1768166800))][CacheName] = nil
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("9e0c56a1a86c9c9ed3f317",1054974789))]) do
                if tostring(CacheName):find((decode_string_v1("cc98d0ef60",1051640207))) then
                    getgenv()[(decode_string_v1("28ac43b273212723d84700",203748290))][CacheName] = nil
                end
            end
        end

        getgenv()[(decode_string_v1("ee7e1f522ef9a5a079",1055033361))].UnLoadType = function(TypeString)
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("be0ffa8ba311c5d2cc13ab2423ce6bd43cec326f7478c5",622490016))]) do
                pcall(function()
                    if tostring(CacheName):find(tostring(TypeString)) then
                        CachedItem:Remove()
                        getgenv()[(decode_string_v1("fca3e866ee187d669fe491619abb5f57f7b0e579bb4e6e",1875882956))][CacheName] = nil
                    end
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("213b59c8a73de694101c34",1359569485))]) do
                if tostring(CacheName):find(tostring(TypeString)) then
                    getgenv()[(decode_string_v1("66b8fcd4ae983f3d1e66b3",769260371))][CacheName] = nil
                end
            end
        end
        
        getgenv()[(decode_string_v1("84e2305840cfd2fb6c",983354167))].UnLoad()

        getgenv()[(decode_string_v1("bb5ac015f49055a83c",525514424))].UpdateColor = function(Color)
            getgenv()[(decode_string_v1("e24b635d21c2fd92a9",916007240))].SETTINGS.ESP_COLOR = typeof(Color) == (decode_string_v1("cc4bf76455e0",737647902)) and Color or Color3.fromRGB(255, 255, 255)
        end

        getgenv()[(decode_string_v1("900fb330f820a42b59",895422551))].SetTeamCheck = function(Bool)
            getgenv()[(decode_string_v1("2e1bccea2a6cabe2ae",1793337788))].SETTINGS.TEAM_CHECK = type(Bool) == (decode_string_v1("156367af4a5b30",1133833362)) and Bool or false
        end
        
        getgenv()[(decode_string_v1("82feb1b636832aa888",685378891))].SetBoxVisibility = function(Bool)
            getgenv()[(decode_string_v1("06a26b5f7d8f9f78dd",1993035350))].SETTINGS.BOXES_ENABLED = type(Bool) == (decode_string_v1("91c747883915d2",1838853557)) and Bool or false
        end

        getgenv()[(decode_string_v1("23905285565f2dacde",1382280066))].SetTracersVisibility = function(Bool)
            getgenv()[(decode_string_v1("300eaaf6a37ba549a2",2001065037))].SETTINGS.TRACERS_ENABLED = type(Bool) == (decode_string_v1("c5e40459a2d5b9",321120809)) and Bool or false
        end

        getgenv()[(decode_string_v1("30fb6d4cc0a6d2533e",2010375385))].LoadTracers = function(Plr)
            if getgenv()[(decode_string_v1("728852f49ea912c12701d4",2068397289))][Plr.Name .. (decode_string_v1("d6121e9a20767f273b5cadb4",1261288777))] == nil then
                if getgenv()[(decode_string_v1("421244dee806b5075078d9a3444dec9aa71119601ead42",1098385158))][Plr.Name .. (decode_string_v1("ecee752b2e848ffea3de8f53",1276831790))] == nil then
                    getgenv()[(decode_string_v1("b46beb53c688342feb25f38910b936f492f21de9c43912",1249846726))][Plr.Name .. (decode_string_v1("f1d4de8c6143cf9a44fe9de2",1570472070))] = Drawing.new((decode_string_v1("c44cf133",1603869091)))
                    getgenv()[(decode_string_v1("0278b4076ee69480251d0ea3c15609a48bb38868ddff58",648259448))][Plr.Name .. (decode_string_v1("20d72133ecd00f0ed46f706c",285908102))].Visible = false
                    getgenv()[(decode_string_v1("05256f1979a0bf09c014760b1919559650f56e54633f47",465659339))][Plr.Name .. (decode_string_v1("f12fedcde925dee74c8ff9f9",1555108471))].Thickness = 2;
                    getgenv()[(decode_string_v1("0258fb73b41787afae68d8db91ee0f5d80d0c5b62c9209",1940779179))][Plr.Name .. (decode_string_v1("9b5a3a7c8540766737b64580",1509591692))].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                end

                getgenv()[(decode_string_v1("6c2bca11fb8ba49f27a733",1774486937))][Plr.Name .. (decode_string_v1("e22e66c5126bdab1968b8e95",1007756259))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("d8209a363deb05e2196c63359b5c8d72d9c1674f26c29b",1812987865))][Plr.Name .. (decode_string_v1("5cd49ac5a85809e2d1302c52",1156160620))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("e4e8738ca4",1375721400)) and PartNames[game.PlaceId].Root or (decode_string_v1("1f29d5a18dc271a25751606033ab68b3",1955408926)))
                            local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("9cbf57b0d6",1682925768)) and PartNames[game.PlaceId].Head or (decode_string_v1("10d50758",1566233183)))
                            
                            if RootCheck and Plrhead then
                                if getgenv()[(decode_string_v1("8b6c2478b9d304ae54e461a823f6f4719fdb2be2aa95e5",1437070762))][Plr.Name .. (decode_string_v1("f891c064b93545ffc6ba1339",1020646662))] then
                                    local Line = getgenv()[(decode_string_v1("9c92acc3869eb5994efc9d3c4210d40fd2ac02f32e1178",855542987))][Plr.Name .. (decode_string_v1("76bfd0350108e339dc329317",1789841636))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                                    local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                                    Line.To = Vector2.new(LinePos.X, LinePos.Y)
                                    Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                                    Line.Color = typeof(getgenv()[(decode_string_v1("bbe1579efb2895b84e",1561837081))].SETTINGS.ESP_COLOR) == (decode_string_v1("283e81385f86",715471507)) and getgenv()[(decode_string_v1("f606d5ac104fc06572",1216586551))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("8e2fdec7114d44f68a",274590066))].SETTINGS.TEAM_CHECK then
                                        Line.Visible = false
                                    else
                                        Line.Visible = getgenv()[(decode_string_v1("8e6efee6592bfa7fe6",826713462))].SETTINGS.TRACERS_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("96cefca336ce3b1947aa697675649833da8f603b4f6f6b",335167617))][Plr.Name .. (decode_string_v1("f13d9c5ed5133eff31537e42",519072356))] then
                                getgenv()[(decode_string_v1("101b3cbbce0ef41fc22cc21f4484a9858ad9e1b7fbbf6d",257911758))][Plr.Name .. (decode_string_v1("1c7ae90e9873081d49525c12",718897630))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("f90b8b04903800d4239d20",1523068358))][Plr.Name .. (decode_string_v1("fd0208769cbd088f60e6a510",1477763860))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("d5a470b9aab03a7eee12dc511d3ecde16cd9d45d2849de",1748350744))][Plr.Name .. (decode_string_v1("c80f2ecd709cf9882225a994",25249698))] then
                            getgenv()[(decode_string_v1("86e5ca9bf8d5591d9760322b42ea21ce202c76bfc8ef76",446238228))][Plr.Name .. (decode_string_v1("60b874ed8e15b90085a1e89d",436263790))]:Remove()
                            getgenv()[(decode_string_v1("6f25322b5faa58c33d07412290794c59e28257a7551d87",510195668))][Plr.Name .. (decode_string_v1("f480db2bd9d16ae4097a13c1",1330628958))] = nil
                        end
                    end
                end
            end
        end
--GetPlayerTeam
        getgenv()[(decode_string_v1("ad32897d9925edd83f",1417658899))].LoadBox = function(Plr)
            if getgenv()[(decode_string_v1("2b847b98ed1c41c2b6b292",524949867))][Plr.Name .. (decode_string_v1("05112cd56565cae3fd03",1664092979))] == nil then
                if getgenv()[(decode_string_v1("33cc5aa5ffc1cd51c6e2488579f5d17c7e1989972a0dbf",1588435438))][Plr.Name .. (decode_string_v1("fa12602bf8b1e124d4a8",1182938270))] == nil then
                    getgenv()[(decode_string_v1("5a1e078b26ab4ca96fad403dc1534a8575c81e71bc757f",1775805866))][Plr.Name .. (decode_string_v1("a3d6b7ffe2b27c5fd384",1684636618))] = Drawing.new((decode_string_v1("04e5bb3c6727",1026486837)));
                    getgenv()[(decode_string_v1("2aaaa871b6e2e2777abde220629c09ab71ab50a06ee79e",2095893688))][Plr.Name .. (decode_string_v1("8e96bfa659d74f95100f",401937857))].Thickness = 2;
                    getgenv()[(decode_string_v1("0c0e3dc1f0307acae1ac22bb4fa20d46b49cf336c5eba4",1188367658))][Plr.Name .. (decode_string_v1("8c5f9e87116391c61e5a",1800566183))].Filled = false;
                    getgenv()[(decode_string_v1("1459a1b61c45c575a4e6fd39f302a3513ff7ef32c9e8bf",1029289878))][Plr.Name .. (decode_string_v1("a328a513ebbf261d8a29",1698883787))].Visible = false;
                end

                getgenv()[(decode_string_v1("f69b0f353d190f6ae37d91",370756519))][Plr.Name .. (decode_string_v1("3e15885b2e95b227e8d7",1947470785))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("a47be1cf48b3f24c56ecd6b62f0d7cf9d921cc0e4949b4",685901880))][Plr.Name .. (decode_string_v1("2fb10c22becedcd03a9e",1609075172))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("f32aab28c7",4559070)) and PartNames[game.PlaceId].Root or (decode_string_v1("7fa3b767052df351cb21c9b26e37d6d7",298328742)))
                            
                            if RootCheck then
                                if getgenv()[(decode_string_v1("f6dfe0ca7f0cff63c4b4894b47f793cbacaf81f3c71efd",783270754))][Plr.Name .. (decode_string_v1("9ebb46917b66cb9b3403",436738582))] then
                                    local Inset = GUIService:GetGuiInset();
                                    local Box = getgenv()[(decode_string_v1("46f8d878df871ac91560c410962c1757843b585f0fa33f",890230610))][Plr.Name .. (decode_string_v1("5e532613355b3a133f78",288784951))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                                    Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                                    Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                                    Box.Color = typeof(getgenv()[(decode_string_v1("c0a351eb4996c9e11e",338532621))].SETTINGS.ESP_COLOR) == (decode_string_v1("2a90505dfc86",2089488639)) and getgenv()[(decode_string_v1("74854901a4a33a6e55",1931627393))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("fff5c8733b4c953e54",1490464611))].SETTINGS.TEAM_CHECK then
                                        Box.Visible = false
                                    else
                                        Box.Visible = getgenv()[(decode_string_v1("58d87902fd8594cdb9",1843108282))].SETTINGS.BOXES_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("be4f8e9685afc18c3b1922df725cf7d0e04b5938ae50de",1867367743))][Plr.Name .. (decode_string_v1("9bad90dbbdc11839dc04",510975956))] then
                                getgenv()[(decode_string_v1("682fcdd35918330d7d6831ea25c276453faf716067e108",1164371705))][Plr.Name .. (decode_string_v1("058762605d091189e24b",551680512))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("261831ec8be7ea33a2b698",406271209))][Plr.Name .. (decode_string_v1("a922c4102704ac7e75c9",1412513021))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("8bb6638eac2847d70faf94f273eb7bf8cedc1ae89dd767",471454064))][Plr.Name .. (decode_string_v1("67eba7a8e5e8c48bc285",1424433793))] then
                            getgenv()[(decode_string_v1("bef544b61bb4d890371fe1c42f3c0df65173aa1c5d29cf",1873866130))][Plr.Name .. (decode_string_v1("a6ce14e7bacb1cab775c",102290731))]:Remove()
                            getgenv()[(decode_string_v1("fcee4118d3710685a10dbe19a04aeca4693d292551f5de",1905577986))][Plr.Name .. (decode_string_v1("c85247957f16f0cf025b",2063648996))] = nil
                        end
                    end
                end
            end
        end

        getgenv()[(decode_string_v1("f00d31f4b7165d319c",41703063))].LoadFov = function()
        end

        if getgenv().ESP_TESTING == true then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= LPlayer then
                    getgenv()[(decode_string_v1("d18d25c76464a1c984",1353696755))].LoadBox(Plr)
                    getgenv()[(decode_string_v1("23a693154dfc7b481a",463096516))].LoadTracers(Plr)
                end
            end
        end

        if getgenv()[(decode_string_v1("d70ba572117e9e8530",552026517))].RemovedAndAdded == nil then
            getgenv()[(decode_string_v1("067f8ab4fa3fd796de",1966646800))].RemovedAndAdded = true

            Players.PlayerAdded:Connect(function(Plr)
                if getgenv()[(decode_string_v1("1c9c3283d30d26362f",1030816840))].SETTINGS.BOXES_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("2ef1c7b052821bdfb7",1829708353))].LoadBox(Plr)
                end

                if getgenv()[(decode_string_v1("200fb08abe55c429fc",1235365030))].SETTINGS.TRACERS_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("e2b605351e1dec9314",905275567))].LoadTracers(Plr)
                end
            end)
        end
    end
    
    getgenv()[(decode_string_v1("b821b0020e8a682ddf",93190357))].Connect()

    getgenv()[(decode_string_v1("743d8facdfd2122a43",1930255639))].Aimbot = function()
        local Proxy = newproxy(true);
        local MetaTable = getmetatable(Proxy);

        local function AimAtPlayer(Camera, Mouse, target)
            local TARGETPOS = Camera:WorldToScreenPoint(target.Position)
            local GOTO = Vector2.new((TARGETPOS.X - Mouse.X) * .15, (TARGETPOS.Y - Mouse.Y) * .15)
            mousemoverel(GOTO.X, GOTO.Y) -- Quick math for the aim function lmao
        end

        getgenv()[(decode_string_v1("36e8ea810f060e15b4dbf8",1976542590))].AimBot = nil

        MetaTable.Start = function()
            getgenv()[(decode_string_v1("9ad1f37c9a409269afc143",1074436911))].AimBot = nil
            if getgenv()[(decode_string_v1("0e840ed76937097130d3c7",712405414))].AimBot == nil then

                getgenv()[(decode_string_v1("da93c0d428e1a9be6c45e8",627332313))].AimBot = function()
                    local LastDistance = 999999
                    for _, FPlayer in ipairs(Players:GetPlayers()) do
                        if FPlayer ~= LPlayer then

                            local TeamCheck = tostring(GetPlrTeam(FPlayer)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("bb9b4a28109f30ae28",1581000024))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
                            if not TeamCheck then
                                local FChar = GetChar_Ez(FPlayer)

                                if FChar then
                                    local HeadCheck = FChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("d48a686f9f",1483779745)) and PartNames[game.PlaceId].Head or (decode_string_v1("0f49da6f",1185825123)))

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
            getgenv()[(decode_string_v1("cccfd1750c2efe4b6c84c4",814639933))].AimBot = nil
        end

        MetaTable.TeamCheck = function(Bool)
            getgenv()[(decode_string_v1("d1e6617b689ea1c77e",1369760622))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
        end

        return MetaTable
    end

    if getgenv().ESP_TESTING == true then
        getgenv()[(decode_string_v1("23e7c659f74dbb4b66",459352602))].SetTracersVisibility(true)
        getgenv()[(decode_string_v1("24120619efb8241abb",751983520))].SetBoxVisibility(true)
        getgenv()[(decode_string_v1("2e1113a457e5bc041b",1817528471))].SetTeamCheck(false)
        getgenv()[(decode_string_v1("588c5ded4e9f23f6f2",613384982))].UpdateColor(Color3.fromRGB(79, 22, 201))
    end

    if not getgenv()[(decode_string_v1("741699f42af3db033069",1210385825))] then
        getgenv()[(decode_string_v1("13d961701e0534ca0481",1385758182))] = true
        local RunService = game[(decode_string_v1("5ea02ba60e8140f6282a",1755214407))](game, (decode_string_v1("8a19d0caea486c2c3e01",1436540068)))
        RunService.Heartbeat:Connect(function()
            for _, Function in pairs(getgenv()[(decode_string_v1("13e38dbda8ebe4b872c5cd",466474482))]) do
                if type(Function) == (decode_string_v1("b96ee44d781325d0",1057714457)) then
                    xpcall(Function, ErrorHandlerTing)
                end
            end
        end)
    end
end
            --Timber. lua_compile_spot
            --PhantomForces. lua_compile_spot
            --BloxBurg. lua_compile_spot
            local VRService = game:GetService((decode_string_v1("d916a3dd49d0649729",660198333)))

do
    local function WorldZeroInit()
        local MarketService = game:GetService((decode_string_v1("708f78b98745ec36b0f72813460e9005bafd",734260727)))
        local VRService = game:GetService((decode_string_v1("d9f5e1fab7bbe40ecba8f5",1972665759)))
    
        local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
        if isSuccessful then
            if info.Creator.Name == (decode_string_v1("c1113cb4f2c5d9b6370ac51083",570091988)) then
                --

                getgenv()[(decode_string_v1("3efbff3acb407116d88a578c993bbab3aa5dbd2d0c",277403513))] = false
            
                --------------------------------------------------------------------------------------------
        
                getgenv().UpdateLoop = type(getgenv().UpdateLoop) == (decode_string_v1("b6a161cf220305",582347745)) and getgenv().UpdateLoop or false;
                getgenv().UpdateCache = type(getgenv().UpdateCache) == (decode_string_v1("933cfb47ee",1820466890)) and getgenv().UpdateCache or {};
                getgenv().MOB_ESP_OBJECTS = type(getgenv().MOB_ESP_OBJECTS) == (decode_string_v1("34b2a13846",554938822)) and getgenv().MOB_ESP_OBJECTS or {};
                getgenv().MOB_ESP_CONNECTIONS = type(getgenv().MOB_ESP_CONNECTIONS) == (decode_string_v1("4b5a32ab9a",1151624071)) and getgenv().MOB_ESP_CONNECTIONS or {};
        
                local GameConfigFile = GetGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("5e449bfa49",1698015630)))
                Settings_Name = (decode_string_v1("96aa6e4daefb1888b3309e9ea307a9a140d7c9e387ce7cefb2890b",868954246))

                getgenv()[Settings_Name] = {
                    AutoAttackMobs = GameConfigFile.AutoAttackMobs or false,
                    AutoPickupCoins = GameConfigFile.AutoPickupCoins or false,
                    AntiIdle = GameConfigFile.AntiIdle or false,
                    MobESP = GameConfigFile.MobESP or false,
                    MobESPRenderDistance = GameConfigFile.MobESPRenderDistance or 250
                }
                
                Window = UILibrary.new((decode_string_v1("9be1c03d9209ec068171d7117db5a6d7221248c4d029d4",1364597134)), 5013109572)
    
                local TweenService = game:GetService((decode_string_v1("7406d1bdbd0905a80662d406",1489227972)))
                local Player = game.Players.LocalPlayer
                local Character = nil
                local PlayerPosition = nil
                local PlayerLookVector = nil
                local RootPart = nil
                local ItemTable = nil
                
                local ActionsModule = require(game.ReplicatedStorage.Client.Actions);
                local CombatModule = require(game.ReplicatedStorage.Shared.Combat);
                local AnimationModule = require(game.ReplicatedStorage.Client.Animations);
        
                local MobsFolder = workspace:FindFirstChild((decode_string_v1("9c0aba78",289980327)))
                --[===[local PlayerWindow = Window:addPage("Player", 5012544693)]===]
                local AutoFarmWindow = Window:addPage((decode_string_v1("d253006d30172cfe51",937201355)), 5012544693)
                local VisualsWindow = Window:addPage((decode_string_v1("1516f9cf8ae395",392068354)), 5012544693)
                local TeleportsWindow = Window:addPage((decode_string_v1("d498ef6839e07bc6a6",183654655)), 5012544693)
                local AutoFarmSection = AutoFarmWindow:addSection((decode_string_v1("71ca3cc910ee1f91",2062714573)), 5012544693)
                local VisualsSection = VisualsWindow:addSection((decode_string_v1("32f01ed73fc01e35",458416690)), 5012544693)

                local Camera = workspace.Camera
                local GUIService = game[(decode_string_v1("e4e02744932b998822f5",1270446817))](game, (decode_string_v1("ea8d4691e2b959699a1e",1007985046)))
                
                local function GetNearMobs()

                    local Mobs = {}
                    local HitBoxSize = Vector3.new(25, 15, 25)

                    if RootPart then

                        local MobParams = OverlapParams.new()
                        MobParams.FilterDescendantsInstances = MobsFolder:GetChildren()
                        MobParams.CollisionGroup = (decode_string_v1("7c5e0f3bba16b7",1585311484))
                        MobParams.FilterType = Enum.RaycastFilterType.Whitelist

                        local FoundInBox = workspace:GetPartBoundsInBox(RootPart.CFrame, HitBoxSize, MobParams)

                        if FoundInBox ~= nil then
                            for _, Part in ipairs(FoundInBox) do
                                if Part:IsA((decode_string_v1("453c9a0e1497cc7d",1892203822))) then
                                    if Part.Name == (decode_string_v1("052d3e2a868ac4c5",459878165)) then
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
                                Box = Drawing.new((decode_string_v1("8e414bb381a5",1832738655))),
                                ESPText = Drawing.new((decode_string_v1("cb654ec5",362034287)))
                            }
    
                            local Box =  getgenv().MOB_ESP_OBJECTS[Mob].Box
                            local ESPText =  getgenv().MOB_ESP_OBJECTS[Mob].ESPText
    
                            ESPText.Text = (decode_string_v1("",1121222203))
                            ESPText.Color = Color3.fromRGB(255, 255, 255);
                            ESPText.Size = 20.0
                            ESPText.Visible = false
                            ESPText.Outline = true
                            ESPText.Center = true
    
                            Box.Thickness = 2;
                            Box.Filled = false;
                            Box.Visible = false;
                            
                            getgenv().UpdateCache[Mob] = function()
                                local Collider = Mob:FindFirstChild((decode_string_v1("3c64e9615e3e3b8c",358185218)))

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
    
                                    ESPText.Text = string.format((decode_string_v1("9ac844f275e8e1f4d1a63658a390a0292594e8fa565e2714",366422581)), Mob.Name, tostring( math.floor( (MobPos - PlayerPosition).Magnitude ) ) )
    
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
    
                                            local CreatureHealthFolder = Mob:FindFirstChild((decode_string_v1("bfd73cb1f5efa667749d2ed618d3ac25",1859972954)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("7f6a5c552d85",2032319343)))
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
                            if typeof(V) == (decode_string_v1("85a2dfe1aaf8086c4da7e95a39d132868f8395",799244232)) then
                                V:Disconnect()
                                getgenv().MOB_ESP_CONNECTIONS[I] = nil
                            end
                        end
                    end

                    ESP_META.StartConnections = function()
                        ESP_META.EndConnections()

                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("f3ed69cbfff07eac",526764790))] = MobsFolder.ChildAdded:Connect(function(Mob)
                            ESP_META.AddEsp(Mob)
                        end)
        
                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("9b9274879302b033fef1",1393919366))] = MobsFolder.ChildRemoved:Connect(function(Mob)
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
                
                getgenv()[(decode_string_v1("b46ac374f27963f1a5959b",253953528))][(decode_string_v1("9cbd8d2f97e745d531592fff177285a5",861365531))] = function()
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

                getgenv().UpdateCache[(decode_string_v1("82598e65f712bb5116f3",2062490311))] = function()
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
                
                VisualsSection:addSlider((decode_string_v1("8208a51e978d07064b6657813bce1247c542a3",2061078966)), getgenv()[Settings_Name].MobESPRenderDistance, 250, 10000, function(NewValue)
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

                VisualsSection:addToggle((decode_string_v1("5a6daa028f262c",909237755)), getgenv()[Settings_Name].MobESP, function(Bool)
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

                AutoFarmSection:addToggle((decode_string_v1("695c5ebe43005ef9e1246b6b14fc7c1b7da6a18b22a23d36c457250dcf9609b9294780",1424003596)), getgenv()[Settings_Name].AutoAttackMobs, function(Bool)
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
                                            local CreatureHealthFolder = Creature:FindFirstChild((decode_string_v1("7f549f63bd226f0b693b08eef3d61fe0",2021795619)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("2fc5e38a6283",422766614)))
                                                
                                                if CreatureHealth then
                                                    
                                                    if CreatureHealth.Value > 0 then
                                                        local CreaturePos = Creature:GetPivot();
    
                                                        --local v14 = AnimationModule:GetAnims().Defender["Attack" .. tostring(AttackIndex)];
                                                        if not ActionsModule:IsBusy() then
                                                            TotalHits = TotalHits + 1
    
                                                            --ActionsModule:FireSkillUsedSignal("Primary");
                                                            --ActionsModule:FireCooldown("Primary");
                                                            ActionsModule:SetBusy((decode_string_v1("40ac1acf12",777878178)));
                                                        
                                                            if Character then
                                                                PlayerPosition = Character.PrimaryPart.Position
                                                                PlayerLookVector = Character.PrimaryPart.CFrame.LookVector
                                                                RootPart = Character.PrimaryPart
                                                            end
    
                                                            RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
                                                            Camera.CFrame = CFrame.new(Camera.CFrame.p, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
    
                                                            CombatModule:AttackWithSkill((decode_string_v1("2b17efe032f6f775",137613503)) .. tostring(AttackIndex), PlayerPosition, CFrame.new(PlayerPosition, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z)).LookVector * 1.1 );
                                                            
                                                            AttackIndex = math.clamp(AttackIndex + 1, 1, 6)
    
                                                            if AttackIndex > 5 then
                                                                AttackIndex = 1
                                                            end

                                                            CreatureIndex = CreatureIndex + 1
    
                                                            task.wait(0.01)
                                                            ActionsModule:ReleaseBusy((decode_string_v1("f04ce09dd9",656759566)));
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
                    if A:IsA((decode_string_v1("fa096df07d",2079163280))) then
                        if tostring(A) == (decode_string_v1("512a5d46ee",1174128819)) then
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
    
                AutoFarmSection:addToggle((decode_string_v1("8ebfb63406ffd297",633863139)), getgenv()[Settings_Name].AntiIdle, function(Bool)
                    getgenv()[Settings_Name].AntiIdle = Bool
                end)
    
                AutoFarmSection:addToggle((decode_string_v1("139c1c21f01926f193def755067dddd325c6eafc5e4969829069",1473045218)), getgenv()[Settings_Name].AutoPickupCoins, function(Bool)
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
        
                if not getgenv()[(decode_string_v1("70ed1ae2826ffd451a74",137675655))] then
                    getgenv()[(decode_string_v1("07bf8091fdc9874b7bfa",1643877229))] = true
                    RunService.Heartbeat:Connect(function()
                        for _, Function in pairs(getgenv()[(decode_string_v1("2b422cb5ae5f1bedd60720",1543103109))]) do
                            if type(Function) == (decode_string_v1("0966d833bb160075",1968345563)) then
                                pcall(Function)
                            end
                        end
                    end)
                end
        
                print((decode_string_v1("c1c216eceedc12f622620934549ab5aac8a2d5f44f",1719503117)))
                --
            end
        end    
    end
    
    WorldZeroInit()

    local _Players = game:GetService((decode_string_v1("08bee00b14d103",1665081105)))
    local _Player = _Players.LocalPlayer
    
    local queue_on_teleport = type(syn) == (decode_string_v1("fb3f02f164",1071441290)) and syn.queue_on_teleport or queue_on_teleport
    
    local RejoinCode = (decode_string_v1("b7c30945d4af8d96bb873e5900cc97a7a75e960fd9bc25fe6019e68feb68263ac08638f255fe628d9ea8c64d3c2edc5ead6f06aed837cd4e02a64e26fc37ba7b35bacc4688f82cdacd8ea06c35164ce9685672fa77d20675ea364159b36c8205699a5fe74e879725abb616e59ce1af50c3c5f005b729f3427e45c45af2f27c51a066be1673d2bb95bb5265e60f581c9e1804dd8ea1a8346a50ee36904685c74ec394ab76d8770907a33d00da632e4aebc11162dcfe7d871bc35dfffe3865325308e44ebc341909ebea2f39ace5b7b44faa1a7f19fb3e7788d0a41c89dbdac400042c98a9340e9a800ee74cbcde7ae5bd48151a80ba26b715163b13bfdec3759c137faa44129af6bbcf525e3cd586155246fee171df2365c91165ce1083a667a26045cf1a35e899202f120544f034dde80ca26e1c974afb1858fd45aab883498b642558f21d8d9251f8473b5e3cc95d596f7026cf5d6c4aab1fd329591e457dcc359078a1105ef59a0c93795938b64102ba6cd5cc18f764ee099e22a783506a3e533d78c4c0dff0dc200be35256d725e5dc01cf902cc7f16589e0264fc742349fadf639c5b31d2180fbe5a7279225f35389db27df0b0f3b64f2e24e247039ec90abc3c87e8e84cd56084d81bf3587dc45b692eb3ba7b3da0f4a264b2886a5ebd80ec2b45bb40155a70701ef61b547f28e863cdf61c7328c4aeac45cb50dc30cb7aaa648a39f1695697870937a4e7f4d3b98c00fb240f259a347de8acdcbf5295e8902b0203b0943ca87fc3c882d3e016aba64106f7f73beb35297e8f34914f915233fd8ba7a596d5a150209958d05bf732be1eb51e1c951b4d47e51465e5edac88d0ed040dddc5feb5b333bed0cce84672babb8",1840032495))

    if not isfile((decode_string_v1("b80a5a6bb89b0fdd0874db0541f92b5634bee9",1889825736))) then
        writefile((decode_string_v1("a2d717bef8f74f52173f8db4556703fd96d519",729300896)), tostring(RejoinCode))
    end
    
    queue_on_teleport((decode_string_v1("38b1d22d14d878d6dac8c7ac972252c4290356da7d695acf92b3f0a9fc199deba157435fd814f9fba3005e62d864d3dafac4f45f3e8a5020f750a82943f6bbb11c1ebde96a0e4541b7c59e7244a6b45afce7c97b2b2d99256a2a1b4c808fd667bf996ab75d9a17ac536815ff",475214605)))
end
            --DaHood. lua_compile_spot

			if getgenv()[(decode_string_v1("28ed5ba6be072298913e2101483bdc7f124221bbc2",1846320907))] == true then
                do
    local Players = game[(decode_string_v1("d11deba1f64b814ad705",1719223780))](game, (decode_string_v1("a74d57f9ab3258",1013294606)))
    local Player = Players[(decode_string_v1("6bc90673f9b4893f40ba9a",358612792))]
    local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("26a85314a13b",1499353481))], string[(decode_string_v1("01fd96f24c",1628166826))], string[(decode_string_v1("b849dbbc",1880718632))], string[(decode_string_v1("26746fbdda03",866916924))], string[(decode_string_v1("a486ad1d48",1258309417))]

    Window = UILibrary.new((decode_string_v1("9ba05d9ddc12894cf2638cd3c13a66ca89a43d400540",1354830810)), 5013109572)

    local VisualsWindow = Window:addPage((decode_string_v1("ce3aa412d1ffe3",473701973)), 5012544693)
    local VisualsSelection = VisualsWindow:addSection((decode_string_v1("fa548b8f",2068755428)))

    local GameConfigFile = GetGameConfig(FixName(tostring((decode_string_v1("e8e4d6baf3122072cb",118298054)))) .. (decode_string_v1("9d21b2ea03",783677989)))
    Settings_Name = (decode_string_v1("f94848976acf87bba39d43e0e37482f270caa890456134d40645",1517335467))

    getgenv()[Settings_Name] = {
        Teamcheck = GameConfigFile.Teamcheck or false,
        Boxes = GameConfigFile.Boxes or false,
        Tracers = GameConfigFile.Tracers or false,
        Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
    }

    VisualsSelection:addToggle((decode_string_v1("238cfbce258ef22b1a462073fb",1391984650)), getgenv()[Settings_Name].Teamcheck, function(Bool)
        getgenv()[Settings_Name].Teamcheck = Bool
        getgenv()[(decode_string_v1("32b1135c221b4bc078",794143660))].SetTeamCheck(Bool)
    end)

    VisualsSelection:addToggle((decode_string_v1("827090259c2bae94b3",693989810)), getgenv()[Settings_Name].Boxes, function(Bool)
        getgenv()[Settings_Name].Boxes = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("c565a90df94d0a3cad",1619267733))].LoadBox(Plr)
                end
            end
            getgenv()[(decode_string_v1("0cf78b4eb1c7273511",707989594))].SetBoxVisibility(true)
        else
            getgenv()[(decode_string_v1("d1f5fd3c4626893cb8",1357220877))].UnLoadType((decode_string_v1("94ff04f08356301c331e",221765098)))
            getgenv()[(decode_string_v1("d3ca8a2bc2971d3f4e",190499159))].SetBoxVisibility(false)
        end
    end)

    VisualsSelection:addToggle((decode_string_v1("23abd6476008ccce902a46",1413370057)), getgenv()[Settings_Name].Tracers, function(Bool)
        getgenv()[Settings_Name].Tracers = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("48fee1fcb9938a6739",1174868695))].LoadTracers(Plr)
                end
            end
            getgenv()[(decode_string_v1("6afb910c77180acd04",1894780078))].SetTracersVisibility(true)
        else
            getgenv()[(decode_string_v1("d70175f91c4f77dc80",548511594))].UnLoadType((decode_string_v1("3edc8b93599df09464e838f9",641321485)))
            getgenv()[(decode_string_v1("5ccc6da18883225dfc",1763857687))].SetTracersVisibility(false)
        end
    end)

    local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color

    getgenv()[(decode_string_v1("ccf0c7154bb2d2be42",384139388))].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

    VisualsSelection:addColorPicker((decode_string_v1("bc006d3d7675f786e5",818510729)), Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
        local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)

        getgenv()[Settings_Name].Color.R = R
        getgenv()[Settings_Name].Color.G = G
        getgenv()[Settings_Name].Color.B = B

        getgenv()[(decode_string_v1("18394caca2793827be",355749357))].UpdateColor(Color3.fromRGB(R, G, B))
    end)

    VisualsSelection:addButton((decode_string_v1("2c022373d6252461571b",1038655776)), function(Bool)
        getgenv()[(decode_string_v1("eea8372003f1307aa1",1048668121))].UnLoad()
    end)
end
			end

			if Window ~= nil and Settings_Name ~= nil then
				local MarketService = game:GetService((decode_string_v1("64a335424df64f00414abb9d063351e75177",587710067)))
				SettingsPage = SettingsPage or Window:addPage((decode_string_v1("920772c3ea2a060a",1932271780)), 5012544693)
				SettingsSection = SettingsSection or SettingsPage:addSection((decode_string_v1("b6cda204b3",1151601694)), 5012544693)
				SettingsSection:addButton((decode_string_v1("684a06be03ba0bd429d56f",1274638128)), function()
					local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
					if isSuccessful then
						if tostring(info.Creator.Name) == (decode_string_v1("48866a2708c9721e47a5888b32",1892529343)) then
							SaveGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("995cea1294",1191432417)), getgenv()[Settings_Name])
                        elseif getgenv()[(decode_string_v1("10cfcd4415db353990e81daa045206acbb1accb21e",1009864691))] == true then
							SaveGameConfig(FixName(tostring((decode_string_v1("f989f00e29438257a3",1499918408)))) .. (decode_string_v1("450453b5c1",198095238)), getgenv()[Settings_Name])
                        else
							SaveGameConfig(FixName(tostring(info.Name)) .. (decode_string_v1("bdd8af23e7",297259182)), getgenv()[Settings_Name])
						end
					end
				end)
				SettingsSection:addKeybind((decode_string_v1("13126db980ef9d279292129fb480",98516713)), Enum.KeyCode.Home, function()
					Window:toggle()
				end, function()
				end)
			end
		else
			return sendError(serverData, clientData)
		end
	end
end, function(err)
	return warn(err .. (decode_string_v1("0a",451190258)) .. debug.traceback())
end)