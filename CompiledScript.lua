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
		getgenv().Key = (decode_string_v1("8eb5278bda01a58841e334bd6fedd0fa",267363619));
		getgenv().DiscordWebhook = (decode_string_v1("031e1d27",362045442));
		getgenv().WebhookEnabled = false;
		getgenv().GubVersion = (decode_string_v1("81e60f",455146775));

		local CLIENT_DEOBF_OFFSET = 3;
		local SERVER_DEOBF_OFFSET = 1;
		local StartTimer = os.time()
		local UILibrary = loadstring(game:HttpGet((decode_string_v1("cf31e2ec70d14cd6b33908778e9550591a03bbc6fc792d2b5d12fd045592bdfb3c1da0f53008953a97d8821d987ff0b7c00e6f6203f6322bf09c9a708bb99ee8d96deb2ff65fa250ac0ba97f1b",765466080)), true))()
		local library = loadstring(game:HttpGet((decode_string_v1("c00447b04b875b7473c1e3ad92a629a6dd636d4f1b91c0082f09fba3ef341d524be2e204264cba2bde487caea0fef01d8ec082df82a3dded58fd57e73da1a729c2a7c1acb9f387598668b223bd611012556b17144e0738c3f4d52f5a3c0319f9e186",527830247))))()
		library:Notification((decode_string_v1("f2f31fef310aa1",1842740591)), (decode_string_v1("1db2fd34f00d8af4e8a54cba447807caa834d47c917cae4478c11ce41f3eb5a62dc66687662e2f3ae884a96624cd",132077358)), 10, Color3.fromRGB(255, 255, 255))

		if not isfolder((decode_string_v1("8396f811f65ac0b62129ec4a8645",1500652649))) then
			makefolder((decode_string_v1("68cc947d6e5ae33c95e2ed539337",107699705)))
		end

		for i, v in pairs(game:GetService((decode_string_v1("02f8402f2c5a10",214154516))):GetDescendants()) do
			pcall(function()
				if v.Name == (decode_string_v1("84e0bb80",597972096)) then
					v.Parent.Parent:Destroy()
				end
			end)
		end

		local function identify()
			local Executor = string.lower(identifyexecutor())
			local ExecutorTable = nil
			if string.find(Executor, (decode_string_v1("e31dad3856951b",1622845669))) then
				ExecutorTable = {
					(decode_string_v1("e09a0d36955474",332730281)),
					syn.request
				}
			end
			if string.find(Executor, (decode_string_v1("3001d08a",828530170))) then
				ExecutorTable = {
					(decode_string_v1("1ce5b710",2078877444)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("41b0ff95",856740885))) then
				ExecutorTable = {
					(decode_string_v1("86498f767e3c",1508452074)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("a5e72e06dc16",572916489))) then
				ExecutorTable = {
					(decode_string_v1("39627fa3906182c5d848c7",1471193384)),
					http.request
				}
			end
			if string.find(Executor, (decode_string_v1("9a80bf",1143053745))) then
				ExecutorTable = {
					(decode_string_v1("8e2598e0f12eb3a0",1835380716)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("a7bda0",1130089267))) then
				ExecutorTable = {
					(decode_string_v1("670d8450ea234912beca14b5",698194969)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("3fe15b90",651673627))) then
				ExecutorTable = {
					(decode_string_v1("a7042f03842fc820d211",1690572722)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("214b4c97",1399059870))) then
				ExecutorTable = {
					(decode_string_v1("5e4be575a460de",1777022423)),
					httprequest
				}
			end
			if string.find(Executor, (decode_string_v1("375eebd761c7b247",182564813))) then
				ExecutorTable = {
					(decode_string_v1("235f42863a9ccfdf",1391330400)),
					http_request
				}
			end
			if getgenv().WRD_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("61ce8df1ffbb6472",1754056803)),
					http_request
				}
			end
			if getgenv().unlock_module ~= nil and getgenv().setscriptable ~= nil and getgenv().import ~= nil then
				ExecutorTable = {
					(decode_string_v1("6c3f4881aca59669d2348a5225183b",1885909141)),
					http_request
				}
			end
			if getgenv().OXYGEN_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("6660d7da9f793304",587679406)),
					http_request
				}
			end
			if ExecutorTable == nil then
				library:Notification((decode_string_v1("41706322d7ad8c053b02d4452d",461225677)), (decode_string_v1("f9f44c25f7605c0e66d9c004847e5af9f054003424b48b6917294c08fb03eaa2eaff361a1e903198370b66914bb724e5a65842227cac2dff92bbcff539a7342cb7bb8254eac2d059",509841970)), 10, Color3.fromRGB(255, 255, 255))
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
				library:Notification((decode_string_v1("60f008975bd9044beed3a70f7296",98536685)), (decode_string_v1("d87a7eb503b44bfb8c96d790d96d296a8398ef7c7a6b6a155ab9c1e9ed5c88fd51dcfd04dd96d0869ac8c33da7f583f13e37f04c05f399988d517785e07c63a5596de60703",744258371)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("8a5b6a4f7dc5a7033b2a33ca681127a665e58c372897456a96b6ef0e858608b6bb0e654d1fe3a265abdc841d9e1560df",1163536572)) then
				library:Notification((decode_string_v1("8b34452411d092db0a4494126bfe",474499948)), (decode_string_v1("d7dc8943f26acebe63dc37bbcf0a39f5a7f1fe291c94fdc7674a50d26cf0ca6bc2c448c49ee05d9b8ac769df4c83599a6d0c1d7f6badcbaaaf",515683554)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("40671d16d0e84076759d499fb3a2f1aff304f61e7a8376d3f7",389397379)) then
				library:Notification((decode_string_v1("71655876422339d619042f430c62",1653929319)), (decode_string_v1("a327d7cde5286385ac86b0742110f061c99efe6d38a650599f9cdb8c1506fe350a587169a473588ae00fa94013b542d9f36bc18e21fb8972c8dd48ac06",545774356)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("84f30cd501ce611b22b19e254edff33c69e9e4a2",790781532)) then
				library:Notification((decode_string_v1("4510cb318766dfd228ccb9af3ec1e6ff",1879632047)), (decode_string_v1("bf65d33bac26038746824421f0b6310ff1d82040f37d137c5ca1209dd48fcd5bec67b1ed3d94e91ee09bfb574e6156570213ef6fa547abaca542020ae31a354c72a6e0a8ff",1743388245)), 15, Color3.fromRGB(255, 255, 255))
			else
				library:Notification((decode_string_v1("714823a5d5aefa0e389c9a280c6b",551394550)), (decode_string_v1("7c7d3ec1f7ce4a59cedc20fbcc55d45b9c7097c1b45d9ab57301d5d77322c8b09ca86fd2854524d35dd264b200b22685d4fb34690d0080dc229493cc9f4beffe3b829bf09085923871940a82beb51e231e2df942f2f9c966450a35536db1f5446e501bd10963d9c9094e672ac27f832333a54bda304834d6a2",1984724661)), 15, Color3.fromRGB(255, 255, 255))
				setclipboard((decode_string_v1("7469e7f57538c0fff616d072d64da3c8ffc5bd97a9b7088759e4792b9f144494ca45c958e24081caad1ab8d5f4ebc7bcc68a70070cd0ae9d31b6d7bdc93f",216243348)) .. clientData .. (decode_string_v1("788a7cd1434d0f7201fbd33c",492822667)) .. exploit .. (decode_string_v1("b7557e3910c9559d",2022424357)) .. Key .. (decode_string_v1("b88c44a4589322a6a488171f702f2160",1368363563)) .. serverData .. (decode_string_v1("b705a71f0feffd1cac038f5b01115b3e03",206533049)) .. tostring(newtime))
			end

			specialisedrequest({
				Url = (decode_string_v1("2f287a84eeed41c706bf613a267919c71fee45063f93e256bbf30745a8",906545121)),
				Method = (decode_string_v1("87c3e58e",1810553834)),
				Headers = {
					[(decode_string_v1("a69683f75b7fb392ca7e27eb",2026456127))] = (decode_string_v1("73e919ad9d59fbfe6af023d6a4c9f3e1",1465579426));
					[(decode_string_v1("b65fa4e8ed67",1151611828))] = (decode_string_v1("1fceb5db6f383c8d08766073c4eaacf76a604d",2040333858));
				},
				Body = game:GetService((decode_string_v1("3f73df23979c99b6e7b581",726764265))):JSONEncode({
					[(decode_string_v1("70b4da",257680349))] = (decode_string_v1("26794f5dc46ca9653d287ddc0d92",850485531));
					[(decode_string_v1("96eac401",800214187))] = {
						[(decode_string_v1("38cae4b3",1826015403))] = (decode_string_v1("11ca64ac600fa8636674",1391558721))
					};
					[(decode_string_v1("114c3da61c",1055513933))] = (decode_string_v1("b262b632b2eb854cce090311eaf99b99846fafadf9d45b0ecc0c7df38dffadde0ffabea3",820793286));
				})
			})
		end

		local random = Random.new()
		local letters = {(decode_string_v1("ec",1236304233)),(decode_string_v1("59",2115078006)),(decode_string_v1("22",1917071708)),(decode_string_v1("93",1902927243)),(decode_string_v1("03",1402454024)),(decode_string_v1("e1",324589176)),(decode_string_v1("83",1526126873)),(decode_string_v1("d0",1626733032)),(decode_string_v1("06",855744921)),(decode_string_v1("d9",1178354450)),(decode_string_v1("38",73174120)),(decode_string_v1("83",1777821335)),(decode_string_v1("2e",773968357)),(decode_string_v1("79",1302431271)),(decode_string_v1("86",1769517516)),(decode_string_v1("27",181462)),(decode_string_v1("99",481760482)),(decode_string_v1("7d",424090061)),(decode_string_v1("e3",176315586)),(decode_string_v1("03",1905108726)),(decode_string_v1("ce",311617379)),(decode_string_v1("61",137888582)),(decode_string_v1("dc",1992136779)),(decode_string_v1("00",1645718394)),(decode_string_v1("d4",445731503)),(decode_string_v1("01",97244358))}

		function getRandomLetter()
			return letters[random:NextInteger(1, #letters)]
		end
		local function FixName(GameName)
			return GameName:gsub((decode_string_v1("3944b08350856f24e429efad",544933047)), (decode_string_v1("",1347781863)))
		end

		local function GetGameConfig(GameName)
			local Table = {}
			if isfolder((decode_string_v1("298334098e922274455f9ec72c9d",1554522705))) then
				if isfile((decode_string_v1("29ca8879eab2d3fe46b711765416fa",1561647301)) .. tostring(GameName)) then
					local HttpServices = game:GetService((decode_string_v1("7f2a1e8734a8a695f5f983",1337977815)))
					local ConfigContents = readfile((decode_string_v1("24387863368f171c106a96a241581e",1046738931)) .. tostring(GameName))
					local DecodedSuccess, DecodedContents = pcall(HttpServices.JSONDecode, HttpServices, tostring(ConfigContents))
					if DecodedSuccess then
						Table = DecodedContents
					end
				end
			end
			return Table
		end

		local function SaveGameConfig(GameName, ConfigTable)
			if isfolder((decode_string_v1("4b91bcc7f403f3f1d94dfa2cab06",1681573776))) then
				local HttpServices = game:GetService((decode_string_v1("ef12696b37c57bc1321d60",1323332068)))
				local EncodedSuccess, EncodedContents = pcall(HttpServices.JSONEncode, HttpServices, ConfigTable)
				if EncodedSuccess then
					writefile((decode_string_v1("2e245016720b259aa4762c76469bc3",918685090)) .. tostring(GameName), tostring(EncodedContents))
					return true
				end
			end
			return false
		end

		function getRandomString(length, includeCapitals)
			local length = length or 10
			local str = (decode_string_v1("",1939884310))
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
				return (str_gsub(s, (decode_string_v1("a5",931409303)), function(c)
					return str_fmt((decode_string_v1("a8046a4e",1178610583)), str_byte(c))
				end))
			end

			local function num2s(l, n)
				local s = (decode_string_v1("",3973460))
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
				msg = msg .. (decode_string_v1("97",1103011747)) .. str_rep((decode_string_v1("18",149030788)), extra) .. len
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

		if getgenv().Key == (decode_string_v1("",302430333)) or nil then
			Key = (decode_string_v1("8d35efd8",1862021916))
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
			local charset = (decode_string_v1("b282450b82e0bbdd7b9b6a3d7f9337666ad18fde986d47cc7dcd199f8f6823f0e6a70d303779a91e6b22219b4f09a19871885ee5cc3b223a73a4d8d7a0",1160983438))
			if type(v1) == (decode_string_v1("ca180b9d9432",1032212993)) and type(v2) == (decode_string_v1("e6ef97c49b73",778910553)) then
				local length1, length2, chars_1, chars_2 = #v1, #v2, {}, {}
				v1:gsub((decode_string_v1("3e",49698110)), function(s)
					chars_1[#chars_1 + 1] = s
				end)
				v2:gsub((decode_string_v1("65",2090184975)), function(s)
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
			local Pos, Finished, charCodes, Key, arglen = 1, (decode_string_v1("",67347422)), {}, 447 - #((decode_string_v1("df6a8bb338b0c5d00f2bc90e9f83095c2658c8985c89a8a5bc89f31657f2ac1faa",27094474))), 35 - #((decode_string_v1("9fa69c",1469137461)))
			local schar = Finished.char
			local Keys = {
				233 + #((decode_string_v1("aa0217",1303569390))),
				781 - #((decode_string_v1("6788769b",1442958710))),
				785 - #((decode_string_v1("6ebd1674eb9e",1881686911))),
				876 - #((decode_string_v1("e8528dfdea7c3b",915883087))),
				350 - #((decode_string_v1("73baef560f89fe12632194cfafeb6f349928ee",2077921746))),
				23 + #((decode_string_v1("cf3a3defdd88312b75f7182425e4adeeec95e75a894f567c9f61bb5f75ed387112",772086332))),
				111 + #((decode_string_v1("8fcc11f15c068fd6354912ad6b4adabc08757f87eee34419248f636d56a9283b87",202116764))),
				440 + #((decode_string_v1("7463b362b0747ba0b4753136",2054917982))),
				341 + #((decode_string_v1("5ac62ce6",675766072))),
				322 - #((decode_string_v1("e71ba46a58485cd06d296ba6e407a4b733d801f6515fe7b74ebc45d402d8a4bb5df963dbfda8e75dff3066368653d2f1678b8c1b55a95984bcca4957d55e9ecf3ab1e0bd4382938a2eeb0d0482a76ee43c5997ca0223e645b3f6ad26edfe3780bd8d7e024b2bfbd90f6a6645",1094133392))),
				117 + #((decode_string_v1("e4c5e67d55ca1806dd6f6354",1827764590))),
				196 + #((decode_string_v1("5e12dc2212d91e5b9c7caf77c8b7afcd2c6610",1474141655))),
				272 - #((decode_string_v1("1cb91f6f6eb03ca70e72",1085166947))),
				653 - #((decode_string_v1("dcb5e57410d98c109fc63460",994378358))),
				510 + #((decode_string_v1("4e9d8128d07c",855575733))),
				61 + #((decode_string_v1("e99a4f41da1080c24b18",487750373))),
				61 - #((decode_string_v1("a4b80838cd9db574bc",1087395731))),
				283 - #((decode_string_v1("fdcc23f9",1489731105))),
				568 - #((decode_string_v1("845a608b7e25",2076282808))),
				933 + #((decode_string_v1("a71e60b7157ffd9c66fd64ee6304",448159684))),
				642 - #((decode_string_v1("ab8089d787c14b66df82",1290628795))),
				651 - #((decode_string_v1("7ae0351c5e9fa92ea378",1783408092))),
				875 - #((decode_string_v1("b9d9c331",1735930653))),
				882 - #((decode_string_v1("4c03144fc036",1669076535))),
				333 - #((decode_string_v1("f57aaa12c95f8592173f75183128b18e34d2",1683058326))),
				245 - #((decode_string_v1("c786f15684ab",1402481773))),
				988 - #((decode_string_v1("e3f6c3ea766ee458eb",1742225180))),
				118 + #((decode_string_v1("0ba963122392ea4752e7972780a27a8a847999",2028131006))),
				623 + #((decode_string_v1("84f16e7b11a2",231015470))),
				629 + #((decode_string_v1("8db622",599055946))),
				689 - #((decode_string_v1("cce5ce0076fec4b02f54",1055921829))),
				828 - #((decode_string_v1("018b86c3606a3d7081719046",180491064))),
				76 - #((decode_string_v1("26bac0dfcd8d8707340a4eb0",1234380642))),
				71 - #((decode_string_v1("d1ffa1c199c2",181040776))),
				85 - #((decode_string_v1("2b2abd2c972b63633c122f538d54ffc3f3b86c",39498876))),
				79 - #((decode_string_v1("e42046224e16164c5e037280",1830573901))),
				56 + #((decode_string_v1("f7860e1f7b97a589265db86b",1344527272)))
			}
			getfenv(0)
			Finished.split((decode_string_v1("",1529313788)), (decode_string_v1("",149480280)))
			while Pos <= 132 - #((decode_string_v1("92c03ee0789b4b726d44",108602628))) do
				charCodes[Pos] = schar(Pos)
				Pos = Pos + 1
			end
			Pos = 1
			local Confused = (decode_string_v1("",408371084))
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
			712 - #((decode_string_v1("5474deb6",565919211))),
			1305 + #((decode_string_v1("0b9456b7467305c308c4",107803496))),
			1265 - #((decode_string_v1("7fc73822869a26537473c9f95e9b104b3cb5068215b983729f2214770489a1f9f0",584734804))),
			1343 + #((decode_string_v1("c2af5e896d4d6cba421dc3",106002540))),
			784 + #((decode_string_v1("df953f06",1501247877))),
			553 - #((decode_string_v1("cf4edc21574986",341953961))),
			594 + #((decode_string_v1("b1dbd64cf14824bd00fccf3c",578621054))),
			929 + #((decode_string_v1("d158be61840ef3dd5ebc8a1eee09495ba21d0e",2020927799))),
			822 + #((decode_string_v1("50a87beb7118179e4c0b",396661826))),
			735 - #((decode_string_v1("5ed355218a1204449db39185e9b110a1e4abfb",1479459009))),
			649 + #((decode_string_v1("47cb7fc3",1700563665))),
			726 - #((decode_string_v1("5479ae7a",6984004))),
			781 + #((decode_string_v1("948d18eeb77a8e3f2080",1242986939))),
			1150 + #((decode_string_v1("61892e",1686892289))),
			1059 - #((decode_string_v1("635767a73628401f",2064418190))),
			607 - #((decode_string_v1("8de4ebd5055fbfcffdaeb4280277c5a2aefe8a",776225781))),
			574 + #((decode_string_v1("61f3c9884de7be63910eaf78c32509312bddfa",624542667))),
			768 + #((decode_string_v1("b04418dc79a4b13c5221a0fa7c9b4d7c9b18d36da019ef7d8f7a8f53395dfd153c",573035181))),
			1103 + #((decode_string_v1("a3392f205db5",566870616))),
			1437 - #((decode_string_v1("dfe7cf45",503283215))),
			1192 - #((decode_string_v1("63db0e3119a552e1",2044881779))),
			1136 - #((decode_string_v1("f1ebd293",171777098))),
			1461 - #((decode_string_v1("cf9596cbcdea807771f212084ae19ed96f02f59596e774d83ac39578d159369d37",44990316))),
			1341 + #((decode_string_v1("3e628752387b",1287109211))),
			813 + #((decode_string_v1("a3407529766e",1684672338))),
			710 + #((decode_string_v1("130267a5d25e",1342332708))),
			1494 - #((decode_string_v1("72f5b21c3080",1113688434))),
			729 - #((decode_string_v1("874c1a880e4694409f162007dbaccba59a06824eacf3ac908aba3159bffa72817c23c9ac7ec2f382c36397defae7036d4728664da301ae8c27619d8591c2559ddd96aa519000c90b1ea1cc2ff2ebe8ad7ef25bfb011bf5a0fb35b542b4286da364c585c8c21686d8b368ce37",827417942))),
			1147 - #((decode_string_v1("f020aa32",10850265))),
			1111 + #((decode_string_v1("62d02c35638430e87672",362135293))),
			1205 - #((decode_string_v1("386af5ea0f14",1795674146))),
			1349 + #((decode_string_v1("6c2580d3391a180d5a8a",1387167539))),
			54 + #((decode_string_v1("3e5cf37f8b378d78cc8b",428774246))),
			61 + #((decode_string_v1("9348c81e",2029796097))),
			-42 + #((decode_string_v1("e79d9894cc823ca6efae609c479b550791984fc8c2513c5a2c692457dba021632ba8acb08daf016911447271847503cebb9a482514cee4baf15b9b32a3f78e95703cab4d9bbf5f73c814c04188bdeee4d047754ffaae39d3bceb874e73c7a98b330ee9f193188e48e72d3fc0",1315732808))),
			71 - #((decode_string_v1("926bd82c",1314400174))),
			58 + #((decode_string_v1("443d81e406af4882464b",1421420049)))
		}

		local whitelisted = false
		local basec = (decode_string_v1("0bc225d649d0edab125448042cc585366667a575ef63a8aac642bc1a5b59c4189641ec38f4038dd2171852c80964780b31864ac0d6442b200fcdc6e3ac4a9bb2",549556510))

		local function base_encode(data)
			local b = basec
			return ((data:gsub((decode_string_v1("5e",1703526574)), function(x)
				local r, b = (decode_string_v1("",1242569613)), x:byte()
				for i = 8, 1, -1 do
					r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and (decode_string_v1("d2",1813976442)) or (decode_string_v1("c7",1944373665)))
				end
				return r;
			end) .. (decode_string_v1("c7892b46",873685379))):gsub((decode_string_v1("8d3e47fb7e6740cc2c0e2be5aa724154",1429496452)), function(x)
				if (#x < 6) then
					return (decode_string_v1("",1248511993))
				end
				local c = 0
				for i = 1, 6 do
					c = c + (x:sub(i, i) == (decode_string_v1("e5",510494818)) and 2 ^ (6 - i) or 0)
				end
				return b:sub(c + 1, c + 1)
			end) .. ({
				(decode_string_v1("",1539259593)),
				(decode_string_v1("ab0a",1386333273)),
				(decode_string_v1("0e",1335402689))
			})[#data % 3 + 1])
		end

		local function base_decode(data)
			local b = basec
			data = string.gsub(data, (decode_string_v1("116e",1465757014)) .. b .. (decode_string_v1("ee6c",1985585734)), (decode_string_v1("",959029897)))
			return (data:gsub((decode_string_v1("7d",679051887)), function(x)
				if (x == (decode_string_v1("84",2094845087))) then
					return (decode_string_v1("",77110883))
				end
				local r, f = (decode_string_v1("",648443793)), (b:find(x) - 1)
				for i = 6, 1, -1 do
					r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and (decode_string_v1("ee",967993651)) or (decode_string_v1("67",861440098)))
				end
				return r;
			end):gsub((decode_string_v1("5c1c5cdf6dc4534c74a9f80f80d4b289cdea43d1982d",421365545)), function(x)
				if (#x ~= 8) then
					return (decode_string_v1("",588630041))
				end
				local c = 0
				for i = 1, 8 do
					c = c + (x:sub(i, i) == (decode_string_v1("cc",224131461)) and 2 ^ (8 - i) or 0)
				end
				return string.char(c)
			end))
		end

		if not getgenv()[(decode_string_v1("df0547",511303988))] then
			getgenv()[(decode_string_v1("b24337",1948772035))] = {}
		end

		local StringTable = getfenv(pcall)[(decode_string_v1("2c621df73bbe",434946591))]

		-- More Security updates.

		local StringMT = getmetatable(newproxy(true))

		StringMT.char = StringTable.char

		Backup = getgenv()[(decode_string_v1("1cfa655ac45371",27288332))] or StringMT
		
		getgenv()[(decode_string_v1("f7364ba258e66e",1359712800))] = getgenv()[(decode_string_v1("e87db01206cc56",607657719))] or StringMT

		local function Convert_v1(Offset, Text)
			local Result = (decode_string_v1("",378012238))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("e4626b",1017356982))](Text, Index, Index)
				local Byte = char[(decode_string_v1("556a10c9",914504946))](char)
				local MMath = (Byte + Index + Offset + 3)
				local letter = Backup[(decode_string_v1("dc13a64c",1900209887))](MMath)
				Result = Result .. letter
			end
			return Result
		end

		local function UnConvert_v1(Offset, Text)
			local Result = (decode_string_v1("",2030564386))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("f7c98e",447053867))](Text, Index, Index)
				local Byte = char[(decode_string_v1("fdca9a8b",1103807193))](char)
				local MMath = (Byte - Index - Offset - 3)
				local letter = Backup[(decode_string_v1("92b59462",980993896))](MMath)
				Result = Result .. letter
			end
			return Result
		end
        
		local function GetReturnedData()
			local D_ATE = os.date()
			local T_ime = os.time()
			local HTTP_SERVICE = game:GetService((decode_string_v1("1f5039562f7c642d2c65da",1309550748)))
			local OffsetTable = {}
			local DataTable = {
				Url = (decode_string_v1("100df0e442cdbfd8d4a8ca93fd4ee37f26bc3206d3cd3f0596f241bc60e2f196e13ba7b426e068b5432e0ba98c3351340daf672c9298f6580686",1469570760)),
				Method = (decode_string_v1("18294b",359334180)),
				Headers = {
					[(decode_string_v1("de974b",334773698))] = Key;
					[(decode_string_v1("88e280a431c40257",1059446988))] = tostring(game.Players.LocalPlayer.Name);
					[(decode_string_v1("739f26cb1f",2052108184))] = tostring(game.Players.LocalPlayer.DisplayName);
					[(decode_string_v1("dcd123a243578331",807071229))] = exploit;
				}
			}
			OffsetTable[(decode_string_v1("048d0bf6db65abe81b",1113740784))] = base_encode(tostring(D_ATE))
			OffsetTable[(decode_string_v1("fe7bcc165d91c72825",1138363467))] = base_encode(tostring(T_ime))
			DataTable.Headers[(decode_string_v1("73ca753a",379374305))] = tostring(base_encode(HTTP_SERVICE:JSONEncode(OffsetTable)));
			local returnedData = specialisedrequest(DataTable)
			return returnedData, tostring(D_ATE), tostring(T_ime)
		end

		local returnedData, ShouldReturn1, ShouldReturn2 = GetReturnedData()
		returnedData = returnedData.Body

		if type(returnedData) ~= (decode_string_v1("5a01589d133b",232773252)) then
			repeat
				returnedData = GetReturnedData()
				returnedData = returnedData.Body
				task.wait(0.0003)
			until type(returnedData) == (decode_string_v1("6a56103244a4",140061569))
		end

		local DecodedData = returnedData

		for Index = 1, 10 do
			DecodedData = base_decode(DecodedData)
		end

		returnedData = DecodedData

		local ReturnedArgs = string.split(tostring(returnedData), (decode_string_v1("3e2b04663b73fb60945359eeec",1952955930)))
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
			return game.Players.LocalPlayer:Kick((decode_string_v1("696d08d1118d380ef4ff77cc8c9f3b528780bc99c6634534febffc913e9d1cb7228086c38cceca8bf4fcb3ef1a02e0dfc34c968aee56ebb727eab50e1aceb318db864dc8b5",473870478)))
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
		local dynamic = number:split((decode_string_v1("",610421433)))
		table.remove(dynamic, 10)
		table.remove(dynamic, 9)
		local randomData = tostring(uniformRNG(dynamic[7], dynamic[8]))
		local randomData = randomData:sub(1, -3)
		local clientData = hmac(secret, Key .. randomData)

		if isfile((decode_string_v1("80ac398d74977cb218a9d59b7ae2fa98b4b831",379756558))) then
			delfile((decode_string_v1("0682aa0914016dbb9c78021c2d1a8194f16f66",1938917231)))
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

			getgenv()[(decode_string_v1("262a091956f810b0fff98678f66dad364969a32bc1",407589902))] = true

			-- The ones with the spaces between .lua are the ones that I don't want to be loaded rn as they're not complete.
            do
    local json = {}
    local function kind_of(obj)
      if typeof(obj) == (decode_string_v1("71736b2ba4b6",20250824)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("ed4eba69fce933",1040060362)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("795f5723f451de",773972425)) then return typeof(obj), obj end
      if type(obj) ~= (decode_string_v1("63de2b8463",2043661689)) then return type(obj) end
      local i = 1
      for _ in pairs(obj) do
        if obj[i] ~= nil then i = i + 1 else return (decode_string_v1("ebc1bb02b7",1917724675)) end
      end
      if i == 1 then return (decode_string_v1("53146a8108",1165052613)) else return (decode_string_v1("6be9825ae4",60950916)) end
    end
    
    local function escape_str(s)
      local in_char  = {(decode_string_v1("7c",458823975)), (decode_string_v1("65",211907650)), (decode_string_v1("75",1630213602)), (decode_string_v1("f0",492125774)), (decode_string_v1("74",1520165186)), (decode_string_v1("1d",132147735)), (decode_string_v1("69",1691709579)), (decode_string_v1("d2",1967637169))}
      local out_char = {(decode_string_v1("a4",555525242)), (decode_string_v1("f6",570303183)), (decode_string_v1("b3",1678149567)),  (decode_string_v1("e1",1225874439)),  (decode_string_v1("51",2068396216)),  (decode_string_v1("81",999792289)),  (decode_string_v1("d1",2012955607)),  (decode_string_v1("eb",1938421684))}
      for i, c in ipairs(in_char) do
        s = s:gsub(c, (decode_string_v1("b3",2119765969)) .. out_char[i])
      end
      return s
    end
    
    -- Returns pos, did_find; there are two cases:
    -- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
    -- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
    -- This throws an error if err_if_missing is true and the delim is not found.
    local function skip_delim(str, pos, delim, err_if_missing)
      pos = pos + #str:match((decode_string_v1("01e19ed6",2144853126)), pos)
      if str:sub(pos, pos) ~= delim then
        if err_if_missing then
          error((decode_string_v1("ee0948586c98abda38",117322947)) .. delim .. (decode_string_v1("381a5d4e0d8327e5e2babf87a591df",1419988677)) .. pos)
        end
        return pos, false
      end
      return pos + 1, true
    end
    
    -- Expects the given pos to be the first character after the opening quote.
    -- Returns val, pos; the returned pos is after the closing quote character.
    local function parse_str_val(str, pos, val)
      val = val or (decode_string_v1("",1525432310))
      local early_end_error = (decode_string_v1("f099bed467b82a4d0063db1a4416711eee37db67a7001cfcfaacdf7d17cf331c9cc9e1d94acf0a01",372705179))
      if pos > #str then error(early_end_error) end
      local c = str:sub(pos, pos)
      if c == (decode_string_v1("82",1363767652))  then return val, pos + 1 end
      if c ~= (decode_string_v1("c3",614076381)) then return parse_str_val(str, pos + 1, val .. c) end
      -- We must have a \ character.
      local esc_map = {b = (decode_string_v1("2f",1960388389)), f = (decode_string_v1("4b",2051193786)), n = (decode_string_v1("ae",1411661587)), r = (decode_string_v1("52",1184970347)), t = (decode_string_v1("7e",230086820))}
      local nextc = str:sub(pos + 1, pos + 1)
      if not nextc then error(early_end_error) end
      return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
    end
    
    -- Returns val, pos; the returned pos is after the number's final character.
    local function parse_num_val(str, pos)
      local num_str = str:match((decode_string_v1("d2aa8e7541d51f1a045a66da4533973d1b577c766cad7b9e96",20050567)), pos)
      local val = tonumber(num_str)
      if not val then error((decode_string_v1("88820a3d995ae883cd401890791781231640a254da3a22b0fa114ce59649484a17",729713393)) .. pos .. (decode_string_v1("26",1976371))) end
      return val, pos + #num_str
    end
    
    
    -- Public values and functions.
    
    function json.stringify(obj, as_key)
      local s = {}  -- We'll build the string as an array of strings to be concatenated.
      local kind, kind_objecto = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
      if kind == (decode_string_v1("4d0f1e99f0",1703368871)) then
        if as_key then error((decode_string_v1("a4aef3aa1b180e633caafadcf31759e548b95316c0018fb5df2e",2066281795))) end
        s[#s + 1] = (decode_string_v1("ac",911768755))
        for i, val in ipairs(obj) do
          if i > 1 then s[#s + 1] = (decode_string_v1("f348",2022606028)) end
          s[#s + 1] = json.stringify(val)
        end
        s[#s + 1] = (decode_string_v1("58",782270258))
      elseif kind == (decode_string_v1("8b37afef86",1777315891)) then
        if as_key then error((decode_string_v1("9690de23307f597ba38ae447dcdd07484063073793cc3387819c",1003268029))) end
        s[#s + 1] = (decode_string_v1("92",1780120993))
        for k, v in pairs(obj) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("3cb9",1481620920)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("89",1868473697))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("e9",450129274))
      elseif kind == (decode_string_v1("96ccefffd9f0",2032748367)) then
        return (decode_string_v1("51",204837132)) .. escape_str(obj) .. (decode_string_v1("09",400292652))
      elseif kind == (decode_string_v1("b4def7016160",413796445)) then
        kind_objecto = {table_type = (decode_string_v1("9c52c3852a7d",862169690)), kind_objecto:components()}
        if as_key then error((decode_string_v1("2deec139a5ba42cd42fa6e0138830db542184cb28d4e3ba5d856",515269793))) end
        s[#s + 1] = (decode_string_v1("9d",1741377913))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("bb91",2129755148)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("89",1869127933))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("96",1824694527))
    elseif kind == (decode_string_v1("79f09f4125b7dc",255670759)) then
        kind_objecto = {table_type = (decode_string_v1("618032e080c0fd",2079394463)), kind_objecto.X, kind_objecto.Y, kind_objecto.Z}
        if as_key then error((decode_string_v1("8bb344aa1f4c28704ffdd46da7dc7182b3867184318f7ece711f",1417777399))) end
        s[#s + 1] = (decode_string_v1("48",1325274292))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("8b68",1888834825)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("76",163827043))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("f6",831008738))
    elseif kind == (decode_string_v1("91580c5cc9eafa",210685195)) then
        kind_objecto = {table_type = (decode_string_v1("299bf3edbe418b",721785635)), kind_objecto.X, kind_objecto.Y}
        if as_key then error((decode_string_v1("d5260c4322722ed87cd4f88e9098b042d5fd563453a754163f9d",581059631))) end
        s[#s + 1] = (decode_string_v1("76",1289082958))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("739e",298584416)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("d9",1005006840))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("08",1114255632))
      elseif kind == (decode_string_v1("2d3ca4f66a4f",1842165470)) then
        if as_key then return (decode_string_v1("51",1839718835)) .. tostring(obj) .. (decode_string_v1("cd",1808210898)) end
        return tostring(obj)
      elseif kind == (decode_string_v1("f1c7ce7d3496b2",1178309648)) then
        return tostring(obj)
      elseif kind == (decode_string_v1("7ebc6b",1346055823)) then
        return (decode_string_v1("bde1d03d",2037199905))
      else
        error((decode_string_v1("ce34b7e651407a823d6adba3ce3b06e514414dcc",388495886)) .. kind .. (decode_string_v1("81",85828725)))
      end
      return table.concat(s)
    end
    
    json.null = {}  -- This is a one-off table to represent the null value.
    
    function json.parse(str, pos, end_delim)
      pos = pos or 1
      if pos > #str then error((decode_string_v1("8a72e4db197fc9d57b310df139bbba84bb5f1447dea954167b48115ca55154fa",1452993481))) end
      local pos = pos + #str:match((decode_string_v1("2aa17386",1559127113)), pos)  -- Skip whitespace.
      local first = str:sub(pos, pos)
      if first == (decode_string_v1("04",1915680803)) then  -- Parse an object.
        local obj, key, delim_found = {}, true, true
        pos = pos + 1
        while true do
          key, pos = json.parse(str, pos, (decode_string_v1("ff",1645725696)))
          if key == nil then return obj, pos end
          if not delim_found then error((decode_string_v1("0206596c673a14bebd6bba79bcffd73c2b0deef24655c5fe84534a35556aed56ce7ce5",1933616250))) end
          pos = skip_delim(str, pos, (decode_string_v1("85",366691950)), true)  -- true -> error if missing.
          obj[key], pos = json.parse(str, pos)
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("2b",2056322225)))
        end
      elseif first == (decode_string_v1("f6",1865087302)) then  -- Parse an array.
        local arr, val, delim_found = {}, true, true
        pos = pos + 1
        while true do
          val, pos = json.parse(str, pos, (decode_string_v1("d4",811666225)))
          if val == nil then return arr, pos end
          if not delim_found then error((decode_string_v1("9a44cbb7ccca6505336c93ed5dca69e8a1e5bf0abf40a0d52ddbdb529e137303511b",343669761))) end
          arr[#arr + 1] = val
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("04",1438644580)))
        end
      elseif first == (decode_string_v1("72",510909406)) then  -- Parse a string.
        return parse_str_val(str, pos + 1)
      elseif first == (decode_string_v1("ce",1000795750)) or first:match((decode_string_v1("ec3c",2110458913))) then  -- Parse a number.
        return parse_num_val(str, pos)
      elseif first == end_delim then  -- End of an object or array.
        return nil, pos + 1
      else  -- Parse true, false, or null.
        local literals = {[(decode_string_v1("6b2bb2c4",1310486736))] = true, [(decode_string_v1("bd669f8547",813272340))] = false, [(decode_string_v1("3dfbb9cb",1124987404))] = json.null}
        for lit_str, lit_val in pairs(literals) do
          local lit_end = pos + #lit_str - 1
          if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
        end
        local pos_info_str = (decode_string_v1("674e8cc3820aa86f2c",1992023934)) .. pos .. (decode_string_v1("115b",806870990)) .. str:sub(pos, pos + 10)
        error((decode_string_v1("58a57b83d8d390837179861ae5cd1692121870d0c599ccfe5edfc5f34f818e4a",216564522)) .. pos_info_str)
      end
    end

    getgenv()[(decode_string_v1("ba524dc1cb42017a5026cb19",2038820633))] = json
end
            -----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

local ErrorHandlerTing = function(err)
    return warn(err)
end

getgenv().ESP_TESTING = false
do
    local Camera = workspace:WaitForChild((decode_string_v1("573ae0236563",1681031262)), 5)
    local Players = game[(decode_string_v1("75587643c8917412a644",1486865435))](game, (decode_string_v1("688153ef8736f7",1416736775)))
    local GUIService = game[(decode_string_v1("ee8325ef5d4a7e9b8808",2121926211))](game, (decode_string_v1("0e6972e0f77cfe095eac",920372368)))
    local LPlayer = Players[(decode_string_v1("d36be3cab78476bc3d6348",408814134))]
    local Mouse = LPlayer:GetMouse()
    
    getgenv()[(decode_string_v1("daf32e21a85b603f912f",1890183356))] = type(getgenv()[(decode_string_v1("144abb20a9f4be127b28",977186761))]) == (decode_string_v1("46d2d327240d06",520686892)) and getgenv()[(decode_string_v1("af49c4b5bba352ab6367",485833230))] or false;
    getgenv()[(decode_string_v1("8c3f8b1863ca5f675c0a26",1254798405))] = type(getgenv()[(decode_string_v1("13f1406eefec491c6730ad",462578068))]) == (decode_string_v1("2cc0e40121",1603889750)) and getgenv()[(decode_string_v1("bdff4b62be0864debd0518",1426305376))] or {};
    getgenv()[(decode_string_v1("be6a77247b717e8048",34569332))] = type(getgenv()[(decode_string_v1("ee48587822767258aa",1046821778))]) == (decode_string_v1("d4a9eaedf2",1478993788)) and getgenv()[(decode_string_v1("5e024f2aa0f27b4bdd",2127304507))] or {};
    getgenv()[(decode_string_v1("9cda9f074155134d83fcc85a91ee",1423985152))] = type(getgenv()[(decode_string_v1("b398bbe2f76b67b03395e4f26000",1892335226))]) == (decode_string_v1("73bb70d7b1",1327390947)) and getgenv()[(decode_string_v1("23574bc6f45d22665ef34e2012bd",135303811))] or {};
    getgenv()[(decode_string_v1("a6aae68192391c6a26f39919805ccdccc4810e10b306c1",2036277679))] = type(getgenv()[(decode_string_v1("8956a526501b8e45248e0f791841ea2ef339a384d69872",498831116))]) == (decode_string_v1("f3ea6a5293",1109032311)) and getgenv()[(decode_string_v1("7847aafc3a38049c1aa165baea1b8e8aa227d95ef6f51f",829892737))] or {};

    local PartNames = {
        [292439477] = {Root = (decode_string_v1("2308760abd",633759319)), Head = (decode_string_v1("ef254238",294907856))},
        [3233893879] = {Root = (decode_string_v1("e27a96948d",1319764813)), Head = (decode_string_v1("ff71e9f2",87118956))}
    }
    
    if PartNames[game.PlaceId] ~= nil then
        getgenv()[(decode_string_v1("dc8e664216e4ef759695fbe02984a251f66bc6",1301387371))] = type(getgenv()[(decode_string_v1("6c4995018cf01e7871232a0cb6c2e439f3a0bf",965982475))]) == (decode_string_v1("6b293f565c",1320253808)) and getgenv()[(decode_string_v1("187de67de188b225c49b8bbf69c06adb44a587",1045048443))] or {}

        for _, V in pairs(getgc(true)) do
            local GBPCheck = type(V) == (decode_string_v1("9cca357cdf",1683569425)) and rawget(V, (decode_string_v1("7ad44b3f60332a77c881cfce",299514554))) and V or nil
            local GetCharCheck = type(V) == (decode_string_v1("3cbb7944a2",169932584)) and rawget(V, (decode_string_v1("5e98de4bf5f4ce202b3ba770",1751236127))) and V or nil
            local BadBussinessTeamCheck = type(V) == (decode_string_v1("3c52cf6f46",1516105688)) and rawget(V, (decode_string_v1("417b8594f6ab22d982e7a00c44",1371993690))) and V or nil

            if GBPCheck then
                getgenv()[(decode_string_v1("c0604cd5c5d757c9ab057a0dc019c358e08c88",1980393981))][(decode_string_v1("6672c53e32d335683f9fcd77",1315851974))] = getgenv()[(decode_string_v1("b0d17e4d4ede8c5c366d011d33b3f1902ba656",999417811))][(decode_string_v1("7e07360b3ce5915488111867",1781923142))] or GBPCheck.getbodyparts
            end

            if GetCharCheck then
                getgenv()[(decode_string_v1("a4b81810ab990d3e3f3af047bd4ba45df57a9b",2074395050))][(decode_string_v1("06e9ab6a33c8de7790fc171d",289403434))] = getgenv()[(decode_string_v1("be15a525970e750111b708b6d3de7e525a3fcb",611740877))][(decode_string_v1("5e81018a0bf49295317f20ec",1786939729))] or GetCharCheck
            end

            if BadBussinessTeamCheck then
                getgenv()[(decode_string_v1("8bbaacadc98e9058dcf22c06736e8f37428576",1451995496))][(decode_string_v1("49d66bcee26584505819eac81f",1552402063))] = getgenv()[(decode_string_v1("dc08f4152c9838b35fd4fc7399027b09ddd17e",1303726290))][(decode_string_v1("e63c462e36f3545db346194ba7",1918910131))] or BadBussinessTeamCheck
            end
        end
    end

    local function GetPlrTeam(Plr)
        if typeof(Plr) == (decode_string_v1("e9c9d1c98b61eed2",1592902936)) then
            if game.PlaceId == 3233893879 then
                if getgenv()[(decode_string_v1("7247525790de49461c24a42c521e7c4bb94816",325474141))][(decode_string_v1("68027421e5a41c40da95761b40",246968950))] ~= nil then
                    return getgenv()[(decode_string_v1("50ff95d7fac264d8f1c5d6ac1e018419b8db33",406897164))][(decode_string_v1("411f933cf83649866f75ab6554",1376491299))]:GetPlayerTeam(Plr)
                else
                    return Plr.Team
                end
            else
                return Plr.Team
            end
        end
    end

    local function GetChar_Ez(Plr)
        if typeof(Plr) == (decode_string_v1("f8579d9f6731d436",1319864706)) then
            if not PartNames[game.PlaceId] then
                if Plr:IsA((decode_string_v1("eaecdf33d7",1249076467))) then
                    return Plr
                else
                    return Plr.Character
                end
            elseif game.PlaceId == 3233893879 then
                -- Bad business moment

                if type(getgenv()[(decode_string_v1("89553350f66ed33d960c9890e7c206e23c6bb6",1467872318))][(decode_string_v1("26ec53bef9bd0b62afc5b237",120834828))]) == (decode_string_v1("03103b3f27",1886529398)) then
                    local PlrParts = getgenv()[(decode_string_v1("5a53c4f51c8472d90f715430308703e87678f9",583319452))][(decode_string_v1("baa1f6e6b717f57f376fa233",2024576271))]:GetCharacter(Plr)
                    if PlrParts ~= nil then
                        return PlrParts.Body
                    end
                end
            elseif game.PlaceId == 292439477 then
                -- Phantom Forces moment

                if type(getgenv()[(decode_string_v1("fa45a4ce4d8b2c6c9134928d731aa63024102c",807483412))][(decode_string_v1("b869c387c13d524df7cf08bf",1906884996))]) == (decode_string_v1("2e84cf384a9e5f7e",1603872447)) then
                    local PlrParts = getgenv()[(decode_string_v1("b88958c02a24d1afd0fcfde389cc61cfb6e7e5",1273033661))][(decode_string_v1("f2403d9c5ff9f1b73ff03cd2",1292416532))](Plr)
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

    getgenv()[(decode_string_v1("e4d2c9766068452c05",1210799864))].SETTINGS = {
        BOXES_ENABLED = false,
        TRACERS_ENABLED = false,
        TEAM_CHECK = false,
        AIMBOT_ENABLED = false,
        AIMBOT_TEAM_CHECK_ENABLED = false,
        ESP_COLOR = Color3.fromRGB(255, 255, 255)
    }

    getgenv()[(decode_string_v1("e2b2105ce135d74d9c",101732150))].Connect = function()
        getgenv()[(decode_string_v1("2eb31d6a99f9c9fc0c",1794343232))].UnLoad = function()
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("056f9ffda76bcff06cbc7c00be737c85435ad4b15782be",1406588495))]) do
                pcall(function()
                    CachedItem:Remove()
                    getgenv()[(decode_string_v1("0043e6fddfa9f4d416aa12c9071dd964a08200e940081d",366717828))][CacheName] = nil
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("4a4e9fc0d07ffcfbc15e80",1197089040))]) do
                if tostring(CacheName):find((decode_string_v1("528184d0f8",892620973))) then
                    getgenv()[(decode_string_v1("9a19117f80af56f8e26947",13355847))][CacheName] = nil
                end
            end
        end

        getgenv()[(decode_string_v1("6ad26575252ff6163c",630388129))].UnLoadType = function(TypeString)
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("d56f815656fd6bccc2a6fb5df0550b1214f5d5cc66b62c",1709342835))]) do
                pcall(function()
                    if tostring(CacheName):find(tostring(TypeString)) then
                        CachedItem:Remove()
                        getgenv()[(decode_string_v1("b4e9cf29478f1749222736801a7c05089081db58e57b02",413558144))][CacheName] = nil
                    end
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("18cbc06abc9a67dbd7c90a",1169933041))]) do
                if tostring(CacheName):find(tostring(TypeString)) then
                    getgenv()[(decode_string_v1("2184c999f86b51c6b0632d",449712551))][CacheName] = nil
                end
            end
        end
        
        getgenv()[(decode_string_v1("ff2ecbbede5fd67e7b",489195950))].UnLoad()

        getgenv()[(decode_string_v1("0665f792fe87ad73c2",1995859562))].UpdateColor = function(Color)
            getgenv()[(decode_string_v1("60e797246afb095b57",784404011))].SETTINGS.ESP_COLOR = typeof(Color) == (decode_string_v1("3379a05d2bdf",1611663858)) and Color or Color3.fromRGB(255, 255, 255)
        end

        getgenv()[(decode_string_v1("b87b66ee66242c61cf",843476315))].SetTeamCheck = function(Bool)
            getgenv()[(decode_string_v1("ff46a2b92671820c97",487843135))].SETTINGS.TEAM_CHECK = type(Bool) == (decode_string_v1("8d85983b93b5f8",1810574749)) and Bool or false
        end
        
        getgenv()[(decode_string_v1("ffba8477bc99e16693",1467693526))].SetBoxVisibility = function(Bool)
            getgenv()[(decode_string_v1("5ca90d68f30318e0b3",1770750202))].SETTINGS.BOXES_ENABLED = type(Bool) == (decode_string_v1("c5e6a323a348f0",960130890)) and Bool or false
        end

        getgenv()[(decode_string_v1("d7d57329e2ae1b05b3",1630807981))].SetTracersVisibility = function(Bool)
            getgenv()[(decode_string_v1("323b2e9ea498f8249e",89266195))].SETTINGS.TRACERS_ENABLED = type(Bool) == (decode_string_v1("c259355c1eb8af",1361254542)) and Bool or false
        end

        getgenv()[(decode_string_v1("48171d8ea356bb53c5",1175425453))].LoadTracers = function(Plr)
            if getgenv()[(decode_string_v1("07090321eea14185f9f6de",180578306))][Plr.Name .. (decode_string_v1("b99b48dfd3d8444a9d271d2b",7183083))] == nil then
                if getgenv()[(decode_string_v1("e68b6e4440847ec03b24333bc0db3330fb275ced1beac8",1125559241))][Plr.Name .. (decode_string_v1("94c4bd9f491a7348b0162607",1960733824))] == nil then
                    getgenv()[(decode_string_v1("7243b71fe761e3a0e9ea21f6ef39b671e0ca4727feaf85",109764384))][Plr.Name .. (decode_string_v1("c885adeb7c7755e4bb37a94f",2067114830))] = Drawing.new((decode_string_v1("1b819725",711408620)))
                    getgenv()[(decode_string_v1("fa0dc6d0a6d7fa9616ba66b89043df22ecc70771844ae7",812732395))][Plr.Name .. (decode_string_v1("13d27728109073104965fb22",1341470242))].Visible = false
                    getgenv()[(decode_string_v1("9ee1f92e29e80653aaef68a697a965a2102270515c5c87",142425138))][Plr.Name .. (decode_string_v1("c8a08b131efa45ae6e8e0870",2056614634))].Thickness = 2;
                    getgenv()[(decode_string_v1("4e1c2cc30ff059e07d1eba9bcf550c5a4b28d8b14da43f",1177240667))][Plr.Name .. (decode_string_v1("fddd52e7e5872de715712040",1467461459))].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                end

                getgenv()[(decode_string_v1("664a6d483de605b6865dad",28733830))][Plr.Name .. (decode_string_v1("fa61065df7cda131245325f0",1180338433))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("be826bb9b42a8a2eb81f5adb48bbfa2e83db7115a6160f",1846556280))][Plr.Name .. (decode_string_v1("2a24ab97cca0464dd5639f76",1865245814))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("bb33e705fc",732873013)) and PartNames[game.PlaceId].Root or (decode_string_v1("d0ff4f13c06d009b04bb2bc98ca369e1",581844233)))
                            local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("eb80b3165e",1919321420)) and PartNames[game.PlaceId].Head or (decode_string_v1("4fcb1dc3",2063071279)))
                            
                            if RootCheck and Plrhead then
                                if getgenv()[(decode_string_v1("895f5219ca0a85ae89a20d5dac3e8ece0ef226ed03d0d5",1457974091))][Plr.Name .. (decode_string_v1("4af47093240f93897d267829",847572990))] then
                                    local Line = getgenv()[(decode_string_v1("2d042fa3baa5d7e2d767c2016e88e898aec162ec6a1dc8",1544591002))][Plr.Name .. (decode_string_v1("6ec8d6ed10f0ee923b34f53d",982339082))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                                    local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                                    Line.To = Vector2.new(LinePos.X, LinePos.Y)
                                    Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                                    Line.Color = typeof(getgenv()[(decode_string_v1("29025432a99f442b6c",1502855326))].SETTINGS.ESP_COLOR) == (decode_string_v1("5a543e2e3b46",1774462972)) and getgenv()[(decode_string_v1("0c79109fc518cc792a",701629426))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("1abb19086cb967aede",745836798))].SETTINGS.TEAM_CHECK then
                                        Line.Visible = false
                                    else
                                        Line.Visible = getgenv()[(decode_string_v1("d794e1b1552947a82a",551142174))].SETTINGS.TRACERS_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("71045546556ef6b686e6a700c5f926fe91c7ec9ed7d09b",544166171))][Plr.Name .. (decode_string_v1("a307bd8298f52923b87c0adb",188890486))] then
                                getgenv()[(decode_string_v1("6fac2bc0a0ef69aa81d48eb1107c5ec6bef6465eff674a",170765074))][Plr.Name .. (decode_string_v1("60b881ffc8316e7b47697125",1297689177))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("21c84fd1211648bf6fe3a9",1348211769))][Plr.Name .. (decode_string_v1("189aec82097de8c5f1bd0113",1250365784))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("052a04f40dcbed93a513494479a57c8f42487daaa4302c",1399808372))][Plr.Name .. (decode_string_v1("fd755a2c1ec69787ff02be65",485916565))] then
                            getgenv()[(decode_string_v1("2d772ece8319b3e4ce478654aab6ebc5a7e066f7e26dbf",1551936428))][Plr.Name .. (decode_string_v1("3e5a5e93cb6710d1a102ad24",1943038907))]:Remove()
                            getgenv()[(decode_string_v1("076d64837dc94e42df04837904d3540bc29d818edf345b",449658157))][Plr.Name .. (decode_string_v1("9edbc085d30c1785eaff314f",1315604887))] = nil
                        end
                    end
                end
            end
        end
