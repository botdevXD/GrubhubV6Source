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
		getgenv().Key = (decode_string_v1("f0eb1c42d5d3f0b32b29079255848988",704982090));
		getgenv().DiscordWebhook = (decode_string_v1("2c8d904f",515195479));
		getgenv().WebhookEnabled = false;
		getgenv().GubVersion = (decode_string_v1("fc1f90",2103000167));

		local CLIENT_DEOBF_OFFSET = 3;
		local SERVER_DEOBF_OFFSET = 1;
		local StartTimer = os.time()
		local UILibrary = loadstring(game:HttpGet((decode_string_v1("301c3840534033b347092c37fe7949100d99e1dfee07b2d34a77ca30bba35a65553737967dfded4ad97872a220ae97f4b2a4a45500bf3c7ee267e2f41fb61b391b1f5ecafa4ab7a1f04a2229a9",1408227116)), true))()
		local library = loadstring(game:HttpGet((decode_string_v1("b07b4e70d9c860bedc6aef7b677ef90c31ad71bb7310aeed8f5c465c5c2a7957fb3703b59b9f75b2611ad6bbc457357eab83a646122ac957fb3724caaba497916cacadeb23ca4f1ac0b539faadc6c61a524c466a5e24073ac08b62eb5e895b728477",573189286))))()
		library:Notification((decode_string_v1("3d3134be29fca7",60278602)), (decode_string_v1("d92fc16ff0642028d67afd1b95346199738674660149f2c622ce96b5771e59cee2265ff9067769b80352dcbdd06f",279955807)), 10, Color3.fromRGB(255, 255, 255))

		if not isfolder((decode_string_v1("f4cf08e993ef8b075bbe129f6d85",2134974688))) then
			makefolder((decode_string_v1("5a71616818c25ef3923b6e09669f",2027964891)))
		end

		for i, v in pairs(game:GetService((decode_string_v1("02bea4656e95d8",1925815515))):GetDescendants()) do
			pcall(function()
				if v.Name == (decode_string_v1("eeba4344",2114829573)) then
					v.Parent.Parent:Destroy()
				end
			end)
		end

		local function identify()
			local Executor = string.lower(identifyexecutor())
			local ExecutorTable = nil
			if string.find(Executor, (decode_string_v1("bbd5ef867c57b1",52985491))) then
				ExecutorTable = {
					(decode_string_v1("a1fd8dc1adbafe",553379455)),
					syn.request
				}
			end
			if string.find(Executor, (decode_string_v1("c18207ad",488641006))) then
				ExecutorTable = {
					(decode_string_v1("54cd4923",856515117)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("6af222cd",1658071990))) then
				ExecutorTable = {
					(decode_string_v1("3d20eea4b0fd",927222002)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("9903c0b6f6be",1496572885))) then
				ExecutorTable = {
					(decode_string_v1("4c7143f8168f97f928173e",1301452543)),
					http.request
				}
			end
			if string.find(Executor, (decode_string_v1("4cae2b",633760706))) then
				ExecutorTable = {
					(decode_string_v1("f55441e3f889b6dd",1384870941)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("8784b7",2108806701))) then
				ExecutorTable = {
					(decode_string_v1("8769376598f432cda75b1e20",713844011)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("7f0c3da1",1762993753))) then
				ExecutorTable = {
					(decode_string_v1("daf3ad424624163e1c06",919817652)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("680bb346",970391815))) then
				ExecutorTable = {
					(decode_string_v1("94ab5537e0e833",721351513)),
					httprequest
				}
			end
			if string.find(Executor, (decode_string_v1("586312f758d34298",279280526))) then
				ExecutorTable = {
					(decode_string_v1("29ce275e25c7ba45",1529503871)),
					http_request
				}
			end
			if getgenv().WRD_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("fd6f190d3bc9faaf",1882451114)),
					http_request
				}
			end
			if getgenv().unlock_module ~= nil and getgenv().setscriptable ~= nil and getgenv().import ~= nil then
				ExecutorTable = {
					(decode_string_v1("8875b7f7dcb1a5c3cfd8b4225324ce",1816535100)),
					http_request
				}
			end
			if getgenv().OXYGEN_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("18d31c1417c019a8",1132122321)),
					http_request
				}
			end
			if ExecutorTable == nil then
				library:Notification((decode_string_v1("96124e2e486fdc8fcdff3d7c27",976017108)), (decode_string_v1("48887720b7eb288d613526d9b23834f0b7f2148a504db11260ff244b9e8c0fea453d0be8e7d9c32ae1e70d8b239d430d99da9ea6916f54f24f0dcd9b31003d58f12a27d6f066835d",1288804654)), 10, Color3.fromRGB(255, 255, 255))
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
				library:Notification((decode_string_v1("d8d72eb04564054db0c275c7bf90",1817796389)), (decode_string_v1("54684abb94acbc737ca09efb3c27533afd08a6876fb644f5ed9e05101395f24cbabdfdbb740adca798697160715e177f1df960e2c8b699cd85c7db7e2ae6e241d010779e03",822725912)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("ca9a48999e56cb16dd7db65ff784e6e5dfd0c6984d7affdbd3353a671c6f94439544ddcf34e290832d752d4c7ae388a1",715734180)) then
				library:Notification((decode_string_v1("784431d239beea940c95e1951665",824283651)), (decode_string_v1("5291b24a27b80f36a495aae10666823073c71831145b814a60d5e0c605a92d55f68713a54a831566dacad85345dae78c22cbb642d31fce8fff",41193609)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("d0ee829e4ea2d135ff3e4a08b36bcc6fc074868758c8817f1a",91504420)) then
				library:Notification((decode_string_v1("d87a590d09fcd84addd15c29e364",1794928459)), (decode_string_v1("5f70c7420d56cde9aa8820804ec967cbd3f34b3ba6a76eaa75d7a8d7beb6735908893ab58b97be76eaeaf8a661a39d7b2635461621efb2d8c6c991b9a1",468898138)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("47e786e0d2eff69dabacdb77dbe93aef202c04fe",1551625329)) then
				library:Notification((decode_string_v1("ad844f1730a80930ea709e7c3b19604a",1055251786)), (decode_string_v1("d3e9252a2722560d6282fde06c542aedbd5a035c0a3946f691034366c4754ff3c3cb70763888e54bcf2d7da52ca2501e825397859b520aff5064c5d4a1464e16c629292438",554212818)), 15, Color3.fromRGB(255, 255, 255))
			else
				library:Notification((decode_string_v1("2d9a5ee6eaf72e0499aaa8b2327d",1570881391)), (decode_string_v1("4873cfe2583ea8c7e249d577cd688a9f0bfa2bfb474b5d27d9cbf3284b8bc301c1dc872ed193df7d02ec1f672548b764bc69ade1383a5ed7a1371fd701b02912da9b72bea2c4d5e7523a410006a7fe19ff319b3349bc2d9412a055a1933a99f5eae9bc8275b1e69a831693de8aa8f350da2ee281680669f272",1893439819)), 15, Color3.fromRGB(255, 255, 255))
				setclipboard((decode_string_v1("1c2806b76d85c8a1b8046fe21c027d67903b7d9a77217a47b0653f2936e7a3903edcbdcd308b1e784c03c5cdb1fc0100ca091c4fed74e1310761d15c31bf",345160448)) .. clientData .. (decode_string_v1("f76f810f88c15a8ea72f9a60",1890119964)) .. exploit .. (decode_string_v1("7799c8f825f9a5d7",445612920)) .. Key .. (decode_string_v1("37c6770383f3f3dcce23d884e037625e",1093018968)) .. serverData .. (decode_string_v1("b70ef1f32828c0b29317c1ed7c18be46eb",315545455)) .. tostring(newtime))
			end

			specialisedrequest({
				Url = (decode_string_v1("6f97e3aee0c40fa7612b2c683910d9ebe24f9eb179e2d488ace1c84bca",435693748)),
				Method = (decode_string_v1("c86d4043",1398634175)),
				Headers = {
					[(decode_string_v1("8b8566890c9d5accf9aaf7d1",1444202228))] = (decode_string_v1("f4664aa6636f05cc11d0dc165b3bfabe",392822812));
					[(decode_string_v1("7a7455883a5a",835922590))] = (decode_string_v1("b0332a6eac3c0a183dae681d86885b4c3290f4",1717383242));
				},
				Body = game:GetService((decode_string_v1("1fc73d2524834bc047e22a",1925816456))):JSONEncode({
					[(decode_string_v1("dcca91",626999192))] = (decode_string_v1("e6ad4f245d81673373732bd78ade",144520300));
					[(decode_string_v1("668cc5bc",380298550))] = {
						[(decode_string_v1("8a38fa10",381028654))] = (decode_string_v1("535a777c3662bf36aebf",1533519894))
					};
					[(decode_string_v1("45b1fd8611",1260201257))] = (decode_string_v1("8c2c3de5f7889025263791210718708aff61a3f6d6a156efe843c783eb0b869b21186f17",374093822));
				})
			})
		end

		local random = Random.new()
		local letters = {(decode_string_v1("da",1972142207)),(decode_string_v1("21",1010612857)),(decode_string_v1("4a",2086344771)),(decode_string_v1("ab",836973632)),(decode_string_v1("90",375371965)),(decode_string_v1("de",161496133)),(decode_string_v1("06",215255598)),(decode_string_v1("b0",577091888)),(decode_string_v1("f2",1983960397)),(decode_string_v1("3d",747141889)),(decode_string_v1("9b",1604786470)),(decode_string_v1("db",1976092059)),(decode_string_v1("ab",1709573661)),(decode_string_v1("dd",787874950)),(decode_string_v1("96",2121340893)),(decode_string_v1("07",1945013571)),(decode_string_v1("ea",876469489)),(decode_string_v1("69",704205640)),(decode_string_v1("d5",1389922484)),(decode_string_v1("9b",1011567833)),(decode_string_v1("7a",120311116)),(decode_string_v1("85",787615900)),(decode_string_v1("a1",572941657)),(decode_string_v1("8f",1773425898)),(decode_string_v1("dc",279810421)),(decode_string_v1("d5",1280831419))}

		function getRandomLetter()
			return letters[random:NextInteger(1, #letters)]
		end
		local function FixName(GameName)
			return GameName:gsub((decode_string_v1("5ec479ee6041540abd1e6044",372197835)), (decode_string_v1("",1695818261)))
		end

		local function GetGameConfig(GameName)
			local Table = {}
			if isfolder((decode_string_v1("0ee62ee09f3efd76e6dbce0bed2c",231809572))) then
				if isfile((decode_string_v1("ef83ff7a982202e84192c271a026d8",161321573)) .. tostring(GameName)) then
					local HttpServices = game:GetService((decode_string_v1("1f9d1509039c5cab719260",873633681)))
					local ConfigContents = readfile((decode_string_v1("be84da769b82ecd6486160f4c69937",114567761)) .. tostring(GameName))
					local DecodedSuccess, DecodedContents = pcall(HttpServices.JSONDecode, HttpServices, tostring(ConfigContents))
					if DecodedSuccess then
						Table = DecodedContents
					end
				end
			end
			return Table
		end

		local function SaveGameConfig(GameName, ConfigTable)
			if isfolder((decode_string_v1("d2f747628b983003e37ba7477baf",1061412032))) then
				local HttpServices = game:GetService((decode_string_v1("5061c0840a2a510c5c5f6c",1390957702)))
				local EncodedSuccess, EncodedContents = pcall(HttpServices.JSONEncode, HttpServices, ConfigTable)
				if EncodedSuccess then
					writefile((decode_string_v1("2ecb23a4c9f29c81017f8b0ced69cc",34476553)) .. tostring(GameName), tostring(EncodedContents))
					return true
				end
			end
			return false
		end

		function getRandomString(length, includeCapitals)
			local length = length or 10
			local str = (decode_string_v1("",1087801408))
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
				return (str_gsub(s, (decode_string_v1("42",1632270622)), function(c)
					return str_fmt((decode_string_v1("f378a2ab",571095264)), str_byte(c))
				end))
			end

			local function num2s(l, n)
				local s = (decode_string_v1("",1583421946))
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
				msg = msg .. (decode_string_v1("97",35021766)) .. str_rep((decode_string_v1("18",1673792560)), extra) .. len
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

		if getgenv().Key == (decode_string_v1("",1519316611)) or nil then
			Key = (decode_string_v1("3d46f8b9",86714644))
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
			local charset = (decode_string_v1("136ff5a73dbed456cd4a267acc598026c5e8339fefc7572ccab850815614f796350ce027af9c6490ce066a12ed3e4c21301f42c2e3cabb5c33c5dfaa98",1481630921))
			if type(v1) == (decode_string_v1("149390aaca8d",304557482)) and type(v2) == (decode_string_v1("2cc3f2f6448d",1300665730)) then
				local length1, length2, chars_1, chars_2 = #v1, #v2, {}, {}
				v1:gsub((decode_string_v1("0d",726390860)), function(s)
					chars_1[#chars_1 + 1] = s
				end)
				v2:gsub((decode_string_v1("5e",1692738685)), function(s)
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
			local Pos, Finished, charCodes, Key, arglen = 1, (decode_string_v1("",462935519)), {}, 447 - #((decode_string_v1("1ff44510f189415a8d41c1f5e337bbb5bfb008b88a908c8954d19eaf2730500938",899626158))), 35 - #((decode_string_v1("ec40d1",703253149)))
			local schar = Finished.char
			local Keys = {
				233 + #((decode_string_v1("eca20f",2088394368))),
				781 - #((decode_string_v1("8c128f68",1792300445))),
				785 - #((decode_string_v1("c1ffcc0115b8",1601168470))),
				876 - #((decode_string_v1("fd6e5ca80bbf0a",1496393502))),
				350 - #((decode_string_v1("73581108ae33814d208597cc7d25ea511fffb4",125825615))),
				23 + #((decode_string_v1("5f8378069bd4e8e49ca33a0ce0badc2296a40626ef46cbdc980eb328bebf6dbeaf",612396893))),
				111 + #((decode_string_v1("ff49f2b2eb13136b588ff4f9762bfb6b812fc41a48d36736f04b193434fc934ac7",2109046726))),
				440 + #((decode_string_v1("8aaed808899ac1a486311caa",585450208))),
				341 + #((decode_string_v1("bce3fa35",256812393))),
				322 - #((decode_string_v1("07846f05a47cd931d91381e45cc95b4152a6b866a0449a273423d6c6f8eab4f55f0abaa4eb15c468f22f75b890632533d983ec9339eff178192a4e07d6f926378b38eb7d9289fa3f56375a52b9f2a9fc721eeed8a34cf282ea81519dac483c0ef34034cfdb23a5b174dde61a",1102333513))),
				117 + #((decode_string_v1("5a47426861465877cdfc3112",2003400954))),
				196 + #((decode_string_v1("690b2aa887bc391d799fb7408b061a26f7c92c",2098798595))),
				272 - #((decode_string_v1("ab54169da3cde2d1245e",1434935032))),
				653 - #((decode_string_v1("345a84f15d87bd915cf77d97",387176900))),
				510 + #((decode_string_v1("6885a2b744b7",2125469130))),
				61 + #((decode_string_v1("d1d7b09ba88b2d391ba3",1651705241))),
				61 - #((decode_string_v1("f49ea3bbca456e79a2",974607820))),
				283 - #((decode_string_v1("2ada8086",1846226582))),
				568 - #((decode_string_v1("b08e6bad8d90",1219753292))),
				933 + #((decode_string_v1("c43ded2e9dce44345fd8ebfa84dc",1131315980))),
				642 - #((decode_string_v1("cbecd93983a9c093ee0b",137378465))),
				651 - #((decode_string_v1("d17ea891a8fac7cbbeeb",1646145727))),
				875 - #((decode_string_v1("b98c1c80",1722044701))),
				882 - #((decode_string_v1("838c9a001379",407905720))),
				333 - #((decode_string_v1("3a1fdc3b03c3cbf6e84380d189a4173ad858",1822638926))),
				245 - #((decode_string_v1("7f84d3c46909",1557565324))),
				988 - #((decode_string_v1("6ace3414eca2d75382",1187094984))),
				118 + #((decode_string_v1("049657b715c3921ff4b74fd9d7ba0cd8e5650c",546037042))),
				623 + #((decode_string_v1("22b0e6eef481",1940034732))),
				629 + #((decode_string_v1("911d2d",616843299))),
				689 - #((decode_string_v1("3207d1920d0dc828b54b",2024086292))),
				828 - #((decode_string_v1("d51d8fe9fc8604344d9678a2",1399314427))),
				76 - #((decode_string_v1("e6f4091b025ff554d0a8512c",784963052))),
				71 - #((decode_string_v1("53cde9c3a94e",1602163832))),
				85 - #((decode_string_v1("9cca93c4062a0f9f847d4567ba46332c2197d7",1608518492))),
				79 - #((decode_string_v1("9ee40efbd2f4c5d2c9e1abe1",271690325))),
				56 + #((decode_string_v1("1473cc413a30c7e3ede681ba",906251927)))
			}
			getfenv(0)
			Finished.split((decode_string_v1("",1057975900)), (decode_string_v1("",1370920672)))
			while Pos <= 132 - #((decode_string_v1("5397f21170d67cf8cb0a",1601754775))) do
				charCodes[Pos] = schar(Pos)
				Pos = Pos + 1
			end
			Pos = 1
			local Confused = (decode_string_v1("",1931175625))
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
			712 - #((decode_string_v1("032a6a26",1944526215))),
			1305 + #((decode_string_v1("cb8dfa78878b6a85d0a8",284628074))),
			1265 - #((decode_string_v1("8f337762001f88d4f8484be810a5675c8e3e80c5a773db815d8e3d81dea21a0d43",1811464956))),
			1343 + #((decode_string_v1("f26f05407f05c4686917a9",142757243))),
			784 + #((decode_string_v1("b2c44327",1934058946))),
			553 - #((decode_string_v1("6f51930476b164",1218384148))),
			594 + #((decode_string_v1("d5bba2a914f4b34465702359",1482416017))),
			929 + #((decode_string_v1("1527eda58b810950e46085c8e0c44a66dea209",1084751030))),
			822 + #((decode_string_v1("c65666501d45f23e075d",127992014))),
			735 - #((decode_string_v1("aab95e322a8a243af41734f6574c09ee115617",1434531697))),
			649 + #((decode_string_v1("36438ba9",893934819))),
			726 - #((decode_string_v1("3cad3075",1645571517))),
			781 + #((decode_string_v1("eab0245e38ea59c79519",102987538))),
			1150 + #((decode_string_v1("5e2f66",933508246))),
			1059 - #((decode_string_v1("23f3edd20e30f6c4",415875772))),
			607 - #((decode_string_v1("820c240d85055957a7e3699ccbc5b12738d3ba",1528077709))),
			574 + #((decode_string_v1("3db699b1fb18124d9580ea69d5c6809a28f04d",200864314))),
			768 + #((decode_string_v1("0fb5616e02aa5a565405829a0d11364201c0e5169afa7a48cf54b9ddc6a2229ebb",2145969482))),
			1103 + #((decode_string_v1("76ddfd8a7fbb",585025976))),
			1437 - #((decode_string_v1("7839dceb",4805998))),
			1192 - #((decode_string_v1("13f3b57d49a70cd6",47091345))),
			1136 - #((decode_string_v1("1cff6287",2147205897))),
			1461 - #((decode_string_v1("0fbf18ffa9e97534a26bc33897c27c72592003eca08c07c2e8a28364c6de760f6f",2131264045))),
			1341 + #((decode_string_v1("a751080e12a9",1345300780))),
			813 + #((decode_string_v1("8e0f72306172",1200806609))),
			710 + #((decode_string_v1("941baf6b6366",1972564077))),
			1494 - #((decode_string_v1("240a4633dcd5",257514059))),
			729 - #((decode_string_v1("a8c5aa864d6f1d1ae0d5afcb17827c36adfcd72d117e82f3646263d596bcc6b717ad29b46f057d889be6394ac69bf26988bdaed7151c639ded96ef719861ebba0b25dc51751c53100e806cb9b121392ebe30ae7c3d03705ea04b39fa4be86bacfc0eca5366a7d84709230f91",1354167589))),
			1147 - #((decode_string_v1("50e4677d",1975414792))),
			1111 + #((decode_string_v1("b5e38a2b6733d8bc1042",569426717))),
			1205 - #((decode_string_v1("70914d7a7187",771760651))),
			1349 + #((decode_string_v1("5bb8ce5060c25a2c1d8a",877236364))),
			54 + #((decode_string_v1("f405fb624796559c0a74",1016208638))),
			61 + #((decode_string_v1("733ce875",30926108))),
			-42 + #((decode_string_v1("2841151f5b6b6599cce55dea2cbe9a397c36d3998daadd48ac7f14b809684dc912368a14ec536c747161ab1f845b89c951478984cc382a5520815f803baa2e2ee750599df07d3b50ebe3826b49214d222abc65b1f1433cabcd229d880586b2eec4b9d7436568f38ce7949b58",1534971149))),
			71 - #((decode_string_v1("a533ffb3",1739011168))),
			58 + #((decode_string_v1("f37e7ea088a3bf34c308",1008066543)))
		}

		local whitelisted = false
		local basec = (decode_string_v1("137a87488d42f41db9590386d91d4b4ecb8e06b1f9098e53f9c50fd002004d1f892178e7d166621d7dcee2eef121f79990d42ab7d4358629318729af18880c54",1482884192))

		local function base_encode(data)
			local b = basec
			return ((data:gsub((decode_string_v1("f9",1882040933)), function(x)
				local r, b = (decode_string_v1("",1748823111)), x:byte()
				for i = 8, 1, -1 do
					r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and (decode_string_v1("8c",4594478)) or (decode_string_v1("a7",1980094881)))
				end
				return r;
			end) .. (decode_string_v1("a7c22ed8",880133089))):gsub((decode_string_v1("8e9e4516e82a41764c82a1988d6e6db5",1045741012)), function(x)
				if (#x < 6) then
					return (decode_string_v1("",550960006))
				end
				local c = 0
				for i = 1, 6 do
					c = c + (x:sub(i, i) == (decode_string_v1("be",1306610666)) and 2 ^ (6 - i) or 0)
				end
				return b:sub(c + 1, c + 1)
			end) .. ({
				(decode_string_v1("",6322031)),
				(decode_string_v1("d6a9",1830274022)),
				(decode_string_v1("ee",655355501))
			})[#data % 3 + 1])
		end

		local function base_decode(data)
			local b = basec
			data = string.gsub(data, (decode_string_v1("2401",629671680)) .. b .. (decode_string_v1("59c9",1673259090)), (decode_string_v1("",1597630726)))
			return (data:gsub((decode_string_v1("ce",1537496386)), function(x)
				if (x == (decode_string_v1("db",1743200155))) then
					return (decode_string_v1("",1542880813))
				end
				local r, f = (decode_string_v1("",616854107)), (b:find(x) - 1)
				for i = 6, 1, -1 do
					r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and (decode_string_v1("ea",444950062)) or (decode_string_v1("c7",1952622659)))
				end
				return r;
			end):gsub((decode_string_v1("2edab5f96fe9450d8b6268cfdf9b3ea361617258c7e5",276007249)), function(x)
				if (#x ~= 8) then
					return (decode_string_v1("",248679271))
				end
				local c = 0
				for i = 1, 8 do
					c = c + (x:sub(i, i) == (decode_string_v1("42",8802289)) and 2 ^ (8 - i) or 0)
				end
				return string.char(c)
			end))
		end

		if not getgenv()[(decode_string_v1("2e688d",207416437))] then
			getgenv()[(decode_string_v1("8c249f",1079112258))] = {}
		end

		local StringTable = getfenv(pcall)[(decode_string_v1("26fd4e4a3ea0",1235368123))]

		-- More Security updates.

		local StringMT = getmetatable(newproxy(true))

		StringMT.char = StringTable.char

		Backup = getgenv()[(decode_string_v1("e8e4e1f6fcc942",1827162372))] or StringMT
		
		getgenv()[(decode_string_v1("969307458803ba",669546995))] = getgenv()[(decode_string_v1("385dc31808bc25",2144071434))] or StringMT

		local function Convert_v1(Offset, Text)
			local Result = (decode_string_v1("",357841480))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("f7f069",1360135597))](Text, Index, Index)
				local Byte = char[(decode_string_v1("e96445d2",1938504729))](char)
				local MMath = (Byte + Index + Offset + 3)
				local letter = Backup[(decode_string_v1("d16c9d7c",548861794))](MMath)
				Result = Result .. letter
			end
			return Result
		end

		local function UnConvert_v1(Offset, Text)
			local Result = (decode_string_v1("",1877356915))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("996587",495637119))](Text, Index, Index)
				local Byte = char[(decode_string_v1("2d01f26a",945079594))](char)
				local MMath = (Byte - Index - Offset - 3)
				local letter = Backup[(decode_string_v1("c43a33df",1134185741))](MMath)
				Result = Result .. letter
			end
			return Result
		end
        
		local function GetReturnedData()
			local D_ATE = os.date()
			local T_ime = os.time()
			local HTTP_SERVICE = game:GetService((decode_string_v1("0ff58dbe6c0d3be412c164",132841365)))
			local OffsetTable = {}
			local DataTable = {
				Url = (decode_string_v1("2f5bb393a610becfdcbaf3dd3deed4e7f4a8407681bc7d07fe0e42143c8785c4e759dde09869f3779a4fe0d1c0dff0042301fe767e59a1b90529",2076902941)),
				Method = (decode_string_v1("ee6ffb",2114558659)),
				Headers = {
					[(decode_string_v1("3c5d4c",1133521914))] = Key;
					[(decode_string_v1("96dac654047f2061",658299797))] = tostring(game.Players.LocalPlayer.Name);
					[(decode_string_v1("f48b4217a4",16970752))] = tostring(game.Players.LocalPlayer.DisplayName);
					[(decode_string_v1("9c07309f5b4ab322",419158802))] = exploit;
				}
			}
			OffsetTable[(decode_string_v1("a3a8dd74800817005c",1661148277))] = base_encode(tostring(D_ATE))
			OffsetTable[(decode_string_v1("34611027f313f55701",782940757))] = base_encode(tostring(T_ime))
			DataTable.Headers[(decode_string_v1("f4b4e254",1398938102))] = tostring(base_encode(HTTP_SERVICE:JSONEncode(OffsetTable)));
			local returnedData = specialisedrequest(DataTable)
			return returnedData, tostring(D_ATE), tostring(T_ime)
		end

		local returnedData, ShouldReturn1, ShouldReturn2 = GetReturnedData()
		returnedData = returnedData.Body

		if type(returnedData) ~= (decode_string_v1("e47c8a2bc291",1019951614)) then
			repeat
				returnedData = GetReturnedData()
				returnedData = returnedData.Body
				wait(0.0003)
			until type(returnedData) == (decode_string_v1("142d731f4a04",906777122))
		end

		print(returnedData)

		local ReturnedArgs = string.split(tostring(returnedData), (decode_string_v1("b6e56627bb5cce34ba30445647",1043690961)))
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
			game.Players.LocalPlayers:Kick((decode_string_v1("f234e52a71bb19e67063649f16c9e8384aa8bb341b8f68741f64aebdd5dd0c81ef69c0ded4ce459b36f8a114e3f6329ca76e5b81683ffd6f296ff4771fa3df3454a0d9fb72",240487897)))
		end

		local number = tostring(os.time())
		local dynamic = number:split((decode_string_v1("",808624415)))
		table.remove(dynamic, 10)
		table.remove(dynamic, 9)
		local randomData = tostring(uniformRNG(dynamic[7], dynamic[8]))
		local randomData = randomData:sub(1, -3)
		local clientData = hmac(secret, Key .. randomData)

		if isfile((decode_string_v1("f0dc14da7931b75762e350565936cf55188adc",342051850))) then
			delfile((decode_string_v1("d21cbe66a8edd5eaebed368582e3b5c8f17428",1060654493)))
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

			getgenv()[(decode_string_v1("9e3460abe590d47dcd6b64a7034fcc6022213a5ad7",1049959074))] = true

			-- The ones with the spaces between .lua are the ones that I don't want to be loaded rn as they're not complete.
            do
    local json = {}
    local function kind_of(obj)
      if typeof(obj) == (decode_string_v1("1202f5a182d4",1202520255)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("61aac621a909e1",2056040726)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("19da64df1e5aaa",882755325)) then return typeof(obj), obj end
      if type(obj) ~= (decode_string_v1("8bf3781c74",1780208226)) then return type(obj) end
      local i = 1
      for _ in pairs(obj) do
        if obj[i] ~= nil then i = i + 1 else return (decode_string_v1("9b36f137af",1003890043)) end
      end
      if i == 1 then return (decode_string_v1("8bda8b127b",1038521117)) else return (decode_string_v1("c1688e1b38",59186639)) end
    end
    
    local function escape_str(s)
      local in_char  = {(decode_string_v1("2b",887021299)), (decode_string_v1("72",1500030856)), (decode_string_v1("46",1767143954)), (decode_string_v1("c0",567883554)), (decode_string_v1("3b",1328374018)), (decode_string_v1("f9",1178237679)), (decode_string_v1("b9",1357328856)), (decode_string_v1("72",1328565974))}
      local out_char = {(decode_string_v1("a4",1681990822)), (decode_string_v1("72",1505835225)), (decode_string_v1("a1",1555812225)),  (decode_string_v1("d6",1373687120)),  (decode_string_v1("9a",1474033211)),  (decode_string_v1("81",333341037)),  (decode_string_v1("9a",1608718800)),  (decode_string_v1("d4",1495439278))}
      for i, c in ipairs(in_char) do
        s = s:gsub(c, (decode_string_v1("7c",1377560514)) .. out_char[i])
      end
      return s
    end
    
    -- Returns pos, did_find; there are two cases:
    -- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
    -- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
    -- This throws an error if err_if_missing is true and the delim is not found.
    local function skip_delim(str, pos, delim, err_if_missing)
      pos = pos + #str:match((decode_string_v1("4eeb3fda",1687893839)), pos)
      if str:sub(pos, pos) ~= delim then
        if err_if_missing then
          error((decode_string_v1("bcaa150ec371671519",817010381)) .. delim .. (decode_string_v1("7781d8d4f3bf9144110051f25d1181",14342633)) .. pos)
        end
        return pos, false
      end
      return pos + 1, true
    end
    
    -- Expects the given pos to be the first character after the opening quote.
    -- Returns val, pos; the returned pos is after the closing quote character.
    local function parse_str_val(str, pos, val)
      val = val or (decode_string_v1("",957256462))
      local early_end_error = (decode_string_v1("7a0767658619478ba4105d4fd4952fc20da3908e8d13df84c3669c6dd7e53e39bf996704ee9856d1",322894699))
      if pos > #str then error(early_end_error) end
      local c = str:sub(pos, pos)
      if c == (decode_string_v1("a9",1942639239))  then return val, pos + 1 end
      if c ~= (decode_string_v1("64",448858252)) then return parse_str_val(str, pos + 1, val .. c) end
      -- We must have a \ character.
      local esc_map = {b = (decode_string_v1("af",1211791653)), f = (decode_string_v1("9b",829695339)), n = (decode_string_v1("99",1071677911)), r = (decode_string_v1("69",1669985445)), t = (decode_string_v1("70",930273316))}
      local nextc = str:sub(pos + 1, pos + 1)
      if not nextc then error(early_end_error) end
      return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
    end
    
    -- Returns val, pos; the returned pos is after the number's final character.
    local function parse_num_val(str, pos)
      local num_str = str:match((decode_string_v1("a139ecd2f25f8e30bca00405fb6e55fb864983de1e6ce0f4ba",1275569499)), pos)
      local val = tonumber(num_str)
      if not val then error((decode_string_v1("36e5d45d224341c542b789c476c946efb12c9ff91b8db2a451b4a25ebae6fb3daa",774732444)) .. pos .. (decode_string_v1("49",101431578))) end
      return val, pos + #num_str
    end
    
    
    -- Public values and functions.
    
    function json.stringify(obj, as_key)
      local s = {}  -- We'll build the string as an array of strings to be concatenated.
      local kind, kind_objecto = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
      if kind == (decode_string_v1("6b9327b54d",554787905)) then
        if as_key then error((decode_string_v1("3c895257c17f1303976956f88f58f71e7f08c93cf4c2fa2666b6",1081027728))) end
        s[#s + 1] = (decode_string_v1("0c",2076129222))
        for i, val in ipairs(obj) do
          if i > 1 then s[#s + 1] = (decode_string_v1("4347",1787724070)) end
          s[#s + 1] = json.stringify(val)
        end
        s[#s + 1] = (decode_string_v1("8b",1396095892))
      elseif kind == (decode_string_v1("d4790ddfa0",1489568586)) then
        if as_key then error((decode_string_v1("3323bf6a460edaac4c82c5342d87b2dce625f33e1da6ea9249d8",176836665))) end
        s[#s + 1] = (decode_string_v1("8c",910341991))
        for k, v in pairs(obj) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("04c2",479162951)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("b9",2003013527))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("a0",391307679))
      elseif kind == (decode_string_v1("5c9c430b76c0",44281933)) then
        return (decode_string_v1("f6",1714676980)) .. escape_str(obj) .. (decode_string_v1("21",790120573))
      elseif kind == (decode_string_v1("46fa1700451c",99515845)) then
        kind_objecto = {table_type = (decode_string_v1("075ccc7d6529",451886768)), kind_objecto:components()}
        if as_key then error((decode_string_v1("e662611ef445fe1444689ac8034f37961671d581bc50ced78796",1127242020))) end
        s[#s + 1] = (decode_string_v1("40",1805012923))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("14c1",512561577)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("76",1480497853))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("81",1503129913))
    elseif kind == (decode_string_v1("59593236d7e4a2",1104435298)) then
        kind_objecto = {table_type = (decode_string_v1("06a504db9f8ac5",457007738)), kind_objecto.X, kind_objecto.Y, kind_objecto.Z}
        if as_key then error((decode_string_v1("c02336d58cebcbe4b113fc1583203ff630e3b184058f51facebe",1988136156))) end
        s[#s + 1] = (decode_string_v1("a6",1177955270))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("e31f",649722280)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("f2",1449217908))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("99",1693011803))
    elseif kind == (decode_string_v1("a96222ad9a0b65",1158709763)) then
        kind_objecto = {table_type = (decode_string_v1("6dd73350684af5",1787326068)), kind_objecto.X, kind_objecto.Y}
        if as_key then error((decode_string_v1("71a04148a02cc00e123f568b3f8289a6ee3c5566a161e4fb7edb",1640334314))) end
        s[#s + 1] = (decode_string_v1("96",612788070))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("4ca8",517895666)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("b9",672785865))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("6b",459294309))
      elseif kind == (decode_string_v1("1d0b77bd07c5",337588155)) then
        if as_key then return (decode_string_v1("bd",656912833)) .. tostring(obj) .. (decode_string_v1("19",703687864)) end
        return tostring(obj)
      elseif kind == (decode_string_v1("1d37f9d778c3fd",333526004)) then
        return tostring(obj)
      elseif kind == (decode_string_v1("9514b6",1957172397)) then
        return (decode_string_v1("bd9e5d2a",224660633))
      else
        error((decode_string_v1("6c5c08e49061421b16acd0c848d7c7eda5ce31a3",1785770589)) .. kind .. (decode_string_v1("99",398773380)))
      end
      return table.concat(s)
    end
    
    json.null = {}  -- This is a one-off table to represent the null value.
    
    function json.parse(str, pos, end_delim)
      pos = pos or 1
      if pos > #str then error((decode_string_v1("a59a96323216a8c6eb0dc3b897a1bcd3a1f50b48c0258d1fe29f6ebdefd67d41",2057583248))) end
      local pos = pos + #str:match((decode_string_v1("494405ff",210680332)), pos)  -- Skip whitespace.
      local first = str:sub(pos, pos)
      if first == (decode_string_v1("1f",1370478300)) then  -- Parse an object.
        local obj, key, delim_found = {}, true, true
        pos = pos + 1
        while true do
          key, pos = json.parse(str, pos, (decode_string_v1("f6",830765821)))
          if key == nil then return obj, pos end
          if not delim_found then error((decode_string_v1("288d9f653d03ee4a4efc94d6afd3018ade5276f22b7dd6ae8f8990cfd79909d366ff55",2134596376))) end
          pos = skip_delim(str, pos, (decode_string_v1("a6",544199901)), true)  -- true -> error if missing.
          obj[key], pos = json.parse(str, pos)
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("4c",1553819638)))
        end
      elseif first == (decode_string_v1("d5",172036564)) then  -- Parse an array.
        local arr, val, delim_found = {}, true, true
        pos = pos + 1
        while true do
          val, pos = json.parse(str, pos, (decode_string_v1("ea",2055993615)))
          if val == nil then return arr, pos end
          if not delim_found then error((decode_string_v1("12f7425e88d6cc2a98aa28e3ed2a30c633d270af68a0f69db1587f0c8d0646614912",1198457830))) end
          arr[#arr + 1] = val
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("2b",1131274472)))
        end
      elseif first == (decode_string_v1("a5",1307682349)) then  -- Parse a string.
        return parse_str_val(str, pos + 1)
      elseif first == (decode_string_v1("0f",1625170768)) or first:match((decode_string_v1("61f2",185985904))) then  -- Parse a number.
        return parse_num_val(str, pos)
      elseif first == end_delim then  -- End of an object or array.
        return nil, pos + 1
      else  -- Parse true, false, or null.
        local literals = {[(decode_string_v1("9c8ff008",1701214351))] = true, [(decode_string_v1("bd608ec347",270475717))] = false, [(decode_string_v1("21ed98e2",1963534687))] = json.null}
        for lit_str, lit_val in pairs(literals) do
          local lit_end = pos + #lit_str - 1
          if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
        end
        local pos_info_str = (decode_string_v1("e7715d31765a119a89",2130661358)) .. pos .. (decode_string_v1("8d5b",625356707)) .. str:sub(pos, pos + 10)
        error((decode_string_v1("aa4bf81d420c7319e75c9e45ca942c96b448579ff04ae007785dfc1f7d2b14c8",935728604)) .. pos_info_str)
      end
    end

    getgenv()[(decode_string_v1("7e99ac789e97aa77dc13b65c",807882802))] = json
end
            -----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

local ErrorHandlerTing = function(err)
    return warn(err)
end

getgenv().ESP_TESTING = false
do
    local Camera = workspace:WaitForChild((decode_string_v1("571bb19bdcfa",565627851)), 5)
    local Players = game[(decode_string_v1("41632a1aff271c1800bd",459466965))](game, (decode_string_v1("c8ea2a39f20a34",1735773595)))
    local GUIService = game[(decode_string_v1("e4d1400e2c087780f273",1274731197))](game, (decode_string_v1("4c877946bce1cb67e74d",1998717659)))
    local LPlayer = Players[(decode_string_v1("db6698e0dc2e1a407e0f38",1049478684))]
    local Mouse = LPlayer:GetMouse()
    
    getgenv()[(decode_string_v1("ce44104e0c38f1b2cf06",1156590574))] = type(getgenv()[(decode_string_v1("de134eb9280eaffa8a99",1806373972))]) == (decode_string_v1("fde831c074a17b",1100965294)) and getgenv()[(decode_string_v1("26063345710b29651fdd",1217629911))] or false;
    getgenv()[(decode_string_v1("248a91849e46cb43c4fdb5",1312380339))] = type(getgenv()[(decode_string_v1("6c5f38590ac304bb4c6dab",584442863))]) == (decode_string_v1("7b3f5779c2",842491917)) and getgenv()[(decode_string_v1("6c2c56b07ae0995468fc14",1758190370))] or {};
    getgenv()[(decode_string_v1("7c6bef99b3f842ec07",420574017))] = type(getgenv()[(decode_string_v1("7a824e90f1a80c3856",961342386))]) == (decode_string_v1("03a263285b",211919784)) and getgenv()[(decode_string_v1("24925e1b492b824ace",252682449))] or {};
    getgenv()[(decode_string_v1("c4c5572fdd889be8fd315fc2ec5c",163678630))] = type(getgenv()[(decode_string_v1("ac9e92c53c35c2904f7d799c6bb7",187606346))]) == (decode_string_v1("c3e331fbd3",746078856)) and getgenv()[(decode_string_v1("9c5330f83ac89870490ce9f8a851",476946899))] or {};
    getgenv()[(decode_string_v1("d83d7be98619d46b0fa5775a7e5993a82fb999378d409e",1793726544))] = type(getgenv()[(decode_string_v1("a64257dcd96096735f8c07a218bfbb60eed569379877e3",2013958321))]) == (decode_string_v1("f371825e7e",1968470977)) and getgenv()[(decode_string_v1("aecea771dc36a9d4d6bceb6cb57618abf9978bdbf15caf",948257165))] or {};

    local PartNames = {
        [292439477] = {Root = (decode_string_v1("bb37d87cc2",225510434)), Head = (decode_string_v1("2f4db5c4",22532874))},
        [3233893879] = {Root = (decode_string_v1("bef85f399f",1840931083)), Head = (decode_string_v1("ffaa67dd",137043601))}
    }
    
    if PartNames[game.PlaceId] ~= nil then
        getgenv()[(decode_string_v1("d5b88ee083d526e0b62ad4d93ae58cec38778b",1725072705))] = type(getgenv()[(decode_string_v1("f64eaed875c49250077481b4ea089034a686cf",788314231))]) == (decode_string_v1("3b3fefedab",106298855)) and getgenv()[(decode_string_v1("a42152c0b0a4716bee4af5191275c4640ce833",694077860))] or {}

        for _, V in pairs(getgc(true)) do
            local GBPCheck = type(V) == (decode_string_v1("d4def6a8e3",1471532593)) and rawget(V, (decode_string_v1("96bf6aa59f1f5f16833c7bf0",760502707))) and V or nil
            local GetCharCheck = type(V) == (decode_string_v1("13cccfb682",422576963)) and rawget(V, (decode_string_v1("e64d9257f2b99bf03cd31c12",1942330338))) and V or nil
            local BadBussinessTeamCheck = type(V) == (decode_string_v1("dc94df77c6",452505999)) and rawget(V, (decode_string_v1("d818d380a14167276f71d4d571",1901805154))) and V or nil

            if GBPCheck then
                getgenv()[(decode_string_v1("beb2b03aec9ebe77df543a204327282bd15f08",7661706))][(decode_string_v1("3441d85485a8925242c60738",1166201741))] = getgenv()[(decode_string_v1("caca7107727bcb2beb8b6d335c5f4c15aff71f",924348005))][(decode_string_v1("40450cc5ad76c87990aacace",687008423))] or GBPCheck.getbodyparts
            end

            if GetCharCheck then
                getgenv()[(decode_string_v1("fe4824c39236c5a2a3ccd177f6b66ecbd2b645",354035765))][(decode_string_v1("d863ac6e9a33fc54034ed04c",1888955074))] = getgenv()[(decode_string_v1("570c3724f0c5811f72c503bab35decf7d3aaf0",62560019))][(decode_string_v1("ba6c14fbd909830526b8fd81",2013702964))] or GetCharCheck
            end

            if BadBussinessTeamCheck then
                getgenv()[(decode_string_v1("28f48f805cdb9d09955dde597a033fe2f61d22",713812711))][(decode_string_v1("767a8f4dd47030a4386d6ee68c",251006371))] = getgenv()[(decode_string_v1("beb057ebf2f96b7d3246d833ac3f4406d9a306",1841077402))][(decode_string_v1("42a2c52da9581b0e635a1ebcf1",390326547))] or BadBussinessTeamCheck
            end
        end
    end

    local function GetPlrTeam(Plr)
        if typeof(Plr) == (decode_string_v1("f4be8840c10dae62",1230473898)) then
            if game.PlaceId == 3233893879 then
                if getgenv()[(decode_string_v1("02e9b2d01adb509332abac33e688ceb37682df",647408043))][(decode_string_v1("c425f18deb88d3efa13b0d7d55",350405876))] ~= nil then
                    return getgenv()[(decode_string_v1("053e40a252e986f161c32c038aac8252fab5a9",1378190947))][(decode_string_v1("abb8c8b15ef72797f98f02d157",1681120163))]:GetPlayerTeam(Plr)
                else
                    return Plr.Team
                end
            else
                return Plr.Team
            end
        end
    end

    local function GetChar_Ez(Plr)
        if typeof(Plr) == (decode_string_v1("1429ab07be2bf5e8",112314564)) then
            if not PartNames[game.PlaceId] then
                if Plr:IsA((decode_string_v1("30b5683cee",1176790465))) then
                    return Plr
                else
                    return Plr.Character
                end
            elseif game.PlaceId == 3233893879 then
                -- Bad business moment

                if type(getgenv()[(decode_string_v1("9ac17ef0f2072753b05287c89d054eddc590bd",1030359716))][(decode_string_v1("d18edf1de5d6c5f91fd8517b",1747761609))]) == (decode_string_v1("ebf1ad1abe",1955373839)) then
                    local PlrParts = getgenv()[(decode_string_v1("334de5b081388a2d71ec67a482e61434d11c53",1596550194))][(decode_string_v1("1a40c5dc37129eb231ed43f6",1337865734))]:GetCharacter(Plr)
                    if PlrParts ~= nil then
                        return PlrParts.Body
                    end
                end
            elseif game.PlaceId == 292439477 then
                -- Phantom Forces moment

                if type(getgenv()[(decode_string_v1("460ddf2c57bc2657e94d170577ce3cf0209a6e",898122119))][(decode_string_v1("7a564a5f9e54345cc649ee4d",33222782))]) == (decode_string_v1("2e4f8e74748ffc07",1589472629)) then
                    local PlrParts = getgenv()[(decode_string_v1("33129b1ae40f52f1e7d5026ee197a0935da55d",528739361))][(decode_string_v1("605debde71f57c55928c694f",915941665))](Plr)
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

    getgenv()[(decode_string_v1("d3fad23bb8a1f58c41",1714352044))].SETTINGS = {
        BOXES_ENABLED = false,
        TRACERS_ENABLED = false,
        TEAM_CHECK = false,
        AIMBOT_ENABLED = false,
        AIMBOT_TEAM_CHECK_ENABLED = false,
        ESP_COLOR = Color3.fromRGB(255, 255, 255)
    }

    getgenv()[(decode_string_v1("5ee448bd37a7666230",2129367151))].Connect = function()
        getgenv()[(decode_string_v1("bbd7a468e15dd5db5f",1578908738))].UnLoad = function()
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("d252cfef8eb081a4a926bd4b60bb4817909f776b216d27",755106255))]) do
                pcall(function()
                    CachedItem:Remove()
                    getgenv()[(decode_string_v1("c02cae9950911337864af84dcd982ba71c76561e789ded",663277702))][CacheName] = nil
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("148ebbc1d3c0955cd6db9f",979588200))]) do
                if tostring(CacheName):find((decode_string_v1("130177bd20",452226982))) then
                    getgenv()[(decode_string_v1("2408f9932e5b6cda8e27fd",1317930719))][CacheName] = nil
                end
            end
        end

        getgenv()[(decode_string_v1("23d6ce23138b05b0d0",463661941))].UnLoadType = function(TypeString)
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("be6e7f9fdb56fca3081844d2ee0363377a553db3230297",1839491169))]) do
                pcall(function()
                    if tostring(CacheName):find(tostring(TypeString)) then
                        CachedItem:Remove()
                        getgenv()[(decode_string_v1("74abc42d1107ee0360498dcb70fc53380764338778a8c0",801679741))][CacheName] = nil
                    end
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("131787437d6b9b8e7eadd0",1394512497))]) do
                if tostring(CacheName):find(tostring(TypeString)) then
                    getgenv()[(decode_string_v1("b02c170e435ad01e25f0d8",784210603))][CacheName] = nil
                end
            end
        end
        
        getgenv()[(decode_string_v1("58b0a62e4517d8ba25",7678243))].UnLoad()

        getgenv()[(decode_string_v1("f6531a61d670ca2f66",406114342))].UpdateColor = function(Color)
            getgenv()[(decode_string_v1("1839bc7ff972afec2a",39389048))].SETTINGS.ESP_COLOR = typeof(Color) == (decode_string_v1("5a319c316ece",198076876)) and Color or Color3.fromRGB(255, 255, 255)
        end

        getgenv()[(decode_string_v1("4ed4d879a40e8b6708",423690689))].SetTeamCheck = function(Bool)
            getgenv()[(decode_string_v1("7427244b296ba7c619",1937197909))].SETTINGS.TEAM_CHECK = type(Bool) == (decode_string_v1("b6cfe66b391d9e",1730399507)) and Bool or false
        end
        
        getgenv()[(decode_string_v1("e8f26cdc296ae436ac",106436286))].SetBoxVisibility = function(Bool)
            getgenv()[(decode_string_v1("1e083f4c81935b249f",128931074))].SETTINGS.BOXES_ENABLED = type(Bool) == (decode_string_v1("55d3ca40607b4f",302855450)) and Bool or false
        end

        getgenv()[(decode_string_v1("d33dae078812ad0003",64216381))].SetTracersVisibility = function(Bool)
            getgenv()[(decode_string_v1("6af948809df13ac404",630960767))].SETTINGS.TRACERS_ENABLED = type(Bool) == (decode_string_v1("cd9706c5ed5ef6",1269458804)) and Bool or false
        end

        getgenv()[(decode_string_v1("968ca014ea84b5e830",998702297))].LoadTracers = function(Plr)
            if getgenv()[(decode_string_v1("567f15aae38fd5dea465be",445119678))][Plr.Name .. (decode_string_v1("0053b5dba3d462331f3463df",208690704))] == nil then
                if getgenv()[(decode_string_v1("5a3b0a21ec6482e8893df9aba9ab1a315272cd2ee37226",1760414698))][Plr.Name .. (decode_string_v1("a3838502f518b4c49fc1e467",1683305443))] == nil then
                    getgenv()[(decode_string_v1("e25278ba5029065e7dd1d640737f743030c50d212c7612",437018172))][Plr.Name .. (decode_string_v1("bae46c6ff2e27b458ad65ee3",733156939))] = Drawing.new((decode_string_v1("8b222f82",911515364)))
                    getgenv()[(decode_string_v1("a4143968f45c89c0217ef5b4a48017b97b16aebf17b26b",2047389950))][Plr.Name .. (decode_string_v1("304a3976292912c0b8fc3bd5",972244495))].Visible = false
                    getgenv()[(decode_string_v1("6c5c82f7710076959ed225ccae6ba70b41135d40ec9216",973197707))][Plr.Name .. (decode_string_v1("a97e5f14075be57dc9636f54",1396382264))].Thickness = 2;
                    getgenv()[(decode_string_v1("3ac67fc8ad7d0a93edcefcf1a62d9ebbdad6cc7d02f2a3",1262893751))][Plr.Name .. (decode_string_v1("a3bebb9650a35002cfa85b25",20778653))].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                end

                getgenv()[(decode_string_v1("f61cda72be0517eb031f95",1104116954))][Plr.Name .. (decode_string_v1("6a37829771b0d9fdfe614670",1067213856))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("021b9df0b1421cb5370d7a06769599a1c40f42973554a5",648006438))][Plr.Name .. (decode_string_v1("f1c3b7c5748a34940eb439b3",1548735981))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("f39263c616",656146484)) and PartNames[game.PlaceId].Root or (decode_string_v1("d0f02ee09d3d725a70083ab0e45e7b94",1710922932)))
                            local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("3c09241af4",1528831187)) and PartNames[game.PlaceId].Head or (decode_string_v1("5f1684f1",811438593)))
                            
                            if RootCheck and Plrhead then
                                if getgenv()[(decode_string_v1("c8d57523f8dc743065907943c57e731eb4a8416e97ac37",933703844))][Plr.Name .. (decode_string_v1("320edbeb0041093a28e02962",24823540))] then
                                    local Line = getgenv()[(decode_string_v1("6f97d4132f4c4ea09b254d2476656a31af2b94e1cbc2f3",1522159212))][Plr.Name .. (decode_string_v1("e2940777d57a38aaac520bf0",1015522199))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                                    local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                                    Line.To = Vector2.new(LinePos.X, LinePos.Y)
                                    Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                                    Line.Color = typeof(getgenv()[(decode_string_v1("66c8e8a08cbadc2008",885629405))].SETTINGS.ESP_COLOR) == (decode_string_v1("71bdf12b2619",1657094467)) and getgenv()[(decode_string_v1("d78e06f66f236bb36b",553504106))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("24657dd84797383c09",762862536))].SETTINGS.TEAM_CHECK then
                                        Line.Visible = false
                                    else
                                        Line.Visible = getgenv()[(decode_string_v1("06db2420320c0b3ea7",1979584464))].SETTINGS.TRACERS_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("001780a7b70ba72a3cf75b1637c2ffe8702adc910cadbd",1111920004))][Plr.Name .. (decode_string_v1("4a6c6b92bb69c729cd653053",837683599))] then
                                getgenv()[(decode_string_v1("574da035837c3a2a8415980a7655b5b603d898bd7a20ea",1680227459))][Plr.Name .. (decode_string_v1("9be8d46a6eeddba1d000018d",504831119))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("da91b3a9766c422f678bbc",635610415))][Plr.Name .. (decode_string_v1("606d2ee4c511588e673089dd",1301487049))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("05f77ce6230e64bbb149ad425899f9c855c255e951d4a1",1396445185))][Plr.Name .. (decode_string_v1("2f09e6237473be4d817b9a02",1595050979))] then
                            getgenv()[(decode_string_v1("3a2743493f31ceb39da9c9f26c845563612acf8a581e8f",1262873936))][Plr.Name .. (decode_string_v1("963aaea787435d40513a8df8",818478830))]:Remove()
                            getgenv()[(decode_string_v1("5a79752c91a6c05461ccab58712c097f1ddc64f6c84290",1789176373))][Plr.Name .. (decode_string_v1("ac833cdd3a1d00c356d14d76",826138380))] = nil
                        end
                    end
                end
            end
        end
