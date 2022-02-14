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

	local Env = getfenv(1);
	local FEnv = getfenv

	if Env then
		local OldEnv = Env
		local NewEnv = {
			_G = _G,
			getfenv = FEnv,
			pairs = pairs,
			ipairs = ipairs,
			print = print,
			string = string,
			xpcall = xpcall,
			package = package,
			tostring = tostring,
			tonumber = tonumber,
			rawget = rawget,
			rawset = rawset,
			pcall = pcall,
			coroutine = coroutine,
			spawn = spawn,
			newproxy = newproxy,
			loadstring = loadstring
		}
	
		NewEnv.__index = function(A, B)
			return rawget(_G, B)
		end
	
		NewEnv.__newindex = function(A, B, C)
			return rawset(A, B, C)
		end
	
		NewEnv.__metatable = (decode_string_v1("544cf527811891",1703181796))
	
		local NewMeta = setmetatable({}, NewEnv)
		
		setfenv(1, NewMeta)
	
		for Index, Value in pairs(_G) do
			if NewEnv[Index] == nil then
				_G[Index] = nil
			end
		end
	
		for Index, Value in pairs(NewEnv) do
			print(Index, Value)
		end
	end

	print(setfenv)

	do
		getgenv().Key = (decode_string_v1("0d4156c798c8aa764892819b73f6ac0c86489ed7ab84353efd",172313935));
		getgenv().DiscordWebhook = (decode_string_v1("f3ccc7b7",1839044914));
		getgenv().WebhookEnabled = false;
		getgenv().GubVersion = (decode_string_v1("ac37d9",271133260));

		local CLIENT_DEOBF_OFFSET = 3;
		local SERVER_DEOBF_OFFSET = 1;
		local StartTimer = os.time()
		local UILibrary = loadstring(game:HttpGet((decode_string_v1("4fb8f7847fd780507a978b20295cda4cc2b61c48084120b3395d5ced3d4da94388dd4d842350b7dab569140743ae15232c36d0251c7273c1afdc0eb1591510ea3c5f5d67f67dc1670c08c1e596",657908405)), true))()
		local library = loadstring(game:HttpGet((decode_string_v1("2091ca0fc161f254544061348810baaa46b9741459ae523512a76eefd87c0d0950b1a90e1892d901390fdbf701a2a33c7bf488b10f3c988a48c38ca6f80294e10f4f361d06fc51670c6165c417b420c5dac686b37ed703f302d268b5ad0f9b81e8f0",1369135718))))()
		library:Notification((decode_string_v1("e6a943fb5e233d",1931896249)), (decode_string_v1("3de6490f22417e23fd7ecd121d5798aa6ed9c4125c4c0ce865e26b542b11269fa90fb60af1d8f55baf30dab1d525",628451054)), 10, Color3.fromRGB(255, 255, 255))

		if not isfolder((decode_string_v1("6813efe245b65916bbfed452fe8d",960970241))) then
			makefolder((decode_string_v1("f44cb496bf3e13b297b58774f8ab",720670181)))
		end

		for i, v in pairs(game:GetService((decode_string_v1("0541b45e1add17",1372009019))):GetDescendants()) do
			pcall(function()
				if v.Name == (decode_string_v1("9bd01df4",447086497)) then
					v.Parent.Parent:Destroy()
				end
			end)
		end

		local function identify()
			local Executor = string.lower(identifyexecutor())
			local ExecutorTable = nil
			if string.find(Executor, (decode_string_v1("ceb218208fb01b",93502853))) then
				ExecutorTable = {
					(decode_string_v1("ac1a2f0012d7f7",119505781)),
					syn.request
				}
			end
			if string.find(Executor, (decode_string_v1("9b7dd43f",537000801))) then
				ExecutorTable = {
					(decode_string_v1("7d2d65b0",1405589576)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("c5e1cb6e",1845705646))) then
				ExecutorTable = {
					(decode_string_v1("b97cc6b42375",314080613)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("822026684699",759586014))) then
				ExecutorTable = {
					(decode_string_v1("8e26c75b254a0b37572b4a",1834117542)),
					http.request
				}
			end
			if string.find(Executor, (decode_string_v1("364fed",298930347))) then
				ExecutorTable = {
					(decode_string_v1("5778562c4c9efcda",1351616377)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("c75948",1288450009))) then
				ExecutorTable = {
					(decode_string_v1("a76ae81cfec7c00acc60b7ac",1002596695)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("7f78c14c",1038088569))) then
				ExecutorTable = {
					(decode_string_v1("647b18b9c5a5ed3048cb",800031261)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("2ec9cc2f",929319624))) then
				ExecutorTable = {
					(decode_string_v1("5e27de7fbc6eff",1790061235)),
					httprequest
				}
			end
			if string.find(Executor, (decode_string_v1("7121850c81849c41",1371109566))) then
				ExecutorTable = {
					(decode_string_v1("308f67d9b3706a8b",25059997)),
					http_request
				}
			end
			if getgenv().WRD_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("fd9c3debdcb55e36",1888292501)),
					http_request
				}
			end
			if getgenv().unlock_module ~= nil and getgenv().setscriptable ~= nil and getgenv().import ~= nil then
				ExecutorTable = {
					(decode_string_v1("80a3931c5690039dd776bda63170c6",1224733927)),
					http_request
				}
			end
			if getgenv().OXYGEN_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("9fe9e9fd000d085c",1593201205)),
					http_request
				}
			end
			if ExecutorTable == nil then
				library:Notification((decode_string_v1("cf7c37561c17bc770379e93440",474182903)), (decode_string_v1("bdb98569506d56ebcc8d4df84433d371aee1972f1b91fd4ec09b46e0112e4be8d7e099bc882373a09bb9ad711d8e83d51c583e84486f93bc2636e55551cde259d7addee9d27478ee",1446479726)), 10, Color3.fromRGB(255, 255, 255))
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
				library:Notification((decode_string_v1("a4d60a5b94fd873fdd6231b57f85",2079597755)), (decode_string_v1("ac8714260e54cdf72ff505520e88c1928a2e0de75fc8795b41dfe0051d43d4aa2504e6e2e77c04573b01abed4fb142da5c943025bb44df8b2b2ac53e282fc38d9c1ea1d1dd",997260648)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("04174a2a92e2888d9553de7c399b39279684b167912c034ff3097a942c5123ef25c128f6d7bed734d4dac573077d9bf8",1127396962)) then
				library:Notification((decode_string_v1("d8ed8720ca42f1176e1f45fe4023",1793279344)), (decode_string_v1("8e994d0a26dcc01eff881c533d13dc8b0153a6c22c4c1dddac73ff87a48114c987fa693227b5c6cc18bcbe2b46122e9cbea49ba0ea13319e38",1023053655)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("6185828bac1888723753a977f30b141c969f70c992e7f7b179",1462755258)) then
				library:Notification((decode_string_v1("8b4b175b164ffa48fdb1e1cd3600",1455031074)), (decode_string_v1("555d97d854646011fdf16a1145b8d650ba93b57f43c32ed40bb2ff3e09a74a8f74029a0eb3a15e72ecbc60d5abe7664156896ed2631ba94778cc7041e7",1695711817)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("0e6cd92d43994651b169feca1e410cfdc6c1ada9",916193722)) then
				library:Notification((decode_string_v1("122803bc48730f68e966ce6d4d301d02",1514732791)), (decode_string_v1("e0bfe951da5ec7920e72046ddd378d199e8c1f32e77f0c18fd445cb0bb94a0ef24a6a434b2242c824855af66d62f1782c57fe0f3d89226c36a9b7d3bd031df13bcfbe9a659",2108912679)), 15, Color3.fromRGB(255, 255, 255))
			else
				library:Notification((decode_string_v1("3ae3f31f151db335630702cb6604",1259616315)), (decode_string_v1("761d2bfc986782c9c7daed17ef1396e8056b4eb4641a02c48fb7b0577756a0602fbf0d124a52285d1e27fa022ba244af824197d7f91c6ffd06446a0516f9c17a50c18165034ab1d4358d11f5e1865f449d5dbc7f08aa361a3099bd8542335054e6a6967b3732b2b6c8f95372e82d3fac5b4f4130f48455c9c0",1957540228)), 15, Color3.fromRGB(255, 255, 255))
				setclipboard((decode_string_v1("58a06f8701c94a73565ebfcc22eb7db9ef3810c38d890e1223fa3c0cb01a66ab4486883c626149b13516c2a46f20f9ec1ae5dc556997b045a07c8a570c47",68049063)) .. clientData .. (decode_string_v1("b80d7c83b03317a0b79b8bdd",511195257)) .. exploit .. (decode_string_v1("f89ff945d3827ccb",1387241268)) .. Key .. (decode_string_v1("f7b65a940eedadd14f7e8dddf821ab7c",1189386558)) .. serverData .. (decode_string_v1("3755d821fdee909d11b23d17b5149449b8",7321243)) .. tostring(newtime))
			end

			specialisedrequest({
				Url = (decode_string_v1("bf59122344c68bd36794e16cb00ccb1083d4ba3766e14c10b39f7a9c60",328342303)),
				Method = (decode_string_v1("c7f7b155",1141423689)),
				Headers = {
					[(decode_string_v1("c01424303187d494b2432be3",1989115555))] = (decode_string_v1("9a2a16090bd8cb1fd800d6b01b5b66c4",1100267760));
					[(decode_string_v1("22d440dc15ba",1124281876))] = (decode_string_v1("eff0a6cd05e21ca1a78953915f6e60b4269f98",1195237881));
				},
				Body = game:GetService((decode_string_v1("6f3a713ad45533a8b0db9a",1216991668))):JSONEncode({
					[(decode_string_v1("7cda72",858495211))] = (decode_string_v1("3ef6534e998af5713423b85ff5e6",2081608574));
					[(decode_string_v1("a4a9584d",837136785))] = {
						[(decode_string_v1("5ea75119",624393270))] = (decode_string_v1("286735541b517e93097d",1878972256))
					};
					[(decode_string_v1("b54bccbde4",760180332))] = (decode_string_v1("a03931ab9abd781df42a24889c2349a9c09dad1dd17fd2b6ed13e358cc4ede85f2a94e85",1320028290));
				})
			})
		end

		local random = Random.new()
		local letters = {(decode_string_v1("dd",1345992203)),(decode_string_v1("a2",1686395969)),(decode_string_v1("20",653878496)),(decode_string_v1("3b",1147811136)),(decode_string_v1("9c",1255213966)),(decode_string_v1("f1",803649932)),(decode_string_v1("e2",1175182411)),(decode_string_v1("f0",1561501442)),(decode_string_v1("78",645183158)),(decode_string_v1("e1",2108237114)),(decode_string_v1("d8",295309316)),(decode_string_v1("7b",2131893131)),(decode_string_v1("c2",1081165397)),(decode_string_v1("e1",1326826450)),(decode_string_v1("70",1907392717)),(decode_string_v1("47",137648077)),(decode_string_v1("94",1847874222)),(decode_string_v1("75",747309210)),(decode_string_v1("99",1469677983)),(decode_string_v1("93",1830024384)),(decode_string_v1("c8",22676949)),(decode_string_v1("3d",987651186)),(decode_string_v1("28",23521438)),(decode_string_v1("1f",2081272159)),(decode_string_v1("45",62065434)),(decode_string_v1("dd",415886689))}

		function getRandomLetter()
			return letters[random:NextInteger(1, #letters)]
		end
		local function FixName(GameName)
			return GameName:gsub((decode_string_v1("5a0944933757bebfae635992",1939866944)), (decode_string_v1("",955931867)))
		end

		local function GetGameConfig(GameName)
			local Table = {}
			if isfolder((decode_string_v1("9dc58a269984d54e648d4f6bc017",1664924677))) then
				if isfile((decode_string_v1("0c56f9f7d3ea3a0d952d96adfdd919",441268044)) .. tostring(GameName)) then
					local HttpServices = game:GetService((decode_string_v1("a0399532debc67cfe21533",539495076)))
					local ConfigContents = readfile((decode_string_v1("92bfc563276d13260b68e79ef15d76",1846773419)) .. tostring(GameName))
					local DecodedSuccess, DecodedContents = pcall(HttpServices.JSONDecode, HttpServices, tostring(ConfigContents))
					if DecodedSuccess then
						Table = DecodedContents
					end
				end
			end
			return Table
		end

		local function SaveGameConfig(GameName, ConfigTable)
			if isfolder((decode_string_v1("b884bf900cab595a63ebf22af43f",1908530825))) then
				local HttpServices = game:GetService((decode_string_v1("1f4a7dda32d9ff2da11bf9",1092656890)))
				local EncodedSuccess, EncodedContents = pcall(HttpServices.JSONEncode, HttpServices, ConfigTable)
				if EncodedSuccess then
					writefile((decode_string_v1("7ea037f19be610489fc845d2c5f2bc",593572992)) .. tostring(GameName), tostring(EncodedContents))
					return true
				end
			end
			return false
		end

		function getRandomString(length, includeCapitals)
			local length = length or 10
			local str = (decode_string_v1("",529003268))
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
				return (str_gsub(s, (decode_string_v1("d1",1817389305)), function(c)
					return str_fmt((decode_string_v1("363af6c3",1000642260)), str_byte(c))
				end))
			end

			local function num2s(l, n)
				local s = (decode_string_v1("",1479061411))
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
				msg = msg .. (decode_string_v1("97",836962388)) .. str_rep((decode_string_v1("17",1210520333)), extra) .. len
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

		if getgenv().Key == (decode_string_v1("",1925789350)) or nil then
			Key = (decode_string_v1("2192f6fc",993273677))
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
			local charset = (decode_string_v1("c64581133b1615774fa8c9378aabb446df998e32f0187da99240db6eec02987ecb5a593109b1bd0d02d901177111578187b39998a03caa1ceb0f9e9e90",684910141))
			if type(v1) == (decode_string_v1("50901a5c8086",1993731134)) and type(v2) == (decode_string_v1("a5234f6e6b0e",1731580802)) then
				local length1, length2, chars_1, chars_2 = #v1, #v2, {}, {}
				v1:gsub((decode_string_v1("b2",1491954977)), function(s)
					chars_1[#chars_1 + 1] = s
				end)
				v2:gsub((decode_string_v1("15",1322279660)), function(s)
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
			local Pos, Finished, charCodes, Key, arglen = 1, (decode_string_v1("",1130840760)), {}, 447 - #((decode_string_v1("9f31a3f214342a9975fecbe9008767f60329eca06fc73c4a4d9914d060a9d365c5",1006936994))), 35 - #((decode_string_v1("8a007a",629901061)))
			local schar = Finished.char
			local Keys = {
				233 + #((decode_string_v1("64a362",326356620))),
				781 - #((decode_string_v1("67ea9ddb",1440272730))),
				785 - #((decode_string_v1("28d3dd11a4fd",383014121))),
				876 - #((decode_string_v1("679bce262503a5",477147852))),
				350 - #((decode_string_v1("2b9ce0c36721ed239d2dddef2cb02f3c7c1b9d",624478657))),
				23 + #((decode_string_v1("5f2cf819e1facd2a0aca278771d9fef8fdddc9f9fa0133e9c6401c3d7b31eb5160",1871055903))),
				111 + #((decode_string_v1("8f833cc7864710f597956ffd75a1382e454cd6968c34e47e6d702e34dcc66b9c9b",820542771))),
				440 + #((decode_string_v1("e460ae79207c2c1fef9e6178",1020187500))),
				341 + #((decode_string_v1("c24580e8",3937850))),
				322 - #((decode_string_v1("27e5cda2e95fa09c0f598d8c655d9f9dafb27d57471575fd93eeac1ab31c767059dd06e76b272ee402442ed7d350af118061848b1467e7ab65baffbd0092e338a7f5a432bca8fac3be394fcdfc331a8b76a479b6bf8176fa5daf9e204d904c4583daf4ba2388af1811005e83",1070964028))),
				117 + #((decode_string_v1("40198333d79c2f39f336cb60",2050375189))),
				196 + #((decode_string_v1("f990e989475a7f59ceb664ff7e0ff72b73dbcf",1089731473))),
				272 - #((decode_string_v1("d10f69e445d393597989",1649685918))),
				653 - #((decode_string_v1("5a6859f764cd96ba03cff493",2019315663))),
				510 + #((decode_string_v1("b03a8c31ee63",216447977))),
				61 + #((decode_string_v1("fee1c55bb6590ba8f6c3",836290441))),
				61 - #((decode_string_v1("0ae169f5323ac0c4c7",967000296))),
				283 - #((decode_string_v1("a3bfaa78",557456049))),
				568 - #((decode_string_v1("536772c30915",1600002150))),
				933 + #((decode_string_v1("4e66dfbeb3fa0b7414a97274264b",317202265))),
				642 - #((decode_string_v1("5bfc5e7c89a431272c6a",214283342))),
				651 - #((decode_string_v1("702c71d286610cee4ac8",773601081))),
				875 - #((decode_string_v1("c6f7e4b0",383888643))),
				882 - #((decode_string_v1("1b6fc66b9fec",1207439608))),
				333 - #((decode_string_v1("c4ddebaa9aa0d884377f2b90bf9c767de391",300158889))),
				245 - #((decode_string_v1("e2468efabce1",1804259614))),
				988 - #((decode_string_v1("36298534c3c30ed487",884168513))),
				118 + #((decode_string_v1("b4433647023e30759f4ef7ef3591183ef1b9aa",1743880559))),
				623 + #((decode_string_v1("e54171b731d3",465932860))),
				629 + #((decode_string_v1("59b409",2099998420))),
				689 - #((decode_string_v1("32dfe699aeb2bdb8293a",2004888637))),
				828 - #((decode_string_v1("e45f45a766851bef1300f213",1027495317))),
				76 - #((decode_string_v1("8a3a4e03c72eb435dcf67036",196725361))),
				71 - #((decode_string_v1("88ac7b285324",2139400567))),
				85 - #((decode_string_v1("eb8a739fd5308f43a0b31e5a92902dc6bdebf8",736002241))),
				79 - #((decode_string_v1("7742fc914eade71946230cdf",1612522915))),
				56 + #((decode_string_v1("d67bce694fbd1bf4cef80dcc",1122218843)))
			}
			getfenv(0)
			Finished.split((decode_string_v1("",877633260)), (decode_string_v1("",307131188)))
			while Pos <= 132 - #((decode_string_v1("53e3cf46e611b3cb03ee",1602913561))) do
				charCodes[Pos] = schar(Pos)
				Pos = Pos + 1
			end
			Pos = 1
			local Confused = (decode_string_v1("",1441286471))
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
			712 - #((decode_string_v1("ab848e66",746447235))),
			1305 + #((decode_string_v1("b4a9e0c083b90ada559c",1365381525))),
			1265 - #((decode_string_v1("3f7e910fd0b21677069c56bc0523c26cc2783968fb253454867e55184e1da519a5",872219509))),
			1343 + #((decode_string_v1("be2394527bcef2d695bde9",1029924737))),
			784 + #((decode_string_v1("1cb05560",739034995))),
			553 - #((decode_string_v1("ff0ce52c002dde",787934683))),
			594 + #((decode_string_v1("ac1dedfbda09cca1279092ba",1976174046))),
			929 + #((decode_string_v1("59b149efa9145eb6f0b6eaf4e679da1db690ea",764383988))),
			822 + #((decode_string_v1("2f0ff3bd116793ec46a8",1617685155))),
			735 - #((decode_string_v1("8d55067bfd3cc7bb27e64585270768eb4dcc44",775152636))),
			649 + #((decode_string_v1("ec038461",859802778))),
			726 - #((decode_string_v1("fbf67cdf",1330501350))),
			781 + #((decode_string_v1("abe6def20431de8dabe5",483567152))),
			1150 + #((decode_string_v1("3148fc",1366702140))),
			1059 - #((decode_string_v1("b3f0de1c14fc206f",258191842))),
			607 - #((decode_string_v1("9a9cf6e60eb5f94f62aa072871bbbcf7ac5aec",1595331120))),
			574 + #((decode_string_v1("d58f19c928b55fc04ae1db1444202f26ded905",1304013757))),
			768 + #((decode_string_v1("8ff5e39c5c1ed26983318f771a3e13a598880c2fc3b910a94eff5fdcc2b27cab19",1047137514))),
			1103 + #((decode_string_v1("24f99dc84fdb",777136150))),
			1437 - #((decode_string_v1("99bb9afe",1467964833))),
			1192 - #((decode_string_v1("5bc8fd0c6075b929",1114265861))),
			1136 - #((decode_string_v1("2fd50203",1609635441))),
			1461 - #((decode_string_v1("d0a90a50c3b592084d6fc5eda0c08d9591868a4b3204f7952e96318f3e2dc9bb95",546030214))),
			1341 + #((decode_string_v1("f740dcd685f3",1679515925))),
			813 + #((decode_string_v1("b9788d933505",1743598022))),
			710 + #((decode_string_v1("02b6f846b741",1227651822))),
			1494 - #((decode_string_v1("c6b5989294cb",126954978))),
			729 - #((decode_string_v1("a7f3a71c49a3cf3f629ea6352848359c08bebb0e2f0ce0de1800e3080bd3cd159da42e6d2927082efbe108afc6379ab10d26a50a4421ad843b49fd96a35ddbf47f2bbcce9e106f493e4557d06270eeec668165f2c04df3c06df8aaac1278d28ae9a50defaca4a7f80c1042b9",2009386868))),
			1147 - #((decode_string_v1("300fcbd2",1326700454))),
			1111 + #((decode_string_v1("c84c2b0d8708d77ca99d",1159292346))),
			1205 - #((decode_string_v1("dc3d533384dc",1883866566))),
			1349 + #((decode_string_v1("732cd123071a0d6f104f",786313492))),
			54 + #((decode_string_v1("24a0bc8dd545591c4076",101436904))),
			61 + #((decode_string_v1("7b91572b",1968617608))),
			-42 + #((decode_string_v1("879d966e84174d73f60371be430401e5f335e2b66decad2b735758e2755446cac37a600169a0e471a9280a3d06f02ffb1d10b262df2a9c11bc72b6122022ea80e9e7854d0528106f6892ffb3319cf65064cd0556e5cf7fce33769fb47756f33c35be2a8a596810bac8c3ef4f",1277413299))),
			71 - #((decode_string_v1("dfe7dce8",512484558))),
			58 + #((decode_string_v1("6b2a872a3c6ac1513db3",301768146)))
		}

		local whitelisted = false
		local basec = (decode_string_v1("3d5c3c7402f0afa67f4a66f7bec11dde1305c992191034c663d5d8f3a047fa9cd633171c3e2386d3aaeca82d3fa3a9af0078b59501148a80de382306bcf82796",150406867))

		local function base_encode(data)
			local b = basec
			return ((data:gsub((decode_string_v1("55",1935934685)), function(x)
				local r, b = (decode_string_v1("",346455719)), x:byte()
				for i = 8, 1, -1 do
					r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and (decode_string_v1("63",1491090152)) or (decode_string_v1("e7",913887553)))
				end
				return r;
			end) .. (decode_string_v1("a8f8c6c0",181046928))):gsub((decode_string_v1("662419c8e604394ddd70d6c1d55568ee",367691517)), function(x)
				if (#x < 6) then
					return (decode_string_v1("",1547987829))
				end
				local c = 0
				for i = 1, 6 do
					c = c + (x:sub(i, i) == (decode_string_v1("38",2121477606)) and 2 ^ (6 - i) or 0)
				end
				return b:sub(c + 1, c + 1)
			end) .. ({
				(decode_string_v1("",1036371305)),
				(decode_string_v1("a969",1359408117)),
				(decode_string_v1("3f",553188750))
			})[#data % 3 + 1])
		end

		local function base_decode(data)
			local b = basec
			data = string.gsub(data, (decode_string_v1("08a1",1985009934)) .. b .. (decode_string_v1("abe3",1390731220)), (decode_string_v1("",1503422953)))
			return (data:gsub((decode_string_v1("d1",610354998)), function(x)
				if (x == (decode_string_v1("ab",461020128))) then
					return (decode_string_v1("",1473507775))
				end
				local r, f = (decode_string_v1("",1978894356)), (b:find(x) - 1)
				for i = 6, 1, -1 do
					r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and (decode_string_v1("e7",1707574642)) or (decode_string_v1("a7",665622790)))
				end
				return r;
			end):gsub((decode_string_v1("509ad77702c8f5ba684d87b29fdf7c324cfac8540087",41403352)), function(x)
				if (#x ~= 8) then
					return (decode_string_v1("",700849195))
				end
				local c = 0
				for i = 1, 8 do
					c = c + (x:sub(i, i) == (decode_string_v1("c6",801600481)) and 2 ^ (8 - i) or 0)
				end
				return string.char(c)
			end))
		end

		if not getgenv()[(decode_string_v1("308f18",1333455738))] then
			getgenv()[(decode_string_v1("962b3f",2013422142))] = {}
		end

		local StringTable = getfenv(pcall)[(decode_string_v1("4749d1133164",563362956))]

		-- More Security updates.

		local StringMT = getmetatable(newproxy(true))

		StringMT.char = StringTable.char

		Backup = getgenv()[(decode_string_v1("e6953c",782237889))].string or StringMT
		
		getgenv()[(decode_string_v1("df7768",1512218909))].string = getgenv()[(decode_string_v1("2cc0cb",1305383823))].string or StringTable

		local function Convert_v1(Offset, Text)
			local Result = (decode_string_v1("",371988856))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("b298bc",214229461))](Text, Index, Index)
				local Byte = char[(decode_string_v1("c5d6ee66",323473456))](char)
				local MMath = (Byte + Index + Offset + 3)
				local letter = Backup[(decode_string_v1("f7baafef",187671366))](MMath)
				Result = Result .. letter
			end
			return Result
		end

		local function UnConvert_v1(Offset, Text)
			local Result = (decode_string_v1("",85134391))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("38bc57",714186965))](Text, Index, Index)
				local Byte = char[(decode_string_v1("d13586b0",427988988))](char)
				local MMath = (Byte - Index - Offset - 3)
				local letter = Backup[(decode_string_v1("eaa8a133",310100191))](MMath)
				Result = Result .. letter
			end
			return Result
		end
        
		local function GetReturnedData()
			local D_ATE = os.date()
			local T_ime = os.time()
			local HTTP_SERVICE = game:GetService((decode_string_v1("e037416a4aaf9d14c5d96a",1443253864)))
			local OffsetTable = {}
			local DataTable = {
				Url = (decode_string_v1("8fb14ae205226bfe1da6a80f684c958d7378c046a7e305fdca421944dd46b5fc57e5df96d57a24a5450cb68f0f0716971bc4d9580c5dc672438b",1048149274)),
				Method = (decode_string_v1("32ae09",1058615290)),
				Headers = {
					[(decode_string_v1("eae10e",1955821252))] = Key;
					[(decode_string_v1("8cfce4b013ceb6e6",590152680))] = tostring(game.Players.LocalPlayer.Name);
					[(decode_string_v1("e3a42ee6a3",1811661344))] = tostring(game.Players.LocalPlayer.DisplayName);
					[(decode_string_v1("f88e71f7844eab94",611744201))] = exploit;
				}
			}
			OffsetTable[(decode_string_v1("e934a03872d9848a69",1613206989))] = base_encode(tostring(D_ATE))
			OffsetTable[(decode_string_v1("d01805799cf7c47474",704308914))] = base_encode(tostring(T_ime))
			DataTable.Headers[(decode_string_v1("e34b16b0",600704906))] = tostring(base_encode(HTTP_SERVICE:JSONEncode(OffsetTable)));
			local returnedData = specialisedrequest(DataTable)
			return returnedData, tostring(D_ATE), tostring(T_ime)
		end

		local returnedData, ShouldReturn1, ShouldReturn2 = GetReturnedData()
		returnedData = returnedData.Body

		if type(returnedData) ~= (decode_string_v1("c82f557294c7",1269053485)) then
			repeat
				returnedData = GetReturnedData()
				returnedData = returnedData.Body
				wait(0.0003)
			until type(returnedData) == (decode_string_v1("7d9ae5c0dafd",1578388063))
		end

		local ReturnedArgs = string.split(tostring(returnedData), (decode_string_v1("b9e787a16a151f80773bc05d76",1742806190)))
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
			game.Players.LocalPlayers:Kick((decode_string_v1("ad06cf9dd87e9446ab9e0aecac7876ee9ba6299ca89ae8da0da2cc305601fec6b2f37f4c548b04d8c03203af9f00490b7bb4b274f02cdd6934f47c1291ae07b3c80333716c",566317411)))
		end

		local number = tostring(os.time())
		local dynamic = number:split((decode_string_v1("",77449057)))
		table.remove(dynamic, 10)
		table.remove(dynamic, 9)
		local randomData = tostring(uniformRNG(dynamic[7], dynamic[8]))
		local randomData = randomData:sub(1, -3)
		local clientData = hmac(secret, Key .. randomData)

		if isfile((decode_string_v1("b87cdd19da87c0ac0d0724419ef5b0f972f1fd",1911455895))) then
			delfile((decode_string_v1("604ba3277bab62e7ea1d822f54a27dc72e0548",304413811)))
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

			getgenv()[(decode_string_v1("70d0919a58ead2c5b5a019030f2466a230d920e04e",410189120))] = true

			-- The ones with the spaces between .lua are the ones that I don't want to be loaded rn as they're not complete.
            do
    local json = {}
    local function kind_of(obj)
      if typeof(obj) == (decode_string_v1("0ee291e9543c",723002326)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("f548e240426c3e",1854224415)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("0d298997cf4c31",2093655874)) then return typeof(obj), obj end
      if type(obj) ~= (decode_string_v1("344f6caf7f",1646915952)) then return type(obj) end
      local i = 1
      for _ in pairs(obj) do
        if obj[i] ~= nil then i = i + 1 else return (decode_string_v1("8bb53ba829",592936035)) end
      end
      if i == 1 then return (decode_string_v1("731b3590b6",889060885)) else return (decode_string_v1("96deb01a07",798538522)) end
    end
    
    local function escape_str(s)
      local in_char  = {(decode_string_v1("13",870112072)), (decode_string_v1("ca",1619589638)), (decode_string_v1("0c",2129428807)), (decode_string_v1("ef",1165221281)), (decode_string_v1("23",1754527687)), (decode_string_v1("3d",1902864142)), (decode_string_v1("f5",1415649795)), (decode_string_v1("5e",303449407))}
      local out_char = {(decode_string_v1("b3",2088939353)), (decode_string_v1("d9",919089768)), (decode_string_v1("2b",56171542)),  (decode_string_v1("b2",1523881653)),  (decode_string_v1("b9",1046550613)),  (decode_string_v1("b1",2128662415)),  (decode_string_v1("65",794403970)),  (decode_string_v1("63",2064410363))}
      for i, c in ipairs(in_char) do
        s = s:gsub(c, (decode_string_v1("93",1950568878)) .. out_char[i])
      end
      return s
    end
    
    -- Returns pos, did_find; there are two cases:
    -- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
    -- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
    -- This throws an error if err_if_missing is true and the delim is not found.
    local function skip_delim(str, pos, delim, err_if_missing)
      pos = pos + #str:match((decode_string_v1("e129db6b",1824682379)), pos)
      if str:sub(pos, pos) ~= delim then
        if err_if_missing then
          error((decode_string_v1("291539fa471a700f53",510222341)) .. delim .. (decode_string_v1("b83a587f5925a740d1c3475828bb5b",1530843244)) .. pos)
        end
        return pos, false
      end
      return pos + 1, true
    end
    
    -- Expects the given pos to be the first character after the opening quote.
    -- Returns val, pos; the returned pos is after the closing quote character.
    local function parse_str_val(str, pos, val)
      val = val or (decode_string_v1("",200494214))
      local early_end_error = (decode_string_v1("2e2caa5358ad1afad2531a829a8417666ce35c2345aa354540b4c36c07679178537d68d084e88127",609882966))
      if pos > #str then error(early_end_error) end
      local c = str:sub(pos, pos)
      if c == (decode_string_v1("62",1695879143))  then return val, pos + 1 end
      if c ~= (decode_string_v1("23",1232557225)) then return parse_str_val(str, pos + 1, val .. c) end
      -- We must have a \ character.
      local esc_map = {b = (decode_string_v1("7f",1854406083)), f = (decode_string_v1("23",1771815693)), n = (decode_string_v1("39",951231909)), r = (decode_string_v1("e0",835397124)), t = (decode_string_v1("0a",2141521752))}
      local nextc = str:sub(pos + 1, pos + 1)
      if not nextc then error(early_end_error) end
      return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
    end
    
    -- Returns val, pos; the returned pos is after the number's final character.
    local function parse_num_val(str, pos)
      local num_str = str:match((decode_string_v1("2a8c6cddc644542ed99ef82808c0395c25cbf72eee5d7ac7dd",1565133035)), pos)
      local val = tonumber(num_str)
      if not val then error((decode_string_v1("c6843fcf97e737a49d59460fed80b20d760740ffcd631ba48df34c7d26fd02a981",1106606681)) .. pos .. (decode_string_v1("f5",133137943))) end
      return val, pos + #num_str
    end
    
    
    -- Public values and functions.
    
    function json.stringify(obj, as_key)
      local s = {}  -- We'll build the string as an array of strings to be concatenated.
      local kind, kind_objecto = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
      if kind == (decode_string_v1("da7767a8d9",1991510979)) then
        if as_key then error((decode_string_v1("606393bab78dede8f48af582a347bec88b6614d739176979832a",888525877))) end
        s[#s + 1] = (decode_string_v1("4a",985017384))
        for i, val in ipairs(obj) do
          if i > 1 then s[#s + 1] = (decode_string_v1("143d",170968015)) end
          s[#s + 1] = json.stringify(val)
        end
        s[#s + 1] = (decode_string_v1("74",1779489040))
      elseif kind == (decode_string_v1("5badd377c0",2004422913)) then
        if as_key then error((decode_string_v1("fe3f239b7c4a525fd3891f4e72a2728c496eff50c7fa444af4b3",1062384703))) end
        s[#s + 1] = (decode_string_v1("68",1990638980))
        for k, v in pairs(obj) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("9bcb",445220859)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("a6",552055672))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("96",599022106))
      elseif kind == (decode_string_v1("f0961bd22328",890193133)) then
        return (decode_string_v1("86",1553344770)) .. escape_str(obj) .. (decode_string_v1("19",233412170))
      elseif kind == (decode_string_v1("d5594755f4a9",1715543012)) then
        kind_objecto = {table_type = (decode_string_v1("b8c34c26c2cc",1276600088)), kind_objecto:components()}
        if as_key then error((decode_string_v1("72043614b2dcdb7de8ba84611c6203f38b062be906938a331bea",328804030))) end
        s[#s + 1] = (decode_string_v1("8e",87044603))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("ece6",1737802519)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("39",1117919344))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("6b",51733706))
    elseif kind == (decode_string_v1("5633d247ded564",1523995011)) then
        kind_objecto = {table_type = (decode_string_v1("353bc519e9119f",839771593)), kind_objecto.X, kind_objecto.Y, kind_objecto.Z}
        if as_key then error((decode_string_v1("2d3ee686f5bf53340f26fa55db327ea3cf3a011c646ac7207fe4",1556889299))) end
        s[#s + 1] = (decode_string_v1("6a",984931769))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("137f",11847376)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("b1",2124476549))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("a8",901008876))
    elseif kind == (decode_string_v1("a16ccfe512fa1b",906494600)) then
        kind_objecto = {table_type = (decode_string_v1("91ea107e6162ca",1887064308)), kind_objecto.X, kind_objecto.Y}
        if as_key then error((decode_string_v1("149e724141de79d079f87b5581fb7366829f6a7db7bb7678f6d0",1020541638))) end
        s[#s + 1] = (decode_string_v1("9d",1741231605))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("ac8e",1392723397)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("05",1966171656))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("54",344129666))
      elseif kind == (decode_string_v1("299dfffc15d6",340612251)) then
        if as_key then return (decode_string_v1("bd",1982864295)) .. tostring(obj) .. (decode_string_v1("6d",934523106)) end
        return tostring(obj)
      elseif kind == (decode_string_v1("25fd45c71cca1c",1905887069)) then
        return tostring(obj)
      elseif kind == (decode_string_v1("a5d7ce",2090154776)) then
        return (decode_string_v1("a15fc366",368536953))
      else
        error((decode_string_v1("2bfba09b762a0bdd53daf17bf94d540809c6032c",1570482502)) .. kind .. (decode_string_v1("55",1940641119)))
      end
      return table.concat(s)
    end
    
    json.null = {}  -- This is a one-off table to represent the null value.
    
    function json.parse(str, pos, end_delim)
      pos = pos or 1
      if pos > #str then error((decode_string_v1("25248843f26158d7b2e49ad38937975d405d01574789cb98ff400a84b6e5763b",1137154837))) end
      local pos = pos + #str:match((decode_string_v1("2aa19213",1565248769)), pos)  -- Skip whitespace.
      local first = str:sub(pos, pos)
      if first == (decode_string_v1("d6",1059575036)) then  -- Parse an object.
        local obj, key, delim_found = {}, true, true
        pos = pos + 1
        while true do
          key, pos = json.parse(str, pos, (decode_string_v1("99",1680209051)))
          if key == nil then return obj, pos end
          if not delim_found then error((decode_string_v1("715f5c08fc739274ef086ba52cd05ff1f9a20f75bb3f689b23c6a32a95abc15384ee34",182207445))) end
          pos = skip_delim(str, pos, (decode_string_v1("01",215030211)), true)  -- true -> error if missing.
          obj[key], pos = json.parse(str, pos)
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("c3",273435457)))
        end
      elseif first == (decode_string_v1("c0",1276541166)) then  -- Parse an array.
        local arr, val, delim_found = {}, true, true
        pos = pos + 1
        while true do
          val, pos = json.parse(str, pos, (decode_string_v1("f9",1670433090)))
          if val == nil then return arr, pos end
          if not delim_found then error((decode_string_v1("ca01b0e312e86bf4ad0e3b82a67e1c3e7af05d7509d0c0205c5263d86c1eaafd1140",923568053))) end
          arr[#arr + 1] = val
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("eb",4230269)))
        end
      elseif first == (decode_string_v1("65",1909066664)) then  -- Parse a string.
        return parse_str_val(str, pos + 1)
      elseif first == (decode_string_v1("64",1255548122)) or first:match((decode_string_v1("0692",883861334))) then  -- Parse a number.
        return parse_num_val(str, pos)
      elseif first == end_delim then  -- End of an object or array.
        return nil, pos + 1
      else  -- Parse true, false, or null.
        local literals = {[(decode_string_v1("2c52d8bd",1591570733))] = true, [(decode_string_v1("3978e0cb45",599261793))] = false, [(decode_string_v1("bd675c8f",224912227))] = json.null}
        for lit_str, lit_val in pairs(literals) do
          local lit_end = pos + #lit_str - 1
          if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
        end
        local pos_info_str = (decode_string_v1("87ae358d5f91bc6233",2116777499)) .. pos .. (decode_string_v1("1591",1273904925)) .. str:sub(pos, pos + 10)
        error((decode_string_v1("5cc73c53017f6571e0473fd4b88a4f7ca898a5562c2299781cd92a65aeeccce0",954792752)) .. pos_info_str)
      end
    end

    getgenv()[(decode_string_v1("d1358c9a7096bb6e943f1e12",1747776826))] = json
end
            -----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

local ErrorHandlerTing = function(err)
    return warn(err)
end

getgenv().ESP_TESTING = false
do
    local Camera = workspace:WaitForChild((decode_string_v1("9609ca2ce514",337860836)), 5)
    local Players = game[(decode_string_v1("e629280abee189f262da",1923699464))](game, (decode_string_v1("a71f2cea5a5028",1227822373)))
    local GUIService = game[(decode_string_v1("3ddc835d82266dc3e59d",548932461))](game, (decode_string_v1("4ce9ef8270ad97186e76",1978575405)))
    local LPlayer = Players[(decode_string_v1("2c2fa5d9f3c24da63241c7",1556280089))]
    local Mouse = LPlayer:GetMouse()
    
    getgenv()[(decode_string_v1("c4755f4e474d20ea1fd3",1090674950))] = type(getgenv()[(decode_string_v1("40f562f0fe0c6a787c33",1126681387))]) == (decode_string_v1("bda23b37589f7b",445680306)) and getgenv()[(decode_string_v1("8843f5b1eb4698e1baac",93730688))] or false;
    getgenv()[(decode_string_v1("284e9778eefb72c3014d9b",624529299))] = type(getgenv()[(decode_string_v1("bd48dfe6ebbef71db15c3a",1448134306))]) == (decode_string_v1("63a800d1f4",2066205488)) and getgenv()[(decode_string_v1("967dfded63a0884e8b6e3a",888618686))] or {};
    getgenv()[(decode_string_v1("304501bb56f48e977d",2037597609))] = type(getgenv()[(decode_string_v1("c58d800afb2fd2dfdc",1617666917))]) == (decode_string_v1("ab473a235f",757825414)) and getgenv()[(decode_string_v1("9481709e92c7fe270d",1309228565))] or {};
    getgenv()[(decode_string_v1("73e1908cb2567c61ac9d79ce205b",1189339703))] = type(getgenv()[(decode_string_v1("8bb4548dd1ab530d21accdab31c1",353889813))]) == (decode_string_v1("a4a1706392",1719248092)) and getgenv()[(decode_string_v1("6bb2359c28a5f5f10c960f5d9aaf",373593052))] or {};
    getgenv()[(decode_string_v1("6a684163e25cf98d6726784dd62d2eed210be0e303019f",1145647396))] = type(getgenv()[(decode_string_v1("89ad59fb0e6db549660683c78cfe9bf36074970f7a1107",1490719666))]) == (decode_string_v1("2c66e0812d",535836179)) and getgenv()[(decode_string_v1("8b9c952a62b2fb27194e94fe5fb4bb4856574073ccbdbc",1420822189))] or {};

    local PartNames = {
        [292439477] = {Root = (decode_string_v1("03f91a76d0",304272658)), Head = (decode_string_v1("5f6938e6",1774356212))},
        [3233893879] = {Root = (decode_string_v1("fc40c3be81",1896834690)), Head = (decode_string_v1("7fbaa0a4",902392050))}
    }
    
    if PartNames[game.PlaceId] ~= nil then
        getgenv()[(decode_string_v1("dcbf7c8154df63544a7c86be080cccb1d6c6de",1302626649))] = type(getgenv()[(decode_string_v1("0c14e3eae71eb11f9abde13f06c8b1a97babbe",1195543804))]) == (decode_string_v1("445f248347",1546687836)) and getgenv()[(decode_string_v1("b00cbf9852ba1684081ed7df5c1214b2dbc000",110218433))] or {}

        for _, V in pairs(getgc(true)) do
            local GBPCheck = type(V) == (decode_string_v1("ebfc24325b",1926958039)) and rawget(V, (decode_string_v1("0648dee4233986bb53a46826",1926023634))) and V or nil
            local GetCharCheck = type(V) == (decode_string_v1("13bc24e9a3",831766046)) and rawget(V, (decode_string_v1("5c4182cbf1cb4d220f1319c3",770141856))) and V or nil
            local BadBussinessTeamCheck = type(V) == (decode_string_v1("9cc7267c3f",1703932916)) and rawget(V, (decode_string_v1("5e7d878bf09fc49dfe44bbb3a0",1780363669))) and V or nil

            if GBPCheck then
                getgenv()[(decode_string_v1("2ae6949b849e8e9c9a00498ce3677bf8cf026c",2114769477))][(decode_string_v1("0e1c7c0730a07a4acfb2b762",2113708411))] = getgenv()[(decode_string_v1("d27ad4db10f718bb03fd79695abc3b54b15198",84326728))][(decode_string_v1("c21afe3ad861fa9df42a5433",318023910))] or GBPCheck.getbodyparts
            end

            if GetCharCheck then
                getgenv()[(decode_string_v1("c0aa56e8d3db1e2857eb7e12def96ad093e520",1984350565))][(decode_string_v1("5cab011ecfe306152fea78be",767585708))] = getgenv()[(decode_string_v1("0580b0585840badfbdb4d82f66471f0ee11c3f",459292093))][(decode_string_v1("0e6bfc1b6fea59811d766743",925587628))] or GetCharCheck
            end

            if BadBussinessTeamCheck then
                getgenv()[(decode_string_v1("6fd90654e6f546fb9d4b63959ecfb545e7e472",167136458))][(decode_string_v1("880e2a5b6fee232ba63ccd87fe",960287265))] = getgenv()[(decode_string_v1("c8ee43224735a4f9710eb186f05b99da5d748d",933721817))][(decode_string_v1("da28cbd55cc3ce38e1a4e2f33b",298947293))] or BadBussinessTeamCheck
            end
        end
    end

    local function GetPlrTeam(Plr)
        if typeof(Plr) == (decode_string_v1("58e7faf002c74ca2",643520707)) then
            if game.PlaceId == 3233893879 then
                if getgenv()[(decode_string_v1("899cd7516042a39c0882a68f72c65496fa462b",1479135269))][(decode_string_v1("8cf7347b56cb869a8e3a3377e7",1113158580))] ~= nil then
                    return getgenv()[(decode_string_v1("fcb4711d83e268762bc70f2e0abda8f8c353fb",1903613048))][(decode_string_v1("badf9f9d6cf8726211bf2fec55",2022524466))]:GetPlayerTeam(Plr)
                else
                    return Plr.Team
                end
            else
                return Plr.Team
            end
        end
    end

    local function GetChar_Ez(Plr)
        if typeof(Plr) == (decode_string_v1("5802210a52ca0be3",1957840645)) then
            if not PartNames[game.PlaceId] then
                if Plr:IsA((decode_string_v1("861f9b8d8d",600707232))) then
                    return Plr
                else
                    return Plr.Character
                end
            elseif game.PlaceId == 3233893879 then
                -- Bad business moment

                if type(getgenv()[(decode_string_v1("fabf605d24bf75dafb740c7463eedaccfd2a72",272447255))][(decode_string_v1("49f1dd153cff45a524a072ac",521765772))]) == (decode_string_v1("eb30549897",1952753313)) then
                    local PlrParts = getgenv()[(decode_string_v1("f694bd33f519d4d0270e1887b2b71f121d7a0f",784493630))][(decode_string_v1("c4a929f107324214d6b1d609",1053968812))]:GetCharacter(Plr)
                    if PlrParts ~= nil then
                        return PlrParts.Body
                    end
                end
            elseif game.PlaceId == 292439477 then
                -- Phantom Forces moment

                if type(getgenv()[(decode_string_v1("d820866f2a92937c44c10746cdb45f7bd7dae1",1813418619))][(decode_string_v1("83c48f0c5f82e27638c9b240",1516110296))]) == (decode_string_v1("15404e3c14e8daf7",1123541328)) then
                    local PlrParts = getgenv()[(decode_string_v1("571abe78b62565f988acb3d505008ab0341323",1667991988))][(decode_string_v1("26f1eef29a37a6508e36d34f",96107516))](Plr)
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

    getgenv()[(decode_string_v1("2e0b568faa8796d68e",66383030))].SETTINGS = {
        BOXES_ENABLED = false,
        TRACERS_ENABLED = false,
        TEAM_CHECK = false,
        AIMBOT_ENABLED = false,
        AIMBOT_TEAM_CHECK_ENABLED = false,
        ESP_COLOR = Color3.fromRGB(255, 255, 255)
    }

    getgenv()[(decode_string_v1("06d07c5b03d7477ced",1961891483))].Connect = function()
        getgenv()[(decode_string_v1("ffc0fb7c014bef93c5",1494339004))].UnLoad = function()
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("fed8e6bd6360321c15d8ab6194fec8100d51f4ad5fd145",352596096))]) do
                pcall(function()
                    CachedItem:Remove()
                    getgenv()[(decode_string_v1("a4db0947920d8ac769b6b22a9b52c7d3043ecaf57771c8",2053616907))][CacheName] = nil
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("58ca5f2b1f42bc648a0158",728509319))]) do
                if tostring(CacheName):find((decode_string_v1("32f7441bdd",669023045))) then
                    getgenv()[(decode_string_v1("13f8e68aeebc79395a4719",1410221447))][CacheName] = nil
                end
            end
        end

        getgenv()[(decode_string_v1("6a3e218ff2bf15974f",1875071891))].UnLoadType = function(TypeString)
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("b0cf1f7e35d4124bd4cf3ff75532368565092098bf8dd6",994167755))]) do
                pcall(function()
                    if tostring(CacheName):find(tostring(TypeString)) then
                        CachedItem:Remove()
                        getgenv()[(decode_string_v1("fe7bb401288765c48108ffc04b9fe85659b7753716e37c",354764273))][CacheName] = nil
                    end
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("1c6188c368df83b68dcc00",2120299652))]) do
                if tostring(CacheName):find(tostring(TypeString)) then
                    getgenv()[(decode_string_v1("bd5cab0d28ac0d67d292af",1451132574))][CacheName] = nil
                end
            end
        end
        
        getgenv()[(decode_string_v1("2e1aec3f089eef225a",599940969))].UnLoad()

        getgenv()[(decode_string_v1("1887db964bd56887d2",1066597129))].UpdateColor = function(Color)
            getgenv()[(decode_string_v1("420249e7aeaeb0a105",1131760302))].SETTINGS.ESP_COLOR = typeof(Color) == (decode_string_v1("784fcbb149ae",829317388)) and Color or Color3.fromRGB(255, 255, 255)
        end

        getgenv()[(decode_string_v1("5c3572801276b9f0a0",1770668565))].SetTeamCheck = function(Bool)
            getgenv()[(decode_string_v1("d3d7a54763973eab6b",1748358473))].SETTINGS.TEAM_CHECK = type(Bool) == (decode_string_v1("7d165796be8385",1977491021)) and Bool or false
        end
        
        getgenv()[(decode_string_v1("e4422099d64ec730ea",402543199))].SetBoxVisibility = function(Bool)
            getgenv()[(decode_string_v1("1ce4bcf8ed42566c49",1042094554))].SETTINGS.BOXES_ENABLED = type(Bool) == (decode_string_v1("f5f76192d73341",139087220)) and Bool or false
        end

        getgenv()[(decode_string_v1("58050dfbf666bd57fe",1865675471))].SetTracersVisibility = function(Bool)
            getgenv()[(decode_string_v1("3238be6d5c8dbdcb2f",89542431))].SETTINGS.TRACERS_ENABLED = type(Bool) == (decode_string_v1("5d9d8487ef9f37",766538007)) and Bool or false
        end

        getgenv()[(decode_string_v1("23bebb56cd7d737ff5",1385742546))].LoadTracers = function(Plr)
            if getgenv()[(decode_string_v1("8248bdeebaa5748bc33c2a",1016601742))][Plr.Name .. (decode_string_v1("a372c085ddc5ac41d14ea83e",1687591674))] == nil then
                if getgenv()[(decode_string_v1("2d7aacd73a35d75062f70932024175df188887e4dbd1c4",1579413924))][Plr.Name .. (decode_string_v1("e2e90a0497fcef7b4424572a",1004116046))] == nil then
                    getgenv()[(decode_string_v1("4495adc95d02a06ccada49bde7ac76bb6281a0e03d3be9",913897032))][Plr.Name .. (decode_string_v1("5c9be92a16bbe78b59a8c008",1162311444))] = Drawing.new((decode_string_v1("bb76316a",1225169014)))
                    getgenv()[(decode_string_v1("a04919d5d20959e4547cf64115d8a4f17109d1d994826c",1329811597))][Plr.Name .. (decode_string_v1("94d8f9d65a63a76f5ebd2f1d",1981483976))].Visible = false
                    getgenv()[(decode_string_v1("dc7eed9d12dc1aead80aab0b505551b19139ec1c274e6c",434724698))][Plr.Name .. (decode_string_v1("86f8e3237b661c8a36b59395",2106681435))].Thickness = 2;
                    getgenv()[(decode_string_v1("be871f3dae8bb42ff52d3e6b21e961de8bc7356d7063e9",1857205597))][Plr.Name .. (decode_string_v1("8a18e3644cf1dc37ad11b883",429916911))].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                end

                getgenv()[(decode_string_v1("66873eeaa780877da27ac7",776103788))][Plr.Name .. (decode_string_v1("5c826c180b81a33028bea44b",385224940))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("6a37c9661c7825544c1d25818c6af89fa423001b0c6f93",380565554))][Plr.Name .. (decode_string_v1("4069bd0ec8639b632e8c812f",1081696189))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("d4e2e57b65",1497438510)) and PartNames[game.PlaceId].Root or (decode_string_v1("2fd63f502db9431d7336001dbae34a58",1056707098)))
                            local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("dbaf474613",33425259)) and PartNames[game.PlaceId].Head or (decode_string_v1("3f4d7926",1181621520)))
                            
                            if RootCheck and Plrhead then
                                if getgenv()[(decode_string_v1("00718977b9e0aac9fa94f947c5ea27fa9641c39987c35f",1108392462))][Plr.Name .. (decode_string_v1("2a27fad05acc28e3c4615f9b",618677714))] then
                                    local Line = getgenv()[(decode_string_v1("a4a9f12401534100a29dab466d36442422923bc917f989",2082444555))][Plr.Name .. (decode_string_v1("5298d1c73b3ea5d53169437a",300701195))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                                    local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                                    Line.To = Vector2.new(LinePos.X, LinePos.Y)
                                    Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                                    Line.Color = typeof(getgenv()[(decode_string_v1("293118cd9bddaac989",1527930100))].SETTINGS.ESP_COLOR) == (decode_string_v1("b8d2e93e4574",422897781)) and getgenv()[(decode_string_v1("1c901a98dedc68a480",343498847))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("be33d943a3a27fff00",940186176))].SETTINGS.TEAM_CHECK then
                                        Line.Visible = false
                                    else
                                        Line.Visible = getgenv()[(decode_string_v1("8e552c0fa6daebeb74",829635918))].SETTINGS.TRACERS_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("4297d85f72f2254cb8bbf51819f259d613ef6fac5092da",1096619977))][Plr.Name .. (decode_string_v1("05aa95270aa79cd7f2f850d8",1646740850))] then
                                getgenv()[(decode_string_v1("2ac244ca181c2d1f54fb3a9e6bf0562250696ed1a6e800",2093894049))][Plr.Name .. (decode_string_v1("025de888cef7cacf607a606a",409303054))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("afc2d082d5274c42a3a8ba",1483389500))][Plr.Name .. (decode_string_v1("c2cddd3fd5998f0591a935a7",791459509))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("747ca3e42b3ce8a6b316133572b20f35b62932e73e4932",266293160))][Plr.Name .. (decode_string_v1("b9686bcbc8201ec8a5bfd371",569959264))] then
                            getgenv()[(decode_string_v1("b033b2891fc70b3b13f28d9cd04e7d9635b27690a3c90f",993790644))][Plr.Name .. (decode_string_v1("326209ce9d15b247e3a4257d",2038512683))]:Remove()
                            getgenv()[(decode_string_v1("a45e88677912b0e4856f72d989fc9fc72a7cc2f2954d4b",2069035723))][Plr.Name .. (decode_string_v1("60fbc26a6bb844275494f1d5",436385353))] = nil
                        end
                    end
                end
            end
        end
