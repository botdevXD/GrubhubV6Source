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
		getgenv().Key = (decode_string_v1("0f163dc38aa3fd4e452a289f5b50ddfdfcddc74890ede5f812",502249522));
		getgenv().DiscordWebhook = (decode_string_v1("031d0bdc",1957995714));
		getgenv().WebhookEnabled = false;
		getgenv().GubVersion = (decode_string_v1("88fda8",1842183525));

		local CLIENT_DEOBF_OFFSET = 3;
		local SERVER_DEOBF_OFFSET = 1;
		local StartTimer = os.time()
		local UILibrary = loadstring(game:HttpGet((decode_string_v1("3f70a6c330d935c76d4c4e271728b3061477ae46fabec6437ac700318da0dbb7632d127678ee5f5858fd9d31ad13f7f47e7533da57a6338384a9a6b77c83bfcea09206e5634edcb20d9b63ee21",651274271)), true))()
		local library = loadstring(game:HttpGet((decode_string_v1("7fb3e6fecac953fa688a7a678416aa93405961d99e6fe987d64f5cfbc876dcd10a5a18d359f2681a45e3143fc51cea09010d248b8c2ef65bf87a796a9db75035c97e735ead7a21853411389bcb323c8db04c6ae1c74aeaff9c0f763b2aeb05ed5806",271995648))))()
		library:Notification((decode_string_v1("603ccd51f69678",2075044485)), (decode_string_v1("c58acc5c473272351ad70e2f00f4e042326fb7421957d0c13026bfe39f78a2734876735b83bb17751f1e22b378ed",1800390011)), 10, Color3.fromRGB(255, 255, 255))

		if not isfolder((decode_string_v1("77c5f2e5dd6134382f84dbf1993f",1603808554))) then
			makefolder((decode_string_v1("b6bc25b8900a05a38123f1843132",325064148)))
		end

		for i, v in pairs(game:GetService((decode_string_v1("f68a3a6dfd6101",782463150))):GetDescendants()) do
			pcall(function()
				if v.Name == (decode_string_v1("422bb67e",1175011660)) then
					v.Parent.Parent:Destroy()
				end
			end)
		end

		local function identify()
			local Executor = string.lower(identifyexecutor())
			local ExecutorTable = nil
			if string.find(Executor, (decode_string_v1("0e50f65c99f592",1282665269))) then
				ExecutorTable = {
					(decode_string_v1("a7f10cc48e1066",1670778893)),
					syn.request
				}
			end
			if string.find(Executor, (decode_string_v1("aee1a437",1126560260))) then
				ExecutorTable = {
					(decode_string_v1("d0cd33fe",92589727)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("bd4eccc6",269219857))) then
				ExecutorTable = {
					(decode_string_v1("82528aecd7ea",1552210776)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("50f39fed96e9",1972161058))) then
				ExecutorTable = {
					(decode_string_v1("f5139345592da829730eaf",1399094936)),
					http.request
				}
			end
			if string.find(Executor, (decode_string_v1("2ad557",818899529))) then
				ExecutorTable = {
					(decode_string_v1("8049cf5c874c9bf7",1224351598)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("873fd0",1265677962))) then
				ExecutorTable = {
					(decode_string_v1("27668f6f7767046f2433a1b0",1861032897)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("1f6aac44",2002659059))) then
				ExecutorTable = {
					(decode_string_v1("9b6106798701cb639893",1435010359)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("29c8dd53",1563248025))) then
				ExecutorTable = {
					(decode_string_v1("3d6340fddc38b4",184706500)),
					httprequest
				}
			end
			if string.find(Executor, (decode_string_v1("943cdb707699e08d",212962354))) then
				ExecutorTable = {
					(decode_string_v1("29c7372eaa912ce5",1516968234)),
					http_request
				}
			end
			if getgenv().WRD_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("65a0fe435f2d493a",1160094807)),
					http_request
				}
			end
			if getgenv().unlock_module ~= nil and getgenv().setscriptable ~= nil and getgenv().import ~= nil then
				ExecutorTable = {
					(decode_string_v1("2815bb6103ed6a82c66db98df6c236",821796067)),
					http_request
				}
			end
			if getgenv().OXYGEN_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("fccb49ae0ca960c5",830961549)),
					http_request
				}
			end
			if ExecutorTable == nil then
				library:Notification((decode_string_v1("ab5353a3957fcc69c4dd684b64",1686099066)), (decode_string_v1("364bf51a7850e4fa07e1632571361310098466269d5215204a0fde304d1b81b65add955abb1e5b389c9675f9545d836c25f4d900a4984a618625e45241db02aba1f78697bd0e37cc",1985436790)), 10, Color3.fromRGB(255, 255, 255))
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
				library:Notification((decode_string_v1("6fcee402b1e0b2e1dd710a12e403",56437102)), (decode_string_v1("e7d378e5474b6de4513c3848d0fcb15848b9c6cb98b832b92a67c2a9140b8386ca67c6b77e62abcbac1dc17b9429189a27bb88dc1f3944f7d2936b11ad13f33f59985b3e7e",1614296805)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("44aee1756ad18712eb1cac880857dbb4855c372c434533f00f52f58e12bb7005d7d6ac528f99ac3180218c62364e10fb",677876785)) then
				library:Notification((decode_string_v1("72274cf561a478690fb1531d9730",326668971)), (decode_string_v1("82857f826a44321241108a885c342493bfda2bf93b1b361433c2ce777768a054eeb842e87c431ded86624ed3a0980c35e70b5a29d679f778c5",774049291)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("b413ec844f2554137bc5d96fcd0d131003f51c3eb6cfb48007",1906048115)) then
				library:Notification((decode_string_v1("d5c29b5db42c5386d55c73a341b9",1722327076)), (decode_string_v1("f1a20b92c5e94e341a33cac17b11c24c333d5462b2cf49f2b5d23445d2d2086136f71a03b92ba65fbc45c7c396edcde62d586993d1fe6add442947a1ff",484760781)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("6d69a20b825f53874ba1bf53ec4133ad6fbde280",510292188)) then
				library:Notification((decode_string_v1("25681906525760fcce45b452ca3c3262",248784149)), (decode_string_v1("8442efdffe72c2fb3eeeffa4b7ada5694aed964c39cafc1433c261fc892085ce2b83576568c6404b4284e8903381ff18f9a9de1c1a2832149d659ce6ba37d844d44bf705fa",787661122)), 15, Color3.fromRGB(255, 255, 255))
			else
				library:Notification((decode_string_v1("b4239e5c03129ed7f9f6120d1b3d",1239928339)), (decode_string_v1("7ccf5ff6dcd9c59e98e546d8f101389e4437ce6ebe2e34cf01ab4caeecc6bcbc53730029dc45c5db1c84f72a9cb2866846c4a60ff76a99be93513904103e7c223b88c9183fff12c6728d5126098c0c1b51c547c0e8b328ed4ea5b4d962f3c5f7f085ddc4df3f45938d9bb9fecab6c72e20fa576cc19c4853ca",1984662455)), 15, Color3.fromRGB(255, 255, 255))
				setclipboard((decode_string_v1("ff0577c5cdd87d07e7c303a4233717216d2174a8ca96d474b8d295b886f8b39aa187a8474a5fb9a47191490b18a13be9f38f811ee5767f929fbc18bfaf34",495422699)) .. clientData .. (decode_string_v1("f8ff36f7a997e383747885df",464433686)) .. exploit .. (decode_string_v1("b7f0d87420170a8d",1120090322)) .. Key .. (decode_string_v1("77e0233ce6af6fa7cc987172c5996170",602050530)) .. serverData .. (decode_string_v1("77e2b9a756038c10501fd3f5b590291740",2136601165)) .. tostring(newtime))
			end

			specialisedrequest({
				Url = (decode_string_v1("8f024f7d27c0fa3dcc4a709155cb5ed1280eb5f341f72c53636d454fca",274200220)),
				Method = (decode_string_v1("878dbeac",385652715)),
				Headers = {
					[(decode_string_v1("33185994bf12b9abd3dd38dc",1599453309))] = (decode_string_v1("685813416bc97c4e6567ebf1198abe79",2122457224));
					[(decode_string_v1("d57af11d0da6",548203303))] = (decode_string_v1("6f8d800ecf164d9b29e69685376c84403c27cd",1882487844));
				},
				Body = game:GetService((decode_string_v1("3f00706ddc41a353a11fc0",729052710))):JSONEncode({
					[(decode_string_v1("924aec",979969264))] = (decode_string_v1("d70e981b113d94d9aedd76a927d8",6335979));
					[(decode_string_v1("84fb748b",354268137))] = {
						[(decode_string_v1("4e963430",954437210))] = (decode_string_v1("888e95acbeb56b5aa3d1",1298759498))
					};
					[(decode_string_v1("91bf80bf4f",1796885191))] = (decode_string_v1("112f449af13cd6f71610232e1fa9c07486a118b8a19cece90ae8f7a63b00a3ac713aed8a",540877995));
				})
			})
		end

		local random = Random.new()
		local letters = {(decode_string_v1("9c",899910037)),(decode_string_v1("c5",966749598)),(decode_string_v1("e9",1493568062)),(decode_string_v1("5b",642439357)),(decode_string_v1("e5",1606596582)),(decode_string_v1("75",1015132528)),(decode_string_v1("fc",1214165914)),(decode_string_v1("7f",1260318938)),(decode_string_v1("09",533360196)),(decode_string_v1("f9",205333590)),(decode_string_v1("45",513718159)),(decode_string_v1("63",253980668)),(decode_string_v1("2d",1612817578)),(decode_string_v1("8a",467854965)),(decode_string_v1("63",454446440)),(decode_string_v1("e7",2147219908)),(decode_string_v1("92",1801770402)),(decode_string_v1("f2",1703292616)),(decode_string_v1("d5",1397674872)),(decode_string_v1("13",47193619)),(decode_string_v1("3c",2107518713)),(decode_string_v1("91",1188679808)),(decode_string_v1("28",1881570334)),(decode_string_v1("2f",31192337)),(decode_string_v1("bc",357117001)),(decode_string_v1("81",1318546846))}

		function getRandomLetter()
			return letters[random:NextInteger(1, #letters)]
		end
		local function FixName(GameName)
			return GameName:gsub((decode_string_v1("1eb3a4d35f93669e129874f1",2022600686)), (decode_string_v1("",414662277)))
		end

		local function GetGameConfig(GameName)
			local Table = {}
			if isfolder((decode_string_v1("484b2cc5f852cffb8411364527aa",745958756))) then
				if isfile((decode_string_v1("b187c57ae10107570c313151d6fdd3",1745252190)) .. tostring(GameName)) then
					local HttpServices = game:GetService((decode_string_v1("a0fda43b2c54506d0fb03f",538491420)))
					local ConfigContents = readfile((decode_string_v1("045d546a10b4a5896b7d0c3f77dba0",828602963)) .. tostring(GameName))
					local DecodedSuccess, DecodedContents = pcall(HttpServices.JSONDecode, HttpServices, tostring(ConfigContents))
					if DecodedSuccess then
						Table = DecodedContents
					end
				end
			end
			return Table
		end

		local function SaveGameConfig(GameName, ConfigTable)
			if isfolder((decode_string_v1("1899e26d8a7f0a8e40059c229605",1297971115))) then
				local HttpServices = game:GetService((decode_string_v1("df7e86b8dd47ef870ffead",2115991834)))
				local EncodedSuccess, EncodedContents = pcall(HttpServices.JSONEncode, HttpServices, ConfigTable)
				if EncodedSuccess then
					writefile((decode_string_v1("efa03217e4e9a6d860622a50739221",5832806)) .. tostring(GameName), tostring(EncodedContents))
					return true
				end
			end
			return false
		end

		function getRandomString(length, includeCapitals)
			local length = length or 10
			local str = (decode_string_v1("",1707373228))
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
				return (str_gsub(s, (decode_string_v1("81",255591898)), function(c)
					return str_fmt((decode_string_v1("ac8a4e53",127202781)), str_byte(c))
				end))
			end

			local function num2s(l, n)
				local s = (decode_string_v1("",93823886))
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
				msg = msg .. (decode_string_v1("97",781551435)) .. str_rep((decode_string_v1("18",1701073597)), extra) .. len
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

		if getgenv().Key == (decode_string_v1("",364423090)) or nil then
			Key = (decode_string_v1("ba197813",1577300938))
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
			local charset = (decode_string_v1("8e035931603666c6372d27d6465c2f0ec33fcd24ece1c01aa35b2a1fbb2194795124ed2c5512aa8d36182a028fd94ac2756e1d5cdf2936ad7e9c3a5d0a",633930057))
			if type(v1) == (decode_string_v1("4cf8d14737d0",633992425)) and type(v2) == (decode_string_v1("f01416373d87",878334249)) then
				local length1, length2, chars_1, chars_2 = #v1, #v2, {}, {}
				v1:gsub((decode_string_v1("dd",1004069935)), function(s)
					chars_1[#chars_1 + 1] = s
				end)
				v2:gsub((decode_string_v1("ea",576460287)), function(s)
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
			local Pos, Finished, charCodes, Key, arglen = 1, (decode_string_v1("",37018863)), {}, 447 - #((decode_string_v1("e0d6905a46adb8afeeec0ad73d716c583d1ede67c4080f42954557e9005e5c4dc2",168155597))), 35 - #((decode_string_v1("ce54ac",599112265)))
			local schar = Finished.char
			local Keys = {
				233 + #((decode_string_v1("4a4606",1085478863))),
				781 - #((decode_string_v1("d42834f1",1104844347))),
				785 - #((decode_string_v1("a68b7906d5a0",688704691))),
				876 - #((decode_string_v1("d4f793dd684303",1107766834))),
				350 - #((decode_string_v1("13729019b4652a32393b95e3b42cb77d3da58e",853466079))),
				23 + #((decode_string_v1("4f88e0232fe80b27b4361cb93d9e7a3a3a5ec391203dcd74b8f8f910e798bec9de",655888423))),
				111 + #((decode_string_v1("1f15f1bc2b49e45457bc141a3d71df354cb0423d938f051b502bd1d03fcd9b508f",224253126))),
				440 + #((decode_string_v1("2621c67222704f052dc1953d",409583026))),
				341 + #((decode_string_v1("d512cd73",1484191088))),
				322 - #((decode_string_v1("e7eb6282d80b40d40c4312a25be30c5c4220167aaeeaed3cdea9cb4009c89e4dd613ec4f0e27584662b3501671e2eeab81104b555042c90bb7bec28ee53ee08927eb5c591763d77e582092637515f637d23c4d75a3fa20a76ff0961ac41ed5d6efa9ebe3b195edd015655726",24077381))),
				117 + #((decode_string_v1("807b12759c5d8e442e71ac56",1131507143))),
				196 + #((decode_string_v1("5525c60984d9361dc131923de999d82bef2bca",850902686))),
				272 - #((decode_string_v1("3e4179ffd22f11406e49",1285904318))),
				653 - #((decode_string_v1("b170511b56c733fa7e565194",1741167598))),
				510 + #((decode_string_v1("e2b1b8010710",1823288986))),
				61 + #((decode_string_v1("5e4f2128d409ba9dac33",1867253047))),
				61 - #((decode_string_v1("f4fd2e6072d5606751",987782286))),
				283 - #((decode_string_v1("a6fad2c2",923829382))),
				568 - #((decode_string_v1("20785721f975",1967826665))),
				933 + #((decode_string_v1("1ab4c357587f6c5bd09f91aa7099",270522480))),
				642 - #((decode_string_v1("9c53cf38a78569dc2977",531895345))),
				651 - #((decode_string_v1("f70e5a5531ea34c5132b",557234495))),
				875 - #((decode_string_v1("2f91f4bd",534398275))),
				882 - #((decode_string_v1("0b0a70532b66",676917810))),
				333 - #((decode_string_v1("2a437aa2bbf34ef63423dafe503d5be73c59",238684043))),
				245 - #((decode_string_v1("14c84443b5d9",950890677))),
				988 - #((decode_string_v1("18a253ab8c07fd2d43",959605704))),
				118 + #((decode_string_v1("e3ef9dda917a8b55ace3d19d83bdc2a79aafe0",1813517943))),
				623 + #((decode_string_v1("e522fd452f6f",1400072254))),
				629 + #((decode_string_v1("e9dcc1",1917878593))),
				689 - #((decode_string_v1("f875feedee13ec82b7a2",1017435889))),
				828 - #((decode_string_v1("be2096d21bdbd0496043e449",1179183496))),
				76 - #((decode_string_v1("7e73a61e788f6a072b7e9915",724822479))),
				71 - #((decode_string_v1("1c5a425d4541",1072021578))),
				85 - #((decode_string_v1("e33ac5bdd33740799efff18c11fa78ea331bf1",1832573262))),
				79 - #((decode_string_v1("ac94684555bd03233df1b255",1959808746))),
				56 + #((decode_string_v1("a5c31f3067d5441844dc80e8",64685808)))
			}
			getfenv(0)
			Finished.split((decode_string_v1("",1851100264)), (decode_string_v1("",1987711204)))
			while Pos <= 132 - #((decode_string_v1("abcfa226c02eb2409694",1448311906))) do
				charCodes[Pos] = schar(Pos)
				Pos = Pos + 1
			end
			Pos = 1
			local Confused = (decode_string_v1("",12317400))
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
			712 - #((decode_string_v1("144a822f",149991006))),
			1305 + #((decode_string_v1("cb5f4bb9e74f43b92863",434263773))),
			1265 - #((decode_string_v1("7f00e61c151611efb6aeba16776c26eb836aeeba1f1e1afc528948c3f8b18391c8",1784445563))),
			1343 + #((decode_string_v1("ace82aa31274e932f8deb2",1987433366))),
			784 + #((decode_string_v1("df98c628",1516437572))),
			553 - #((decode_string_v1("e0aa6e3a0d380a",1450623062))),
			594 + #((decode_string_v1("f47d3a3baab336ca47e77946",2140775009))),
			929 + #((decode_string_v1("b9940024af6868dcafe0211bfca6f47b95e6be",1317039088))),
			822 + #((decode_string_v1("f1946f7795fb41234b07",1540295439))),
			735 - #((decode_string_v1("61dbdfbdddb29d0c7a85da97ad0bf4c0219dd7",1833741868))),
			649 + #((decode_string_v1("2668f6e9",411244706))),
			726 - #((decode_string_v1("f35609db",1866844506))),
			781 + #((decode_string_v1("ab22fa43c752ebef6be8",1419417522))),
			1150 + #((decode_string_v1("b8478d",1868517350))),
			1059 - #((decode_string_v1("ccb6bdbc2e75ed84",1419135459))),
			607 - #((decode_string_v1("adb0ebb748b46ad1feadc549e524d8483f2db5",658504482))),
			574 + #((decode_string_v1("ad796432400424798529a2bbd560cb81f04072",1969613708))),
			768 + #((decode_string_v1("ffb7c12c4f2b0b93dea9263e2c8a2ebdbd64337a3edc567b261f22bc0256080e22",2111597112))),
			1103 + #((decode_string_v1("2068e3e6696b",849263505))),
			1437 - #((decode_string_v1("df6e2c60",167499949))),
			1192 - #((decode_string_v1("7bf87412cbbe9488",1286256439))),
			1136 - #((decode_string_v1("6a7e12ec",1060404121))),
			1461 - #((decode_string_v1("0082ec3a35b537c100528185106e8b8c38ba4fb6b06151f83fca1be0c22fa28319",477520378))),
			1341 + #((decode_string_v1("1caba9ea7792",1075149878))),
			813 + #((decode_string_v1("677e20fa8df2",160761460))),
			710 + #((decode_string_v1("b679f4885799",1029904007))),
			1494 - #((decode_string_v1("b969bbd05b96",1707726184))),
			729 - #((decode_string_v1("4867d671d08082a8fc456ad6bca51c2b9f1549813306e45ea4f719e7026662ba3fd381161b2ba1286b44e62db15618e4efcf6e6c2f067da5c03409c75b4b431022636586f6d55c349f1076f090173972079e7db1d806a2f44bcf31b8356d4cf8e6b2d2c872ca484c7b23ebaa",526993344))),
			1147 - #((decode_string_v1("a0aeeaf9",85839898))),
			1111 + #((decode_string_v1("92cba0f0ecffd74f442a",984530944))),
			1205 - #((decode_string_v1("e53c69f1ae23",1385725062))),
			1349 + #((decode_string_v1("53f2edf1f1d824a9a8eb",318147092))),
			54 + #((decode_string_v1("461765c09083ebb9a4d8",672254368))),
			61 + #((decode_string_v1("5432cdec",1681612880))),
			-42 + #((decode_string_v1("e72f83deb18545c05fb7e4a4313a47df9f4a5ad860c70951da03d7d43fe77c41e8982d84ba6c35ce0a6d13d32eaed1e6f9916d3fb2550b0c5c41bb188f3296e06dd83f9ff8b7ab0c54cfe4b0a8f452310712f55d6a0b1f79c656054a46ef1e4a3883bed06c0600706e35b2b2",365170443))),
			71 - #((decode_string_v1("bb7ca7cd",472573003))),
			58 + #((decode_string_v1("f4c343557e4e8be5e3b7",565972170)))
		}

		local whitelisted = false
		local basec = (decode_string_v1("82779ad1068b461f14aaaecffeda7b047fd8bd480a6f011b900ec5601997aa04ddfd24ccc5a4aef6f9b43a77b4d3f4b4ec1b8cc1c79f1a2e974bfb521058a885",602242848))

		local function base_encode(data)
			local b = basec
			return ((data:gsub((decode_string_v1("da",524816893)), function(x)
				local r, b = (decode_string_v1("",939773201)), x:byte()
				for i = 8, 1, -1 do
					r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and (decode_string_v1("c4",725275532)) or (decode_string_v1("c7",401832209)))
				end
				return r;
			end) .. (decode_string_v1("a7a17217",296109290))):gsub((decode_string_v1("f33ed1ebe42f0173adf65426fd6e2cf4",1712728582)), function(x)
				if (#x < 6) then
					return (decode_string_v1("",195227831))
				end
				local c = 0
				for i = 1, 6 do
					c = c + (x:sub(i, i) == (decode_string_v1("e7",575620149)) and 2 ^ (6 - i) or 0)
				end
				return b:sub(c + 1, c + 1)
			end) .. ({
				(decode_string_v1("",1063307448)),
				(decode_string_v1("0c58",870476944)),
				(decode_string_v1("25",484734226))
			})[#data % 3 + 1])
		end

		local function base_decode(data)
			local b = basec
			data = string.gsub(data, (decode_string_v1("b44b",131715142)) .. b .. (decode_string_v1("3fe2",1662385130)), (decode_string_v1("",886605662)))
			return (data:gsub((decode_string_v1("8d",1175455316)), function(x)
				if (x == (decode_string_v1("f0",1846253679))) then
					return (decode_string_v1("",946081545))
				end
				local r, f = (decode_string_v1("",2105370984)), (b:find(x) - 1)
				for i = 6, 1, -1 do
					r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and (decode_string_v1("86",1243930521)) or (decode_string_v1("87",1842410837)))
				end
				return r;
			end):gsub((decode_string_v1("66b23640b289980244ad9727de5f0e652f75761e93c9",123402826)), function(x)
				if (#x ~= 8) then
					return (decode_string_v1("",772609065))
				end
				local c = 0
				for i = 1, 8 do
					c = c + (x:sub(i, i) == (decode_string_v1("1e",1903816825)) and 2 ^ (8 - i) or 0)
				end
				return string.char(c)
			end))
		end

		if not getgenv()[(decode_string_v1("a5da4c",1714945585))] then
			getgenv()[(decode_string_v1("e00723",136028010))] = {}
		end

		local StringTable = getfenv(pcall)[(decode_string_v1("e3c1fa5f1a42",536115768))]

		-- More Security updates.

		local StringMT = getmetatable(newproxy(true))

		StringMT.char = StringTable.char

		Backup = getgenv()[(decode_string_v1("2a79d396f5da8c",816097840))] or StringMT
		
		getgenv()[(decode_string_v1("d580af194e875c",51450040))] = getgenv()[(decode_string_v1("3677d08dcc5d00",895344190))] or StringMT

		local function Convert_v1(Offset, Text)
			local Result = (decode_string_v1("",1429379252))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("26769c",1227690928))](Text, Index, Index)
				local Byte = char[(decode_string_v1("c2bde54e",447367687))](char)
				local MMath = (Byte + Index + Offset + 3)
				local letter = Backup[(decode_string_v1("c48e74c0",1133879530))](MMath)
				Result = Result .. letter
			end
			return Result
		end

		local function UnConvert_v1(Offset, Text)
			local Result = (decode_string_v1("",62397785))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("f7caf7",149271196))](Text, Index, Index)
				local Byte = char[(decode_string_v1("9116d349",1852216481))](char)
				local MMath = (Byte - Index - Offset - 3)
				local letter = Backup[(decode_string_v1("ab835b5c",471737017))](MMath)
				Result = Result .. letter
			end
			return Result
		end
        
		local function GetReturnedData()
			local D_ATE = os.date()
			local T_ime = os.time()
			local HTTP_SERVICE = game:GetService((decode_string_v1("7f315eade3735b7a0fa8aa",1118616637)))
			local OffsetTable = {}
			local DataTable = {
				Url = (decode_string_v1("df8f8bb2bfadee544658a7df5be2ca84faf8d4ebe77650d8976ad81d42308724f5e230739a8a9e52d187dc5cbbc2ff1a7fd50c0c634d63b15244",947184891)),
				Method = (decode_string_v1("d8ddc6",633138066)),
				Headers = {
					[(decode_string_v1("33b06e",482458660))] = Key;
					[(decode_string_v1("2e55fbadfa48fe1d",1155732172))] = tostring(game.Players.LocalPlayer.Name);
					[(decode_string_v1("c37cd99f69",1971031247))] = tostring(game.Players.LocalPlayer.DisplayName);
					[(decode_string_v1("cd18cc4801bcdfe1",1446182020))] = exploit;
				}
			}
			OffsetTable[(decode_string_v1("92850c052c21f61c37",1995017860))] = base_encode(tostring(D_ATE))
			OffsetTable[(decode_string_v1("88328acab72772d519",1198485201))] = base_encode(tostring(T_ime))
			DataTable.Headers[(decode_string_v1("8c56afa2",149844034))] = tostring(base_encode(HTTP_SERVICE:JSONEncode(OffsetTable)));
			local returnedData = specialisedrequest(DataTable)
			return returnedData, tostring(D_ATE), tostring(T_ime)
		end

		local returnedData, ShouldReturn1, ShouldReturn2 = GetReturnedData()
		returnedData = returnedData.Body

		if type(returnedData) ~= (decode_string_v1("bbb5e64ccb1a",1437803091)) then
			repeat
				returnedData = GetReturnedData()
				returnedData = returnedData.Body
				wait(0.0003)
			until type(returnedData) == (decode_string_v1("7631d957e580",1338753461))
		end

		local ReturnedArgs = string.split(tostring(returnedData), (decode_string_v1("72357599bd90179ab8ef1ac364",124550652)))
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
			game.Players.LocalPlayers:Kick((decode_string_v1("a19c170d49a3336e4dabd4fe0a9c1e79935c44e85182f07941dafb59219bc7e80df37fdd9a4d953bc0ac5915d3ee9f24f29190554c05d0085dedc19fd5f6ae07a63cfa6c11",179755541)))
		end

		local number = tostring(os.time())
		local dynamic = number:split((decode_string_v1("",1287357256)))
		table.remove(dynamic, 10)
		table.remove(dynamic, 9)
		local randomData = tostring(uniformRNG(dynamic[7], dynamic[8]))
		local randomData = randomData:sub(1, -3)
		local clientData = hmac(secret, Key .. randomData)

		if isfile((decode_string_v1("7e43ac66e9306feaaccfd8df403458b89a7abd",1755729407))) then
			delfile((decode_string_v1("a2e9fa4ede04578026327f02d1103aa2164e5d",242710031)))
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

			getgenv()[(decode_string_v1("66fba40c8059f1db85a9b8f5d44850e2fecc8030cd",776529915))] = true

			-- The ones with the spaces between .lua are the ones that I don't want to be loaded rn as they're not complete.
            do
    local json = {}
    local function kind_of(obj)
      if typeof(obj) == (decode_string_v1("ca00f6f9deef",102336334)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("416c704c8a762f",1028293503)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("221aee7714c446",17096483)) then return typeof(obj), obj end
      if type(obj) ~= (decode_string_v1("4b845c0c0a",698528257)) then return type(obj) end
      local i = 1
      for _ in pairs(obj) do
        if obj[i] ~= nil then i = i + 1 else return (decode_string_v1("93bf1f0c3e",1793529352)) end
      end
      if i == 1 then return (decode_string_v1("cc9a915ce0",477105560)) else return (decode_string_v1("c766eb6f7d",1376023913)) end
    end
    
    local function escape_str(s)
      local in_char  = {(decode_string_v1("83",946941078)), (decode_string_v1("e1",1002100031)), (decode_string_v1("da",847161666)), (decode_string_v1("df",647970710)), (decode_string_v1("0b",1022407234)), (decode_string_v1("6a",1694341007)), (decode_string_v1("78",899406138)), (decode_string_v1("25",1344100767))}
      local out_char = {(decode_string_v1("4c",487332338)), (decode_string_v1("d5",2063710269)), (decode_string_v1("37",1431954149)),  (decode_string_v1("e9",1918595312)),  (decode_string_v1("9d",1150726112)),  (decode_string_v1("21",221710043)),  (decode_string_v1("a6",1715409844)),  (decode_string_v1("a4",1740709244))}
      for i, c in ipairs(in_char) do
        s = s:gsub(c, (decode_string_v1("ab",220942409)) .. out_char[i])
      end
      return s
    end
    
    -- Returns pos, did_find; there are two cases:
    -- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
    -- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
    -- This throws an error if err_if_missing is true and the delim is not found.
    local function skip_delim(str, pos, delim, err_if_missing)
      pos = pos + #str:match((decode_string_v1("012fb795",709833387)), pos)
      if str:sub(pos, pos) ~= delim then
        if err_if_missing then
          error((decode_string_v1("5c473aba4d10c09749",585774517)) .. delim .. (decode_string_v1("b780facbdccdd0e66b6aef71c3bd3b",1114190728)) .. pos)
        end
        return pos, false
      end
      return pos + 1, true
    end
    
    -- Expects the given pos to be the first character after the opening quote.
    -- Returns val, pos; the returned pos is after the closing quote character.
    local function parse_str_val(str, pos, val)
      val = val or (decode_string_v1("",549188220))
      local early_end_error = (decode_string_v1("5c90cbf4fde4fa324e268d96d2d9b9e17a572ae999c11676190ecc4bc535ee5ed308c43e22bf1aa6",586229890))
      if pos > #str then error(early_end_error) end
      local c = str:sub(pos, pos)
      if c == (decode_string_v1("e1",337762591))  then return val, pos + 1 end
      if c ~= (decode_string_v1("23",787682984)) then return parse_str_val(str, pos + 1, val .. c) end
      -- We must have a \ character.
      local esc_map = {b = (decode_string_v1("1f",1261912611)), f = (decode_string_v1("d4",1350467495)), n = (decode_string_v1("51",1932579507)), r = (decode_string_v1("44",1265736339)), t = (decode_string_v1("66",285847182))}
      local nextc = str:sub(pos + 1, pos + 1)
      if not nextc then error(early_end_error) end
      return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
    end
    
    -- Returns val, pos; the returned pos is after the number's final character.
    local function parse_num_val(str, pos)
      local num_str = str:match((decode_string_v1("c5b64f0e765dbab8b40a7adf24d8089cd96c4c5c5bf3b0fc67",440072283)), pos)
      local val = tonumber(num_str)
      if not val then error((decode_string_v1("01d4e5329dfdda51763d534b662f9d498bd40d89deb2c7b324b7e96b387c8ab778",1665843159)) .. pos .. (decode_string_v1("55",1922469435))) end
      return val, pos + #num_str
    end
    
    
    -- Public values and functions.
    
    function json.stringify(obj, as_key)
      local s = {}  -- We'll build the string as an array of strings to be concatenated.
      local kind, kind_objecto = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
      if kind == (decode_string_v1("dab4039fab",1969177866)) then
        if as_key then error((decode_string_v1("fcab78d294926c8e5b7207505546cf8311a8d0f6233ab0b24785",1905901406))) end
        s[#s + 1] = (decode_string_v1("96",845424165))
        for i, val in ipairs(obj) do
          if i > 1 then s[#s + 1] = (decode_string_v1("eca4",579464131)) end
          s[#s + 1] = json.stringify(val)
        end
        s[#s + 1] = (decode_string_v1("18",408466083))
      elseif kind == (decode_string_v1("a4e5999aeb",575564831)) then
        if as_key then error((decode_string_v1("e253ae0927f6dd3a59abb63d5db901ed16031ea12992d8b302fd",1320784248))) end
        s[#s + 1] = (decode_string_v1("40",1825476342))
        for k, v in pairs(obj) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("a3b2",325965033)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("01",23987685))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("58",112749185))
      elseif kind == (decode_string_v1("017096e4e05d",1636405808)) then
        return (decode_string_v1("a5",435958133)) .. escape_str(obj) .. (decode_string_v1("ad",240566131))
      elseif kind == (decode_string_v1("740f168d3d1e",268047250)) then
        kind_objecto = {table_type = (decode_string_v1("fc7c2e2fe21a",1879318788)), kind_objecto:components()}
        if as_key then error((decode_string_v1("be7261416bcd5af6aef60bf85c1fcd04a617d2c2d8631b6eaa85",68130930))) end
        s[#s + 1] = (decode_string_v1("be",669018343))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("6b04",9946118)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("a2",59601728))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("ae",1984757258))
    elseif kind == (decode_string_v1("f5f77f2b7054d4",1850053158)) then
        kind_objecto = {table_type = (decode_string_v1("b542fb9a56cd6d",427397563)), kind_objecto.X, kind_objecto.Y, kind_objecto.Z}
        if as_key then error((decode_string_v1("8be3fff11f6fa8c2d7cf06b27875045d46c8ef937abf24748b49",481685757))) end
        s[#s + 1] = (decode_string_v1("96",619483863))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("fbee",1276915586)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("01",645381781))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("94",1789626101))
    elseif kind == (decode_string_v1("49ce340164a572",15698547)) then
        kind_objecto = {table_type = (decode_string_v1("75523a98e37fc3",354214267)), kind_objecto.X, kind_objecto.Y}
        if as_key then error((decode_string_v1("a40f242914274c4d4cb23f1cfc4f38ee639eee1a5fee5a76c024",230774493))) end
        s[#s + 1] = (decode_string_v1("e4",434754547))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("7416",1364911861)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("71",924975403))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("a0",1176610045))
      elseif kind == (decode_string_v1("21019c8dfbed",1963641943)) then
        if as_key then return (decode_string_v1("16",470090114)) .. tostring(obj) .. (decode_string_v1("d5",2081330041)) end
        return tostring(obj)
      elseif kind == (decode_string_v1("0a98fb4a22e4b8",1596745002)) then
        return tostring(obj)
      elseif kind == (decode_string_v1("190fbe",963420405)) then
        return (decode_string_v1("ede7fe6f",1290050732))
      else
        error((decode_string_v1("18c8387d5f2d9ff008df01522219a55299fc43e3",391031168)) .. kind .. (decode_string_v1("f1",79748108)))
      end
      return table.concat(s)
    end
    
    json.null = {}  -- This is a one-off table to represent the null value.
    
    function json.parse(str, pos, end_delim)
      pos = pos or 1
      if pos > #str then error((decode_string_v1("7200c18826a7f4c98a68783061ea740a421be71e9ff9611f6c55b84e2512444c",1343415386))) end
      local pos = pos + #str:match((decode_string_v1("7d416ada",723140071)), pos)  -- Skip whitespace.
      local first = str:sub(pos, pos)
      if first == (decode_string_v1("8c",905070341)) then  -- Parse an object.
        local obj, key, delim_found = {}, true, true
        pos = pos + 1
        while true do
          key, pos = json.parse(str, pos, (decode_string_v1("02",961399335)))
          if key == nil then return obj, pos end
          if not delim_found then error((decode_string_v1("5aa0a0de29358aea1e357de045882334c70cb076a45ac97458b8c9570997370e6eff9d",1761313819))) end
          pos = skip_delim(str, pos, (decode_string_v1("2a",510268902)), true)  -- true -> error if missing.
          obj[key], pos = json.parse(str, pos)
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("4c",522646385)))
        end
      elseif first == (decode_string_v1("27",512379526)) then  -- Parse an array.
        local arr, val, delim_found = {}, true, true
        pos = pos + 1
        while true do
          val, pos = json.parse(str, pos, (decode_string_v1("18",1227212987)))
          if val == nil then return arr, pos end
          if not delim_found then error((decode_string_v1("d56358e9d252de720f1078bab0566cf61d4fa2518051e252a9b61d93df073a65b262",190869375))) end
          arr[#arr + 1] = val
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("74",50743613)))
        end
      elseif first == (decode_string_v1("2d",43002127)) then  -- Parse a string.
        return parse_str_val(str, pos + 1)
      elseif first == (decode_string_v1("0f",1634795447)) or first:match((decode_string_v1("db59",1564560157))) then  -- Parse a number.
        return parse_num_val(str, pos)
      elseif first == end_delim then  -- End of an object or array.
        return nil, pos + 1
      else  -- Parse true, false, or null.
        local literals = {[(decode_string_v1("f37ea94c",1112175860))] = true, [(decode_string_v1("12805e0dfd",462146103))] = false, [(decode_string_v1("b99481aa",1880477598))] = json.null}
        for lit_str, lit_val in pairs(literals) do
          local lit_end = pos + #lit_str - 1
          if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
        end
        local pos_info_str = (decode_string_v1("c7d646fc751406bf9a",243221570)) .. pos .. (decode_string_v1("de33",192744667)) .. str:sub(pos, pos + 10)
        error((decode_string_v1("464c3b79f58b1adcb0db93970e92c08096940466ab4650844ebe8a1ddce49769",1884401879)) .. pos_info_str)
      end
    end

    getgenv()[(decode_string_v1("f22e528d06b1df5e64c60cb4",1857996831))] = json
end
            -----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

local ErrorHandlerTing = function(err)
    return warn(err)
end

getgenv().ESP_TESTING = false
do
    local Camera = workspace:WaitForChild((decode_string_v1("74e3ec19ebae",267398627)), 5)
    local Players = game[(decode_string_v1("e6c2d5f9d2ef4387dc70",639630902))](game, (decode_string_v1("c84f8c05fec5f1",467844568)))
    local GUIService = game[(decode_string_v1("42ec49cbe9760ff6dce5",390560552))](game, (decode_string_v1("d1fcbf4a4f60adaa000c",1741591930)))
    local LPlayer = Players[(decode_string_v1("6b7fa15341d962bfda439a",631431228))]
    local Mouse = LPlayer:GetMouse()
    
    getgenv()[(decode_string_v1("de6eca849e1a701195f5",1807485724))] = type(getgenv()[(decode_string_v1("b491216d9da30e944979",251970970))]) == (decode_string_v1("954d4013e817cf",2076067330)) and getgenv()[(decode_string_v1("749acf003c10db6372f9",44818496))] or false;
    getgenv()[(decode_string_v1("dc3ea84a02f32e9f15450b",382839744))] = type(getgenv()[(decode_string_v1("285c2e221e39fae59e85be",206008542))]) == (decode_string_v1("abde525463",400980412)) and getgenv()[(decode_string_v1("b0effaf94b6be705970f2c",260439480))] or {};
    getgenv()[(decode_string_v1("303224427b9a71ce4c",676471548))] = type(getgenv()[(decode_string_v1("825324057a0d1984af",693685728))]) == (decode_string_v1("fb598239fe",614332120)) and getgenv()[(decode_string_v1("2025dece11f22b49c8",1236710352))] or {};
    getgenv()[(decode_string_v1("e3e88c056f4aad2c7177d60d6ca3",444472191))] = type(getgenv()[(decode_string_v1("a487c6f8c19ad82607ba1d396f9d",1646335492))]) == (decode_string_v1("1bc043ffc3",782326375)) and getgenv()[(decode_string_v1("db3d762bac0dc79aca1783dc546c",420050693))] or {};
    getgenv()[(decode_string_v1("8b48ba880c27cbc30d46996b30529a7a2c2443e0d826f6",1437972415))] = type(getgenv()[(decode_string_v1("422d220206ac315d46d4a8d5f167f5af79c687b992da37",1097479789))]) == (decode_string_v1("2c8ec474e9",179100859)) and getgenv()[(decode_string_v1("fc9ad3c21f2a9eee16c180cf1d041ca1a54a976a70b43c",1914498689))] or {};

    local PartNames = {
        [292439477] = {Root = (decode_string_v1("746541b03a",1459178409)), Head = (decode_string_v1("1f6682be",48779054))},
        [3233893879] = {Root = (decode_string_v1("07358ba182",1363058593)), Head = (decode_string_v1("8f7aff30",855160293))}
    }
    
    if PartNames[game.PlaceId] ~= nil then
        getgenv()[(decode_string_v1("d8761d46a3448b097d780faa6be3435724b2bf",1828088416))] = type(getgenv()[(decode_string_v1("18d4541fb54c4a8ff6f011319806c8f3042826",1054001336))]) == (decode_string_v1("3c49bd625c",169491308)) and getgenv()[(decode_string_v1("3cb40c913b232dff9540d013db029409479150",120501387))] or {}

        for _, V in pairs(getgc(true)) do
            local GBPCheck = type(V) == (decode_string_v1("a4ea0e194b",1724951418)) and rawget(V, (decode_string_v1("6852aac93442d9e09b0fb3eb",967066339))) and V or nil
            local GetCharCheck = type(V) == (decode_string_v1("eb1259eaae",646157312)) and rawget(V, (decode_string_v1("6c6e903147a34f2fc211217e",880921907))) and V or nil
            local BadBussinessTeamCheck = type(V) == (decode_string_v1("63b4179062",2047970017)) and rawget(V, (decode_string_v1("f0fa6e0390afaadd0c94cc5a50",799826011))) and V or nil

            if GBPCheck then
                getgenv()[(decode_string_v1("28d033589ad844950fcc9b48fa4c4c862863c6",2128446865))][(decode_string_v1("bc9691609c428e18c6c8c040",766141853))] = getgenv()[(decode_string_v1("be36dbaddd9c16a7bb1ae6d7ece03c9af061fb",1844587763))][(decode_string_v1("f492d11d0bb84b1556042423",719549363))] or GBPCheck.getbodyparts
            end

            if GetCharCheck then
                getgenv()[(decode_string_v1("57b6c35450699bb881e55c6e52db8b4a06deb9",555147130))][(decode_string_v1("e6188461e9df3bfb65d85ca3",640600549))] = getgenv()[(decode_string_v1("74749a1a57fb1aaaa4eea48c798fcc489e40e7",792927590))][(decode_string_v1("885d59056a824dd6c50a823f",963302534))] or GetCharCheck
            end

            if BadBussinessTeamCheck then
                getgenv()[(decode_string_v1("9c3a22a62187bc5ad21835c2bc46f3f65585ba",855520920))][(decode_string_v1("e66c0756967ceff4f4475f1772",1950190729))] = getgenv()[(decode_string_v1("9a6fa865446581a89c187d15451e3aed298964",1030197854))][(decode_string_v1("60b0d020f58011c1c928617d05",230412029))] or BadBussinessTeamCheck
            end
        end
    end

    local function GetPlrTeam(Plr)
        if typeof(Plr) == (decode_string_v1("44e3168b6d68a6a3",2026282735)) then
            if game.PlaceId == 3233893879 then
                if getgenv()[(decode_string_v1("2afdc7efe686c38b8c3884b0ed3b744f710628",2095787948))][(decode_string_v1("f0f725f7c9d01929e0fd4b4d77",793695439))] ~= nil then
                    return getgenv()[(decode_string_v1("6f88eb3601d3607ab228893d1033a0a79fa816",501293136))][(decode_string_v1("603c9784f2bf48a96dd69a9964",2061831005))]:GetPlayerTeam(Plr)
                else
                    return Plr.Team
                end
            else
                return Plr.Team
            end
        end
    end

    local function GetChar_Ez(Plr)
        if typeof(Plr) == (decode_string_v1("eb4514143afd3e59",1468035116)) then
            if not PartNames[game.PlaceId] then
                if Plr:IsA((decode_string_v1("58ddb73879",2006406815))) then
                    return Plr
                else
                    return Plr.Character
                end
            elseif game.PlaceId == 3233893879 then
                -- Bad business moment

                if type(getgenv()[(decode_string_v1("dc3599f9248802fa6b30ba61735036b125ca68",1303325094))][(decode_string_v1("5c0a0457aa10b7049b052393",774181537))]) == (decode_string_v1("cb9020e533",925672474)) then
                    local PlrParts = getgenv()[(decode_string_v1("0066d2d3beae44796657693b66599637cd4fd5",1105562576))][(decode_string_v1("3d29783547252df98f573df9",181378620))]:GetCharacter(Plr)
                    if PlrParts ~= nil then
                        return PlrParts.Body
                    end
                end
            elseif game.PlaceId == 292439477 then
                -- Phantom Forces moment

                if type(getgenv()[(decode_string_v1("42495800031b1aceeec53a681c22266deeec07",1086228012))][(decode_string_v1("4b91ce2714c3587c4b1ccde0",187764882))]) == (decode_string_v1("51896a0d6bb8794c",2067547056)) then
                    local PlrParts = getgenv()[(decode_string_v1("d87165cc43f15c47cf60dd7f22f8d0a921b7ff",1824295861))][(decode_string_v1("ef3cef8bd8cd5637906a380d",1448304248))](Plr)
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

    getgenv()[(decode_string_v1("d71ab616da1b3c8386",550595852))].SETTINGS = {
        BOXES_ENABLED = false,
        TRACERS_ENABLED = false,
        TEAM_CHECK = false,
        AIMBOT_ENABLED = false,
        AIMBOT_TEAM_CHECK_ENABLED = false,
        ESP_COLOR = Color3.fromRGB(255, 255, 255)
    }

    getgenv()[(decode_string_v1("d1a18fa60f4e2378df",1347768093))].Connect = function()
        getgenv()[(decode_string_v1("34c1c0b9dfe033c9ff",1089148447))].UnLoad = function()
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("14035ffa8b087203d9a19aedd4a41f91b5082caaff2c00",1024381205))]) do
                pcall(function()
                    CachedItem:Remove()
                    getgenv()[(decode_string_v1("33604ed2d05083a11d1ba2658684bd6062a336bd7fdd16",1619755108))][CacheName] = nil
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("07ce20361736d02a446b9d",183112363))]) do
                if tostring(CacheName):find((decode_string_v1("9492e5799c",1977421816))) then
                    getgenv()[(decode_string_v1("58b24c8699c0a0086326d8",735979247))][CacheName] = nil
                end
            end
        end

        getgenv()[(decode_string_v1("bead51520752ab0886",933141141))].UnLoadType = function(TypeString)
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("9abefd9a57fb2cf75b51ef85d9cc0143238b74f83f2239",1034809421))]) do
                pcall(function()
                    if tostring(CacheName):find(tostring(TypeString)) then
                        CachedItem:Remove()
                        getgenv()[(decode_string_v1("fc66d5c7627befb184735527812ee16791e70c13a8d7fe",1883277734))][CacheName] = nil
                    end
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("7445e9dcc12cb31c303bbe",1206436336))]) do
                if tostring(CacheName):find(tostring(TypeString)) then
                    getgenv()[(decode_string_v1("517a53186302d465d0efc0",188323591))][CacheName] = nil
                end
            end
        end
        
        getgenv()[(decode_string_v1("adaf1417376e96d2fe",1418824709))].UnLoad()

        getgenv()[(decode_string_v1("84e0d546fb2bcde67f",108792761))].UpdateColor = function(Color)
            getgenv()[(decode_string_v1("d77b665920f1269f25",1658120820))].SETTINGS.ESP_COLOR = typeof(Color) == (decode_string_v1("a6802875f77f",224203367)) and Color or Color3.fromRGB(255, 255, 255)
        end

        getgenv()[(decode_string_v1("78cbb377413427e1d8",1290000364))].SetTeamCheck = function(Bool)
            getgenv()[(decode_string_v1("be337b1a7024a58082",940736196))].SETTINGS.TEAM_CHECK = type(Bool) == (decode_string_v1("71478674ab4b93",725483797)) and Bool or false
        end
        
        getgenv()[(decode_string_v1("8a9753eeb0fc245310",1295585545))].SetBoxVisibility = function(Bool)
            getgenv()[(decode_string_v1("c0770bf3ff4b326625",1011238466))].SETTINGS.BOXES_ENABLED = type(Bool) == (decode_string_v1("0a1ffd5b54570d",179538718)) and Bool or false
        end

        getgenv()[(decode_string_v1("1c2ad6535ce47b2cbd",343839639))].SetTracersVisibility = function(Bool)
            getgenv()[(decode_string_v1("c54487547ae65cf4e9",1604460554))].SETTINGS.TRACERS_ENABLED = type(Bool) == (decode_string_v1("11edb985fb1131",118827544)) and Bool or false
        end

        getgenv()[(decode_string_v1("1a8cd797e815c617ba",248652444))].LoadTracers = function(Plr)
            if getgenv()[(decode_string_v1("366bf366d08eebacbf70c2",1967879090))][Plr.Name .. (decode_string_v1("3e4ad9e8f3e42bcd557ef9b2",1949051097))] == nil then
                if getgenv()[(decode_string_v1("ca96c4a92f2c298b0371cc3dd0cd7c1c33e8e18069f17f",931814327))][Plr.Name .. (decode_string_v1("76072cd262d5cdeba3e357fa",1772147350))] == nil then
                    getgenv()[(decode_string_v1("4ee76d900244a3743793f41ede65ff44a0604ab1bebaed",131306396))][Plr.Name .. (decode_string_v1("2a9b16bcf089707b7ce8135f",1845969189))] = Drawing.new((decode_string_v1("cbec84ff",1019069620)))
                    getgenv()[(decode_string_v1("b43335672ab74628a9b8678527a6a9123331102b9f65d3",417758642))][Plr.Name .. (decode_string_v1("fa6714770d3370f5d0fcefa8",1182341618))].Visible = false
                    getgenv()[(decode_string_v1("0001407fdf2ce627410e38f56378f77b95898b44445510",1112397291))][Plr.Name .. (decode_string_v1("fd6c158d9741246447e9752b",1458950821))].Thickness = 2;
                    getgenv()[(decode_string_v1("3a52f78d39b7b98a448342208c0e39f404d25e71a0618a",1257844212))][Plr.Name .. (decode_string_v1("32868c661aeb503dc70d5980",223480361))].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                end

                getgenv()[(decode_string_v1("1c0576e68a2d97cfa20cd4",695646504))][Plr.Name .. (decode_string_v1("18fe92de3aa0f85ae392a4bc",1241961949))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("dcf488d04cdf39aa0aa698187967f89cc1d998504d0284",1304946652))][Plr.Name .. (decode_string_v1("3c138a82d31278dbf209d63e",938047645))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("7bde08d1ed",1286232026)) and PartNames[game.PlaceId].Root or (decode_string_v1("cf6ae53fb90fbda1fe1186afb0cb2c12",1018174070)))
                            local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("a43984f726",580335089)) and PartNames[game.PlaceId].Head or (decode_string_v1("b057c116",163708984)))
                            
                            if RootCheck and Plrhead then
                                if getgenv()[(decode_string_v1("0e7cea2a246fbb114f403e8014562a4b302d1e1fe25307",730416623))][Plr.Name .. (decode_string_v1("f1ff267048e829a6c16a747d",519584656))] then
                                    local Line = getgenv()[(decode_string_v1("14efa4725703e2612be1130e2bb5afe1bdbdae037f9547",1026103825))][Plr.Name .. (decode_string_v1("d87fd59842eb725de1d464fb",797668608))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                                    local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                                    Line.To = Vector2.new(LinePos.X, LinePos.Y)
                                    Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                                    Line.Color = typeof(getgenv()[(decode_string_v1("bb507a85d3eee062af",1557482983))].SETTINGS.ESP_COLOR) == (decode_string_v1("a4fe02c537a1",2046614371)) and getgenv()[(decode_string_v1("bb8ea68353b0d86cb2",1558050460))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("c6bc48fb1acca83d5b",1104038973))].SETTINGS.TEAM_CHECK then
                                        Line.Visible = false
                                    else
                                        Line.Visible = getgenv()[(decode_string_v1("ffc689c96554c29eae",1478143433))].SETTINGS.TRACERS_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("0c185cdc3a1053b70c76f833a18dc73b34db451d3d5ab6",1183525145))][Plr.Name .. (decode_string_v1("05cbec07d027efe8d077ff01",1643957734))] then
                                getgenv()[(decode_string_v1("a41661b594b389d9e31df4f60781701b81c9dad1d62f38",2071060952))][Plr.Name .. (decode_string_v1("acfea1ea31194b024cb7344e",825065969))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("f651b94e17ce99875b2824",13608664))][Plr.Name .. (decode_string_v1("fd69d938a088526138914f7e",1458252318))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("2848560a273c6ce11c711fd83d35d60544829d62831885",722161598))][Plr.Name .. (decode_string_v1("b9e571f07cebabb5b1d8bc70",1746985689))] then
                            getgenv()[(decode_string_v1("4e5ff49d56a07694fd2c3da409996f6673978768d6199a",1175706144))][Plr.Name .. (decode_string_v1("96ab3ed6d2be76141dcc92a2",811835545))]:Remove()
                            getgenv()[(decode_string_v1("14696bf6fa3598078031a101d86568f662ab1f9fea694a",1026623556))][Plr.Name .. (decode_string_v1("3eedeaf56d5c13fd075c5942",1930758081))] = nil
                        end
                    end
                end
            end
        end