--GetPlayerTeam
        getgenv()[(decode_string_v1("66f468db8b43f7956e",884220221))].LoadBox = function(Plr)
            if getgenv()[(decode_string_v1("dc201fbd52b4b3bc60fdf9",126994563))][Plr.Name .. (decode_string_v1("f12acfd37fddeecd5f43",1577232234))] == nil then
                if getgenv()[(decode_string_v1("89e6a1cdea67f1e17a7b6f00f96c643d13f236637d59b5",1484585229))][Plr.Name .. (decode_string_v1("9be31cea50bee72f9bca",1507844860))] == nil then
                    getgenv()[(decode_string_v1("6faa4041340c7e176348681edc829f99048d9a1ec081d3",1537454190))][Plr.Name .. (decode_string_v1("6e39773d7d5a38a3129f",974028899))] = Drawing.new((decode_string_v1("0aa573a1ec6f",817197395)));
                    getgenv()[(decode_string_v1("33d7de592dc0d5cd224eb25549f187c9023acb21df5cd6",1601946328))][Plr.Name .. (decode_string_v1("5cd51ef0ad2fb2804267",1157943239))].Thickness = 2;
                    getgenv()[(decode_string_v1("8b29488a3c19b290d70c38b9651bfc696677858c848d8c",1417529423))][Plr.Name .. (decode_string_v1("94abdda673d51fa6cf21",1967037357))].Filled = false;
                    getgenv()[(decode_string_v1("3cb3b94a4efdea74d25d6ca14c3810d6ecc164b6e27060",1080269971))][Plr.Name .. (decode_string_v1("f1d39e2904baa91c1bc4",173581088))].Visible = false;
                end

                getgenv()[(decode_string_v1("ce257c9e996f097b0a5f0e",1164538495))][Plr.Name .. (decode_string_v1("679eabef2c73f1d961d1",472188575))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("338e28c023f2cd2180e4896ee067556fb88199cd00c09f",1588002502))][Plr.Name .. (decode_string_v1("204b007e8c61a4a6c6e5",860773144))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("33f6cecf12",993093642)) and PartNames[game.PlaceId].Root or (decode_string_v1("1061fafa5a4334f82fa659538ee547b0",1572391100)))
                            
                            if RootCheck then
                                if getgenv()[(decode_string_v1("78dcaae1cd2263c132cdd99db65617ac03921407e593c9",830857842))][Plr.Name .. (decode_string_v1("c8a8e75f4d273d0a06b3",2082788449))] then
                                    local Inset = GUIService:GetGuiInset();
                                    local Box = getgenv()[(decode_string_v1("2d221b621ddd485b3f7836299ac9c816473cd00b24db54",1541016950))][Plr.Name .. (decode_string_v1("0512b3ccd166940a88b5",1631695982))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                                    Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                                    Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                                    Box.Color = typeof(getgenv()[(decode_string_v1("74f16688baa32dba2b",652462560))].SETTINGS.ESP_COLOR) == (decode_string_v1("57e3941b2c35",61804881)) and getgenv()[(decode_string_v1("bb2a63bd8a3f77c45f",1579564632))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("844f32bcb638d1bb9a",329040637))].SETTINGS.TEAM_CHECK then
                                        Box.Visible = false
                                    else
                                        Box.Visible = getgenv()[(decode_string_v1("b8124477cba8ed939b",838200124))].SETTINGS.BOXES_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("ca602cd2fbf94ec173ddbbaa455986cf01d03c95d97ebb",924237082))][Plr.Name .. (decode_string_v1("c207bb71d8c77374f79e",785947229))] then
                                getgenv()[(decode_string_v1("0cf5216049e17ab94972fb993711cf474394c29479d477",1194514626))][Plr.Name .. (decode_string_v1("9b8e4a10af6b0620b790",1515053445))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("e0a8e96341bb8e961b2b2b",896297681))][Plr.Name .. (decode_string_v1("d861ea143efd554d8120",29589401))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("cc7e941cf82a37923cf51cbd8ff27d4dda8b0f003cc349",246708498))][Plr.Name .. (decode_string_v1("f15dfce3402e4cbf533f",171778988))] then
                            getgenv()[(decode_string_v1("a64ea848ad688b7339f3eea7843d329d5f8f8d3c2dcc78",668968109))][Plr.Name .. (decode_string_v1("f106f5a41c978678260d",1554299890))]:Remove()
                            getgenv()[(decode_string_v1("cc6da18d40ef1bd897987e72cd8502c63a597bfd053bcf",246297555))][Plr.Name .. (decode_string_v1("f1ce2c21620b1bf06270",1572625221))] = nil
                        end
                    end
                end
            end
        end

        getgenv()[(decode_string_v1("901b1d0d731810cba8",902829587))].LoadFov = function()
        end

        if getgenv().ESP_TESTING == true then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= LPlayer then
                    getgenv()[(decode_string_v1("ff152917ca4e7164b5",163596375))].LoadBox(Plr)
                    getgenv()[(decode_string_v1("2eb554aa6e12a122e1",1831736530))].LoadTracers(Plr)
                end
            end
        end

        if getgenv()[(decode_string_v1("940502af9e61430d9d",439692766))].RemovedAndAdded == nil then
            getgenv()[(decode_string_v1("c524ea693e63ee442c",1599397460))].RemovedAndAdded = true

            Players.PlayerAdded:Connect(function(Plr)
                if getgenv()[(decode_string_v1("01e9b848f716478e54",558628854))].SETTINGS.BOXES_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("5e979cff28d613bed7",2147193550))].LoadBox(Plr)
                end

                if getgenv()[(decode_string_v1("789fcbcb7736198569",1295068751))].SETTINGS.TRACERS_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("8e943f5eb0ea34b13d",832398179))].LoadTracers(Plr)
                end
            end)
        end
    end
    
    getgenv()[(decode_string_v1("d7e10a5c9be56debb1",551527402))].Connect()

    getgenv()[(decode_string_v1("924a600e31940c198b",1023099670))].Aimbot = function()
        local Proxy = newproxy(true);
        local MetaTable = getmetatable(Proxy);

        local function AimAtPlayer(Camera, Mouse, target)
            local TARGETPOS = Camera:WorldToScreenPoint(target.Position)
            local GOTO = Vector2.new((TARGETPOS.X - Mouse.X) * .15, (TARGETPOS.Y - Mouse.Y) * .15)
            mousemoverel(GOTO.X, GOTO.Y) -- Quick math for the aim function lmao
        end

        getgenv()[(decode_string_v1("de131381a5601dc793d424",610153236))].AimBot = nil

        MetaTable.Start = function()
            getgenv()[(decode_string_v1("220df187c0c563fd38803d",806150224))].AimBot = nil
            if getgenv()[(decode_string_v1("13616f84afb95229d6c6eb",463940605))].AimBot == nil then

                getgenv()[(decode_string_v1("e2e2f3a45cf4837c48505b",415306072))].AimBot = function()
                    local LastDistance = 999999
                    for _, FPlayer in ipairs(Players:GetPlayers()) do
                        if FPlayer ~= LPlayer then

                            local TeamCheck = tostring(GetPlrTeam(FPlayer)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("664a48e0ba8a10e79b",877699724))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
                            if not TeamCheck then
                                local FChar = GetChar_Ez(FPlayer)

                                if FChar then
                                    local HeadCheck = FChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("432a7041e7",961462683)) and PartNames[game.PlaceId].Head or (decode_string_v1("7f349138",2040587172)))

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
            getgenv()[(decode_string_v1("488221f90f3d339e1f5d3d",1290501607))].AimBot = nil
        end

        MetaTable.TeamCheck = function(Bool)
            getgenv()[(decode_string_v1("30ad479eb5ad3bacbe",2020072332))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
        end

        return MetaTable
    end

    if getgenv().ESP_TESTING == true then
        getgenv()[(decode_string_v1("90936d22aa570514cc",299483470))].SetTracersVisibility(true)
        getgenv()[(decode_string_v1("7419e6db0c88ecc336",645242853))].SetBoxVisibility(true)
        getgenv()[(decode_string_v1("0c7d7d1eb7a925fe69",2122581570))].SetTeamCheck(false)
        getgenv()[(decode_string_v1("06dc95e87d7a0ad1c6",73980005))].UpdateColor(Color3.fromRGB(79, 22, 201))
    end

    if not getgenv()[(decode_string_v1("f9a4954315a3ab2a16c2",1500744216))] then
        getgenv()[(decode_string_v1("2b86263cc0a6e3d0ccfc",1541955726))] = true
        local RunService = game[(decode_string_v1("b4d3b77f4d30f7bdb4b4",311149838))](game, (decode_string_v1("ddff4a2787ac4c990d22",1800883319)))
        RunService.Heartbeat:Connect(function()
            for _, Function in pairs(getgenv()[(decode_string_v1("2c90ebe54ac9faa085e99e",343296941))]) do
                if type(Function) == (decode_string_v1("d9c70ab95700708b",2142256481)) then
                    xpcall(Function, ErrorHandlerTing)
                end
            end
        end)
    end
end
            --Timber. lua_compile_spot
            --PhantomForces. lua_compile_spot
            --BloxBurg. lua_compile_spot
            local VRService = game:GetService((decode_string_v1("e5f32ab75f51da9eb7",784113681)))

do
    local function WorldZeroInit()
        local MarketService = game:GetService((decode_string_v1("42c134a8ae8ade83e72d0f1441c4075d4c90",1297277045)))
        local VRService = game:GetService((decode_string_v1("f222fc18d5870812bf8743",523056364)))
    
        local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
        if isSuccessful then
            if info.Creator.Name == (decode_string_v1("966cd8d030d092cb3d363ebb35",875203491)) then
                --

                getgenv()[(decode_string_v1("f65a131e340ebd4c33de7e4af48638280a8f4f2cbe",1111262299))] = false
            
                --------------------------------------------------------------------------------------------
        
                getgenv().UpdateLoop = type(getgenv().UpdateLoop) == (decode_string_v1("05ff67de13fe11",249531482)) and getgenv().UpdateLoop or false;
                getgenv().UpdateCache = type(getgenv().UpdateCache) == (decode_string_v1("9cdd935d0e",1694369202)) and getgenv().UpdateCache or {};
                getgenv().MOB_ESP_OBJECTS = type(getgenv().MOB_ESP_OBJECTS) == (decode_string_v1("233e68a918",1242008189)) and getgenv().MOB_ESP_OBJECTS or {};
                getgenv().MOB_ESP_CONNECTIONS = type(getgenv().MOB_ESP_CONNECTIONS) == (decode_string_v1("dc10cc352a",1365162029)) and getgenv().MOB_ESP_CONNECTIONS or {};
        
                local GameConfigFile = GetGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("f11dccaecc",2134449186)))
                Settings_Name = (decode_string_v1("c20e16d210bd133ccce6f62acd861a360dd466c9feef00bdbfcf3a",1845281591))

                getgenv()[Settings_Name] = {
                    AutoAttackMobs = GameConfigFile.AutoAttackMobs or false,
                    AutoPickupCoins = GameConfigFile.AutoPickupCoins or false,
                    AntiIdle = GameConfigFile.AntiIdle or false,
                    MobESP = GameConfigFile.MobESP or false,
                    MobESPRenderDistance = GameConfigFile.MobESPRenderDistance or 250
                }
                
                Window = UILibrary.new((decode_string_v1("faae1b6c36d9e50791a99cb6d4c66811fefc86af46c8f2",371785202)), 5013109572)
    
                local TweenService = game:GetService((decode_string_v1("6b3c938e1592a40d20690e2a",589016410)))
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
        
                local MobsFolder = workspace:FindFirstChild((decode_string_v1("466678e2",352009702)))
                --[===[local PlayerWindow = Window:addPage("Player", 5012544693)]===]
                local AutoFarmWindow = Window:addPage((decode_string_v1("1ccdd5b3d6b31828e9",2007503161)), 5012544693)
                local VisualsWindow = Window:addPage((decode_string_v1("a6453af9b84021",560154330)), 5012544693)
                local TeleportsWindow = Window:addPage((decode_string_v1("0cf4b526507af4195b",1590362831)), 5012544693)
                local Worlds_TP_Section = TeleportsWindow:addSection((decode_string_v1("31dfb1db590c",1375999374)), 5012544693)
                local AutoFarmSection = AutoFarmWindow:addSection((decode_string_v1("0e0c7bc5c0db48bf",1615388859)), 5012544693)
                local VisualsSection = VisualsWindow:addSection((decode_string_v1("8d4641c9c5d53805",979514519)), 5012544693)

                local Camera = workspace.Camera
                local GUIService = game[(decode_string_v1("a0f7098e87d7d728fcd7",1130880553))](game, (decode_string_v1("eec5789564ce0e87019b",2098824668)))
                
                local function GetNearMobs()

                    local Mobs = {}
                    local HitBoxSize = Vector3.new(25, 15, 25)

                    if RootPart then

                        local MobParams = OverlapParams.new()
                        MobParams.FilterDescendantsInstances = MobsFolder:GetChildren()
                        MobParams.CollisionGroup = (decode_string_v1("f48321a1ed43d6",172406097))
                        MobParams.FilterType = Enum.RaycastFilterType.Whitelist

                        local FoundInBox = workspace:GetPartBoundsInBox(RootPart.CFrame, HitBoxSize, MobParams)

                        if FoundInBox ~= nil then
                            for _, Part in ipairs(FoundInBox) do
                                if Part:IsA((decode_string_v1("dd5b737e7a5e1afd",292721561))) then
                                    if Part.Name == (decode_string_v1("71ef2cae584c9b48",1656205098)) then
                                        table.insert(Mobs, Part.Parent)
                                    end
                                end
                            end
                        end

                    end

                    return Mobs
                end
        
                for _, V in pairs(TeleportModule:GetLocations()) do
                    if V.Name:find((decode_string_v1("74d883af2c",352415703))) then
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
                                Box = Drawing.new((decode_string_v1("9b90ced1144a",1449895367))),
                                ESPText = Drawing.new((decode_string_v1("64f51711",513654768)))
                            }
    
                            local Box =  getgenv().MOB_ESP_OBJECTS[Mob].Box
                            local ESPText =  getgenv().MOB_ESP_OBJECTS[Mob].ESPText
    
                            ESPText.Text = (decode_string_v1("",612771969))
                            ESPText.Color = Color3.fromRGB(255, 255, 255);
                            ESPText.Size = 20.0
                            ESPText.Visible = false
                            ESPText.Outline = true
                            ESPText.Center = true
    
                            Box.Thickness = 2;
                            Box.Filled = false;
                            Box.Visible = false;
                            
                            getgenv().UpdateCache[Mob] = function()
                                local Collider = Mob:FindFirstChild((decode_string_v1("c05e170f00d71d2a",660110067)))

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
    
                                    ESPText.Text = string.format((decode_string_v1("0b1fe950acdc494ef5daa4ee8e74fcbf0ef92386a66a9bb2",178850046)), Mob.Name, tostring( math.floor( (MobPos - PlayerPosition).Magnitude ) ) )
    
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
    
                                            local CreatureHealthFolder = Mob:FindFirstChild((decode_string_v1("8000481f09db1a48d71d291d8d2311c6",1344450274)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("df79d1d1c51b",2125032621)))
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
                            if typeof(V) == (decode_string_v1("fed002157a854f4ed9e3c40326ec1b0e39bcd1",490161910)) then
                                V:Disconnect()
                                getgenv().MOB_ESP_CONNECTIONS[I] = nil
                            end
                        end
                    end

                    ESP_META.StartConnections = function()
                        ESP_META.EndConnections()

                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("d74a24ae50d0be7f",1470161525))] = MobsFolder.ChildAdded:Connect(function(Mob)
                            ESP_META.AddEsp(Mob)
                        end)
        
                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("c093c54d1512de8e74bf",619876628))] = MobsFolder.ChildRemoved:Connect(function(Mob)
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
                
                getgenv()[(decode_string_v1("bdcbf95a0ac431ecdfa035",17471032))][(decode_string_v1("e618068df51242c27d190b64bae64c58",1127152843))] = function()
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

                getgenv().UpdateCache[(decode_string_v1("74112e7fa10de2101c45",1956884951))] = function()
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
                
                VisualsSection:addSlider((decode_string_v1("2ea8adc9cbbfb2e0d81f05a1242ea20cf31fb9",1823344833)), getgenv()[Settings_Name].MobESPRenderDistance, 250, 10000, function(NewValue)
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

                VisualsSection:addToggle((decode_string_v1("54ba21dbaf406f",1152593608)), getgenv()[Settings_Name].MobESP, function(Bool)
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

                AutoFarmSection:addToggle((decode_string_v1("a16e72c002a65a6ea29149f2f78dcbf10567cccc2a30efcc741206be713aef4722fc96",1593066797)), getgenv()[Settings_Name].AutoAttackMobs, function(Bool)
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
                                            local CreatureHealthFolder = Creature:FindFirstChild((decode_string_v1("3ffb31dfc7e3d6b86e4dfc1e0fe1072f",732402355)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("40c9a8188671",1503129330)))
                                                
                                                if CreatureHealth then
                                                    
                                                    if CreatureHealth.Value > 0 then
                                                        local CreaturePos = Creature:GetPivot();
    
                                                        --local v14 = AnimationModule:GetAnims().Defender["Attack" .. tostring(AttackIndex)];
                                                        if not ActionsModule:IsBusy() then
                                                            TotalHits = TotalHits + 1
    
                                                            --ActionsModule:FireSkillUsedSignal("Primary");
                                                            --ActionsModule:FireCooldown("Primary");
                                                            ActionsModule:SetBusy((decode_string_v1("943cbb452e",2081342851)));
                                                        
                                                            if Character then
                                                                PlayerPosition = Character.PrimaryPart.Position
                                                                PlayerLookVector = Character.PrimaryPart.CFrame.LookVector
                                                                RootPart = Character.PrimaryPart
                                                            end
    
                                                            RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
                                                            Camera.CFrame = CFrame.new(Camera.CFrame.p, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
    
                                                            CombatModule:AttackWithSkill((decode_string_v1("1b5fee0102ffdc27",1148313224)) .. tostring(AttackIndex), PlayerPosition, CFrame.new(PlayerPosition, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z)).LookVector * 1.1 );
                                                            
                                                            AttackIndex = math.clamp(AttackIndex + 1, 1, 6)
    
                                                            if AttackIndex > 5 then
                                                                AttackIndex = 1
                                                            end

                                                            CreatureIndex = CreatureIndex + 1
    
                                                            task.wait(0.01)
                                                            ActionsModule:ReleaseBusy((decode_string_v1("881386fa52",22550824)));
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
                    if A:IsA((decode_string_v1("fa01063bbc",2051869356))) then
                        if tostring(A) == (decode_string_v1("c59888571a",1080967037)) then
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

                AutoFarmSection:addToggle((decode_string_v1("13fc206ebe35e0b4",1479440708)), getgenv()[Settings_Name].AntiIdle, function(Bool)
                    getgenv()[Settings_Name].AntiIdle = Bool
                end)
    
                AutoFarmSection:addToggle((decode_string_v1("7ad8b3b7deaefc71bdf8b10df1cc2efb5ed4e64114e735234e10",1989109019)), getgenv()[Settings_Name].AutoPickupCoins, function(Bool)
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
        
                if not getgenv()[(decode_string_v1("21e06b981a9e920fd972",455478582))] then
                    getgenv()[(decode_string_v1("724fcf31e22f42150b11",683544142))] = true
                    RunService.Heartbeat:Connect(function()
                        for _, Function in pairs(getgenv()[(decode_string_v1("04cd163009f2dc62e04da8",1949723474))]) do
                            if type(Function) == (decode_string_v1("cdbdf9baafd56cba",1930727970)) then
                                pcall(Function)
                            end
                        end
                    end)
                end
        
                print((decode_string_v1("7caba3be6343cae015aba9f4b8aeca09be1baff578",1958453828)))
                --
            end
        end    
    end
    
    WorldZeroInit()

    local _Players = game:GetService((decode_string_v1("67a4debef2f5d6",309859053)))
    local _Player = _Players.LocalPlayer
    
    local queue_on_teleport = type(syn) == (decode_string_v1("ccd6822f55",1433314002)) and syn.queue_on_teleport or queue_on_teleport
    
    local RejoinCode = (decode_string_v1("f7fcc73b0248d9460a918a2dad90d44aa25255ccc2a6f41286b96f49a44b3629af68a8c44251db6e6253a0593b28229d6914fb98d73b37f2aaa95586d969fa41fb992da38f71aac3ec3ced0da3aad9325979794146f437cc2005a99b2212ee86420574440de73f06ea71c13f56c772977a1434c8efdf526a470e5f20ac552bbd453f1789ff90b60ce07f3987661f48bcb80625638ff4efda75ce0bba32c2644bc7be3824be25df1ce7c944faf946e9c0bfa29d893d44d3c1257ca760667f621bc432aba2b1f506d08a3dcf87d018436029a30a027e186d286135f713102b7289bf4fcf0a879d6f0684856c3c08cfb237e6115332c2e1172a576e2ad5fa8abe6fc9b2e4e31d863b602f3bd6dfa372dc50ca90a3e5f59b4c7d890ff2529c3841d7549bd8bfb3fde06a973a280539fd3a5bc6c7898df50d9c1767499a187663d5ca409b758584dea38ce26c4b2de7f0989cb44a0356c8cea8ce4b578f22e2651aca49e9b59bd4de2c3e9a89c9deb7f8204b9e0354be3e2dbbda997235fbf901ac2afa6b90906205e232ccfb8f22ccd2d39d345ed3bf54cd96589e095149ece7b1b311d40e7ee814fc98689542f8d1c987a0c5fc5c5669d2fe67170870fd34999e83699ababd905d72ecc88bdbc6808f8ba92f0baede401f4723fd0b0cd1bba3f45bd26e6417955a96574c9a141459fedf8b427f89da9a3bff25090b584fe186c433ba0ee1c1a731a5a9dde57a385bb053985c303914338f7be3493af99c5ffe466e1a107cbb26f60e0cf7938a3e4f131572fd2a8e1d140fe6068c2f6b9304875da29b1ffd5f9cbf5296d59c3a6946c6c7f1e8f8a4207e73338bfa4699673b84fb2c23a3143e85353fad8b31dba7094adf4b2f8cce",229725826))

    if not isfile((decode_string_v1("cc52411ea443b86323beb69da66a912c071e5a",882338951))) then
        writefile((decode_string_v1("40e9518dedce50efaf3ac03a54bc56b6fd3817",685526947)), tostring(RejoinCode))
    end
    
    queue_on_teleport((decode_string_v1("b79944331b63eb872b2e85bd30500afa528908484e2a67a0100b8b04cc54dee4b6d6ab4c394b80a589f927f4c52de01557569246e2585a437ca54f2af5ef66ecdf6b42c7151f9b695df8fb5a7ae42b8634b3acf4d2bd572879b0753ddcba26efdc83bb115f1ae579bf07f653",1866867829)))
end
            --DaHood. lua_compile_spot

			if getgenv()[(decode_string_v1("18b0f1ba2f56a6e75cea3cf8f547f32705ff59af68",130743175))] == true then
                do
    local Players = game[(decode_string_v1("5789bec5e551eb67aa3a",1597060091))](game, (decode_string_v1("a7d6f01684dda6",263271050)))
    local Player = Players[(decode_string_v1("736f9c78eb5e1e151b731c",1287117540))]
    local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("598e2d064319",1161192729))], string[(decode_string_v1("e621e184d2",787865706))], string[(decode_string_v1("7a1c3ee4",903441080))], string[(decode_string_v1("ef3036cd99f4",481812517))], string[(decode_string_v1("5578a48657",1450985400))]

    Window = UILibrary.new((decode_string_v1("6085ba8b5b6666d9af1b649281424eb211c6ccab352e",681852438)), 5013109572)

    local VisualsWindow = Window:addPage((decode_string_v1("6d7022421c28f2",593176969)), 5012544693)
    local VisualsSelection = VisualsWindow:addSection((decode_string_v1("9b726d55",1377343117)))

    local GameConfigFile = GetGameConfig(FixName(tostring((decode_string_v1("f9e1fce90d2b6cd4f6",499313525)))) .. (decode_string_v1("36d8b9dd99",1621227180)))
    Settings_Name = (decode_string_v1("0734f6a6cb37c6b06b203e5a263167133ff62e34bc3449211dbc",1645140863))

    getgenv()[Settings_Name] = {
        Teamcheck = GameConfigFile.Teamcheck or false,
        Boxes = GameConfigFile.Boxes or false,
        Tracers = GameConfigFile.Tracers or false,
        Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
    }

    VisualsSelection:addToggle((decode_string_v1("c0e13c0be572e31c2e78768919",1015787029)), getgenv()[Settings_Name].Teamcheck, function(Bool)
        getgenv()[Settings_Name].Teamcheck = Bool
        getgenv()[(decode_string_v1("42f4a5c6e4015ae695",1136470987))].SetTeamCheck(Bool)
    end)

    VisualsSelection:addToggle((decode_string_v1("cc8a067fdc0ae2072b",382464911)), getgenv()[Settings_Name].Boxes, function(Bool)
        getgenv()[Settings_Name].Boxes = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("29643052a429ab4f81",512900933))].LoadBox(Plr)
                end
            end
            getgenv()[(decode_string_v1("484c6bbd87aec1cd31",130447775))].SetBoxVisibility(true)
        else
            getgenv()[(decode_string_v1("29322596ea890550f2",1536248404))].UnLoadType((decode_string_v1("6e638f38f947c451ecdd",36098900)))
            getgenv()[(decode_string_v1("581aaa40fa34d2b39e",1872340305))].SetBoxVisibility(false)
        end
    end)

    VisualsSelection:addToggle((decode_string_v1("c6b9cbcee65d4109410338",370709267)), getgenv()[Settings_Name].Tracers, function(Bool)
        getgenv()[Settings_Name].Tracers = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("2342513df294d28d3e",1378244339))].LoadTracers(Plr)
                end
            end
            getgenv()[(decode_string_v1("ffee7f781dc0260623",1497291412))].SetTracersVisibility(true)
        else
            getgenv()[(decode_string_v1("66244ee29ef5d05e5a",885955152))].UnLoadType((decode_string_v1("c26c26ef14bdb0aee20e52fc",29185969)))
            getgenv()[(decode_string_v1("c571af0ca57c91bd96",540424116))].SetTracersVisibility(false)
        end
    end)

    local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color

    getgenv()[(decode_string_v1("30d9611bc34111dd51",2002466379))].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

    VisualsSelection:addColorPicker((decode_string_v1("23d576b1306c03d197",1395632436)), Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
        local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)

        getgenv()[Settings_Name].Color.R = R
        getgenv()[Settings_Name].Color.G = G
        getgenv()[Settings_Name].Color.B = B

        getgenv()[(decode_string_v1("f6898ab95e5f97221f",45059988))].UpdateColor(Color3.fromRGB(R, G, B))
    end)

    VisualsSelection:addButton((decode_string_v1("72a4dbda2105777aa404",2078046150)), function(Bool)
        getgenv()[(decode_string_v1("f2b9c9cc4f415e0731",417379575))].UnLoad()
    end)