--GetPlayerTeam
        getgenv()[(decode_string_v1("e8786b84b8a4aca05b",3926425))].LoadBox = function(Plr)
            if getgenv()[(decode_string_v1("fa5def6bddeef342e5bea9",434965393))][Plr.Name .. (decode_string_v1("76b05b175bf757c73f97",1767474027))] == nil then
                if getgenv()[(decode_string_v1("28d4cca94cf6b2d9a6c2f57661fbea5b24df5d0b87fbbc",719828687))][Plr.Name .. (decode_string_v1("a60273321da3cfb964cc",929681690))] == nil then
                    getgenv()[(decode_string_v1("fe91e8c0d5ff4150d54918e95ab52630b1c4cddf0944da",1063786380))][Plr.Name .. (decode_string_v1("67ff8c4a35ee8324913d",472837383))] = Drawing.new((decode_string_v1("8e6a418cd74c",204696727)));
                    getgenv()[(decode_string_v1("8b49068ef65c98b9515b8170efd2a2974335126cb4c6bc",1449827162))][Plr.Name .. (decode_string_v1("2aa6272b71d7efc605d0",205641487))].Thickness = 2;
                    getgenv()[(decode_string_v1("0c7861636a1d75c2a10059a1b44296ca0f186d7e2e3807",1187507417))][Plr.Name .. (decode_string_v1("f806434dff33cc376cd4",340977213))].Filled = false;
                    getgenv()[(decode_string_v1("a4395326fe5dd9b0820f996ffade27c4ba07cf9c61aa97",691469284))][Plr.Name .. (decode_string_v1("027325d229cda617e482",408920589))].Visible = false;
                end

                getgenv()[(decode_string_v1("dcf2d1cd2c339bc1f17268",381384019))][Plr.Name .. (decode_string_v1("2f70d84274e25ca56518",1609390359))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("5ec590f8062089002891fa065ac99ee465a699a82ae0ca",278664450))][Plr.Name .. (decode_string_v1("3eea186db1ea1cf17b2d",1955749061))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("4b2603199d",2091987644)) and PartNames[game.PlaceId].Root or (decode_string_v1("7f2cf6634f19b90915c1ff92b72b036a",1115947405)))
                            
                            if RootCheck then
                                if getgenv()[(decode_string_v1("5a4fa17fdc720c934fb4908cec8ddd9a7cbe25cfd95f8f",1755371947))][Plr.Name .. (decode_string_v1("3053d7a0c816c1ffb123",324451555))] then
                                    local Inset = GUIService:GetGuiInset();
                                    local Box = getgenv()[(decode_string_v1("575dd8502ced371ac1c83f33806c1f3f2ce57fb5f412b6",564085985))][Plr.Name .. (decode_string_v1("965bd367de566ad5cf17",269818287))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                                    Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                                    Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                                    Box.Color = typeof(getgenv()[(decode_string_v1("bb74cb46ee920d8e01",1569478888))].SETTINGS.ESP_COLOR) == (decode_string_v1("6c4bd0201e43",963906711)) and getgenv()[(decode_string_v1("8a0b30a55643df5172",145371374))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("29926eb4125eb1efd6",1506921452))].SETTINGS.TEAM_CHECK then
                                        Box.Visible = false
                                    else
                                        Box.Visible = getgenv()[(decode_string_v1("0674ecb1d1905be171",660818183))].SETTINGS.BOXES_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("2d6e1844548d09b25f9fe76703d48823aa282ebff2c1bc",1554237563))][Plr.Name .. (decode_string_v1("76d44b7c7b20fc696d16",1761315772))] then
                                getgenv()[(decode_string_v1("28411ec3028d2529e83ffa807333df5a19ae9f54ff3c33",714639126))][Plr.Name .. (decode_string_v1("00b390b3aa9db4c57d3e",631157645))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("9efe43f5b91b3ea6261e36",350252066))][Plr.Name .. (decode_string_v1("b919a723f2462d73c77e",1728821973))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("7890c0d00be98fd34dc2d709b15aab9f5e0bab11bc8fc3",831837399))][Plr.Name .. (decode_string_v1("86ab0f9089860855210c",699454570))] then
                            getgenv()[(decode_string_v1("b8811e3d5eef957b4f7d19e92df24906ccb0404b6e554e",1274641313))][Plr.Name .. (decode_string_v1("b98ff0ba927275769256",1708753981))]:Remove()
                            getgenv()[(decode_string_v1("c844b4ece148043afcfcef8966fb8d1a0e6fd091cac191",310818378))][Plr.Name .. (decode_string_v1("8eb64ad386c6aee15daa",134332287))] = nil
                        end
                    end
                end
            end
        end

        getgenv()[(decode_string_v1("32293623dd3e3ea341",794193672))].LoadFov = function()
        end

        if getgenv().ESP_TESTING == true then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= LPlayer then
                    getgenv()[(decode_string_v1("f00d41c5011920fc86",1124263564))].LoadBox(Plr)
                    getgenv()[(decode_string_v1("be0b0948f0bd7b3885",940396054))].LoadTracers(Plr)
                end
            end
        end

        if getgenv()[(decode_string_v1("bb1a5a99d6ce95eb15",1541424683))].RemovedAndAdded == nil then
            getgenv()[(decode_string_v1("c5193c4d33feb1cadc",1610143854))].RemovedAndAdded = true

            Players.PlayerAdded:Connect(function(Plr)
                if getgenv()[(decode_string_v1("78ec2046ae8e12803d",1281997759))].SETTINGS.BOXES_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("bb4f8ce31b60621ef0",174136627))].LoadBox(Plr)
                end

                if getgenv()[(decode_string_v1("cca2f70e6652273e2c",1147107102))].SETTINGS.TRACERS_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("2965eff71cda303a96",1538991579))].LoadTracers(Plr)
                end
            end)
        end
    end
    
    getgenv()[(decode_string_v1("ad7f7039f5706b461f",1435036752))].Connect()

    getgenv()[(decode_string_v1("be8468a3b7868aa88f",938420027))].Aimbot = function()
        local Proxy = newproxy(true);
        local MetaTable = getmetatable(Proxy);

        local function AimAtPlayer(Camera, Mouse, target)
            local TARGETPOS = Camera:WorldToScreenPoint(target.Position)
            local GOTO = Vector2.new((TARGETPOS.X - Mouse.X) * .15, (TARGETPOS.Y - Mouse.Y) * .15)
            mousemoverel(GOTO.X, GOTO.Y) -- Quick math for the aim function lmao
        end

        getgenv()[(decode_string_v1("e0c7ba912e31b986f14d9e",891037697))].AimBot = nil

        MetaTable.Start = function()
            getgenv()[(decode_string_v1("af4e676de603089d36ec66",493452037))].AimBot = nil
            if getgenv()[(decode_string_v1("de6c5071aaf71507325de6",1832178936))].AimBot == nil then

                getgenv()[(decode_string_v1("c3184e60de8cd626af41f6",1729268416))].AimBot = function()
                    local LastDistance = 999999
                    for _, FPlayer in ipairs(Players:GetPlayers()) do
                        if FPlayer ~= LPlayer then

                            local TeamCheck = tostring(GetPlrTeam(FPlayer)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("3666f15fb49b085733",776544985))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
                            if not TeamCheck then
                                local FChar = GetChar_Ez(FPlayer)

                                if FChar then
                                    local HeadCheck = FChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("fb96eabe01",1835210885)) and PartNames[game.PlaceId].Head or (decode_string_v1("b0de44f2",1492290388)))

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
            getgenv()[(decode_string_v1("3614ef7b3461ddf1141dd8",1965544374))].AimBot = nil
        end

        MetaTable.TeamCheck = function(Bool)
            getgenv()[(decode_string_v1("c518c6fe61a2585eaf",1603757413))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
        end

        return MetaTable
    end

    if getgenv().ESP_TESTING == true then
        getgenv()[(decode_string_v1("ff9bb27162063d3015",1482470955))].SetTracersVisibility(true)
        getgenv()[(decode_string_v1("84a6d86dbc8b305893",977322915))].SetBoxVisibility(true)
        getgenv()[(decode_string_v1("d3630decd2f01d0b7d",1732777114))].SetTeamCheck(false)
        getgenv()[(decode_string_v1("297e26b7696e8fe1aa",1534619131))].UpdateColor(Color3.fromRGB(79, 22, 201))
    end

    if not getgenv()[(decode_string_v1("da85006305eb61a49a0a",1893733131))] then
        getgenv()[(decode_string_v1("9ec9f660a0146c5518d3",38983447))] = true
        local RunService = game[(decode_string_v1("752fe31b35c23941ca17",1495707926))](game, (decode_string_v1("5d78f9392e27e64d2380",350617139)))
        RunService.Heartbeat:Connect(function()
            for _, Function in pairs(getgenv()[(decode_string_v1("c63525e2dba7fb89bd8911",331893061))]) do
                if type(Function) == (decode_string_v1("95bb9a83d64089e0",2011432658)) then
                    xpcall(Function, ErrorHandlerTing)
                end
            end
        end)
    end
end
            --Timber. lua_compile_spot
            --PhantomForces. lua_compile_spot
            --BloxBurg. lua_compile_spot
            local VRService = game:GetService((decode_string_v1("0d56ea19e8ba2b321c",2116519657)))

do
    local function WorldZeroInit()
        local MarketService = game:GetService((decode_string_v1("5232445186858007624607534aa88f706a54",739885187)))
        local VRService = game:GetService((decode_string_v1("05179ce7578e48e1b0289a",1337656125)))
    
        local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
        if isSuccessful then
            if info.Creator.Name == (decode_string_v1("bc7ca5fa2ecff628c9f7baade9",366930318)) then
                --

                getgenv()[(decode_string_v1("e0c853ee66f2bc6880c719bbfe62f7c3e272aede59",896209185))] = false
            
                --------------------------------------------------------------------------------------------
        
                getgenv().UpdateLoop = type(getgenv().UpdateLoop) == (decode_string_v1("ae26d69e9e080f",1466187757)) and getgenv().UpdateLoop or false;
                getgenv().UpdateCache = type(getgenv().UpdateCache) == (decode_string_v1("a4a79f9820",1744335547)) and getgenv().UpdateCache or {};
                getgenv().MOB_ESP_OBJECTS = type(getgenv().MOB_ESP_OBJECTS) == (decode_string_v1("e4ec6790a6",1393300238)) and getgenv().MOB_ESP_OBJECTS or {};
                getgenv().MOB_ESP_CONNECTIONS = type(getgenv().MOB_ESP_CONNECTIONS) == (decode_string_v1("341327ff44",551889040)) and getgenv().MOB_ESP_CONNECTIONS or {};
        
                local GameConfigFile = GetGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("d14068d64c",1803617688)))
                Settings_Name = (decode_string_v1("0a28bcba9b167769f31e111935c5365b646a1b5314653ae6ac6366",2024468528))

                getgenv()[Settings_Name] = {
                    AutoAttackMobs = GameConfigFile.AutoAttackMobs or false,
                    AutoPickupCoins = GameConfigFile.AutoPickupCoins or false,
                    AntiIdle = GameConfigFile.AntiIdle or false,
                    MobESP = GameConfigFile.MobESP or false,
                    MobESPRenderDistance = GameConfigFile.MobESPRenderDistance or 250
                }
                
                Window = UILibrary.new((decode_string_v1("465c6e9236076f1ebd1766be7182bb4918639e987fe440",1314744322)), 5013109572)
    
                local TweenService = game:GetService((decode_string_v1("837abe1612f279fa738ba1d8",690637256)))
                local Player = game.Players.LocalPlayer
                local Character = nil
                local PlayerPosition = nil
                local PlayerLookVector = nil
                local RootPart = nil
                local ItemTable = nil
                
                local ActionsModule = require(game.ReplicatedStorage.Client.Actions);
                local CombatModule = require(game.ReplicatedStorage.Shared.Combat);
                local AnimationModule = require(game.ReplicatedStorage.Client.Animations);
        
                local MobsFolder = workspace:FindFirstChild((decode_string_v1("9bfb3b66",1392240110)))
                --[===[local PlayerWindow = Window:addPage("Player", 5012544693)]===]
                local AutoFarmWindow = Window:addPage((decode_string_v1("0b0d53318fadad51f8",1664562383)), 5012544693)
                local VisualsWindow = Window:addPage((decode_string_v1("229bf1db31fadc",1404307625)), 5012544693)
                local TeleportsWindow = Window:addPage((decode_string_v1("9c382b3e8bd2a995a8",1497916534)), 5012544693)
                local AutoFarmSection = AutoFarmWindow:addSection((decode_string_v1("adea4b67f874cb58",1949721432)), 5012544693)
                local VisualsSection = VisualsWindow:addSection((decode_string_v1("5d48fc33f484f03a",586645653)), 5012544693)

                local Camera = workspace.Camera
                local GUIService = game[(decode_string_v1("30d9891c4126e16c8466",1248084927))](game, (decode_string_v1("12cd4a54ee84f514c9ce",836871852)))
                
                local function GetNearMobs()

                    local Mobs = {}
                    local HitBoxSize = Vector3.new(25, 15, 25)

                    if RootPart then

                        local MobParams = OverlapParams.new()
                        MobParams.FilterDescendantsInstances = MobsFolder:GetChildren()
                        MobParams.CollisionGroup = (decode_string_v1("ac62225e34a873",1704319434))
                        MobParams.FilterType = Enum.RaycastFilterType.Whitelist

                        local FoundInBox = workspace:GetPartBoundsInBox(RootPart.CFrame, HitBoxSize, MobParams)

                        if FoundInBox ~= nil then
                            for _, Part in ipairs(FoundInBox) do
                                if Part:IsA((decode_string_v1("b5ad48aeeb531c9a",2059906470))) then
                                    if Part.Name == (decode_string_v1("28c355270ecd740f",2126625348)) then
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
                                Box = Drawing.new((decode_string_v1("1e4ce62a04cc",1171617006))),
                                ESPText = Drawing.new((decode_string_v1("2b605348",706783126)))
                            }
    
                            local Box =  getgenv().MOB_ESP_OBJECTS[Mob].Box
                            local ESPText =  getgenv().MOB_ESP_OBJECTS[Mob].ESPText
    
                            ESPText.Text = (decode_string_v1("",1661869940))
                            ESPText.Color = Color3.fromRGB(255, 255, 255);
                            ESPText.Size = 20.0
                            ESPText.Visible = false
                            ESPText.Outline = true
                            ESPText.Center = true
    
                            Box.Thickness = 2;
                            Box.Filled = false;
                            Box.Visible = false;
                            
                            getgenv().UpdateCache[Mob] = function()
                                local Collider = Mob:FindFirstChild((decode_string_v1("05a73912d949680b",1380526310)))

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
    
                                    ESPText.Text = string.format((decode_string_v1("8e8ba295b93726fd730fb63251ccccf6aff7a46e97df3028",1009710998)), Mob.Name, tostring( math.floor( (MobPos - PlayerPosition).Magnitude ) ) )
    
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
    
                                            local CreatureHealthFolder = Mob:FindFirstChild((decode_string_v1("4021b1e59212701cf8ad71e9c320afbb",510331008)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("0042c6e91c8e",1692235110)))
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
                            if typeof(V) == (decode_string_v1("194cfdce572616a547bc856b0343699294b5f8",96578798)) then
                                V:Disconnect()
                                getgenv().MOB_ESP_CONNECTIONS[I] = nil
                            end
                        end
                    end

                    ESP_META.StartConnections = function()
                        ESP_META.EndConnections()

                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("2a06570e1c473993",88974701))] = MobsFolder.ChildAdded:Connect(function(Mob)
                            ESP_META.AddEsp(Mob)
                        end)
        
                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("c8dff855348a2c908adc",1234356657))] = MobsFolder.ChildRemoved:Connect(function(Mob)
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
                
                getgenv()[(decode_string_v1("1099c4f85e9261b822c87d",112439171))][(decode_string_v1("b8ee57bf8385a265fd3db8a788a501c9",1269505006))] = function()
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

                getgenv().UpdateCache[(decode_string_v1("60a6ebd14339c0ec3123",261333993))] = function()
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
                
                VisualsSection:addSlider((decode_string_v1("1c1eae9dbff2ced4626747bdcc9a7d8eec7f8c",1041955168)), getgenv()[Settings_Name].MobESPRenderDistance, 250, 10000, function(NewValue)
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

                VisualsSection:addToggle((decode_string_v1("8af96f1069c68c",1023532810)), getgenv()[Settings_Name].MobESP, function(Bool)
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

                AutoFarmSection:addToggle((decode_string_v1("22370076cdfcfd83c2d931a9a6db8da63588cadf43c2880e641404bf12b9b6698184d4",1271078247)), getgenv()[Settings_Name].AutoAttackMobs, function(Bool)
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
                                            local CreatureHealthFolder = Creature:FindFirstChild((decode_string_v1("6feb034e8cff61178fa69efcfde60e6d",85641146)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("bf98b928b694",838520680)))
                                                
                                                if CreatureHealth then
                                                    
                                                    if CreatureHealth.Value > 0 then
                                                        local CreaturePos = Creature:GetPivot();
    
                                                        --local v14 = AnimationModule:GetAnims().Defender["Attack" .. tostring(AttackIndex)];
                                                        if not ActionsModule:IsBusy() then
                                                            TotalHits = TotalHits + 1
    
                                                            --ActionsModule:FireSkillUsedSignal("Primary");
                                                            --ActionsModule:FireCooldown("Primary");
                                                            ActionsModule:SetBusy((decode_string_v1("2821b781c2",821099896)));
                                                        
                                                            if Character then
                                                                PlayerPosition = Character.PrimaryPart.Position
                                                                PlayerLookVector = Character.PrimaryPart.CFrame.LookVector
                                                                RootPart = Character.PrimaryPart
                                                            end
    
                                                            RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
                                                            Camera.CFrame = CFrame.new(Camera.CFrame.p, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
    
                                                            CombatModule:AttackWithSkill((decode_string_v1("93aed9cad2d79b6f",684027211)) .. tostring(AttackIndex), PlayerPosition, CFrame.new(PlayerPosition, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z)).LookVector * 1.1 );
                                                            
                                                            AttackIndex = math.clamp(AttackIndex + 1, 1, 6)
    
                                                            if AttackIndex > 5 then
                                                                AttackIndex = 1
                                                            end

                                                            CreatureIndex = CreatureIndex + 1
    
                                                            task.wait(0.01)
                                                            ActionsModule:ReleaseBusy((decode_string_v1("6a68a62477",1776405541)));
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
                    if A:IsA((decode_string_v1("3581476cd4",1416298155))) then
                        if tostring(A) == (decode_string_v1("7ab3e98ef6",1437510969)) then
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
    
                AutoFarmSection:addToggle((decode_string_v1("e7d9f75b7dc2882e",156494599)), getgenv()[Settings_Name].AntiIdle, function(Bool)
                    getgenv()[Settings_Name].AntiIdle = Bool
                end)
    
                AutoFarmSection:addToggle((decode_string_v1("8ca4f7eea0da24ea81d0a967685cdbc4c27d6a1e5ecebe378500",791387414)), getgenv()[Settings_Name].AutoPickupCoins, function(Bool)
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
        
                if not getgenv()[(decode_string_v1("deecd6b822be148b1b91",22420343))] then
                    getgenv()[(decode_string_v1("368c6ddadcf863d7187b",1959402019))] = true
                    RunService.Heartbeat:Connect(function()
                        for _, Function in pairs(getgenv()[(decode_string_v1("136e7f1c381a29671b76d9",1388560601))]) do
                            if type(Function) == (decode_string_v1("85a7525c34aad5d2",1285105204)) then
                                pcall(Function)
                            end
                        end
                    end)
                end
        
                print((decode_string_v1("4846084ad014c34791eddcef4fb26dce9b2ca0f201",1902588655)))
                --
            end
        end    
    end
    
    WorldZeroInit()

    local _Players = game:GetService((decode_string_v1("e77d2fa85bf26c",1940681059)))
    local _Player = _Players.LocalPlayer
    
    local queue_on_teleport = type(syn) == (decode_string_v1("8b3461e6ba",1752817764)) and syn.queue_on_teleport or queue_on_teleport
    
    local RejoinCode = (decode_string_v1("38ad528769c44911d45dd7315840833b63853c75da5729df44f356780b826eacea909aa5786271dcc4e6a9bac047e8643bd2ae6caddd4523d90093f80b7f1b295912c6921c24388432e6b2d48171530ca5cca29a443bd5ca7900c360946bab94cc97f7449f5ea6a2fe13b312cd834da7d485baeb185aace30e0e6f2a12d18be2f9b24a4987273b96e75afd4a865ed0a15a37eb530d487dc9108b7966203569e952f69cca13ff3da88488a57a1b693d9935bca28fd4ff96824f17532f19dea5e27b883fdc4a789273972811ef7555debb4793196e29aac3d0747dee0badbd6370da632960def2c27e3d1f0b3c3308beee2fe72bea4748fc1f8682f12b01b3df1bff2cde348873ef7d4665afa0d0ff0dcc9f4f1326db033b333d2a5af6b70e2cdd8f930d7c1d97c12e052ab55be028eaf3ffe166ac0873d511dee61f85bfb2287a495c743cc992e49d75ccb4e94251520626e038170bb3e63bf38d79c5ad24083eb09006fca023fdbf6200cb0d7c33914d93dd995b8a2806779c7b21a33931dc970eece1d0323a17368242c95b7b76116ac0bef3ab9fe639fa6edd3cb86877d4da093506f3011b1a775ee09aae21046be80f3f89e48828b9e81e97ff8b7d67c897d375c238017fb704cf0207617cbc803feae7009886f81cf5f2ee6758ecc41854bc1e9cc3b89f3cc4f69b77e1a214fc5d405c7fe07dc5ba15ea6aa2e6234e9e5f1a654d4e2292abd4b81698a8b1c3eefe228797427b43c0caf1cf2e219e74fb7b7dd79007dcfa92cf43daf288d1394ec1d572ea07315496bf138df5ab255604967241120ce11bc8b9e44c690cc811e6c80020359bf4cfe8597128dbf98df0a26336ba6583c455c671cc76f142eaa02a7c512a76",1610491957))

    if not isfile((decode_string_v1("4b2a76ee1935fb5c34eff234f264d41e1ab7f7",565862832))) then
        writefile((decode_string_v1("4ec1995ad7bc16f6e37309e71a3814dd5b408e",1149741004)), tostring(RejoinCode))
    end
    
    queue_on_teleport((decode_string_v1("7782f0814ecd91599a0945e074e91b44f5a917067cb6bf6304767fbf5d8b293fbccaf39b28bd9c6b1e639cffae1094db251f35de523f981777ced858aa43421ece9e764a57e85223caad4f14aa72803755314b5a1c4c0526abc961677e197d046278177b27b5f4e5bcaba2e6",1814586540)))
end
            --DaHood. lua_compile_spot

			if getgenv()[(decode_string_v1("514b8edd929d8607719989f35e39cc4abb605644f8",559242846))] == true then
                do
    local Players = game[(decode_string_v1("da9fc469d0aba7f77056",898847540))](game, (decode_string_v1("675ce425ff5b9a",270173471)))
    local Player = Players[(decode_string_v1("c3cf7862f1d5965108d5d0",986474266))]
    local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("edc84a78b121",1197724764))], string[(decode_string_v1("2e1c8e9d27",1861982654))], string[(decode_string_v1("dc9dacda",994048089))], string[(decode_string_v1("c2af8aaa7b59",955554383))], string[(decode_string_v1("e6ac127cad",1791785705))]

    Window = UILibrary.new((decode_string_v1("ee1d8499d4c9b089aeec25901124b34df28addbccd8f",2104500771)), 5013109572)

    local VisualsWindow = Window:addPage((decode_string_v1("9ee15efc8e0be2",1613595561)), 5012544693)
    local VisualsSelection = VisualsWindow:addSection((decode_string_v1("c84e49b5",409385350)))

    local GameConfigFile = GetGameConfig(FixName(tostring((decode_string_v1("107d78ea35e70df165",334576690)))) .. (decode_string_v1("694bb12f60",1016163145)))
    Settings_Name = (decode_string_v1("36696812f2a7cbbb294ad3cb8421161b8fc9d3c3ab6757b6bc05",1972990579))

    getgenv()[Settings_Name] = {
        Teamcheck = GameConfigFile.Teamcheck or false,
        Boxes = GameConfigFile.Boxes or false,
        Tracers = GameConfigFile.Tracers or false,
        Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
    }

    VisualsSelection:addToggle((decode_string_v1("203d2092a0c33dcaca4da22ead",1229294329)), getgenv()[Settings_Name].Teamcheck, function(Bool)
        getgenv()[Settings_Name].Teamcheck = Bool
        getgenv()[(decode_string_v1("f0d51c18b72f55cb94",1126113181))].SetTeamCheck(Bool)
    end)

    VisualsSelection:addToggle((decode_string_v1("da635595706b47d44c",1183668841)), getgenv()[Settings_Name].Boxes, function(Bool)
        getgenv()[Settings_Name].Boxes = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("421c23440837fcf199",1139709699))].LoadBox(Plr)
                end
            end
            getgenv()[(decode_string_v1("01e0e1b2900fe4b226",1677080416))].SetBoxVisibility(true)
        else
            getgenv()[(decode_string_v1("92c84d4c0144ef2bdb",1027076280))].UnLoadType((decode_string_v1("100debe09bed50f2334b",738653654)))
            getgenv()[(decode_string_v1("58acb22d58fc17a792",206465432))].SetBoxVisibility(false)
        end
    end)

    VisualsSelection:addToggle((decode_string_v1("d7d57e8f077c13f954b370",542485589)), getgenv()[Settings_Name].Tracers, function(Bool)
        getgenv()[Settings_Name].Tracers = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("8af77e58521fcc17ce",1298075499))].LoadTracers(Plr)
                end
            end
            getgenv()[(decode_string_v1("2e6719291688c0d374",1818660930))].SetTracersVisibility(true)
        else
            getgenv()[(decode_string_v1("c5de39a4ba44b97d4d",1612462136))].UnLoadType((decode_string_v1("6706ac304870e25033b0c4b7",1441314647)))
            getgenv()[(decode_string_v1("26e80c1a02c522d0ec",442102378))].SetTracersVisibility(false)
        end
    end)

    local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color

    getgenv()[(decode_string_v1("6a5092dcad928403f1",1889548768))].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

    VisualsSelection:addColorPicker((decode_string_v1("36dcf4cd9198c64e6f",769992207)), Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
        local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)

        getgenv()[Settings_Name].Color.R = R
        getgenv()[Settings_Name].Color.G = G
        getgenv()[Settings_Name].Color.B = B

        getgenv()[(decode_string_v1("3244b50d5e394c095c",267767896))].UpdateColor(Color3.fromRGB(R, G, B))
    end)

    VisualsSelection:addButton((decode_string_v1("af0e403a679d8d8173c5",1466945830)), function(Bool)
        getgenv()[(decode_string_v1("ca06fb62e86676b031",859216761))].UnLoad()
    end)