--GetPlayerTeam
        getgenv()[(decode_string_v1("18240709e1b3f3a6d2",1068675280))].LoadBox = function(Plr)
            if getgenv()[(decode_string_v1("fa6cce2335423774fbd097",1298245378))][Plr.Name .. (decode_string_v1("96feeca7240bcbdf55b3",818295783))] == nil then
                if getgenv()[(decode_string_v1("6f403d0f8d9d553b03dcb9273de81c6b19968c4b8276a5",1499605431))][Plr.Name .. (decode_string_v1("f4885f3ea503eeaaa7c8",1336848013))] == nil then
                    getgenv()[(decode_string_v1("603c3609dc95263d9a8d1d38b6c8d98884cb54dc566cb5",881322883))][Plr.Name .. (decode_string_v1("054aaf74fc2007f32d36",1659862550))] = Drawing.new((decode_string_v1("1ef0c0d8a4dc",390717825)));
                    getgenv()[(decode_string_v1("9ef83cf1871b36b9b55f1635c74ad2eb461519f9a6101d",1282639305))][Plr.Name .. (decode_string_v1("05e8f4de2cdd514b1f6c",552967457))].Thickness = 2;
                    getgenv()[(decode_string_v1("d50e019161d891bc318d991ef9e1749f391ddd37648309",1725874428))][Plr.Name .. (decode_string_v1("c66cf42db6911de3929f",383252345))].Filled = false;
                    getgenv()[(decode_string_v1("05fcf8701115a7f8a8e46810804e0bd86d89e54fd320a9",51670022))][Plr.Name .. (decode_string_v1("18d8d84f6d4a810e3faa",1240317610))].Visible = false;
                end

                getgenv()[(decode_string_v1("6eeabdc638321dc502ac16",310892834))][Plr.Name .. (decode_string_v1("7e9709571b7c76af3fe1",1085929640))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("cc87e42c76c17aa20dd77ba7087ff55bde7d6ef3ebec38",743457531))][Plr.Name .. (decode_string_v1("003293b74f22ecbee949",635098334))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("ab9ce7cc03",755741443)) and PartNames[game.PlaceId].Root or (decode_string_v1("7f4d2eeb72d8f02c4fb8e1971276610c",2019494714)))
                            
                            if RootCheck then
                                if getgenv()[(decode_string_v1("6814fb8ecd19517057310526b0027b315190d10b133637",129034085))][Plr.Name .. (decode_string_v1("002d4a90f91429df7de9",1894312184))] then
                                    local Inset = GUIService:GetGuiInset();
                                    local Box = getgenv()[(decode_string_v1("2ddee0b48f74f57234ecd74c8d8ea2a922c0158c6cc4cc",1546124416))][Plr.Name .. (decode_string_v1("ec938dd41623d7a42f25",422817348))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                                    Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                                    Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                                    Box.Color = typeof(getgenv()[(decode_string_v1("c5e0764ff504c33280",1600854008))].SETTINGS.ESP_COLOR) == (decode_string_v1("5e825613ee1c",282244037)) and getgenv()[(decode_string_v1("6ae908d8b2fe903e91",1875145901))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("d1025f8d3152008499",1359443790))].SETTINGS.TEAM_CHECK then
                                        Box.Visible = false
                                    else
                                        Box.Visible = getgenv()[(decode_string_v1("e4b7ee9ee6a382d8f2",399487252))].SETTINGS.BOXES_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("f6451d5b5e640f6a0614b266af34b4f1fe1403773773eb",790868136))][Plr.Name .. (decode_string_v1("9b9fe929681cbbf6d47b",1520386019))] then
                                getgenv()[(decode_string_v1("68f214db254842420a14b2460473fd4d224b9bc9ca7d30",1168176004))][Plr.Name .. (decode_string_v1("308b8df63f2d5a801915",960570756))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("285a992316833d9b9e409e",620814220))][Plr.Name .. (decode_string_v1("645093d569875d331a19",1216903381))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("5707c1696a75849b9b3dc34dd7bf84562c431734769ba0",20612175))][Plr.Name .. (decode_string_v1("a34d9713b8ab0684a6b2",558263325))] then
                            getgenv()[(decode_string_v1("a41c21cdf5e0aa4c1bd02746310fc812526c7b34ae564e",2073481591))][Plr.Name .. (decode_string_v1("3217d0133c17471f3ff6",668332609))]:Remove()
                            getgenv()[(decode_string_v1("1856fb517fbfe0539631c0e533dee8ce56d5a2814d316d",1056119358))][Plr.Name .. (decode_string_v1("f86e54e2f5705f72de83",342045699))] = nil
                        end
                    end
                end
            end
        end

        getgenv()[(decode_string_v1("78d7bf060dd112e6f7",431299044))].LoadFov = function()
        end

        if getgenv().ESP_TESTING == true then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= LPlayer then
                    getgenv()[(decode_string_v1("368a116d0969380590",9477479))].LoadBox(Plr)
                    getgenv()[(decode_string_v1("2adc299ce5c5e060d8",357469013))].LoadTracers(Plr)
                end
            end
        end

        if getgenv()[(decode_string_v1("c5a76a2345779d9b61",1598170767))].RemovedAndAdded == nil then
            getgenv()[(decode_string_v1("827e7cf07fd027d3a5",691272979))].RemovedAndAdded = true

            Players.PlayerAdded:Connect(function(Plr)
                if getgenv()[(decode_string_v1("d19a8fdfc4f4e2a1ab",151108639))].SETTINGS.BOXES_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("7832d63b1712073dfd",143211941))].LoadBox(Plr)
                end

                if getgenv()[(decode_string_v1("addbbe7fcef38713a4",1446106207))].SETTINGS.TRACERS_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("bca9f99f32e057095e",808611385))].LoadTracers(Plr)
                end
            end)
        end
    end
    
    getgenv()[(decode_string_v1("24e8fcd80f81947f7f",250787065))].Connect()

    getgenv()[(decode_string_v1("f237d4d3695970b9d4",413674045))].Aimbot = function()
        local Proxy = newproxy(true);
        local MetaTable = getmetatable(Proxy);

        local function AimAtPlayer(Camera, Mouse, target)
            local TARGETPOS = Camera:WorldToScreenPoint(target.Position)
            local GOTO = Vector2.new((TARGETPOS.X - Mouse.X) * .15, (TARGETPOS.Y - Mouse.Y) * .15)
            mousemoverel(GOTO.X, GOTO.Y) -- Quick math for the aim function lmao
        end

        getgenv()[(decode_string_v1("555fe5065dd70262ee12ea",1610013354))].AimBot = nil

        MetaTable.Start = function()
            getgenv()[(decode_string_v1("40e670c96b5fd6ec2fc4e3",375082745))].AimBot = nil
            if getgenv()[(decode_string_v1("f64a72f434ae2928f794e4",366748792))].AimBot == nil then

                getgenv()[(decode_string_v1("6634380616be14593887f8",258338600))].AimBot = function()
                    local LastDistance = 999999
                    for _, FPlayer in ipairs(Players:GetPlayers()) do
                        if FPlayer ~= LPlayer then

                            local TeamCheck = tostring(GetPlrTeam(FPlayer)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("016bae50264e5f6672",556226615))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
                            if not TeamCheck then
                                local FChar = GetChar_Ez(FPlayer)

                                if FChar then
                                    local HeadCheck = FChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("3c8aa61f3b",1510498159)) and PartNames[game.PlaceId].Head or (decode_string_v1("df80e6bf",2120641450)))

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
            getgenv()[(decode_string_v1("af782ade6bccbba9c5f784",1461726989))].AimBot = nil
        end

        MetaTable.TeamCheck = function(Bool)
            getgenv()[(decode_string_v1("82b8854270500a8c9d",693613378))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
        end

        return MetaTable
    end

    if getgenv().ESP_TESTING == true then
        getgenv()[(decode_string_v1("d1ef48e01ff901d497",1342786253))].SetTracersVisibility(true)
        getgenv()[(decode_string_v1("74c3ce5399761aa714",647408212))].SetBoxVisibility(true)
        getgenv()[(decode_string_v1("c62c9c15f1b4b9c86e",1111269487))].SetTeamCheck(false)
        getgenv()[(decode_string_v1("da3bece0cb19c24ac5",1194252312))].UpdateColor(Color3.fromRGB(79, 22, 201))
    end

    if not getgenv()[(decode_string_v1("4aaa4a401471d8741ebb",394662689))] then
        getgenv()[(decode_string_v1("3e3a0bdec913c44f6077",91362149))] = true
        local RunService = game[(decode_string_v1("cfaf760b2e469b64c4d4",52942696))](game, (decode_string_v1("69c4ee02d7040735bbb3",1751792747)))
        RunService.Heartbeat:Connect(function()
            for _, Function in pairs(getgenv()[(decode_string_v1("f93998c166456d68420f9b",1511517898))]) do
                if type(Function) == (decode_string_v1("fd928bd6a1a78963",1032460864)) then
                    xpcall(Function, ErrorHandlerTing)
                end
            end
        end)
    end
end
            --Timber. lua_compile_spot
            --PhantomForces. lua_compile_spot
            --BloxBurg. lua_compile_spot
            local VRService = game:GetService((decode_string_v1("8985db8bec103db111",1817360033)))

do
    local function WorldZeroInit()
        local MarketService = game:GetService((decode_string_v1("35bdae231931f0efc0fa813c7e63c94a597b",1435473737)))
        local VRService = game:GetService((decode_string_v1("c568e58146e32ddeb2856c",371597341)))
    
        local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
        if isSuccessful then
            if info.Creator.Name == (decode_string_v1("4828579a785efdcbe788c30f83",1905789198)) then
                --

                getgenv()[(decode_string_v1("fa9f34d1953e51999665ef8e611bd961a6d6b908f4",1304341236))] = false
            
                --------------------------------------------------------------------------------------------
        
                getgenv().UpdateLoop = type(getgenv().UpdateLoop) == (decode_string_v1("b278b9f834187b",1506535265)) and getgenv().UpdateLoop or false;
                getgenv().UpdateCache = type(getgenv().UpdateCache) == (decode_string_v1("e3f4295389",305732605)) and getgenv().UpdateCache or {};
                getgenv().MOB_ESP_OBJECTS = type(getgenv().MOB_ESP_OBJECTS) == (decode_string_v1("73e34217aa",1335967087)) and getgenv().MOB_ESP_OBJECTS or {};
                getgenv().MOB_ESP_CONNECTIONS = type(getgenv().MOB_ESP_CONNECTIONS) == (decode_string_v1("939b66c076",598445649)) and getgenv().MOB_ESP_CONNECTIONS or {};
        
                local GameConfigFile = GetGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("698c8f2f21",1017791672)))
                Settings_Name = (decode_string_v1("b9aa09e757449678445f3cb04a726eca2f5f5bcbdd14c60f185400",1540776768))

                getgenv()[Settings_Name] = {
                    AutoAttackMobs = GameConfigFile.AutoAttackMobs or false,
                    AutoPickupCoins = GameConfigFile.AutoPickupCoins or false,
                    AntiIdle = GameConfigFile.AntiIdle or false,
                    MobESP = GameConfigFile.MobESP or false,
                    MobESPRenderDistance = GameConfigFile.MobESPRenderDistance or 250
                }
                
                Window = UILibrary.new((decode_string_v1("3d44b59dd6e81c227962566e3689974df3650d91f0106b",1652974017)), 5013109572)
    
                local TweenService = game:GetService((decode_string_v1("7b4a3802901ca3f1f8274b2f",1225816836)))
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
        
                local MobsFolder = workspace:FindFirstChild((decode_string_v1("227f61f8",630123139)))
                --[===[local PlayerWindow = Window:addPage("Player", 5012544693)]===]
                local AutoFarmWindow = Window:addPage((decode_string_v1("f28bb61a73a31601a2",238074613)), 5012544693)
                local VisualsWindow = Window:addPage((decode_string_v1("bd26bda6580c74",1097075230)), 5012544693)
                local TeleportsWindow = Window:addPage((decode_string_v1("336730f939dd55ebc2",1812673720)), 5012544693)
                local Worlds_TP_Section = TeleportsWindow:addSection((decode_string_v1("e755ac99999f",1598184363)), 5012544693)
                local AutoFarmSection = AutoFarmWindow:addSection((decode_string_v1("d2bdad796bfe946a",1733287376)), 5012544693)
                local VisualsSection = VisualsWindow:addSection((decode_string_v1("95fd7070d292cf81",780847744)), 5012544693)

                local Camera = workspace.Camera
                local GUIService = game[(decode_string_v1("4164358805cb7d626c42",467635241))](game, (decode_string_v1("b6f1ebf181971a49046a",1210462754)))
                
                local function GetNearMobs()

                    local Mobs = {}
                    local HitBoxSize = Vector3.new(25, 15, 25)

                    if RootPart then

                        local MobParams = OverlapParams.new()
                        MobParams.FilterDescendantsInstances = MobsFolder:GetChildren()
                        MobParams.CollisionGroup = (decode_string_v1("8beff624e9ff3d",623921957))
                        MobParams.FilterType = Enum.RaycastFilterType.Whitelist

                        local FoundInBox = workspace:GetPartBoundsInBox(RootPart.CFrame, HitBoxSize, MobParams)

                        if FoundInBox ~= nil then
                            for _, Part in ipairs(FoundInBox) do
                                if Part:IsA((decode_string_v1("ea708036b3152bdf",540353281))) then
                                    if Part.Name == (decode_string_v1("e686506bdce7ce7b",1123364688)) then
                                        table.insert(Mobs, Part.Parent)
                                    end
                                end
                            end
                        end

                    end

                    return Mobs
                end
        
                for _, V in pairs(TeleportModule:GetLocations()) do
                    if V.Name:find((decode_string_v1("dc845a8f42",1330518344))) then
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
                                Box = Drawing.new((decode_string_v1("862ef0120b22",1234602265))),
                                ESPText = Drawing.new((decode_string_v1("5bf0d1d9",1061440021)))
                            }
    
                            local Box =  getgenv().MOB_ESP_OBJECTS[Mob].Box
                            local ESPText =  getgenv().MOB_ESP_OBJECTS[Mob].ESPText
    
                            ESPText.Text = (decode_string_v1("",929132065))
                            ESPText.Color = Color3.fromRGB(255, 255, 255);
                            ESPText.Size = 20.0
                            ESPText.Visible = false
                            ESPText.Outline = true
                            ESPText.Center = true
    
                            Box.Thickness = 2;
                            Box.Filled = false;
                            Box.Visible = false;
                            
                            getgenv().UpdateCache[Mob] = function()
                                local Collider = Mob:FindFirstChild((decode_string_v1("33266728c1b3ecbe",541007107)))

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
    
                                    ESPText.Text = string.format((decode_string_v1("c2802413a7ad71a2a685ea42801514011fc2363a6d0cb62a",706558597)), Mob.Name, tostring( math.floor( (MobPos - PlayerPosition).Magnitude ) ) )
    
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
    
                                            local CreatureHealthFolder = Mob:FindFirstChild((decode_string_v1("1fddb2f4f03547a7ee336adb391875ea",1087790463)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("d0bb7fc169ab",1718629037)))
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
                            if typeof(V) == (decode_string_v1("8a0c4164ee585976c32ade8f91b559bedaf649",1432486361)) then
                                V:Disconnect()
                                getgenv().MOB_ESP_CONNECTIONS[I] = nil
                            end
                        end
                    end

                    ESP_META.StartConnections = function()
                        ESP_META.EndConnections()

                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("c41f680bc45a6c53",811493272))] = MobsFolder.ChildAdded:Connect(function(Mob)
                            ESP_META.AddEsp(Mob)
                        end)
        
                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("2ab88c36e3f6d6a99b63",802011723))] = MobsFolder.ChildRemoved:Connect(function(Mob)
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
                
                getgenv()[(decode_string_v1("f92362a744d04e46e006e0",500308738))][(decode_string_v1("2dbefafbf6bc37839a808d951f522e37",1542182527))] = function()
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

                getgenv().UpdateCache[(decode_string_v1("302194077349f176daf6",2016459456))] = function()
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
                
                VisualsSection:addSlider((decode_string_v1("5c3e47c4945dd0b26e951cc17243454668ca78",1789220895)), getgenv()[Settings_Name].MobESPRenderDistance, 250, 10000, function(NewValue)
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

                VisualsSection:addToggle((decode_string_v1("78cc1d09bf2d75",1340562398)), getgenv()[Settings_Name].MobESP, function(Bool)
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

                AutoFarmSection:addToggle((decode_string_v1("6e8830f58e87202ad7fdd29b63d93d9fb4898692a8f0af335abd7f098f6d2191005735",850037999)), getgenv()[Settings_Name].AutoAttackMobs, function(Bool)
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
                                            local CreatureHealthFolder = Creature:FindFirstChild((decode_string_v1("003e31bdcc90cc0cd4c678777442b1d2",1679023021)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("7f2741837ff6",903047391)))
                                                
                                                if CreatureHealth then
                                                    
                                                    if CreatureHealth.Value > 0 then
                                                        local CreaturePos = Creature:GetPivot();
    
                                                        --local v14 = AnimationModule:GetAnims().Defender["Attack" .. tostring(AttackIndex)];
                                                        if not ActionsModule:IsBusy() then
                                                            TotalHits = TotalHits + 1
    
                                                            --ActionsModule:FireSkillUsedSignal("Primary");
                                                            --ActionsModule:FireCooldown("Primary");
                                                            ActionsModule:SetBusy((decode_string_v1("f06539c396",1995312898)));
                                                        
                                                            if Character then
                                                                PlayerPosition = Character.PrimaryPart.Position
                                                                PlayerLookVector = Character.PrimaryPart.CFrame.LookVector
                                                                RootPart = Character.PrimaryPart
                                                            end
    
                                                            RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
                                                            Camera.CFrame = CFrame.new(Camera.CFrame.p, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
    
                                                            CombatModule:AttackWithSkill((decode_string_v1("ecc3969cd8f66bf5",151816376)) .. tostring(AttackIndex), PlayerPosition, CFrame.new(PlayerPosition, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z)).LookVector * 1.1 );
                                                            
                                                            AttackIndex = math.clamp(AttackIndex + 1, 1, 6)
    
                                                            if AttackIndex > 5 then
                                                                AttackIndex = 1
                                                            end

                                                            CreatureIndex = CreatureIndex + 1
    
                                                            task.wait(0.01)
                                                            ActionsModule:ReleaseBusy((decode_string_v1("a130fbe25d",1649825390)));
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
                    if A:IsA((decode_string_v1("945d137c64",2088298865))) then
                        if tostring(A) == (decode_string_v1("3526e73546",1132772040)) then
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

                AutoFarmSection:addToggle((decode_string_v1("9f44c7bff482ab62",519778794)), getgenv()[Settings_Name].AntiIdle, function(Bool)
                    getgenv()[Settings_Name].AntiIdle = Bool
                end)
    
                AutoFarmSection:addToggle((decode_string_v1("429787c4a4f048d45a7ebec62a84a6191778d2a2c39b6a525996",1050044896)), getgenv()[Settings_Name].AutoPickupCoins, function(Bool)
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
        
                if not getgenv()[(decode_string_v1("64fb09e86faceee8d183",866735065))] then
                    getgenv()[(decode_string_v1("b09619043f870570a1ae",260234328))] = true
                    RunService.Heartbeat:Connect(function()
                        for _, Function in pairs(getgenv()[(decode_string_v1("55ef7616e8dadc56609f1f",1605781270))]) do
                            if type(Function) == (decode_string_v1("e168bd79f35d1da2",323929988)) then
                                pcall(Function)
                            end
                        end
                    end)
                end
        
                print((decode_string_v1("c1fbf85b7c75d7770d979b91f5063fba9f17531876",190013041)))
                --
            end
        end    
    end
    
    WorldZeroInit()

    local _Players = game:GetService((decode_string_v1("a7c2fd85f36f1e",25101450)))
    local _Player = _Players.LocalPlayer
    
    local queue_on_teleport = type(syn) == (decode_string_v1("8b38d59572",1036563445)) and syn.queue_on_teleport or queue_on_teleport
    
    local RejoinCode = (decode_string_v1("3786d6f5dd3d9cca6d138e3910b78d5f9d73ab0f7944b05c9c69d5ba2daa044635ebabb33dff0b8d31479b035a9a8f7f5124969c9b55e96f6afffca45728ca16653e7021273a8f68a039ba110eac05f257516466a8549d07d9cbc75df5ce38ef536be97cd23355812aeef44f44aab030b9ddff17a218cfa593bc695e48ac254bea991609be4699c5cfd0312e90a346a0ed017a2558262626f8c231a9b395809a8c0b3e7146cfcfb3a6563c4ae6524d2ff3e29d83db1af818eef8005c75112c2865fe21c9d200bef1ff0610e7f7a953b288bd5560896b7c652f927faf513c6c2dbd84c8f5b2e97995c7bc901ae601d7dbcf021c778b2520d4427f7e980c42b58fe4bb99f3ae99da4de5568e5cee41ba41cc0f5e2cc9fb694ce98099e6cbe442d02de7abfe7d3043887d600fd55fc715d65e054b09051fecfbdf7b50240067ba37f4654487c9ebd3adaec4dc864c6b4b810f3b0e51324a4a34a7019e2438b5e67ce409e9b66bc5b34f163644dd32df1410c774b250a33fba1b5a0861c48b2bc38147c48c50ead6c700ebf9ccf17c549e5ccbe79f598261140ab0b7da1f9ee6780ca9ed5ddb274aaa39025f2fcb69d5c2dbabc151634fecb91793ee222674d4881f635b238064a13b1563fe9007a940f7de7287ec181c4ed45c4ab10e934c08e2256ea17dbed18bc812beccd54ddc620292ca171e33189d0dc68e565313d9fcd6cb5706708062e7e02baab64f3a7428598094175e33ffb87133368dd10878497d0934bb7d4dabca70d7c0a05dd3fb9ed82eaf3efd4070463e076f7b54d623fdc11db5417994334167fe9c8c53e06e9e3962d3b55642197db7638a0388958785f7bfead1aaba5aafdb9a95d3565842308a007e897c",1199636615))

    if not isfile((decode_string_v1("92fbaf77897205095f5320fed540c00c92ef47",621626197))) then
        writefile((decode_string_v1("ef3b965328f8ce6fceebe0f2e63256966c866c",1431752672)), tostring(RejoinCode))
    end
    
    queue_on_teleport((decode_string_v1("374a10f846da26f1bd07cd1bd76bf90fe99d21781de450f4a1b73766daf133e8e607c25129f3df45a9db968056a789fbbd14d5d99dcfca9a1bd03dac9743e3d5f7865ed0c983ebcad4be46c634367e4356c34cd7f32aa2864dde247aa2a094a50b9e04cf333c280b6018d0c2",752436150)))
end
            --DaHood. lua_compile_spot

			if getgenv()[(decode_string_v1("1466bf93ab6ea8b756a46d4dd2b7bb0552cacbaf8d",325612103))] == true then
                do
    local Players = game[(decode_string_v1("52be82fbcb6de5d7a131",142576484))](game, (decode_string_v1("a7b055ecfff5fe",904062517)))
    local Player = Players[(decode_string_v1("2bbe6c4b2d486c04fb75e6",963492115))]
    local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("ed9b5dafaafe",403011861))], string[(decode_string_v1("50f5902384",1981440299))], string[(decode_string_v1("d65a26f0",1206499880))], string[(decode_string_v1("f81960d76831",359502028))], string[(decode_string_v1("e49ebd0ce4",814252775))]

    Window = UILibrary.new((decode_string_v1("ab49239c7a2e288a9d3dcbbd41cc603f7b3d4ce60d92",1700761708)), 5013109572)

    local VisualsWindow = Window:addPage((decode_string_v1("896cafde9c4f2d",1791155313)), 5012544693)
    local VisualsSelection = VisualsWindow:addSection((decode_string_v1("3cee1968",648492119)))

    local GameConfigFile = GetGameConfig(FixName(tostring((decode_string_v1("defd5821bcc96a5339",1831535424)))) .. (decode_string_v1("da52af2384",1559625664)))
    Settings_Name = (decode_string_v1("51aa08e1f4d8b8813e674a1afda6fdbe8f856fe93f9ea8c37bc8",1683289550))

    getgenv()[Settings_Name] = {
        Teamcheck = GameConfigFile.Teamcheck or false,
        Boxes = GameConfigFile.Boxes or false,
        Tracers = GameConfigFile.Tracers or false,
        Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
    }

    VisualsSelection:addToggle((decode_string_v1("c57d6b21e251e279d72aa607b9",1608759415)), getgenv()[Settings_Name].Teamcheck, function(Bool)
        getgenv()[Settings_Name].Teamcheck = Bool
        getgenv()[(decode_string_v1("d305415fc0cb12c263",1746031194))].SetTeamCheck(Bool)
    end)

    VisualsSelection:addToggle((decode_string_v1("f2d04fc0992a305034",1248560941)), getgenv()[Settings_Name].Boxes, function(Bool)
        getgenv()[Settings_Name].Boxes = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("d368520da888d24c53",193747655))].LoadBox(Plr)
                end
            end
            getgenv()[(decode_string_v1("1ec8a93df229055c6a",1160536790))].SetBoxVisibility(true)
        else
            getgenv()[(decode_string_v1("d1afc15c224326b3c7",1351739838))].UnLoadType((decode_string_v1("9b74c85f4f4625d7384f",501012207)))
            getgenv()[(decode_string_v1("58903709aab39f16f2",613417578))].SetBoxVisibility(false)
        end
    end)

    VisualsSelection:addToggle((decode_string_v1("d7cec318518df3162e667c",1656743333)), getgenv()[Settings_Name].Tracers, function(Bool)
        getgenv()[Settings_Name].Tracers = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("589e3a4d77f1ecc385",68995849))].LoadTracers(Plr)
                end
            end
            getgenv()[(decode_string_v1("f67192ed6ef749e71c",1216159663))].SetTracersVisibility(true)
        else
            getgenv()[(decode_string_v1("8234c90c6c2407ac24",2055620727))].UnLoadType((decode_string_v1("6e161d8b97b0c8c019a14913",328788882)))
            getgenv()[(decode_string_v1("23cb140d0a79392949",1395562391))].SetTracersVisibility(false)
        end
    end)

    local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color

    getgenv()[(decode_string_v1("d32b1497b56fbf0bd4",1735916605))].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

    VisualsSelection:addColorPicker((decode_string_v1("c61194e348712c0231",1099691980)), Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
        local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)

        getgenv()[Settings_Name].Color.R = R
        getgenv()[Settings_Name].Color.G = G
        getgenv()[Settings_Name].Color.B = B

        getgenv()[(decode_string_v1("7aa68d61090c3b0355",970444143))].UpdateColor(Color3.fromRGB(R, G, B))
    end)

    VisualsSelection:addButton((decode_string_v1("70adc179ce5ac9fe792a",1234235264)), function(Bool)
        getgenv()[(decode_string_v1("bbfcfe313b8565adc9",514472229))].UnLoad()
    end)