--GetPlayerTeam
        getgenv()[(decode_string_v1("180a705e4e850715f4",1065290278))].LoadBox = function(Plr)
            if getgenv()[(decode_string_v1("135815bb6475cc8d1ead3b",464697419))][Plr.Name .. (decode_string_v1("c8808877dea51520495c",682190048))] == nil then
                if getgenv()[(decode_string_v1("c84358786fe9783dd6ee76881e148f0f3801d172dea412",939310067))][Plr.Name .. (decode_string_v1("d6493d5380bf681a2d06",1254883760))] == nil then
                    getgenv()[(decode_string_v1("f6798965183a8f8e32f984b17674a856632331444b95e8",791884804))][Plr.Name .. (decode_string_v1("7e9cd5e1bc9ace540072",1093102331))] = Drawing.new((decode_string_v1("f53f86995ad9",1378005227)));
                    getgenv()[(decode_string_v1("33930d2b86edf04dd924a56c7240620f189d40992b270b",1602931896))][Plr.Name .. (decode_string_v1("8a28af58ea1a21a9cc18",1289281396))].Thickness = 2;
                    getgenv()[(decode_string_v1("2d1d94da2292bfd57f95bbf6ceedffb9b9fef98e2ad135",518106968))][Plr.Name .. (decode_string_v1("0829441f9b0bce5aac15",1139110073))].Filled = false;
                    getgenv()[(decode_string_v1("fea88302475137cc1a0fe38aea41c33a702ae06aed4383",1069964783))][Plr.Name .. (decode_string_v1("403c1bbff74e67301190",1075401584))].Visible = false;
                end

                getgenv()[(decode_string_v1("e2f05fe3560ab97fc59dc7",5111212))][Plr.Name .. (decode_string_v1("8c2fef26e69b89bdbf15",602862085))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("fe6e0d5775f9b71e9f9236309bf4b562008d7b6ae4bdae",1058690716))][Plr.Name .. (decode_string_v1("96b1730aaef2526660bb",816029453))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("3b8b4d8a2a",958339230)) and PartNames[game.PlaceId].Root or (decode_string_v1("1f9946512820da7665318bef30c6b70b",1942817298)))
                            
                            if RootCheck then
                                if getgenv()[(decode_string_v1("cc48922865963eb4f56a8de6d5c8387aadcc664f1e317a",736605131))][Plr.Name .. (decode_string_v1("fdd21a0baa4686553a86",1477235002))] then
                                    local Inset = GUIService:GetGuiInset();
                                    local Box = getgenv()[(decode_string_v1("14140a859f34f816f054e73b34988f8ed7f273d194b161",1016299735))][Plr.Name .. (decode_string_v1("9b2d91ce05c7beb05b61",1510734538))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                                    Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                                    Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                                    Box.Color = typeof(getgenv()[(decode_string_v1("bbce1df169a1eed5f4",174955654))].SETTINGS.ESP_COLOR) == (decode_string_v1("e28f9f444220",1320458062)) and getgenv()[(decode_string_v1("744e02e6324f5c4af3",1931604229))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("ad6f205e43157317e2",1426452131))].SETTINGS.TEAM_CHECK then
                                        Box.Visible = false
                                    else
                                        Box.Visible = getgenv()[(decode_string_v1("d7c35eb2362e195613",1662146059))].SETTINGS.BOXES_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("a2b0fa850b599860a8bd0fea89676af53e97bacbb01c6f",290337417))][Plr.Name .. (decode_string_v1("76903849fa41417b2c52",1787144964))] then
                                getgenv()[(decode_string_v1("14642ef031bab14c6277e45f85f1b27d6f8d31f07f9e0f",339194075))][Plr.Name .. (decode_string_v1("08a07cbd7f2bc8b2fb41",1136120195))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("969e3b35015d55236ac6b4",883146569))][Plr.Name .. (decode_string_v1("9b76722dc29b09838955",1521648787))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("05edcfa85621b27a6d40fbb67c95d3813e963bde04eb80",155000158))][Plr.Name .. (decode_string_v1("a32ceb7571279bece7c1",1684050192))] then
                            getgenv()[(decode_string_v1("3c1f42037a72617280ce8e73601e4c07aff246a8b62a47",361091723))][Plr.Name .. (decode_string_v1("d47b85e32c6653fb68aa",1108113704))]:Remove()
                            getgenv()[(decode_string_v1("719bfa18403fcdb07a0e9469be5461741a6fe3bc2af472",550265419))][Plr.Name .. (decode_string_v1("6a29a8ac4c246bb72f53",353055098))] = nil
                        end
                    end
                end
            end
        end

        getgenv()[(decode_string_v1("60c7d85a3aec411426",791786259))].LoadFov = function()
        end

        if getgenv().ESP_TESTING == true then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= LPlayer then
                    getgenv()[(decode_string_v1("d70d9ebd29adc3701f",1644439188))].LoadBox(Plr)
                    getgenv()[(decode_string_v1("9278402213b8344bd6",113395825))].LoadTracers(Plr)
                end
            end
        end

        if getgenv()[(decode_string_v1("328cb4b1d47ee7ff71",267663373))].RemovedAndAdded == nil then
            getgenv()[(decode_string_v1("ad11d898df0645097c",1414937086))].RemovedAndAdded = true

            Players.PlayerAdded:Connect(function(Plr)
                if getgenv()[(decode_string_v1("e8812ee25cead8f93a",952860052))].SETTINGS.BOXES_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("2e434e5ea123473666",1793345641))].LoadBox(Plr)
                end

                if getgenv()[(decode_string_v1("6a51049403170eab21",1907488200))].SETTINGS.TRACERS_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("48dcf66472350a05ed",1178220496))].LoadTracers(Plr)
                end
            end)
        end
    end
    
    getgenv()[(decode_string_v1("bcab812aba3e128a83",810183234))].Connect()

    getgenv()[(decode_string_v1("18e789eb077176dc86",354917618))].Aimbot = function()
        local Proxy = newproxy(true);
        local MetaTable = getmetatable(Proxy);

        local function AimAtPlayer(Camera, Mouse, target)
            local TARGETPOS = Camera:WorldToScreenPoint(target.Position)
            local GOTO = Vector2.new((TARGETPOS.X - Mouse.X) * .15, (TARGETPOS.Y - Mouse.Y) * .15)
            mousemoverel(GOTO.X, GOTO.Y) -- Quick math for the aim function lmao
        end

        getgenv()[(decode_string_v1("bd9f0e8fd0906092c9b6b9",161162303))].AimBot = nil

        MetaTable.Start = function()
            getgenv()[(decode_string_v1("b8b27243848555c4c41903",317092015))].AimBot = nil
            if getgenv()[(decode_string_v1("bd62370b04872555f249c3",1433591486))].AimBot == nil then

                getgenv()[(decode_string_v1("1cc321fd677407309a0d4a",701208818))].AimBot = function()
                    local LastDistance = 999999
                    for _, FPlayer in ipairs(Players:GetPlayers()) do
                        if FPlayer ~= LPlayer then

                            local TeamCheck = tostring(GetPlrTeam(FPlayer)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("427a3e024e43158675",1137654476))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
                            if not TeamCheck then
                                local FChar = GetChar_Ez(FPlayer)

                                if FChar then
                                    local HeadCheck = FChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("dc1f7b1e9b",50461577)) and PartNames[game.PlaceId].Head or (decode_string_v1("d0aedb4a",576496976)))

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
            getgenv()[(decode_string_v1("662ae05ec122dd1bbf6031",255914312))].AimBot = nil
        end

        MetaTable.TeamCheck = function(Bool)
            getgenv()[(decode_string_v1("0c326e0eb676703a99",2111746513))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
        end

        return MetaTable
    end

    if getgenv().ESP_TESTING == true then
        getgenv()[(decode_string_v1("96c1ec657ac56c05c2",992171505))].SetTracersVisibility(true)
        getgenv()[(decode_string_v1("8ef099984d5fa359a7",821693054))].SetBoxVisibility(true)
        getgenv()[(decode_string_v1("298291ddd1b63c454d",1505037323))].SetTeamCheck(false)
        getgenv()[(decode_string_v1("ad5f8119fdaa16e761",159058866))].UpdateColor(Color3.fromRGB(79, 22, 201))
    end

    if not getgenv()[(decode_string_v1("51e0851d5edf234a73eb",1685304398))] then
        getgenv()[(decode_string_v1("132d35e0af569c6b2d25",1388792942))] = true
        local RunService = game[(decode_string_v1("da6b1fb01308476ab7ef",298254223))](game, (decode_string_v1("690a64e347ef022d628d",1757438974)))
        RunService.Heartbeat:Connect(function()
            for _, Function in pairs(getgenv()[(decode_string_v1("0e569c577a0be801452070",2132690855))]) do
                if type(Function) == (decode_string_v1("0d808446bac529a0",864391947)) then
                    xpcall(Function, ErrorHandlerTing)
                end
            end
        end)
    end
end
            --Timber. lua_compile_spot
            --PhantomForces. lua_compile_spot
            --BloxBurg. lua_compile_spot
            local VRService = game:GetService((decode_string_v1("d952027402323748a7",1977670574)))

do
    local function WorldZeroInit()
        local MarketService = game:GetService((decode_string_v1("c47a6e2874e770d7e2f8f182d76235345311",816139064)))
        local VRService = game:GetService((decode_string_v1("f250b62729c4eb546a5bbc",1556946937)))
    
        local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
        if isSuccessful then
            if info.Creator.Name == (decode_string_v1("6d75379a90dfba50045ede8cb0",1650047369)) then
                --

                getgenv()[(decode_string_v1("2465d3bd02f9ab50f627f84e1549acf1c9c7046893",1317951383))] = false
            
                --------------------------------------------------------------------------------------------
        
                getgenv().UpdateLoop = type(getgenv().UpdateLoop) == (decode_string_v1("413b53b2cdbbb6",890232574)) and getgenv().UpdateLoop or false;
                getgenv().UpdateCache = type(getgenv().UpdateCache) == (decode_string_v1("dc4dd5cb70",447406882)) and getgenv().UpdateCache or {};
                getgenv().MOB_ESP_OBJECTS = type(getgenv().MOB_ESP_OBJECTS) == (decode_string_v1("53ef587022",2139713341)) and getgenv().MOB_ESP_OBJECTS or {};
                getgenv().MOB_ESP_CONNECTIONS = type(getgenv().MOB_ESP_CONNECTIONS) == (decode_string_v1("449ffdc805",173969472)) and getgenv().MOB_ESP_CONNECTIONS or {};
        
                local GameConfigFile = GetGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("856a1ecb91",269705219)))
                Settings_Name = (decode_string_v1("e207a86267d95dfc1625b2fae1191a7542134588ab706f60365d77",847360994))

                getgenv()[Settings_Name] = {
                    AutoAttackMobs = GameConfigFile.AutoAttackMobs or false,
                    AutoPickupCoins = GameConfigFile.AutoPickupCoins or false,
                    AntiIdle = GameConfigFile.AntiIdle or false,
                    MobESP = GameConfigFile.MobESP or false,
                    MobESPRenderDistance = GameConfigFile.MobESPRenderDistance or 250
                }
                
                Window = UILibrary.new((decode_string_v1("abb08dfd60d88711cc0664d8fffbd154b214a7c7cfbe1a",1678756508)), 5013109572)
    
                local TweenService = game:GetService((decode_string_v1("2304bfac15c09f6393677286",627670226)))
                local Player = game.Players.LocalPlayer
                local Character = nil
                local PlayerPosition = nil
                local PlayerLookVector = nil
                local RootPart = nil
                local ItemTable = nil
                
                local ActionsModule = require(game.ReplicatedStorage.Client.Actions);
                local CombatModule = require(game.ReplicatedStorage.Shared.Combat);
                local AnimationModule = require(game.ReplicatedStorage.Client.Animations);
        
                local MobsFolder = workspace:FindFirstChild((decode_string_v1("7e6f3528",877971740)))
                --[===[local PlayerWindow = Window:addPage("Player", 5012544693)]===]
                local AutoFarmWindow = Window:addPage((decode_string_v1("5e25750382718567cb",966622104)), 5012544693)
                local VisualsWindow = Window:addPage((decode_string_v1("5686b7d3eb7ef2",1504529504)), 5012544693)
                local TeleportsWindow = Window:addPage((decode_string_v1("235ff5cb77767c2a87",1901954823)), 5012544693)
                local AutoFarmSection = AutoFarmWindow:addSection((decode_string_v1("71087b4f0c6f3809",2071319091)), 5012544693)
                local VisualsSection = VisualsWindow:addSection((decode_string_v1("b1a7d77ff319b400",916482806)), 5012544693)

                local Camera = workspace.Camera
                local GUIService = game[(decode_string_v1("ab064bc805d6f3d29a74",567933985))](game, (decode_string_v1("3da69d7971f83550f267",1630196769)))
                
                local function GetNearMobs()

                    local Mobs = {}
                    local HitBoxSize = Vector3.new(25, 15, 25)

                    if RootPart then

                        local MobParams = OverlapParams.new()
                        MobParams.FilterDescendantsInstances = MobsFolder:GetChildren()
                        MobParams.CollisionGroup = (decode_string_v1("e3d1276e05f70c",147507571))
                        MobParams.FilterType = Enum.RaycastFilterType.Whitelist

                        local FoundInBox = workspace:GetPartBoundsInBox(RootPart.CFrame, HitBoxSize, MobParams)

                        if FoundInBox ~= nil then
                            for _, Part in ipairs(FoundInBox) do
                                if Part:IsA((decode_string_v1("7a814328d4d6f825",1451619367))) then
                                    if Part.Name == (decode_string_v1("b4cd3f1f181d229a",417279541)) then
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
                                Box = Drawing.new((decode_string_v1("947da3c6bb67",2043929016))),
                                ESPText = Drawing.new((decode_string_v1("fc518d9c",1687844903)))
                            }
    
                            local Box =  getgenv().MOB_ESP_OBJECTS[Mob].Box
                            local ESPText =  getgenv().MOB_ESP_OBJECTS[Mob].ESPText
    
                            ESPText.Text = (decode_string_v1("",471551066))
                            ESPText.Color = Color3.fromRGB(255, 255, 255);
                            ESPText.Size = 20.0
                            ESPText.Visible = false
                            ESPText.Outline = true
                            ESPText.Center = true
    
                            Box.Thickness = 2;
                            Box.Filled = false;
                            Box.Visible = false;
                            
                            getgenv().UpdateCache[Mob] = function()
                                local Collider = Mob:FindFirstChild((decode_string_v1("57d3780898fb2497",20651418)))

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
    
                                    ESPText.Text = string.format((decode_string_v1("1110514b36e6b7f3f15891dc12840e01a254e64e303d5a60",491016487)), Mob.Name, tostring( math.floor( (MobPos - PlayerPosition).Magnitude ) ) )
    
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
    
                                            local CreatureHealthFolder = Mob:FindFirstChild((decode_string_v1("bfae57527eff000ca304081d67fbf3f7",1862399810)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("af172655b17c",1167335300)))
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
                            if typeof(V) == (decode_string_v1("8aea438c49baa5bbd56e2405a9573793590497",1418994465)) then
                                V:Disconnect()
                                getgenv().MOB_ESP_CONNECTIONS[I] = nil
                            end
                        end
                    end

                    ESP_META.StartConnections = function()
                        ESP_META.EndConnections()

                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("9befcf19fbf149f6",1381091124))] = MobsFolder.ChildAdded:Connect(function(Mob)
                            ESP_META.AddEsp(Mob)
                        end)
        
                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("94ee4fc37e1a4c090c05",2105162610))] = MobsFolder.ChildRemoved:Connect(function(Mob)
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
                
                getgenv()[(decode_string_v1("d26f56dd5191667af0cc8c",302332519))][(decode_string_v1("a4df273593d1eeacd5a2aacf3257c1f8",2044676476))] = function()
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

                getgenv().UpdateCache[(decode_string_v1("ad70cdb7ca48d5a94493",1433222765))] = function()
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
                
                VisualsSection:addSlider((decode_string_v1("20e04a583fd0c376de1849f96d0c77d9b78903",408826965)), getgenv()[Settings_Name].MobESPRenderDistance, 250, 10000, function(NewValue)
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

                VisualsSection:addToggle((decode_string_v1("d7de8cbd8cfb72",1462969109)), getgenv()[Settings_Name].MobESP, function(Bool)
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

                AutoFarmSection:addToggle((decode_string_v1("1a40a7652994a5cebf8487e9b11e3b03af8aa3c50c544c7d2fd2046fe8a9667291f001",1334947320)), getgenv()[Settings_Name].AutoAttackMobs, function(Bool)
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
                                            local CreatureHealthFolder = Creature:FindFirstChild((decode_string_v1("2f0729f569a2825b403ebcbaf02bd463",425468141)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("4f756ee2f234",2061491873)))
                                                
                                                if CreatureHealth then
                                                    
                                                    if CreatureHealth.Value > 0 then
                                                        local CreaturePos = Creature:GetPivot();
    
                                                        --local v14 = AnimationModule:GetAnims().Defender["Attack" .. tostring(AttackIndex)];
                                                        if not ActionsModule:IsBusy() then
                                                            TotalHits = TotalHits + 1
    
                                                            --ActionsModule:FireSkillUsedSignal("Primary");
                                                            --ActionsModule:FireCooldown("Primary");
                                                            ActionsModule:SetBusy((decode_string_v1("d2c5b6e513",1087934333)));
                                                        
                                                            if Character then
                                                                PlayerPosition = Character.PrimaryPart.Position
                                                                PlayerLookVector = Character.PrimaryPart.CFrame.LookVector
                                                                RootPart = Character.PrimaryPart
                                                            end
    
                                                            RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
                                                            Camera.CFrame = CFrame.new(Camera.CFrame.p, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
    
                                                            CombatModule:AttackWithSkill((decode_string_v1("532ee7cd10c420a5",799087195)) .. tostring(AttackIndex), PlayerPosition, CFrame.new(PlayerPosition, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z)).LookVector * 1.1 );
                                                            
                                                            AttackIndex = math.clamp(AttackIndex + 1, 1, 6)
    
                                                            if AttackIndex > 5 then
                                                                AttackIndex = 1
                                                            end

                                                            CreatureIndex = CreatureIndex + 1
    
                                                            task.wait(0.01)
                                                            ActionsModule:ReleaseBusy((decode_string_v1("2ea0267d5a",840001513)));
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
                    if A:IsA((decode_string_v1("b8152d1986",895638964))) then
                        if tostring(A) == (decode_string_v1("1d1bc4cefe",1988814628)) then
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
    
                AutoFarmSection:addToggle((decode_string_v1("134b6b15e3ad5b91",164287035)), getgenv()[Settings_Name].AntiIdle, function(Bool)
                    getgenv()[Settings_Name].AntiIdle = Bool
                end)
    
                AutoFarmSection:addToggle((decode_string_v1("eafd211bb0763d6bc457672c07b1c18dc5170bf02bf064c61024",777644640)), getgenv()[Settings_Name].AutoPickupCoins, function(Bool)
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
        
                if not getgenv()[(decode_string_v1("2b5022ca308c6c1f125e",1539652266))] then
                    getgenv()[(decode_string_v1("d229563f69571b540390",907495370))] = true
                    RunService.Heartbeat:Connect(function()
                        for _, Function in pairs(getgenv()[(decode_string_v1("c6d8aa087620b6d56704cd",998062337))]) do
                            if type(Function) == (decode_string_v1("b26b9866be119892",1714097305)) then
                                pcall(Function)
                            end
                        end
                    end)
                end
        
                print((decode_string_v1("345a3becc31025bc2dd83449ff9d84c17c92bfebf2",66398650)))
                --
            end
        end    
    end
    
    WorldZeroInit()

    local _Players = game:GetService((decode_string_v1("a8d8d105d9d1fb",568819630)))
    local _Player = _Players.LocalPlayer
    
    local queue_on_teleport = type(syn) == (decode_string_v1("33c6f27e8d",329540709)) and syn.queue_on_teleport or queue_on_teleport
    
    local RejoinCode = (decode_string_v1("f75156e847cdc6847966b4ffcaf280909cbe5318ce445f6f67d673e61210e5e9a5187465a03c650835757ccd18b7d16128e53c673125a0967f18e14da458177d412f77c30bd018786e15190ed60591bb55b98fefcd1733574057a985566faf439cbcee60f066f544910f5bf153a7298c8ff42b53ba05a036b2c6bf970ebec921c582c7dc7a795428b5843e8c86eefdfe69abcd7e8c8d15f968d7061093692af6f41690372a1aec5e84fe1e866514162cf9136d9c72068200bff9b3e826ec2756e7ca1bf9e8b7286d71dea886a06f04e2daaaab57e174678a771e3e3ec07afdfc8de53ead9b378eb37579c83b44c5ddffad0e2fba6afe41440e84148ed959376ea7228db94312981e525b7e89a610733c45922aa3fb5f9db89265645e2518d0a0ebbe1fceaa9f463745ab01dc57bc7c5d4b2d6ace34b42501e43d81ba4cd1b74c7f52329a9974a945bad15debd78c61e810014a06d94734a9ab562c2618f7a0cc82b9d53896f390cacd6d8b1ccd246c4570344a1c466a033fcbcbfe197475f037eb3a5bf104f1a1232f804dc2d744443a527e916274329ef7c55d27a8a3bfc97f2ae3555786ef682692e205641f0417da2209d9e0c45f7ce87f412c3a6611147e992a1f788f9187900e7efcb1791cf30a6e2cbe71313cc24330f52a2ec9e5ce603ef5c412e30d23c7db7f1d973b5141f5abe0ca8a07d275a871d2518386dd038a3161ce089881c94761db27b4223624a4bcddc747efde9e90e6df56c7cec33dc7b13ac47e523373a1aa2eb03c4233c9fe949a865914b41541051a741d1a23449a5695e23b96ba453cd709d60b9cdb1e0d62d7e299557cc87bca5c6e4a57049cc6b7dc0f70cd6618ad1744deed0504cbdbd5c104",1073074754))

    if not isfile((decode_string_v1("48d2bfe26f319aac33b5714d61514aca5c8bb5",740636703))) then
        writefile((decode_string_v1("1456cc30b5569fcd2c09433625aa19e57f1f0d",312281659)), tostring(RejoinCode))
    end
    
    queue_on_teleport((decode_string_v1("f8d201df431ae667b4c3a406a08938bead93787993c35b34ff1a976610f7eaa56f0f4b972296abd21b5ab565e6a604db34ee11d694c0ddf474f1071c9bac0e4e50ae4c6f24075c32a61d2f79be67a95114f74b7ad102c96acbbb86b6a2d8b3e669d45f88330c2d0691d0cc5d",1375412859)))
end
            --DaHood. lua_compile_spot

			if getgenv()[(decode_string_v1("7235a45d70e7021e415fb9aa866f13b1ae8b3a3a34",2080137365))] == true then
                do
    local Players = game[(decode_string_v1("abb47925d76c8fbced96",1691808409))](game, (decode_string_v1("07fa455cf0d9b1",765363733)))
    local Player = Players[(decode_string_v1("f36609b3d63c386787c02d",206802226))]
    local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("95a3b0dedcb1",224163632))], string[(decode_string_v1("5a164acecd",2106977616))], string[(decode_string_v1("486b90a2",248574867))], string[(decode_string_v1("886c5da40b08",14674203))], string[(decode_string_v1("f676f137cb",944013442))]

    Window = UILibrary.new((decode_string_v1("ee0ec86fbc3e0f1d3b30fb1a1f478a24e08355788345",704518406)), 5013109572)

    local VisualsWindow = Window:addPage((decode_string_v1("31d019fcf024f4",82584683)), 5012544693)
    local VisualsSelection = VisualsWindow:addSection((decode_string_v1("eab5d6cd",1249460783)))

    local GameConfigFile = GetGameConfig(FixName(tostring((decode_string_v1("245722c581b8c3a230",1319217592)))) .. (decode_string_v1("36c89aef66",1613278503)))
    Settings_Name = (decode_string_v1("af073341c8cff2a9957e91f1b561004df036cd8e42e81a8c0c52",1489821660))

    getgenv()[Settings_Name] = {
        Teamcheck = GameConfigFile.Teamcheck or false,
        Boxes = GameConfigFile.Boxes or false,
        Tracers = GameConfigFile.Tracers or false,
        Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
    }

    VisualsSelection:addToggle((decode_string_v1("0c98c2df1bd29fc073e6eaad47",2106215970)), getgenv()[Settings_Name].Teamcheck, function(Bool)
        getgenv()[Settings_Name].Teamcheck = Bool
        getgenv()[(decode_string_v1("dafa607261fb43f69e",1185806237))].SetTeamCheck(Bool)
    end)

    VisualsSelection:addToggle((decode_string_v1("1e7e43b7015cd10e3a",1164605135)), getgenv()[Settings_Name].Boxes, function(Bool)
        getgenv()[Settings_Name].Boxes = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("d7a1304ce2d7af7b52",1651483087))].LoadBox(Plr)
                end
            end
            getgenv()[(decode_string_v1("bb3a5fe3ba3ee40ff9",516118165))].SetBoxVisibility(true)
        else
            getgenv()[(decode_string_v1("06b0c16014925bfc3b",1963216971))].UnLoadType((decode_string_v1("2a8ce8e00e89d3c53cd2",1843106381)))
            getgenv()[(decode_string_v1("1c34676b2770f9631c",1034981437))].SetBoxVisibility(false)
        end
    end)

    VisualsSelection:addToggle((decode_string_v1("0102dbc8176909c17eb7a6",1674677177)), getgenv()[Settings_Name].Tracers, function(Bool)
        getgenv()[Settings_Name].Tracers = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("297e1e236f412eb770",1533286937))].LoadTracers(Plr)
                end
            end
            getgenv()[(decode_string_v1("94413ff6dbd32dc447",1313055222))].SetTracersVisibility(true)
        else
            getgenv()[(decode_string_v1("ff3742f885f8511023",1479397779))].UnLoadType((decode_string_v1("8609904b5c6ac79f01b40777",704289362)))
            getgenv()[(decode_string_v1("c526c450329cf62987",531764133))].SetTracersVisibility(false)
        end
    end)

    local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color

    getgenv()[(decode_string_v1("0ccb4dd35bd15af99f",2088328528))].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

    VisualsSelection:addColorPicker((decode_string_v1("232b326ea9e52a857f",1403756773)), Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
        local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)

        getgenv()[Settings_Name].Color.R = R
        getgenv()[Settings_Name].Color.G = G
        getgenv()[Settings_Name].Color.B = B

        getgenv()[(decode_string_v1("01da0c55745998c33f",1670619182))].UpdateColor(Color3.fromRGB(R, G, B))
    end)

    VisualsSelection:addButton((decode_string_v1("6612e0c9ef327ff894c7",255862999)), function(Bool)
        getgenv()[(decode_string_v1("5887a9db2cb7850ed5",1871086884))].UnLoad()
    end)