end
			end

			if Window ~= nil and Settings_Name ~= nil then
				local MarketService = game:GetService((decode_string_v1("11dc52a5149f9552292b01860287bcf85061",1538293347)))
				SettingsPage = SettingsPage or Window:addPage((decode_string_v1("8e42eb80907e7df1",1832997427)), 5012544693)
				SettingsSection = SettingsSection or SettingsPage:addSection((decode_string_v1("22fd565258",1126406456)), 5012544693)
				SettingsSection:addButton((decode_string_v1("9bdce4cdd145aa83a85b67",1443247227)), function()
					local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
					if isSuccessful then
						if tostring(info.Creator.Name) == (decode_string_v1("b93b0e0e8c5f41675e8527dbef",521416038)) then
							SaveGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("2101ca0faa",442996143)), getgenv()[Settings_Name])
                        elseif getgenv()[(decode_string_v1("70c9287f22428e247c37749a8002fa4ccad5b17918",1233443812))] == true then
							SaveGameConfig(FixName(tostring((decode_string_v1("408110c8f1d38d58f7",1120864241)))) .. (decode_string_v1("4205f97d3f",1645865812)), getgenv()[Settings_Name])
                        else
							SaveGameConfig(FixName(tostring(info.Name)) .. (decode_string_v1("819d84e3fa",774745893)), getgenv()[Settings_Name])
						end
					end
				end)
				SettingsSection:addKeybind((decode_string_v1("04acd1ec83dba614d435e48f5d97",156906355)), Enum.KeyCode.Home, function()
					Window:toggle()
				end, function()
				end)
			end
		else
			return sendError(serverData, clientData)
		end
	end
end, function(err)
	return warn(err .. (decode_string_v1("6a",1683108585)) .. debug.traceback())
end)