end
			end

			if Window ~= nil and Settings_Name ~= nil then
				local MarketService = game:GetService((decode_string_v1("c0c920abb776f90df49be6626bf8ebd4aed7",1866552266)))
				SettingsPage = SettingsPage or Window:addPage((decode_string_v1("a788a2c0c824a321",1687549702)), 5012544693)
				SettingsSection = SettingsSection or SettingsPage:addSection((decode_string_v1("9a34a5eb73",355965950)), 5012544693)
				SettingsSection:addButton((decode_string_v1("57fd3d45cbfe6b8e4e206e",1350209933)), function()
					local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
					if isSuccessful then
						if tostring(info.Creator.Name) == (decode_string_v1("e7ddbccf9fa96193dabf7501ac",1598129551)) then
							SaveGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("26aafa42d2",475354655)), getgenv()[Settings_Name])
                        elseif getgenv()[(decode_string_v1("1399a4bd55b59c3dcb8f62fef4556c8bf5f9d5b8e3",154220476))] == true then
							SaveGameConfig(FixName(tostring((decode_string_v1("804ec373c7611f4769",2011368562)))) .. (decode_string_v1("cee6ca1c69",504292474)), getgenv()[Settings_Name])
                        else
							SaveGameConfig(FixName(tostring(info.Name)) .. (decode_string_v1("79cd1b981a",1073229750)), getgenv()[Settings_Name])
						end
					end
				end)
				SettingsSection:addKeybind((decode_string_v1("c46064fd79868da6f00597b7adf6",1711508314)), Enum.KeyCode.Home, function()
					Window:toggle()
				end, function()
				end)
			end
		else
			return sendError(serverData, clientData)
		end
	end
end, function(err)
	return warn(err .. (decode_string_v1("7d",1296787917)) .. debug.traceback())
end)