end
			end

			if Window ~= nil and Settings_Name ~= nil then
				local MarketService = game:GetService((decode_string_v1("d0145f1d5c7cf590fcd180e095bcc6d24729",957137006)))
				SettingsPage = SettingsPage or Window:addPage((decode_string_v1("394b3e367e66f0e0",1483958748)), 5012544693)
				SettingsSection = SettingsSection or SettingsPage:addSection((decode_string_v1("e23e6a84d6",2036119064)), 5012544693)
				SettingsSection:addButton((decode_string_v1("e0b5b3742a3d0bf05a3f55",1000765407)), function()
					local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
					if isSuccessful then
						if tostring(info.Creator.Name) == (decode_string_v1("fb8375928a817946f83c7f48c4",1701031727)) then
							SaveGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("fd3eb6595b",1118420042)), getgenv()[Settings_Name])
                        elseif getgenv()[(decode_string_v1("2459907df85eb1657e9cdfacd668f996d87335eda6",1320330283))] == true then
							SaveGameConfig(FixName(tostring((decode_string_v1("0e428397df50111d5b",717061529)))) .. (decode_string_v1("fde5dab030",1126877944)), getgenv()[Settings_Name])
                        else
							SaveGameConfig(FixName(tostring(info.Name)) .. (decode_string_v1("99385e0a30",396125591)), getgenv()[Settings_Name])
						end
					end
				end)
				SettingsSection:addKeybind((decode_string_v1("b368fb35e0efdad03c0a0917127b",823904969)), Enum.KeyCode.Home, function()
					Window:toggle()
				end, function()
				end)
			end
		else
			return sendError(serverData, clientData)
		end
	end
end, function(err)
	return warn(err .. (decode_string_v1("81",698446023)) .. debug.traceback())
end)