end
			end

			if Window ~= nil and Settings_Name ~= nil then
				local MarketService = game:GetService((decode_string_v1("b8784194d04c036413b375244d7f9fba4f8e",900099035)))
				SettingsPage = SettingsPage or Window:addPage((decode_string_v1("57f5429d72a23942",1369418038)), 5012544693)
				SettingsSection = SettingsSection or SettingsPage:addSection((decode_string_v1("579752b0d5",1433213526)), 5012544693)
				SettingsSection:addButton((decode_string_v1("6cdc0b492b6dfc0bd91af3",631372761)), function()
					local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
					if isSuccessful then
						if tostring(info.Creator.Name) == (decode_string_v1("b9c7cc803411db6a181b1cabb7",1564339126)) then
							SaveGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("b293477be1",496239202)), getgenv()[Settings_Name])
                        elseif getgenv()[(decode_string_v1("afd839470d0e2193c1b23e2d689a233d89fea2c777",1486232089))] == true then
							SaveGameConfig(FixName(tostring((decode_string_v1("6619476c693f3f87e7",764963749)))) .. (decode_string_v1("5eebb5bf81",1670957766)), getgenv()[Settings_Name])
                        else
							SaveGameConfig(FixName(tostring(info.Name)) .. (decode_string_v1("ea0f693d16",1729946699)), getgenv()[Settings_Name])
						end
					end
				end)
				SettingsSection:addKeybind((decode_string_v1("9cdd58365a2c77d74a367ebb665d",169259871)), Enum.KeyCode.Home, function()
					Window:toggle()
				end, function()
				end)
			end
		else
			return sendError(serverData, clientData)
		end
	end
end, function(err)
	return warn(err .. (decode_string_v1("ae",470839978)) .. debug.traceback())
end)