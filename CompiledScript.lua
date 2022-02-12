                  local function decode_string_v1(str, seed, v33)
                     repeat
                        seed = seed * 3
                     until seed > 2 ^ 64 + math.abs(math.sin(v33))
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
		getgenv().Key = (decode_string_v1("168375fef650916720c473ebd556c788b3799d10727adcc0f7",967914887,1644667936));
		getgenv().DiscordWebhook = (decode_string_v1("73944630",456539992,1644667936));
		getgenv().WebhookEnabled = false;
		getgenv().GubVersion = (decode_string_v1("aa6fa4",510385826,1644667936));

		local CLIENT_DEOBF_OFFSET = 3;
		local SERVER_DEOBF_OFFSET = 1;
		local StartTimer = os.time()
		local UILibrary = loadstring(game:HttpGet((decode_string_v1("97946fc9a0ccf27802aa8a8f6d754770386f0f00ae891296e9959fc2b81c821ed7d359b4eb9053fc6ae85210229c83d714373a4b5293e4f8214d2bf5a8e2158b7ec61252719c78100e2fd0cf65",677607994,1644667936)), true))()
		local library = loadstring(game:HttpGet((decode_string_v1("31ea819e191df0086631747b37883227801bd4864871a054c0f425dc47dbbaa21d0795c7a6cceaa16055f39bff81ad9605e8f72cf025594fd925acac56753f972a4f9a1d935e8735c4951bf5ddf663df8452c0b1c3cf6708add1da5f8a7c451f8da5",2097262308,1644667936))))()
		library:Notification((decode_string_v1("1fa52927079031",2136359128,1644667936)), (decode_string_v1("a8fc5d6e18f871df910b0f7f30734bdabbd5dd473632e86beddf96cd3e48fe8a0458dadd8e7789736054989fe991",1739172882,1644667936)), 10, Color3.fromRGB(255, 255, 255))

		if not isfolder((decode_string_v1("cb0ee6ce2dbcba341f505dbf4333",1009732125,1644667936))) then
			makefolder((decode_string_v1("4d4ce347e79a4dd8011811dc3f64",1509640755,1644667936)))
		end

		for i, v in pairs(game:GetService((decode_string_v1("7341554aa92898",190308031,1644667936))):GetDescendants()) do
			pcall(function()
				if v.Name == (decode_string_v1("2c7824a2",1840729137,1644667936)) then
					v.Parent.Parent:Destroy()
				end
			end)
		end

		local function identify()
			local Executor = string.lower(identifyexecutor())
			local ExecutorTable = nil
			if string.find(Executor, (decode_string_v1("ffc61e2e58f253",1781621616,1644667936))) then
				ExecutorTable = {
					(decode_string_v1("dfe8c87bb95c0f",192037429,1644667936)),
					syn.request
				}
			end
			if string.find(Executor, (decode_string_v1("98b3863b",214453168,1644667936))) then
				ExecutorTable = {
					(decode_string_v1("cbb0828e",793002824,1644667936)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("4c158687",1222668071,1644667936))) then
				ExecutorTable = {
					(decode_string_v1("d8950b7e1119",144116500,1644667936)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("804b6f6a6098",413363600,1644667936))) then
				ExecutorTable = {
					(decode_string_v1("95484a15304e27e8a61a47",801395906,1644667936)),
					http.request
				}
			end
			if string.find(Executor, (decode_string_v1("b10fcb",1004615513,1644667936))) then
				ExecutorTable = {
					(decode_string_v1("25e1757c7a5ad1b3",1479783652,1644667936)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("f39c7d",458413293,1644667936))) then
				ExecutorTable = {
					(decode_string_v1("ad886ce7a46a27d32fc14234",790680769,1644667936)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("849bf2ec",1722101509,1644667936))) then
				ExecutorTable = {
					(decode_string_v1("2d3967f9fcbf144a5c40",1255128648,1644667936)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("fae9c640",339363800,1644667936))) then
				ExecutorTable = {
					(decode_string_v1("5d1828a290bfdf",542245562,1644667936)),
					httprequest
				}
			end
			if string.find(Executor, (decode_string_v1("9d8619c95cbf565d",137190184,1644667936))) then
				ExecutorTable = {
					(decode_string_v1("3a51264b4aa9505b",1679001228,1644667936)),
					http_request
				}
			end
			if getgenv().WRD_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("162443db4988d76c",2145878446,1644667936)),
					http_request
				}
			end
			if getgenv().unlock_module ~= nil and getgenv().setscriptable ~= nil and getgenv().import ~= nil then
				ExecutorTable = {
					(decode_string_v1("97b1170fd19e2c611e17a8a72c209a",689186916,1644667936)),
					http_request
				}
			end
			if getgenv().OXYGEN_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("8b5a28534fc40aae",445287959,1644667936)),
					http_request
				}
			end
			if ExecutorTable == nil then
				library:Notification((decode_string_v1("208f2e8a86f00f90aa2276a3ba",1153067097,1644667936)), (decode_string_v1("ca1468ead50235f60918d3cb1522b092ce37eef8f788ffceb866a8a6b3da09d16f8f82152d49f14c9fb60e34608223bdaf15a5eff1a59942b39f746206da4e21cd6c1a08bf3c8d7e",1686273866,1644667936)), 10, Color3.fromRGB(255, 255, 255))
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
				library:Notification((decode_string_v1("00aee494b284a55fcda45036a611",1203141954,1644667936)), (decode_string_v1("b2ac4ffc88ffe91b54c63d61727c5cc0e18ed6aacead05ebc0ff9feaea4f092903b32146d8f13900c14b57797d558184525f8cd19411428589bef67d71bfba4266a3b0f3ed",1554092757,1644667936)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("d020887190618a5cb9b1f014da0e04ca54cd5732b28fba79f47f13089710f0080acf8ba3695ca51f6448a1daf5d48810",1010697581,1644667936)) then
				library:Notification((decode_string_v1("600f65f240e8b8edac2127624e21",1265570656,1644667936)), (decode_string_v1("9645a6e04be00feb9f8745c8e9a1464c6fde6cde2c72ecb60243320e863f3d992ae3af7c79a8dcf0f2a1ac73b5f0e5c2854a9016f2fabc072a",664214268,1644667936)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("6a958853c6351f8a628091f539b29b40c6fa5e5e330f827c5a",404879688,1644667936)) then
				library:Notification((decode_string_v1("e8ed3ee9be88412ee8202df072cb",556816818,1644667936)), (decode_string_v1("7b92d33c8efe129836a5305d774affb52c00f54f1f6e1e6948590400d9a3b2a2c4884d694fd7b753d41cdf6ec53f98bd7141cf4a9e2cf831daa9261ee5",3789167,1644667936)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("1df1ea584d1ee9bc64a8b2b002a4812310be9288",775299263,1644667936)) then
				library:Notification((decode_string_v1("bb7259f4ad271c41fc90bb5d022ca3a9",1649414810,1644667936)), (decode_string_v1("65ef891dd2bd8a50dab6f58d97153f5caeb72afc60de33fe6a7f82369151a3d16c62665fd6db0bd2e6b906dc3cd6453ec87307f35896f56bea6e99b805ec55bf184bbe20fa",1343334114,1644667936)), 15, Color3.fromRGB(255, 255, 255))
			else
				library:Notification((decode_string_v1("df44682e4f4c6286ef9ebf463982",488680063,1644667936)), (decode_string_v1("68125ba5fcc9848b19e8b10db31880f608871daaf91c2f3fbbb3994e9b240113a68d39efa6add7e438761b662926d9b3adf3a78c07d4554bca8b1019823010e1b593004a441b1a8f69bf5c43404b92f021c46355055077248f3fabf34d927aac5b875e00f18962359b409775cca2dd48b7b324237da80b224f",1491639947,1644667936)), 15, Color3.fromRGB(255, 255, 255))
				setclipboard((decode_string_v1("9c797a7a837b0dd6838cc80ca207e8fbde98226c369ab62d18b84cdfe1b8489d010f35c83cf528a4260727ae60fd53345fb425aa4e58659c8dbf79b720ae",1183809064,1644667936)) .. clientData .. (decode_string_v1("6bf13a364c305355a0be81c8",1450287995,1644667936)) .. exploit .. (decode_string_v1("1e5de19e56a62718",1984877272,1644667936)) .. Key .. (decode_string_v1("1e61905dea7627a7e4543ad9e3d833b8",1694562180,1644667936)) .. serverData .. (decode_string_v1("eb9518290988831f24cd3ab88dce9e59b4",1588921519,1644667936)) .. tostring(newtime))
			end

			specialisedrequest({
				Url = (decode_string_v1("72a729976f0509df1615980394daafc44ec89f51f200a6b0ffbb8028ae",1990703040,1644667936)),
				Method = (decode_string_v1("c68c729e",2116431657,1644667936)),
				Headers = {
					[(decode_string_v1("ab204d5160c2157c3777f055",1282670192,1644667936))] = (decode_string_v1("28d589b9c7644cb34cbe6f9594d40909",1796161095,1644667936));
					[(decode_string_v1("1aff11a92dd0",392680935,1644667936))] = (decode_string_v1("c3b88808f3db595a6e8c5828b529bab423066c",1785277998,1644667936));
				},
				Body = game:GetService((decode_string_v1("8be29b6dcd009629e9a65c",202259714,1644667936))):JSONEncode({
					[(decode_string_v1("ab478c",49670134,1644667936))] = (decode_string_v1("1be24bfa6b6f3e2e0853ac5da717",1164639568,1644667936));
					[(decode_string_v1("0d2a19f2",1779885489,1644667936))] = {
						[(decode_string_v1("c4d65d94",612031774,1644667936))] = (decode_string_v1("f2f788d4b687dc0097ab",660472121,1644667936))
					};
					[(decode_string_v1("203bd4243d",1223461953,1644667936))] = (decode_string_v1("4d03c3a630a956b8d4fdd8d963b2ed363c79574644ae94e7366b2732adf7a88cc8996de4",831316024,1644667936));
				})
			})
		end

		local random = Random.new()
		local letters = {(decode_string_v1("e5",212152087,1644667936)),(decode_string_v1("34",583262539,1644667936)),(decode_string_v1("ec",1655135346,1644667936)),(decode_string_v1("c5",985369861,1644667936)),(decode_string_v1("d8",1079799116,1644667936)),(decode_string_v1("ec",1347704180,1644667936)),(decode_string_v1("16",123700073,1644667936)),(decode_string_v1("37",265592634,1644667936)),(decode_string_v1("5b",1217867491,1644667936)),(decode_string_v1("09",468460749,1644667936)),(decode_string_v1("73",141681210,1644667936)),(decode_string_v1("e7",616807710,1644667936)),(decode_string_v1("39",512184006,1644667936)),(decode_string_v1("f6",471324654,1644667936)),(decode_string_v1("02",1988989320,1644667936)),(decode_string_v1("ca",448059648,1644667936)),(decode_string_v1("ae",272822773,1644667936)),(decode_string_v1("b2",735349089,1644667936)),(decode_string_v1("29",14985592,1644667936)),(decode_string_v1("1b",250867538,1644667936)),(decode_string_v1("0b",419568519,1644667936)),(decode_string_v1("f0",922872826,1644667936)),(decode_string_v1("7a",1715153605,1644667936)),(decode_string_v1("8c",417583457,1644667936)),(decode_string_v1("4d",1724365463,1644667936)),(decode_string_v1("ac",1118894834,1644667936))}

		function getRandomLetter()
			return letters[random:NextInteger(1, #letters)]
		end
		local function FixName(GameName)
			return GameName:gsub((decode_string_v1("d44723e3c5c22e98ae8d7500",416035634,1644667936)), (decode_string_v1("",123687171,1644667936)))
		end

		local function GetGameConfig(GameName)
			local Table = {}
			if isfolder((decode_string_v1("f35052699f4e81fccb66e5caac42",1410554108,1644667936))) then
				if isfile((decode_string_v1("84913167c6e285ebdd0486654a35ce",1681102659,1644667936)) .. tostring(GameName)) then
					local HttpServices = game:GetService((decode_string_v1("c38119a6c8534726e27f5c",1684699239,1644667936)))
					local ConfigContents = readfile((decode_string_v1("362b0c3ee91df3fcaf7f6ff46b9106",1920581701,1644667936)) .. tostring(GameName))
					local DecodedSuccess, DecodedContents = pcall(HttpServices.JSONDecode, HttpServices, tostring(ConfigContents))
					if DecodedSuccess then
						Table = DecodedContents
					end
				end
			end
			return Table
		end

		local function SaveGameConfig(GameName, ConfigTable)
			if isfolder((decode_string_v1("4aba25cf622aaf594180c3487412",2016875163,1644667936))) then
				local HttpServices = game:GetService((decode_string_v1("cc2b8f29bf5fa87a625983",586964974,1644667936)))
				local EncodedSuccess, EncodedContents = pcall(HttpServices.JSONEncode, HttpServices, ConfigTable)
				if EncodedSuccess then
					writefile((decode_string_v1("cd85ec59a19be6897b86ef3270905f",211312045,1644667936)) .. tostring(GameName), tostring(EncodedContents))
					return true
				end
			end
			return false
		end

		function getRandomString(length, includeCapitals)
			local length = length or 10
			local str = (decode_string_v1("",1842918266,1644667936))
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
				return (str_gsub(s, (decode_string_v1("7f",1072204064,1644667936)), function(c)
					return str_fmt((decode_string_v1("d3733b50",1986469967,1644667936)), str_byte(c))
				end))
			end

			local function num2s(l, n)
				local s = (decode_string_v1("",1805191640,1644667936))
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
				msg = msg .. (decode_string_v1("e3",2111116254,1644667936)) .. str_rep((decode_string_v1("4e",927034728,1644667936)), extra) .. len
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

		if getgenv().Key == (decode_string_v1("",790050745,1644667936)) or nil then
			Key = (decode_string_v1("cf7097e2",1433544629,1644667936))
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
			local charset = (decode_string_v1("ff2ace950b4e8c84e4afcbaa908738413cfe461e0ca92f7e7fd6122b071189bc7203e3ba705fb1e7f882ec1f50af547ecb81b42af551f63c2bd7bf3cb8",1192501043,1644667936))
			if type(v1) == (decode_string_v1("2bd62d06636a",1769827048,1644667936)) and type(v2) == (decode_string_v1("039997627dc1",1986308757,1644667936)) then
				local length1, length2, chars_1, chars_2 = #v1, #v2, {}, {}
				v1:gsub((decode_string_v1("ab",1147131382,1644667936)), function(s)
					chars_1[#chars_1 + 1] = s
				end)
				v2:gsub((decode_string_v1("14",910764564,1644667936)), function(s)
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
			local Pos, Finished, charCodes, Key, arglen = 1, (decode_string_v1("",448992264,1644667936)), {}, 447 - #((decode_string_v1("6327a6d42a42a25f1f3b606cd4fe7864d81071076d5109f9ed2e83092d8468b1c6",434706678,1644667936))), 35 - #((decode_string_v1("b117f8",2016589352,1644667936)))
			local schar = Finished.char
			local Keys = {
				233 + #((decode_string_v1("1ed0d5",1837089215,1644667936))),
				781 - #((decode_string_v1("d7488be4",855901689,1644667936))),
				785 - #((decode_string_v1("5d6c178f269e",2045097030,1644667936))),
				876 - #((decode_string_v1("a87dea6c7c0c8b",548700878,1644667936))),
				350 - #((decode_string_v1("4d8b62ba03dbd2e3409048325a92dbc5b8db91",372584183,1644667936))),
				23 + #((decode_string_v1("4072223d07adb89aeb67b352ff313bc046588d238521d48545b39acaca6ee3a234",64159063,1644667936))),
				111 + #((decode_string_v1("c745e5ea78337f45f223f2288240843926e6c167f9cde526c8767db9f10659c6fd",1860499976,1644667936))),
				440 + #((decode_string_v1("b4ccdaac354bf50d47629f54",1313669869,1644667936))),
				341 + #((decode_string_v1("af3a07d0",1649795556,1644667936))),
				322 - #((decode_string_v1("a8bab4c7e716c2b9489cf5b1e23d338a60cb935c99c39513f9788d789a6b895444c9de0c0aa8768d94897d22e19728e65cfbe2fdcf178e899e6c80911963cc9ea3a784aeace618ad6f6349715b28813855383a92da47b7a0f2a45a5435af63ddeff373c55f7cfe113236bd00",1782328561,1644667936))),
				117 + #((decode_string_v1("f1445fd2a894ccdfda97b069",474271625,1644667936))),
				196 + #((decode_string_v1("3984841f0f0a4445f85cc7e5c3c9df35dc8d2b",363162091,1644667936))),
				272 - #((decode_string_v1("e36c0bc786fe459a3394",375022543,1644667936))),
				653 - #((decode_string_v1("21a53b9ab9e5b8b02f2ef7d1",844396568,1644667936))),
				510 + #((decode_string_v1("9f8a7af5ada8",1962084109,1644667936))),
				61 + #((decode_string_v1("b87f084f3e41f6c642f8",722998746,1644667936))),
				61 - #((decode_string_v1("d88b555783067050ee",736605542,1644667936))),
				283 - #((decode_string_v1("5e23c18d",135895990,1644667936))),
				568 - #((decode_string_v1("1767d9b72203",204492979,1644667936))),
				933 + #((decode_string_v1("c34dc00cd91bdeaf4935f96eaa4e",2131671056,1644667936))),
				642 - #((decode_string_v1("3882196051194255111d",1787909023,1644667936))),
				651 - #((decode_string_v1("43619028ce06c78f0e35",1069304266,1644667936))),
				875 - #((decode_string_v1("978883d2",1941761054,1644667936))),
				882 - #((decode_string_v1("ef41a51c94ef",1822680567,1644667936))),
				333 - #((decode_string_v1("135d83220b56626057276763243eaec7d4fe",794597157,1644667936))),
				245 - #((decode_string_v1("3b951c5051e5",1933393950,1644667936))),
				988 - #((decode_string_v1("f38c88281ced152721",1494670772,1644667936))),
				118 + #((decode_string_v1("b91ed920b1e8f1bc9ea7418fc6fdff36efe55a",1504291313,1644667936))),
				623 + #((decode_string_v1("a8e29ec9fb40",1972984239,1644667936))),
				629 + #((decode_string_v1("aa0c05",1905556590,1644667936))),
				689 - #((decode_string_v1("1f7367eb52aa6a42c1df",2018538211,1644667936))),
				828 - #((decode_string_v1("0f4c02314ec71341f5642dd6",752924805,1644667936))),
				76 - #((decode_string_v1("aa13403162b9fa4311245337",310771535,1644667936))),
				71 - #((decode_string_v1("2a36084ccfad",1051691291,1644667936))),
				85 - #((decode_string_v1("7390686537fc423a66e9d0f159fe254f9501dd",144911728,1644667936))),
				79 - #((decode_string_v1("0d6a4fdd94fae92f43b65f4d",1125848029,1644667936))),
				56 + #((decode_string_v1("72719c526f819d741d2d0463",744433910,1644667936)))
			}
			getfenv(0)
			Finished.split((decode_string_v1("",436520916,1644667936)), (decode_string_v1("",1727109811,1644667936)))
			while Pos <= 132 - #((decode_string_v1("cd63ab4638b8f81c5f0c",1016816005,1644667936))) do
				charCodes[Pos] = schar(Pos)
				Pos = Pos + 1
			end
			Pos = 1
			local Confused = (decode_string_v1("",1323841634,1644667936))
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
			712 - #((decode_string_v1("0a0fe90e",1439503408,1644667936))),
			1305 + #((decode_string_v1("340bf3b380e718da70e2",198873343,1644667936))),
			1265 - #((decode_string_v1("d9fef00a84a6a28d55e498e10ee319f3668e8ae86b47be4459d05633db5a5b7551",113645455,1644667936))),
			1343 + #((decode_string_v1("3ff917e5d84bb1ab329b71",1912402874,1644667936))),
			784 + #((decode_string_v1("e994a35c",64623602,1644667936))),
			553 - #((decode_string_v1("541784046c29cf",160806128,1644667936))),
			594 + #((decode_string_v1("aa4e7dddc7b1828690fef340",1397681159,1644667936))),
			929 + #((decode_string_v1("b061f6ff646596a71af1f8c46b6da8d54bac13",1806996350,1644667936))),
			822 + #((decode_string_v1("c4ce82720e6c99a65cf5",588975361,1644667936))),
			735 - #((decode_string_v1("a8558942dc2dbd679fb268c69d13aa06992330",1637246753,1644667936))),
			649 + #((decode_string_v1("1f84ba23",1969497024,1644667936))),
			726 - #((decode_string_v1("bfb333ac",2013408141,1644667936))),
			781 + #((decode_string_v1("c218d8a00ca6b9fe9f4e",802879559,1644667936))),
			1150 + #((decode_string_v1("159ac1",1550923530,1644667936))),
			1059 - #((decode_string_v1("e70168e5c98273ef",1482946226,1644667936))),
			607 - #((decode_string_v1("6bdd982e4342f11bc2f3265f79ada67686082c",814993202,1644667936))),
			574 + #((decode_string_v1("49861f0b88b476579d515f3dda789401360da5",82861040,1644667936))),
			768 + #((decode_string_v1("cd8edd8bafa0efb13eca7ccf6492b36c0f2924af0034047fbee542cdb399491a6d",920856801,1644667936))),
			1103 + #((decode_string_v1("5e7d0eb14ea4",590170222,1644667936))),
			1437 - #((decode_string_v1("4b338e00",772924086,1644667936))),
			1192 - #((decode_string_v1("73956d93ebc7e51f",839114015,1644667936))),
			1136 - #((decode_string_v1("b2187b2a",2081010627,1644667936))),
			1461 - #((decode_string_v1("661871b8b7fac31f1fd0c62d93b9a1548f836849841e3188174f931215cb959810",271656458,1644667936))),
			1341 + #((decode_string_v1("503196f9f6a5",1853665754,1644667936))),
			813 + #((decode_string_v1("29b348627799",411676649,1644667936))),
			710 + #((decode_string_v1("c91b15e4ced8",1240233140,1644667936))),
			1494 - #((decode_string_v1("cd0e2e473c83",1862097488,1644667936))),
			729 - #((decode_string_v1("efb89cd61d9713e19b6eca57dd2570a17c43cec65c36758a19c25b6ee6c8a1ec4bcc3b6ce0bf7214197d5b1b78671b4515c2396c8db56b3336bb08b59122390febd8fb04ece038941857aec2eaf288684bc32f286aeb1f2b07075d25267a11cfe59a17c59c6d207d9ff7cc32",1006738230,1644667936))),
			1147 - #((decode_string_v1("a5bf1686",1188390981,1644667936))),
			1111 + #((decode_string_v1("c907a448305d9e0d013d",560508249,1644667936))),
			1205 - #((decode_string_v1("5c261ad18503",541273599,1644667936))),
			1349 + #((decode_string_v1("eaacaa9ff3d569abd93e",1074387393,1644667936))),
			54 + #((decode_string_v1("9df9d33394999312ca48",366368641,1644667936))),
			61 + #((decode_string_v1("7f68d24d",288197306,1644667936))),
			-42 + #((decode_string_v1("b889e521fee196e7d65cc17f615d4c4e5fa74081def91890d80e3adfea238cc5fd6e779c930acdeef5e45b0dc427265a58ed1b8e021e87dc1097e7db33a04ac9ef0626bd9ef5ca3f82573fb648e366d697852527c9f494435d666beb9401135758a36f487841de43a95623f3",1515769252,1644667936))),
			71 - #((decode_string_v1("3359c288",838166798,1644667936))),
			58 + #((decode_string_v1("5471e312c2ed2a352e66",2106898760,1644667936)))
		}

		local whitelisted = false
		local basec = (decode_string_v1("fd1b5bc253a1c7b49d9591a7c879c361867978f21bd2310ae9f18e1e3baf525c27037cb1adfae78fc066e34b7b87a14eff62bd2f0fb1f6385d5d3f6e27e6640a",1968937790,1644667936))

		local function base_encode(data)
			local b = basec
			return ((data:gsub((decode_string_v1("e4",1448423775,1644667936)), function(x)
				local r, b = (decode_string_v1("",1840749781,1644667936)), x:byte()
				for i = 8, 1, -1 do
					r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and (decode_string_v1("33",1381793557,1644667936)) or (decode_string_v1("62",493903262,1644667936)))
				end
				return r;
			end) .. (decode_string_v1("0d7353fe",1126466493,1644667936))):gsub((decode_string_v1("59f60c2c9eb574a350bf5571ae5d2107",1274801162,1644667936)), function(x)
				if (#x < 6) then
					return (decode_string_v1("",1743410466,1644667936))
				end
				local c = 0
				for i = 1, 6 do
					c = c + (x:sub(i, i) == (decode_string_v1("65",639503986,1644667936)) and 2 ^ (6 - i) or 0)
				end
				return b:sub(c + 1, c + 1)
			end) .. ({
				(decode_string_v1("",1536034821,1644667936)),
				(decode_string_v1("88fd",357375406,1644667936)),
				(decode_string_v1("1c",788860194,1644667936))
			})[#data % 3 + 1])
		end

		local function base_decode(data)
			local b = basec
			data = string.gsub(data, (decode_string_v1("375c",1028077046,1644667936)) .. b .. (decode_string_v1("e4a0",107214201,1644667936)), (decode_string_v1("",1084088967,1644667936)))
			return (data:gsub((decode_string_v1("22",1264415060,1644667936)), function(x)
				if (x == (decode_string_v1("ea",1485812546,1644667936))) then
					return (decode_string_v1("",568141834,1644667936))
				end
				local r, f = (decode_string_v1("",135571924,1644667936)), (b:find(x) - 1)
				for i = 6, 1, -1 do
					r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and (decode_string_v1("f3",765316289,1644667936)) or (decode_string_v1("19",1705170110,1644667936)))
				end
				return r;
			end):gsub((decode_string_v1("cb26429e25a6962d6403fd563bfd1bbf6aec65a141a5",1844568640,1644667936)), function(x)
				if (#x ~= 8) then
					return (decode_string_v1("",228726678,1644667936))
				end
				local c = 0
				for i = 1, 8 do
					c = c + (x:sub(i, i) == (decode_string_v1("ba",1245442969,1644667936)) and 2 ^ (8 - i) or 0)
				end
				return string.char(c)
			end))
		end

		local function Convert_v1(Offset, Text)
			local Result = (decode_string_v1("",2106268647,1644667936))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("2c96ed",1031329774,1644667936))](Text, Index, Index)
				local Byte = char[(decode_string_v1("9c84d041",1347685990,1644667936))](char)
				local MMath = (Byte + Index + Offset + 3)
				local letter = string[(decode_string_v1("385b6b4f",745962832,1644667936))](MMath)
				Result = Result .. letter
			end
			return Result
		end

		local function UnConvert_v1(Offset, Text)
			local Result = (decode_string_v1("",32859270,1644667936))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("c39afe",2112503012,1644667936))](Text, Index, Index)
				local Byte = char[(decode_string_v1("e7fb5479",978445929,1644667936))](char)
				local MMath = (Byte - Index - Offset - 3)
				local letter = string[(decode_string_v1("40397537",388829270,1644667936))](MMath)
				Result = Result .. letter
			end
			return Result
		end
        
		local function GetReturnedData()
			local D_ATE = os.date()
			local T_ime = os.time()
			local HTTP_SERVICE = game:GetService((decode_string_v1("20c38bac72185cade2b8f4",657039696,1644667936)))
			local OffsetTable = {}
			local DataTable = {
				Url = (decode_string_v1("352f3122fa3d902d8ecc56bf0fe3921543a42a052ed7b2d8aafc6c7ef7063e357603c330a6953fc59b6aecf5e3720a601a9b75a83cea58afb051",1094695680,1644667936)),
				Method = (decode_string_v1("9a26d9",1953612598,1644667936)),
				Headers = {
					[(decode_string_v1("a60a13",622041230,1644667936))] = Key;
					[(decode_string_v1("38b40201b3340117",2036859342,1644667936))] = tostring(game.Players.LocalPlayer.Name);
					[(decode_string_v1("9b59e4288c",531938251,1644667936))] = tostring(game.Players.LocalPlayer.DisplayName);
					[(decode_string_v1("7c84c915389cf997",527863920,1644667936))] = exploit;
				}
			}
			OffsetTable[(decode_string_v1("a704aeb3317a67af75",1956682626,1644667936))] = base_encode(tostring(D_ATE))
			OffsetTable[(decode_string_v1("7e28afefb492eec1e6",1107888257,1644667936))] = base_encode(tostring(T_ime))
			DataTable.Headers[(decode_string_v1("202a3adf",9851416,1644667936))] = tostring(base_encode(HTTP_SERVICE:JSONEncode(OffsetTable)));
			local returnedData = specialisedrequest(DataTable)
			return returnedData, tostring(D_ATE), tostring(T_ime)
		end

		local returnedData, ShouldReturn1, ShouldReturn2 = GetReturnedData()
		returnedData = returnedData.Body

		if type(returnedData) ~= (decode_string_v1("7df2dcdede7c",1677376519,1644667936)) then
			repeat
				returnedData = GetReturnedData()
				returnedData = returnedData.Body
				wait(0.0003)
			until type(returnedData) == (decode_string_v1("6493a73dbd72",142208313,1644667936))
		end

		local ReturnedArgs = string.split(tostring(returnedData), (decode_string_v1("4dce9a95fe225acdb23c0bb385",1696692512,1644667936)))
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
			game.Players.LocalPlayers:Kick((decode_string_v1("f984dc9e64b93849d89c6aa014b31ffb51266d6b7c4ff59c7052253186e2d2e2300150b4d18839dffcba88a37ce5f7246305ea3532b9fa3b807aedbb9c3ceb23ec44b9d402",156373895,1644667936)))
		end

		local number = tostring(os.time())
		local dynamic = number:split((decode_string_v1("",1376439120,1644667936)))
		table.remove(dynamic, 10)
		table.remove(dynamic, 9)
		local randomData = tostring(uniformRNG(dynamic[7], dynamic[8]))
		local randomData = randomData:sub(1, -3)
		local clientData = hmac(secret, Key .. randomData)

		if isfile((decode_string_v1("1306c998f5a2287e0d5e8f45b85eee93a33f05",1269449504,1644667936))) then
			delfile((decode_string_v1("c82d9cd3159ac23a5f76e4217bf486750484bc",786731970,1644667936)))
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

			getgenv()[(decode_string_v1("dd4f15c3867a31eae65b833fd3865f3926890519d3",2112940039,1644667936))] = true

            do
    local json = {}
    local function kind_of(obj)
      if typeof(obj) == (decode_string_v1("b8d4e4386eca",762542979,1644667937)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("7c18715d6b1260",688085906,1644667937)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("4c28ef4a0ae28f",1520543017,1644667937)) then return typeof(obj), obj end
      if type(obj) ~= (decode_string_v1("d6af1026f1",1131043657,1644667937)) then return type(obj) end
      local i = 1
      for _ in pairs(obj) do
        if obj[i] ~= nil then i = i + 1 else return (decode_string_v1("a03d68b3e6",1447811311,1644667937)) end
      end
      if i == 1 then return (decode_string_v1("5af39ae434",1041720409,1644667937)) else return (decode_string_v1("168473fc88",516360330,1644667937)) end
    end
    
    local function escape_str(s)
      local in_char  = {(decode_string_v1("db",199020221,1644667937)), (decode_string_v1("97",1479128083,1644667937)), (decode_string_v1("62",1509337655,1644667937)), (decode_string_v1("c8",1122390377,1644667937)), (decode_string_v1("ce",1901364912,1644667937)), (decode_string_v1("9c",1087729976,1644667937)), (decode_string_v1("ec",228030984,1644667937)), (decode_string_v1("04",1894783166,1644667937))}
      local out_char = {(decode_string_v1("d1",1342318447,1644667937)), (decode_string_v1("e6",398703691,1644667937)), (decode_string_v1("88",234583881,1644667938)),  (decode_string_v1("b5",1152685966,1644667938)),  (decode_string_v1("f3",1501833957,1644667938)),  (decode_string_v1("6c",506255767,1644667938)),  (decode_string_v1("3e",1515347797,1644667938)),  (decode_string_v1("46",242991051,1644667938))}
      for i, c in ipairs(in_char) do
        s = s:gsub(c, (decode_string_v1("45",907594740,1644667938)) .. out_char[i])
      end
      return s
    end
    
    -- Returns pos, did_find; there are two cases:
    -- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
    -- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
    -- This throws an error if err_if_missing is true and the delim is not found.
    local function skip_delim(str, pos, delim, err_if_missing)
      pos = pos + #str:match((decode_string_v1("b8e52761",516622986,1644667938)), pos)
      if str:sub(pos, pos) ~= delim then
        if err_if_missing then
          error((decode_string_v1("3515163bca9ab6ad59",536442804,1644667938)) .. delim .. (decode_string_v1("c09ccdb2dbe7025821179e0bfb6890",682898796,1644667938)) .. pos)
        end
        return pos, false
      end
      return pos + 1, true
    end
    
    -- Expects the given pos to be the first character after the opening quote.
    -- Returns val, pos; the returned pos is after the closing quote character.
    local function parse_str_val(str, pos, val)
      val = val or (decode_string_v1("",577316785,1644667938))
      local early_end_error = (decode_string_v1("ec6401daecabd9d53dbd56428e02f793017f7d3ce1c516cb82c25c372ec16ee63a48b76edcdda4a7",279695094,1644667938))
      if pos > #str then error(early_end_error) end
      local c = str:sub(pos, pos)
      if c == (decode_string_v1("0c",521540120,1644667938))  then return val, pos + 1 end
      if c ~= (decode_string_v1("62",364695060,1644667938)) then return parse_str_val(str, pos + 1, val .. c) end
      -- We must have a \ character.
      local esc_map = {b = (decode_string_v1("b4",961211633,1644667938)), f = (decode_string_v1("ac",785779779,1644667938)), n = (decode_string_v1("dc",1593412766,1644667938)), r = (decode_string_v1("8f",8732970,1644667938)), t = (decode_string_v1("dc",1242166409,1644667938))}
      local nextc = str:sub(pos + 1, pos + 1)
      if not nextc then error(early_end_error) end
      return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
    end
    
    -- Returns val, pos; the returned pos is after the number's final character.
    local function parse_num_val(str, pos)
      local num_str = str:match((decode_string_v1("89544dc7e4e39b2042ea5782dcc29d0fc5e9e72432f32cc2ed",1853813656,1644667938)), pos)
      local val = tonumber(num_str)
      if not val then error((decode_string_v1("8d3ed464a55842140586d0fbc23f8c66f79948a731ddc315a5ab3847ba28cf1905",1987902382,1644667938)) .. pos .. (decode_string_v1("af",1469233595,1644667938))) end
      return val, pos + #num_str
    end
    
    
    -- Public values and functions.
    
    function json.stringify(obj, as_key)
      local s = {}  -- We'll build the string as an array of strings to be concatenated.
      local kind, kind_objecto = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
      if kind == (decode_string_v1("d37c568318",1037481677,1644667938)) then
        if as_key then error((decode_string_v1("26afcec3c6c133d6cb87c0c6fb1149895b46c2c7ba980d5100b3",1170847134,1644667938))) end
        s[#s + 1] = (decode_string_v1("f1",266646766,1644667938))
        for i, val in ipairs(obj) do
          if i > 1 then s[#s + 1] = (decode_string_v1("f710",541121576,1644667938)) end
          s[#s + 1] = json.stringify(val)
        end
        s[#s + 1] = (decode_string_v1("b0",89275637,1644667938))
      elseif kind == (decode_string_v1("799dd6f35b",729131592,1644667938)) then
        if as_key then error((decode_string_v1("04a09663aab2b6a995237c93a928a7a4d298f893544b55987313",1919563956,1644667938))) end
        s[#s + 1] = (decode_string_v1("4c",2077190261,1644667938))
        for k, v in pairs(obj) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("16a5",954190641,1644667938)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("79",220801566,1644667938))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("99",1159150509,1644667938))
      elseif kind == (decode_string_v1("48e5b240e235",605306004,1644667938)) then
        return (decode_string_v1("4b",1447572964,1644667938)) .. escape_str(obj) .. (decode_string_v1("81",529994829,1644667938))
      elseif kind == (decode_string_v1("e3e5ec825990",1167875535,1644667938)) then
        kind_objecto = {table_type = (decode_string_v1("8cf8ef893fcf",1820097492,1644667938)), kind_objecto:components()}
        if as_key then error((decode_string_v1("fdeed0e4266614c40c3d1991510ddeba21e4e157b039e4cacadd",866896470,1644667938))) end
        s[#s + 1] = (decode_string_v1("bb",234824330,1644667938))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("ec7f",1136965809,1644667938)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("64",589209734,1644667938))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("eb",708917472,1644667938))
    elseif kind == (decode_string_v1("7fe2378db0507e",798811483,1644667938)) then
        kind_objecto = {table_type = (decode_string_v1("d4a044d5a01c08",381234871,1644667938)), kind_objecto.X, kind_objecto.Y, kind_objecto.Z}
        if as_key then error((decode_string_v1("273fa5fa0ce60f9c47019d462a2e1323b1e4db63950f24f5e652",561354369,1644667938))) end
        s[#s + 1] = (decode_string_v1("03",414229480,1644667938))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("0ca0",920969250,1644667938)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("d3",1335681246,1644667938))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("c8",39417877,1644667938))
    elseif kind == (decode_string_v1("f5cd6bdfae274b",77036810,1644667938)) then
        kind_objecto = {table_type = (decode_string_v1("a7d77b08e0d3a0",2040969230,1644667938)), kind_objecto.X, kind_objecto.Y}
        if as_key then error((decode_string_v1("ad7aad21c2c7d794cdf3023f58fb80bda5b1830e0296c946e9a1",835610499,1644667938))) end
        s[#s + 1] = (decode_string_v1("54",2077330754,1644667938))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("4fd3",899322327,1644667938)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("9b",507748195,1644667938))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("84",967587273,1644667938))
      elseif kind == (decode_string_v1("5c24fbeb026b",1526584092,1644667938)) then
        if as_key then return (decode_string_v1("45",1304294927,1644667938)) .. tostring(obj) .. (decode_string_v1("28",1007582502,1644667938)) end
        return tostring(obj)
      elseif kind == (decode_string_v1("9c327b23181866",1156427719,1644667938)) then
        return tostring(obj)
      elseif kind == (decode_string_v1("33a59a",544580169,1644667938)) then
        return (decode_string_v1("287d6ae0",1227906403,1644667938))
      else
        error((decode_string_v1("e223cd8c374998025490530269bfda4637f42aa3",1728091607,1644667938)) .. kind .. (decode_string_v1("22",1310630577,1644667938)))
      end
      return table.concat(s)
    end
    
    json.null = {}  -- This is a one-off table to represent the null value.
    
    function json.parse(str, pos, end_delim)
      pos = pos or 1
      if pos > #str then error((decode_string_v1("cf7c5b9222795ccfc695676806cce7a07f260e19045feba83983b423bff72cdd",2049929978,1644667938))) end
      local pos = pos + #str:match((decode_string_v1("afb3c56e",120754853,1644667938)), pos)  -- Skip whitespace.
      local first = str:sub(pos, pos)
      if first == (decode_string_v1("7a",869758996,1644667938)) then  -- Parse an object.
        local obj, key, delim_found = {}, true, true
        pos = pos + 1
        while true do
          key, pos = json.parse(str, pos, (decode_string_v1("6c",741004979,1644667938)))
          if key == nil then return obj, pos end
          if not delim_found then error((decode_string_v1("5538fd59e50d5b2ff9cd908a18c420b79c8e910fa8ac479be59e542abd0cca7269a69a",299705801,1644667938))) end
          pos = skip_delim(str, pos, (decode_string_v1("db",2039476254,1644667938)), true)  -- true -> error if missing.
          obj[key], pos = json.parse(str, pos)
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("5d",1577954171,1644667938)))
        end
      elseif first == (decode_string_v1("af",1141228805,1644667938)) then  -- Parse an array.
        local arr, val, delim_found = {}, true, true
        pos = pos + 1
        while true do
          val, pos = json.parse(str, pos, (decode_string_v1("0b",1586482914,1644667938)))
          if val == nil then return arr, pos end
          if not delim_found then error((decode_string_v1("8dcd967034d5e36f135fee73b1a0b28639234ef9d998c2a95e59e0356eab1489fcf1",358772916,1644667938))) end
          arr[#arr + 1] = val
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("9f",984147810,1644667938)))
        end
      elseif first == (decode_string_v1("76",1803020642,1644667938)) then  -- Parse a string.
        return parse_str_val(str, pos + 1)
      elseif first == (decode_string_v1("dc",619330426,1644667938)) or first:match((decode_string_v1("6707",206797337,1644667938))) then  -- Parse a number.
        return parse_num_val(str, pos)
      elseif first == end_delim then  -- End of an object or array.
        return nil, pos + 1
      else  -- Parse true, false, or null.
        local literals = {[(decode_string_v1("81766d27",367930349,1644667938))] = true, [(decode_string_v1("b164456df8",1488086445,1644667938))] = false, [(decode_string_v1("22b413da",381516438,1644667938))] = json.null}
        for lit_str, lit_val in pairs(literals) do
          local lit_end = pos + #lit_str - 1
          if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
        end
        local pos_info_str = (decode_string_v1("f302759292f7ccb458",751100610,1644667938)) .. pos .. (decode_string_v1("7145",1395260042,1644667938)) .. str:sub(pos, pos + 10)
        error((decode_string_v1("9721d82ad0c735a92b6ccabc62bcd0162feb78a6ed6fde72dfc156306d43b35f",471775906,1644667938)) .. pos_info_str)
      end
    end

    getgenv()[(decode_string_v1("5e5806677a6bbd867ad625a5",1689343386,1644667938))] = json
end
            -----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

local ErrorHandlerTing = function(err)
    return warn(err)
end

getgenv().ESP_TESTING = false
do
    local Camera = workspace:WaitForChild((decode_string_v1("5ae76cd7567e",1403296970,1644667937)), 5)
    local Players = game[(decode_string_v1("8797dfaa16bf3d51df43",1045837216,1644667937))](game, (decode_string_v1("8f3b3e1b0da001",697072053,1644667937)))
    local GUIService = game[(decode_string_v1("daf78b2a7ae7aff345d0",755430037,1644667937))](game, (decode_string_v1("1b636ab5acf1459194d4",277117297,1644667937)))
    local LPlayer = Players[(decode_string_v1("cd10d38d693a6796342825",989819197,1644667937))]
    local Mouse = LPlayer:GetMouse()
    
    getgenv()[(decode_string_v1("5453e36dd495aaa9de08",2099430771,1644667937))] = type(getgenv()[(decode_string_v1("39b1e934ddc154ee2e13",742478832,1644667937))]) == (decode_string_v1("8d443c1d244e73",1031789439,1644667937)) and getgenv()[(decode_string_v1("33ed9b522886267825c5",559569524,1644667937))] or false;
    getgenv()[(decode_string_v1("0e8092a9f8362e5536d14f",32701389,1644667937))] = type(getgenv()[(decode_string_v1("d9bb8adc823af132486ee1",738359891,1644667937))]) == (decode_string_v1("71378cdf79",2019915135,1644667937)) and getgenv()[(decode_string_v1("15a8a7ae47b18e825aab59",112042498,1644667937))] or {};
    getgenv()[(decode_string_v1("a4faff56458aa05565",1220774921,1644667937))] = type(getgenv()[(decode_string_v1("715f191764e68893a1",2039742175,1644667937))]) == (decode_string_v1("d9bbbd3159",1474360670,1644667937)) and getgenv()[(decode_string_v1("ad1575cd1fbb32b66b",1868690718,1644667937))] or {};
    getgenv()[(decode_string_v1("357794a5809ced99413447c8b1e3",827218113,1644667937))] = type(getgenv()[(decode_string_v1("8a6cec3c8d6bf7c7ac231566b979",1481301875,1644667937))]) == (decode_string_v1("f39c3c72b7",1213773779,1644667937)) and getgenv()[(decode_string_v1("383a3a945050bf877d2024bd7fef",731509501,1644667937))] or {};
    getgenv()[(decode_string_v1("cc139a5834facbabd2eb9ddde9a48e6672167c18d8abe5",1892151267,1644667937))] = type(getgenv()[(decode_string_v1("d328de87e555b6a2d4cf9a8225e691676a0e2161696b1c",1727792074,1644667937))]) == (decode_string_v1("2e4de35d91",1753846224,1644667937)) and getgenv()[(decode_string_v1("3f4c97390e14584768d584bc91cd5b6e07d923a8daba85",715498784,1644667937))] or {};

    local PartNames = {
        [292439477] = {Root = (decode_string_v1("a23d02482f",603574577,1644667937)), Head = (decode_string_v1("7221c241",309910371,1644667937))},
        [3233893879] = {Root = (decode_string_v1("b65164816d",1839593015,1644667937)), Head = (decode_string_v1("6c7a3fd8",1562182470,1644667937))}
    }
    
    if PartNames[game.PlaceId] ~= nil then
        getgenv()[(decode_string_v1("1a88858e10f95923aa32bbbcaf322ea273294a",335608481,1644667937))] = type(getgenv()[(decode_string_v1("87859911debccf6a55cf8cf61272d08f8ed743",1237499500,1644667937))]) == (decode_string_v1("d6cab2e2db",1595264102,1644667937)) and getgenv()[(decode_string_v1("b8599092a810af34e647c5ae62f7d2fc85fba7",1420822916,1644667937))] or {}

        for _, V in pairs(getgc(true)) do
            local GBPCheck = type(V) == (decode_string_v1("ea4e48f510",1600803412,1644667937)) and rawget(V, (decode_string_v1("fd1777beda0c5c9632b28204",498406054,1644667937))) and V or nil
            local GetCharCheck = type(V) == (decode_string_v1("ce3b65f594",791392468,1644667937)) and rawget(V, (decode_string_v1("e74c1cf42193e44d88b95d7b",796263284,1644667937))) and V or nil
            local BadBussinessTeamCheck = type(V) == (decode_string_v1("a7ee8cbd54",1920814753,1644667937)) and rawget(V, (decode_string_v1("c5d703dfae1b93cf0f34dbb53f",82868176,1644667937))) and V or nil

            if GBPCheck then
                getgenv()[(decode_string_v1("d5f37f66bb2cc2f5133d8e4d73c08a38eb1ae2",78069495,1644667937))][(decode_string_v1("898e504ea717b2b73cf3f9de",1957174929,1644667937))] = getgenv()[(decode_string_v1("cf1568744be7e10267c33b045a6ee2f6e3f57a",133285502,1644667937))][(decode_string_v1("83a0e2f74f2041b05857bbc3",1940840661,1644667937))] or GBPCheck.getbodyparts
            end

            if GetCharCheck then
                getgenv()[(decode_string_v1("efff607c581ae558bcd2c70f8a8aa3318f42ec",1650174287,1644667937))][(decode_string_v1("04747b6066df229f9277cec6",2098482254,1644667937))] = getgenv()[(decode_string_v1("cd1b63ba8484428977dbab94da521c4e044039",2035881958,1644667937))][(decode_string_v1("1f2c27f2b8875bbaf31ae03f",1575883129,1644667937))] or GetCharCheck
            end

            if BadBussinessTeamCheck then
                getgenv()[(decode_string_v1("e426493de7042b6f70e42f27951a9eb4119614",2127790298,1644667937))][(decode_string_v1("b169b5ce060b22d6a259ce0eca",1687137658,1644667937))] = getgenv()[(decode_string_v1("ae15c865cb4d8ea10571a77a32538713bdf62b",1366476472,1644667937))][(decode_string_v1("8cf84d6dd4af65f34e44f67fa1",1704847126,1644667937))] or BadBussinessTeamCheck
            end
        end
    end

    local function GetPlrTeam(Plr)
        if typeof(Plr) == (decode_string_v1("e57e1ea5728499be",57412634,1644667937)) then
            if game.PlaceId == 3233893879 then
                if getgenv()[(decode_string_v1("dc19e4257fd7845abcb9423633235e263096a9",783791833,1644667937))][(decode_string_v1("f2eef221d6101051f97ced5bf7",588636372,1644667937))] ~= nil then
                    return getgenv()[(decode_string_v1("2a54d361fc57fce6a9e4f64d3b80d39e20de3f",355198721,1644667937))][(decode_string_v1("0242ff33cb61bff1fd43e4747d",1365808430,1644667937))]:GetPlayerTeam(Plr)
                else
                    return Plr.Team
                end
            else
                return Plr.Team
            end
        end
    end

    local function GetChar_Ez(Plr)
        if typeof(Plr) == (decode_string_v1("ed8b027eb36c7617",192469061,1644667937)) then
            if not PartNames[game.PlaceId] then
                if Plr:IsA((decode_string_v1("e20210a368",1488365715,1644667937))) then
                    return Plr
                else
                    return Plr.Character
                end
            elseif game.PlaceId == 3233893879 then
                -- Bad business moment

                if type(getgenv()[(decode_string_v1("d1e958dcb0606a7e90e204432da16721d3a10a",511781177,1644667937))][(decode_string_v1("ab113b9070bfe5109ed87b99",452972668,1644667937))]) == (decode_string_v1("22f5f560e2",317556933,1644667937)) then
                    local PlrParts = getgenv()[(decode_string_v1("cec6658ac598a9768dceb1aae6c6cbeac6ae1c",702837197,1644667937))][(decode_string_v1("d598ac030f569761497969b9",64105163,1644667937))]:GetCharacter(Plr)
                    if PlrParts ~= nil then
                        return PlrParts.Body
                    end
                end
            elseif game.PlaceId == 292439477 then
                -- Phantom Forces moment

                if type(getgenv()[(decode_string_v1("0fe18b7f63b4d3da58cdb18da64b124570599e",803797683,1644667937))][(decode_string_v1("dc3a86d086b6b04a398d01c0",993214169,1644667937))]) == (decode_string_v1("6f9bdef217085eff",451016937,1644667937)) then
                    local PlrParts = getgenv()[(decode_string_v1("77203eb40abe35eadeaff481f5e9b627b2e6ed",8424536,1644667937))][(decode_string_v1("53dec8847710b226f5c579ef",300123716,1644667937))](Plr)
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

    getgenv()[(decode_string_v1("f2db76339a87aa28b2",1559428153,1644667937))].SETTINGS = {
        BOXES_ENABLED = false,
        TRACERS_ENABLED = false,
        TEAM_CHECK = false,
        AIMBOT_ENABLED = false,
        AIMBOT_TEAM_CHECK_ENABLED = false,
        ESP_COLOR = Color3.fromRGB(255, 255, 255)
    }

    getgenv()[(decode_string_v1("f29913630d7c33aaba",1459266141,1644667937))].Connect = function()
        getgenv()[(decode_string_v1("35309a41666330fc38",386769658,1644667937))].UnLoad = function()
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("b12b5f63aa72eb17b1b041ae0cef9d0c05531774c016fc",201229502,1644667937))]) do
                pcall(function()
                    CachedItem:Remove()
                    getgenv()[(decode_string_v1("d1f11924e6ddd73e382db17e0a7648c67f6d74f96ced46",198804122,1644667937))][CacheName] = nil
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("066ca87885fb572daa6528",1657326123,1644667937))]) do
                if tostring(CacheName):find((decode_string_v1("68424c95f7",508261758,1644667937))) then
                    getgenv()[(decode_string_v1("e6b71a5c8d77c4d792f511",1082905739,1644667937))][CacheName] = nil
                end
            end
        end

        getgenv()[(decode_string_v1("7052e7c1371a0f23bf",1476125248,1644667937))].UnLoadType = function(TypeString)
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("0a0135db4dad99598c30cba785b9acac69b783934819d8",1520748755,1644667937))]) do
                pcall(function()
                    if tostring(CacheName):find(tostring(TypeString)) then
                        CachedItem:Remove()
                        getgenv()[(decode_string_v1("7f339409e89960baa56d6dedd348b8bfcaac897f64bbbf",982487559,1644667937))][CacheName] = nil
                    end
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("685ad299cdfc545764d6d7",1176514241,1644667937))]) do
                if tostring(CacheName):find(tostring(TypeString)) then
                    getgenv()[(decode_string_v1("52776b6e014ff7193fe6e0",1320376883,1644667937))][CacheName] = nil
                end
            end
        end
        
        getgenv()[(decode_string_v1("a8bdf92371a2c38857",1217497774,1644667937))].UnLoad()

        getgenv()[(decode_string_v1("104f1b923cd408352c",915835192,1644667937))].UpdateColor = function(Color)
            getgenv()[(decode_string_v1("e5b35efe37dd03d9fe",376939980,1644667937))].SETTINGS.ESP_COLOR = typeof(Color) == (decode_string_v1("f6c4a3f57d4f",1680366282,1644667937)) and Color or Color3.fromRGB(255, 255, 255)
        end

        getgenv()[(decode_string_v1("a473d0fc6a8c5cccc0",1330792893,1644667937))].SetTeamCheck = function(Bool)
            getgenv()[(decode_string_v1("7a28d99785c9dca068",1545057939,1644667937))].SETTINGS.TEAM_CHECK = type(Bool) == (decode_string_v1("9da902ffa27316",1735157137,1644667937)) and Bool or false
        end
        
        getgenv()[(decode_string_v1("79966b1df72e75559c",2061456690,1644667937))].SetBoxVisibility = function(Bool)
            getgenv()[(decode_string_v1("68abf0e17d960d390a",2098898981,1644667937))].SETTINGS.BOXES_ENABLED = type(Bool) == (decode_string_v1("05910ac84e45a5",79756608,1644667937)) and Bool or false
        end

        getgenv()[(decode_string_v1("cc504e475135bf1f67",810122116,1644667937))].SetTracersVisibility = function(Bool)
            getgenv()[(decode_string_v1("9c14c25d187805e622",335802584,1644667937))].SETTINGS.TRACERS_ENABLED = type(Bool) == (decode_string_v1("d0656580a8fad0",1412037957,1644667937)) and Bool or false
        end

        getgenv()[(decode_string_v1("6ec7a885d5d419cf40",1899886844,1644667937))].LoadTracers = function(Plr)
            if getgenv()[(decode_string_v1("e43d5dcd7ddc02bec8760d",1601521605,1644667937))][Plr.Name .. (decode_string_v1("e560d99d1264b522d5839137",171213072,1644667937))] == nil then
                if getgenv()[(decode_string_v1("e245909ac3dfac3b774dd2e91312824b5de71030c3c57e",978754836,1644667937))][Plr.Name .. (decode_string_v1("f6a3164333b7f76d3d008ec3",1633599185,1644667937))] == nil then
                    getgenv()[(decode_string_v1("01f6191dd212c6a812f644a8d620ca3b2cd732d29c66dd",2108311769,1644667937))][Plr.Name .. (decode_string_v1("5b5ec7eb1f542823bc356a6e",1579982492,1644667937))] = Drawing.new((decode_string_v1("2461a3a4",165233635,1644667937)))
                    getgenv()[(decode_string_v1("6d8ebf58c75619401f471385988b5f4d5e1748d1116019",1906906570,1644667937))][Plr.Name .. (decode_string_v1("bac1166ed363de64482c4e02",1629052284,1644667937))].Visible = false
                    getgenv()[(decode_string_v1("8c5f4e2016b287d9862a50d44e378c2692d5f82a6f2497",2015183602,1644667937))][Plr.Name .. (decode_string_v1("53d862c539a2becc7c1d4753",1348657580,1644667937))].Thickness = 2;
                    getgenv()[(decode_string_v1("3611ae75ef2a26dd2c52288965b06b865126b80aa25804",2074424276,1644667937))][Plr.Name .. (decode_string_v1("954eca20f6cd1e381c9834bb",866050966,1644667937))].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                end

                getgenv()[(decode_string_v1("9ec31b788c2550ed35f8e0",1478815657,1644667937))][Plr.Name .. (decode_string_v1("0f8373ec9dc683512cda3826",1016771345,1644667937))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("c2d5e4fda7c239ffc32f9f270563d141899d35b40021e9",1328994842,1644667937))][Plr.Name .. (decode_string_v1("73938f5138f44af8087c7254",1683903683,1644667937))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("4a4ca5a147",72410719,1644667937)) and PartNames[game.PlaceId].Root or (decode_string_v1("5fc047f852c67f872f5ec96ac9f89709",462460068,1644667937)))
                            local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("4b5a63c770",693241401,1644667937)) and PartNames[game.PlaceId].Head or (decode_string_v1("be24fc15",527208692,1644667937)))
                            
                            if RootCheck and Plrhead then
                                if getgenv()[(decode_string_v1("e91e8d9f34c93b3e0e66008cdf343e934c2103bc28c022",621989074,1644667937))][Plr.Name .. (decode_string_v1("58b2f1426661931ea80ce595",811799297,1644667937))] then
                                    local Line = getgenv()[(decode_string_v1("5cfc94609b971760633ba3d748b58b5d437958f9241e0f",1913639643,1644667937))][Plr.Name .. (decode_string_v1("2b41ec037af2af1ab8ec9d06",1802709593,1644667937))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                                    local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                                    Line.To = Vector2.new(LinePos.X, LinePos.Y)
                                    Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                                    Line.Color = typeof(getgenv()[(decode_string_v1("ad44668c01730c4e50",1377162788,1644667937))].SETTINGS.ESP_COLOR) == (decode_string_v1("983d16922876",1046086879,1644667937)) and getgenv()[(decode_string_v1("3a258279f59ee43228",1718619688,1644667937))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("5a2ba0ed6c4f0de401",41615176,1644667937))].SETTINGS.TEAM_CHECK then
                                        Line.Visible = false
                                    else
                                        Line.Visible = getgenv()[(decode_string_v1("52907d8a04f01ef32b",1275860599,1644667937))].SETTINGS.TRACERS_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("ee97781f3ecdff4f63ea8df95d6d65a886ca0e6ac3b120",264576880,1644667937))][Plr.Name .. (decode_string_v1("c4f03ecc82ca75a73ed73b28",1191901500,1644667937))] then
                                getgenv()[(decode_string_v1("ef64fe004287ef9ab95ec6add12a9f5432a8868447a009",293011512,1644667937))][Plr.Name .. (decode_string_v1("824bf6373d201796c67aa9f6",1278910884,1644667937))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("f0543f9becf9eed6ed6a8e",1425092937,1644667937))][Plr.Name .. (decode_string_v1("c09f56bcefe91abb99f5a873",468321036,1644667937))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("55e42094dc8a601a53209a64678731f959fcbce2c23157",1989314966,1644667937))][Plr.Name .. (decode_string_v1("5bc2d072d24997da563e590d",208668965,1644667937))] then
                            getgenv()[(decode_string_v1("32d2f1e593e982a9d3f8b54bc10db7b33b2f108cc0f9a4",1369026121,1644667937))][Plr.Name .. (decode_string_v1("531e2f3cb00a583aaf7af705",1983686519,1644667937))]:Remove()
                            getgenv()[(decode_string_v1("ccdb29b8a63fa6a50b7325572f8b168f7f970ee1bc0a82",906278135,1644667937))][Plr.Name .. (decode_string_v1("b63abb893850fc53abe111ae",948464602,1644667937))] = nil
                        end
                    end
                end
            end
        end
--GetPlayerTeam
        getgenv()[(decode_string_v1("537d7db44a3a622d21",1266089462,1644667937))].LoadBox = function(Plr)
            if getgenv()[(decode_string_v1("ab46888b1c5b6545ae0678",2050070412,1644667937))][Plr.Name .. (decode_string_v1("317585ab16bf437030a5",2955505,1644667937))] == nil then
                if getgenv()[(decode_string_v1("a7d49813d167833e83c13b5b5883b52cfbb09827c0f532",1707047748,1644667937))][Plr.Name .. (decode_string_v1("755c883b58fdddf91ddc",991069486,1644667937))] == nil then
                    getgenv()[(decode_string_v1("b189cef143e5dc6091e463782ff08b4e1bff4124f22a02",782688136,1644667937))][Plr.Name .. (decode_string_v1("ed3652c61ac4a145efae",619571823,1644667937))] = Drawing.new((decode_string_v1("33e56366c7cf",601789004,1644667937)));
                    getgenv()[(decode_string_v1("f5446c641c8c46dbc13b877b9608c01d9be08f96b4ae70",2007216190,1644667937))][Plr.Name .. (decode_string_v1("93690d1ae23750bc7d86",2126590046,1644667937))].Thickness = 2;
                    getgenv()[(decode_string_v1("aaa03c8bfa0511353c4fae7336c851bb62bb9f9c385a98",2079363505,1644667937))][Plr.Name .. (decode_string_v1("8fbea5dd314d322ce984",1820699865,1644667937))].Filled = false;
                    getgenv()[(decode_string_v1("b58c69014eef421eaabc8947e44131b7f513378d6ef1ac",1303371456,1644667937))][Plr.Name .. (decode_string_v1("637775f8cf02e98af016",1302318519,1644667937))].Visible = false;
                end

                getgenv()[(decode_string_v1("cfa00265921bb55671ff9a",1862044201,1644667937))][Plr.Name .. (decode_string_v1("3be548191dcd80697120",692132992,1644667937))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("0919f7397eb7d5ce6aa532cba675ea0ba33ac84b81c968",1493628555,1644667937))][Plr.Name .. (decode_string_v1("d863ae6b3140832fb701",1226288583,1644667937))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("3785c4e239",458236934,1644667937)) and PartNames[game.PlaceId].Root or (decode_string_v1("10673c0b5815f475e309dfeb904fb2c0",632122108,1644667937)))
                            
                            if RootCheck then
                                if getgenv()[(decode_string_v1("ebdba3f59ff5d8e86ddf48784e42872faf85fca6a0175d",2122042736,1644667937))][Plr.Name .. (decode_string_v1("2a305a2e206efa74a1f6",520123160,1644667937))] then
                                    local Inset = GUIService:GetGuiInset();
                                    local Box = getgenv()[(decode_string_v1("87a64444abd7f588db69f028b55c16afb7f32da8ae9d06",442091102,1644667937))][Plr.Name .. (decode_string_v1("f9ea0546bf24d63bd0e7",1855936913,1644667937))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                                    Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                                    Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                                    Box.Color = typeof(getgenv()[(decode_string_v1("eaf8296dde26eb73ac",430705455,1644667937))].SETTINGS.ESP_COLOR) == (decode_string_v1("92405c8049da",561212983,1644667937)) and getgenv()[(decode_string_v1("dab60ca59a7fdc2ab3",976030419,1644667937))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("17354c6eb260e6384e",1752920446,1644667937))].SETTINGS.TEAM_CHECK then
                                        Box.Visible = false
                                    else
                                        Box.Visible = getgenv()[(decode_string_v1("e47579d208c1b789b0",473961399,1644667937))].SETTINGS.BOXES_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("efa9b642be9a6edaca0ca19b87139322236ca10cd3e430",1861794489,1644667937))][Plr.Name .. (decode_string_v1("3774a53dfed6f4ffdf5c",1778660034,1644667937))] then
                                getgenv()[(decode_string_v1("e5d2643e747b8704d025d5ae1ca3e367daee96ebe05bf7",407419179,1644667937))][Plr.Name .. (decode_string_v1("0651215aac656ab7de2b",1624687848,1644667937))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("08630b99f5c07179147014",524319275,1644667937))][Plr.Name .. (decode_string_v1("719ffd81ae6a93f17907",973789629,1644667937))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("1d68e4ff60abeeba12c6051c81d883aa63740d477f555b",88535701,1644667937))][Plr.Name .. (decode_string_v1("05055c1ee9812ab84fed",1972895338,1644667937))] then
                            getgenv()[(decode_string_v1("47dc128239b40132696d820ff8653bf7583cbfaf96680c",1662599427,1644667937))][Plr.Name .. (decode_string_v1("089fd62cd5a2de5ecbb5",769943495,1644667937))]:Remove()
                            getgenv()[(decode_string_v1("749b3fb0550075d40c9bc2ea18b95b8dae21bdec6a4ad2",611353957,1644667937))][Plr.Name .. (decode_string_v1("23e27c5c921da918c7fe",732700629,1644667937))] = nil
                        end
                    end
                end
            end
        end

        getgenv()[(decode_string_v1("10583f1496daa1fa3d",696367613,1644667937))].LoadFov = function()
        end

        if getgenv().ESP_TESTING == true then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= LPlayer then
                    getgenv()[(decode_string_v1("96e5ac360505ce71bd",1205244079,1644667937))].LoadBox(Plr)
                    getgenv()[(decode_string_v1("34bbd11812b706530d",1545033534,1644667937))].LoadTracers(Plr)
                end
            end
        end

        if getgenv()[(decode_string_v1("2c56eeb0a585b6eb8a",2010813723,1644667937))].RemovedAndAdded == nil then
            getgenv()[(decode_string_v1("fcdae77f53ff2abdea",652668182,1644667937))].RemovedAndAdded = true

            Players.PlayerAdded:Connect(function(Plr)
                if getgenv()[(decode_string_v1("2abb5cd27f1aa4bb17",815630130,1644667937))].SETTINGS.BOXES_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("45163c0faedd646206",102950297,1644667937))].LoadBox(Plr)
                end

                if getgenv()[(decode_string_v1("2ccc53e23e98a88167",747395546,1644667937))].SETTINGS.TRACERS_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("631273f4fa81ec8608",548006959,1644667937))].LoadTracers(Plr)
                end
            end)
        end
    end
    
    getgenv()[(decode_string_v1("878cb7697e688ed98c",1990581357,1644667937))].Connect()

    getgenv()[(decode_string_v1("c6f3172792ed843f78",646367040,1644667937))].Aimbot = function()
        local Proxy = newproxy(true);
        local MetaTable = getmetatable(Proxy);

        local function AimAtPlayer(Camera, Mouse, target)
            local TARGETPOS = Camera:WorldToScreenPoint(target.Position)
            local GOTO = Vector2.new((TARGETPOS.X - Mouse.X) * .15, (TARGETPOS.Y - Mouse.Y) * .15)
            mousemoverel(GOTO.X, GOTO.Y) -- Quick math for the aim function lmao
        end

        getgenv()[(decode_string_v1("4275803e2ca134ee92d6a4",1796391212,1644667937))].AimBot = nil

        MetaTable.Start = function()
            getgenv()[(decode_string_v1("f5017e30a86ed2abd6aec7",1622702023,1644667937))].AimBot = nil
            if getgenv()[(decode_string_v1("839a15f4076cc38577649f",2144533836,1644667937))].AimBot == nil then

                getgenv()[(decode_string_v1("9dc00d65d4e293471ff60c",1951455581,1644667937))].AimBot = function()
                    local LastDistance = 999999
                    for _, FPlayer in ipairs(Players:GetPlayers()) do
                        if FPlayer ~= LPlayer then

                            local TeamCheck = tostring(GetPlrTeam(FPlayer)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("aff39fa2cd61d3b0aa",579108165,1644667937))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
                            if not TeamCheck then
                                local FChar = GetChar_Ez(FPlayer)

                                if FChar then
                                    local HeadCheck = FChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("5c5c3c604b",1749417567,1644667937)) and PartNames[game.PlaceId].Head or (decode_string_v1("4080b15b",725710688,1644667937)))

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
            getgenv()[(decode_string_v1("9b9517f7d300f1cfb55700",1958627110,1644667937))].AimBot = nil
        end

        MetaTable.TeamCheck = function(Bool)
            getgenv()[(decode_string_v1("26ea27076c17d03f46",1139146498,1644667937))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
        end

        return MetaTable
    end

    if getgenv().ESP_TESTING == true then
        getgenv()[(decode_string_v1("800b8110a234e53384",1951452994,1644667937))].SetTracersVisibility(true)
        getgenv()[(decode_string_v1("6552645e52143fb870",381042552,1644667937))].SetBoxVisibility(true)
        getgenv()[(decode_string_v1("280e2742c349626d2f",1711748811,1644667937))].SetTeamCheck(false)
        getgenv()[(decode_string_v1("92e35038a53f65141e",944533748,1644667937))].UpdateColor(Color3.fromRGB(79, 22, 201))
    end

    if not getgenv()[(decode_string_v1("15e536f15fa8860f18fd",2110867847,1644667937))] then
        getgenv()[(decode_string_v1("d197245076a8be944b26",1347957315,1644667937))] = true
        local RunService = game[(decode_string_v1("7c66cef180cf73bb0bc2",157952995,1644667937))](game, (decode_string_v1("dfc3aa558a32d3a9b51c",940549096,1644667937)))
        RunService.Heartbeat:Connect(function()
            for _, Function in pairs(getgenv()[(decode_string_v1("7bb44982ed43298fcebe44",1288202076,1644667937))]) do
                if type(Function) == (decode_string_v1("f4596b0c6ab0af48",2028845016,1644667937)) then
                    xpcall(Function, ErrorHandlerTing)
                end
            end
        end)
    end
end
            do
    if tostring(game.PlaceId) == (decode_string_v1("fd2b6d8ddbf7d833f114",940815384,1644667938)) then
        getgenv()[(decode_string_v1("298c38a14df79bcd3d752b5c9359b5b243c88a5968",2031446803,1644667938))] = false
        
        --------------------------------------------------------------------------------------------

        getgenv().UpdateLoop = type(getgenv().UpdateLoop) == (decode_string_v1("03ee3e387de764",526101552,1644667938)) and getgenv().UpdateLoop or false;
        getgenv().UpdateCache = type(getgenv().UpdateCache) == (decode_string_v1("5be1ee026d",2066971750,1644667938)) and getgenv().UpdateCache or {};

        local Timber_ContextActionService = game:GetService((decode_string_v1("ed61b122ecf20f05163dc4429bc25397a0f84220",619880570,1644667938)))
        local Timber_PathFindingService = game:GetService((decode_string_v1("066794a2b4b9a52a80165c29b8418b09ca0d",161369001,1644667938)))
        local Timber_PhysicsService = game:GetService((decode_string_v1("1fb1cee517ff1534eab9ecbb54ea",290294991,1644667938)))
        local Timber_Players = game:GetService((decode_string_v1("f8d1791ef9a166",1440819930,1644667938)))
        local Timber_Player = Timber_Players.LocalPlayer
        local Timber_Axe_HookedWait = false
        local Timber_Axe_Swinging = false
        
        Window = UILibrary.new((decode_string_v1("2713bd0098bc24620aea09be7c5abf721fc6cc",1896655714,1644667938)), 5013109572)
        
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
            local PlotsFolder = workspace:FindFirstChild((decode_string_v1("2d36cc97c7",21835075,1644667938)))
            if PlotsFolder then
                for _, V in ipairs(PlotsFolder:GetChildren()) do
                    if V:FindFirstChild((decode_string_v1("ceb8b3f128",612394690,1644667938))) then
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
                Timber_ContextActionService:BindAction((decode_string_v1("263d0f32691d77d3c8bab303f739",378181541,1644667938)),function() return Enum.ContextActionResult.Sink end, false, unpack(Enum.PlayerActions:GetEnumItems()))
            else
                Timber_ContextActionService:UnbindAction((decode_string_v1("33004351e4f294f16bf5659ec6dd",1955065109,1644667938)))
            end
        end
        
        local function GetTree(TModel)
            if TModel ~= nil then
                for Index, Value in ipairs(VarTable.Tables.Trees) do
                    if type(Value) == (decode_string_v1("7bc2fd75df",2032690602,1644667938)) then
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
                if tostring(OBJ):lower():find((decode_string_v1("c5742d7e23",2133079234,1644667938))) then
                    local Timber_TreePath = Timber_PathFindingService:CreatePath()
                    table.insert(VarTable.Tables.Trees, {
                        TreeModel = OBJ,
                        TreeLand = OBJ.Parent,
                        TreePath = Timber_TreePath
                    })

                    pcall(function()
                        for _, TOBJ in ipairs(OBJ:GetDescendants()) do
                            if TOBJ:IsA((decode_string_v1("3fae3d2ebe72283b",1341991874,1644667938))) then
                                TOBJ.CanCollide = false
                            end
                        end
                    end)
                end
            end

            if Plot then
                for _, V in ipairs(Plot:GetChildren()) do
                    if V:IsA((decode_string_v1("2aa3d34c90",779013484,1644667938))) then
                        for _, V in ipairs(V:GetChildren()) do
                            AddTree(V)
                        end
                    end
                end
        
                Plot.DescendantAdded:Connect(function(Child)
                    if Child:IsA((decode_string_v1("f7d2d76076",1791624103,1644667938))) then
                        AddTree(Child)
                    end
                end)
        
                Plot.DescendantRemoving:Connect(function(Child)
                    if Child:IsA((decode_string_v1("07eb454f54",514964727,1644667938))) then
                        if tostring(Child):lower():find((decode_string_v1("dd806b7a57",912061229,1644667938))) then
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
                if type(VarTable.Signals.MoveToFinishedSig) == (decode_string_v1("04162e45ecda8c00",12293655,1644667938)) then
                    if VarTable.Signals.MoveToFinishedSig.Disconnect ~= nil then
                        VarTable.Bools.MovedToPosition = false
                        VarTable.Signals.MoveToFinishedSig:Disconnect()
                        VarTable.Signals.MoveToFinishedSig = nil
                    end
                end
            end
        end
        
        CollectTrees()

        local PlayerWindow = Window:addPage((decode_string_v1("f7b8425ff106",724007553,1644667938)), 5012544693)
        local AutoFarmWindow = Window:addPage((decode_string_v1("0f40997ce52702d09d",1128075385,1644667938)), 5012544693)
        local TeleportsWindow = Window:addPage((decode_string_v1("6b7a2f8cb2f1103b48",1044894663,1644667938)), 5012544693)
        local AxeSection = AutoFarmWindow:addSection((decode_string_v1("745b12",1374006492,1644667938)), 5012544693)

        AxeSection:addToggle((decode_string_v1("cc6217451009805cb6",424394395,1644667938)), false, function(Bool)
            VarTable.Bools.AutoCutTrees = Bool
        end)

        AxeSection:addToggle((decode_string_v1("1b4c2200b0b4bcc871e332b1df5b",587698094,1644667938)), false, function(Bool)
            VarTable.Bools.AutoCutTrees = Bool
            if Bool then
                RobloxInput(true)
                task.spawn(function()
                    while VarTable.Bools.AutoCutTrees do
                        local Timber_Character = Timber_Player.Character
                        if Timber_Character then
                            local Humanoid = Timber_Character:WaitForChild((decode_string_v1("20341f2264fcda7e",1317434544,1644667938)), 60)
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
                                            game.ReplicatedStorage.Communication.Remotes.HitTree:FireServer(Timber_Player.Plot.Value, tostring(TreeTable.TreeLand), tonumber(string.split(tostring(TreeTable.TreeModel), (decode_string_v1("b8",574306112,1644667938)))[2]));
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

        print((decode_string_v1("11266c715ab721f4cea3a678ac5f0f0ffc",1510785856,1644667938)))
    end
end
            do
    if tostring(game.PlaceId) == (decode_string_v1("1c41d6fd89b112bc94",1171680152,1644667938)) then
        getgenv()[(decode_string_v1("5980020d95f461c6c77dae7ebbc54169c68ddcf971",924514801,1644667938))] = false
        getgenv()[(decode_string_v1("7537427e7eda1b3bb473",884048952,1644667938))] = type(getgenv()[(decode_string_v1("81494fd1b24f26539772",1798902593,1644667938))]) == (decode_string_v1("176a44903bb110",1639262010,1644667938)) and getgenv()[(decode_string_v1("d97c18a9d29caedb65ad",470012095,1644667938))] or false;
        getgenv()[(decode_string_v1("4bdb34a4e263ff71e5a7f1",444269902,1644667938))] = type(getgenv()[(decode_string_v1("caf764d7b614a367ee9436",935496421,1644667938))]) == (decode_string_v1("a449a4d526",2090864222,1644667938)) and getgenv()[(decode_string_v1("b5b2e7e74dbba6c6b03297",672348956,1644667938))] or {};
        getgenv()[(decode_string_v1("d3a1866748613f5695414169fb9eda",1548928232,1644667938))] = type(getgenv()[(decode_string_v1("3aac04d081d9f166bb28bb1feea4bd",887184961,1644667938))]) == (decode_string_v1("c026e16698",202624378,1644667938)) and getgenv()[(decode_string_v1("8f54a9a7d2cf841268811d13ca1853",436778323,1644667938))] or {};
        getgenv()[(decode_string_v1("5bd3173b6953a7a416cf33bb053a971c",792550794,1644667938))] = type(getgenv()[(decode_string_v1("7c34b95d3cc5802d1ae2f4aff0fce0cb",1472372834,1644667938))]) == (decode_string_v1("5566f28b13",1876208162,1644667938)) and getgenv()[(decode_string_v1("61a99e7d143333ea5fd21c4ae8118079",233793789,1644667938))] or {};
        getgenv()[(decode_string_v1("a6bc37f453f303e9b696e35d7a504697",246962002,1644667938))] = type(getgenv()[(decode_string_v1("f5957ec0c5b7b987b43078024b842431",1310574681,1644667938))]) == (decode_string_v1("86bb66f689",1453123309,1644667938)) and getgenv()[(decode_string_v1("1fb43518cad207122f2bf74b69a5d1c1",448323594,1644667938))] or {};
        getgenv()[(decode_string_v1("af376ec2a473ab15526c246cff7d",261438308,1644667938))] = type(getgenv()[(decode_string_v1("cd3ae031c5aab7d29fc173bafe6d",562329572,1644667938))]) == (decode_string_v1("a2da101ac7",1987002468,1644667938)) and getgenv()[(decode_string_v1("3ed01fe8f62aff58c7c326657e51",1459052849,1644667938))] or {};
        
        Settings_Name = (decode_string_v1("a31f625ed41f288df11876e94351ad64e53193",346287445,1644667938))

        getgenv()[Settings_Name] = {
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

        local AimbotMT = getgenv()[(decode_string_v1("6a755ded5b969701bb",88761628,1644667938))].Aimbot()

        local Camera = workspace:WaitForChild((decode_string_v1("9106e6877322",996811413,1644667938)), 5)
        local SpotTable = {}

        local ReplicatedStorage = game[(decode_string_v1("865b41f2e906bb8c8a88",1447285655,1644667938))](game, (decode_string_v1("5d4a205d0858d5b9db4d25bddae6be56f6",863884136,1644667938)))
        local GunModules = ReplicatedStorage:WaitForChild((decode_string_v1("66bf2db5ce8c71ddba2b",690132304,1644667938)), 5)
        local RunService = game[(decode_string_v1("04eb5ae38a8f7f54bdc5",882004262,1644667938))](game, (decode_string_v1("1593f4432ebd73529f6a",817147614,1644667938)))
        local Players = game[(decode_string_v1("5d18f216dcdd581d6b80",2105049214,1644667938))](game, (decode_string_v1("ffb50eba0be44d",1758694158,1644667938)))
        local Player = Players[(decode_string_v1("677bd98d084a8ffc1370cd",866960187,1644667938))]
        local PlrMouse = Player:GetMouse()
        local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("d218631d4ad6",1863792555,1644667938))], string[(decode_string_v1("c068780d72",718180164,1644667938))], string[(decode_string_v1("6ee65443",1976665382,1644667938))], string[(decode_string_v1("3656b29c8d69",1669172576,1644667938))], string[(decode_string_v1("f5a6e99e6b",536775746,1644667938))]

        Window = UILibrary.new((decode_string_v1("6d4d07aabf222fc2d460e3d01c65a377221a4f3572584b4b0f2464",952862877,1644667938)), 5013109572)

        local PlayerWindow = Window:addPage((decode_string_v1("17116f0563b0",1942115414,1644667938)), 5012544693)
        local PlayerSection = PlayerWindow:addSection((decode_string_v1("227593b9",1849859510,1644667938)))

        local CombatWindow = Window:addPage((decode_string_v1("115bf31e163c",908604474,1644667938)), 5012544693)
        local CombatSelection = CombatWindow:addSection((decode_string_v1("aae00442",1325000789,1644667938)))

        local VisualsWindow = Window:addPage((decode_string_v1("d0a19bf506ee9f",1888730108,1644667938)), 5012544693)
        local VisualsSelection = VisualsWindow:addSection((decode_string_v1("20dbe199",1864174941,1644667938)))

        local RecoilTable = {
            {(decode_string_v1("570c75edaa12bc739a78",1103320805,1644667938)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("28ec5696f5c6dfd1ba5d",1833310384,1644667938)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("75a2b70fd2670f9977ada9de27",1840612284,1644667938)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("1c2cd96922f6f96b78df2d93cc",668993075,1644667938)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("07c5864f9f9fdcca6839599081d381",1101820431,1644667938)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("e51f0ca1f48af1ec8422ba8ac133b6",46145315,1644667938)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("818aaa59f963fda26cc86cf0",1462511320,1644667938)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("65d05fbed4a2ff18668a8212",2081386674,1644667938)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("2f5b19d9883b92311a2d",1101521919,1644667938)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("584ac975995c2cadc8e8",299118444,1644667938)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("bdf6ddcd00faef627ca86d364f",126244064,1644667938)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("b9c2b446f05c0ab105ea5be108",1484844511,1644667938)), Vector3.new(0, 0, 0)},
            {(decode_string_v1("f9b0a58d5848c27b2b9be12039",455740930,1644667938)), 0},
            {(decode_string_v1("8fe4606c89abdb74974cb83d9b287967",1431599732,1644667938)), 0},
        }

        for _, Module in ipairs(GunModules:GetChildren()) do -- Cache the modules so we don't fuck memory up
            if not getgenv()[(decode_string_v1("e6b85fce829ab77afd22c5d2e774fb",419693656,1644667938))][tostring(Module)] then
                local BlankTable = {}
                local Success, Contents = pcall(require, Module)
                if Success then
                    if rawget(Contents.animations, (decode_string_v1("95667e081690",1530812431,1644667938))) then
                        if Contents.animations.reload.IS_RELOAD_ANIMATION == nil then
                            Contents.animations.reload.IS_RELOAD_ANIMATION = true
                        end
                    end

                    if rawget(Contents.animations, (decode_string_v1("79de75a81302740f18869aa71d39",1588085601,1644667938))) then
                        if Contents.animations.tacticalreload.IS_RELOAD_ANIMATION == nil then
                            Contents.animations.tacticalreload.IS_RELOAD_ANIMATION = true
                        end
                    end

                    if rawget(Contents.animations, (decode_string_v1("ed0f89fa8dff1571950fff6b48c79721f06743d2b6ec",2110014066,1644667938))) then
                        if Contents.animations.extendedtacticalreload.IS_RELOAD_ANIMATION == nil then
                            Contents.animations.extendedtacticalreload.IS_RELOAD_ANIMATION = true
                        end
                    end

                    if rawget(Contents.animations, (decode_string_v1("455a6bf04a7a0fca9ef98b9b7879",381417326,1644667938))) then
                        if Contents.animations.extendedreload.IS_RELOAD_ANIMATION == nil then
                            Contents.animations.extendedreload.IS_RELOAD_ANIMATION = true
                        end
                    end

                    for Index, Key in pairs(Contents) do
                        BlankTable[tostring(Index) .. (decode_string_v1("ffb8e6",255512697,1644667938))] = Key -- Replicating that same table so we have a quick access table to restore everything!
                    end
                    
                    getgenv()[(decode_string_v1("5a8aac51e76a7e336d95cb7f9ae8ae",824561395,1644667938))][tostring(Module)] = BlankTable
                end
            end
        end

        for _, Key in pairs(getgc(true)) do
            local SendCheck = type(Key) == (decode_string_v1("bf9f62a1b9",1396300096,1644667938)) and rawget(Key, (decode_string_v1("a09d5082",331060220,1644667938))) and Key or nil
            local SetBaseWalkCheck = type(Key) == (decode_string_v1("428ec22f98",2064606655,1644667938)) and rawget(Key, (decode_string_v1("779079e96e9adfecd7cc950b898e3442",1072604671,1644667938))) and Key or nil
            local JMPCheck = type(Key) == (decode_string_v1("395d40b6d7",1020015358,1644667938)) and rawget(Key, (decode_string_v1("31248ee4",608569278,1644667938))) and Key or nil
            local AnimationPlayerCheck = type(Key) == (decode_string_v1("3b5ca52089",1663983621,1644667938)) and rawget(Key, (decode_string_v1("f55db88fad13",503559267,1644667938))) and Key or nil
            local CharBodyCheck = type(Key) == (decode_string_v1("cce8059c2c",765257933,1644667938)) and rawget(Key, (decode_string_v1("70f88c20e15b1454ea2ee5ec",1568671092,1644667938))) and Key or nil
            
            if AnimationPlayerCheck then
                if type(AnimationPlayerCheck.player) == (decode_string_v1("086d0508e5f288f0",754944441,1644667938)) then
                    if tostring(debug.getinfo(AnimationPlayerCheck.player).source):lower():find((decode_string_v1("0ab4d4bf353002113f91",1270393508,1644667938))) then
                        if getgenv()[(decode_string_v1("e45d0936e9e2a9afc7e1a502ffd8ace8",534741944,1644667938))][(decode_string_v1("1150f761bf73",668008815,1644667938))] == nil then
                            getgenv()[(decode_string_v1("c50dedbe41b8c55b95373898f9b763fb",515293378,1644667938))][(decode_string_v1("7b923991e216",151300477,1644667938))] = true
        
                            getgenv()[(decode_string_v1("bdac38ab080f7209c386dd7fe20093b1",1160597339,1644667938))][(decode_string_v1("f0a911332670",55009093,1644667938))] = hookfunction(AnimationPlayerCheck.player, function(...)
                                local args = {...}
                                if getgenv()[Settings_Name].INSTANT_RELOAD == true then
                                    if type(args[2]) == (decode_string_v1("b48937db55",1879359014,1644667938)) then
                                        if args[2].IS_RELOAD_ANIMATION == true then
                                            return function()end
                                        end
                                    end
                                end
                                return getgenv()[(decode_string_v1("16ff30d31c34e326f688b32ddda147c7",1504247875,1644667938))][(decode_string_v1("caae035dd880",1800080471,1644667938))](unpack(args))
                            end)
                        end
        
                        getgenv()[(decode_string_v1("553a9b77d4bda3b6277f21c3a6752d39",549351600,1644667938))][(decode_string_v1("805711fd3bbb",621493315,1644667938))] = getgenv()[(decode_string_v1("e892609b645c9ac9f4293203f916521a",1235109697,1644667938))][(decode_string_v1("f833e7b11476",1851268759,1644667938))] or AnimationPlayerCheck
                    end
                end
            end

            if CharBodyCheck then
                if type(CharBodyCheck.getbodyparts) == (decode_string_v1("e728a590ca52c571",426035372,1644667938)) then
                    getgenv()[(decode_string_v1("4d8bfdbf9d973a001785146ad2806b88",1346227748,1644667938))][(decode_string_v1("72bf4708d68e6cd868bfb284",1541538416,1644667938))] = getgenv()[(decode_string_v1("d5f7e7dbfed65425770c209e396ca055",395273309,1644667938))][(decode_string_v1("b9e019f58174a4acd2343871",778175854,1644667938))] or CharBodyCheck.getbodyparts
                end
            end

            if SendCheck then
                if getgenv()[(decode_string_v1("984c9c2a76b89a345d1b7ececc0f01f8",1912852265,1644667938))][(decode_string_v1("ea019f81",1813282491,1644667938))] == nil then
                    getgenv()[(decode_string_v1("809ae62643f370e43d11c7bc64f169b0",2088768663,1644667938))][(decode_string_v1("519b67b5",552048641,1644667938))] = true
                    getgenv()[(decode_string_v1("38396a59f480b43ff682ed0d474d8af7",845422668,1644667938))][(decode_string_v1("b072665446d5b24923e352",1762162108,1644667938))] = function(...)
                        return Key:send(...)
                    end

                    getgenv()[(decode_string_v1("7216baad1befa248f0dec73f47af638b",76589283,1644667938))][(decode_string_v1("1aead706",499155890,1644667938))] = hookfunction(Key.send, function(self, ...)
                        local args = {...}
                        if args[1] == (decode_string_v1("83405d265ae48bd5ae02",972234087,1644667938)) and getgenv()[Settings_Name].NO_FALL_DAMAGE == true then
                            return true
                        end
                        return getgenv()[(decode_string_v1("cce482470ce1b16799d11a3b91522187",1381434140,1644667938))][(decode_string_v1("80e93c6b",1739958743,1644667938))](self, unpack(args))
                    end)
                end
            end

            if SetBaseWalkCheck then
                if getgenv()[(decode_string_v1("b9505c38e395f79a5700337bb123c84b",729683814,1644667938))][(decode_string_v1("9e9061a4a504e61e63da9a7b",299787723,1644667938))] == nil then
                    getgenv()[(decode_string_v1("34634c9d3dc93e0f732ee73a59ec772b",1548343349,1644667938))][(decode_string_v1("5008abff1ad470fa2ee33c0c",2088774033,1644667938))] = true

                    getgenv()[(decode_string_v1("4be97ba6efbf92de71711204bb8eecd8",1642629204,1644667938))][(decode_string_v1("09d7b99ba5bbfb52e648e843",167880157,1644667938))] = hookfunction(Key.setbasewalkspeed, function(self, ...)
                        local args = {...}
                        return getgenv()[(decode_string_v1("151542b9309729c38401c4870799c84f",1889102801,1644667938))][(decode_string_v1("1bd37b07d3ce25c4a38b6f68",1014758004,1644667938))](self, type(getgenv()[Settings_Name].WALKSPEED) == (decode_string_v1("151c8fb489ff",1244566618,1644667938)) and getgenv()[Settings_Name].WALKSPEED > 0 and getgenv()[Settings_Name].WALKSPEED or unpack(args))
                    end)
                end

                getgenv()[(decode_string_v1("2c3c053f4833a2bc586a40a0d06cb625",1173155070,1644667938))][(decode_string_v1("338923ce5798620cc1ab5f02",369507787,1644667938))] = getgenv()[(decode_string_v1("975fee4301b5569c691ab737515fa326",477505389,1644667938))][(decode_string_v1("da3dae4e4c0d853a1c69646c",624541805,1644667938))] or SetBaseWalkCheck
            end

            if JMPCheck then
                if getgenv()[(decode_string_v1("7fd1816ca3e2f5f56d04702e44e3038d",1484022021,1644667938))][(decode_string_v1("7259aa10",675185262,1644667938))] == nil then
                    getgenv()[(decode_string_v1("1469b76760abb65410c946e249baf536",2071049249,1644667938))][(decode_string_v1("182234e6",1826275567,1644667938))] = true

                    getgenv()[(decode_string_v1("b069781305612c2b5367f9cc355eac5f",1198817470,1644667938))][(decode_string_v1("e9a18d7d",1748737691,1644667938))] = hookfunction(Key.jump, function(self, ...)
                        local args = {...}
                        return getgenv()[(decode_string_v1("a49b7ac6817030fa4454ed904a646cd7",652220500,1644667938))][(decode_string_v1("4276caf9",1589163099,1644667938))](self, type(getgenv()[Settings_Name].JUMPPOWER) == (decode_string_v1("8b7226148994",836053214,1644667938)) and getgenv()[Settings_Name].JUMPPOWER > 0 and getgenv()[Settings_Name].JUMPPOWER or unpack(args))
                    end)
                end

                getgenv()[(decode_string_v1("d450ef602546cb60bcb5aa2383fdc99a",1561165771,1644667938))][(decode_string_v1("1bbc46fb659e3f73bb8ae9",1623796345,1644667938))] = getgenv()[(decode_string_v1("17c90eeab5bc63f35928521693c7c553",250896493,1644667938))][(decode_string_v1("a52e63eeb08bd411b9c45e",284331246,1644667938))] or JMPCheck
            end
        end
        
        local function GetHumanoid()
            return debug.getupvalue(getgenv()[(decode_string_v1("7f5f96d06f9ab98361b862a921c219de",743928465,1644667938))][(decode_string_v1("2214aa9f702326d41445d4",896384709,1644667938))].jump, 10)
        end

        local function ClearDrawings()
            for _, V in pairs(getgenv()[(decode_string_v1("f5cc6e63a614d69ea384d8ae564f",177312500,1644667938))]) do
                pcall(function()
                    V:Remove()
                end)
            end
            
            table.clear(getgenv()[(decode_string_v1("43286587fa9258e6b371172b3cab",392162325,1644667938))])
        end

        local function ResetWeapons()
            for _, Module in ipairs(GunModules:GetChildren()) do
                local Success, Contents = pcall(require, Module)
                if Success then
                    if getgenv()[(decode_string_v1("c2066bced5e35e2efa58c264296765",1183833275,1644667938))][tostring(Module)] then
                        for NewInex, NewKey in pairs(getgenv()[(decode_string_v1("aed5f8ae828dfaa70bd596a0d893e0",1123297944,1644667938))][tostring(Module)]) do
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
                        if getgenv()[(decode_string_v1("6935a5d653bdc3f2d450dd75745edc",396802871,1644667938))][tostring(Module)] then
                            if rawget(Contents, ValueName) then
                                rawset(Contents, ValueName, UseOld == true and rawget(getgenv()[(decode_string_v1("656d977458e6492ac422ae622e08a3",1170483318,1644667938))][tostring(Module)], ValueName .. (decode_string_v1("ab9173",261231656,1644667938))) or NewValue)
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
                        if getgenv()[(decode_string_v1("49dbc5074b4d5e199d3e8d0e686d34",808398912,1644667938))][tostring(Module)] then
                            local GunFireRate = rawget(Contents, (decode_string_v1("575500a8b093a8d9",1947959411,1644667938)))
                            if type(GunFireRate) == (decode_string_v1("256704d6f679",1947887515,1644667938)) then
                                rawset(Contents, (decode_string_v1("0ea1fad22b649c21",1978827615,1644667938)), UseOld == true and rawget(getgenv()[(decode_string_v1("8b3bf3be1966da9bd3269e32dc00a1",1515126383,1644667938))][tostring(Module)], (decode_string_v1("c95b25e6842de336",1992164202,1644667938)) .. (decode_string_v1("d2ec66",131965384,1644667938))) or NewValue)
                            elseif type(GunFireRate) == (decode_string_v1("b30c23d502",565663904,1644667938)) then
                                if not UseOld then
                                    GunFireRate = {unpack(GunFireRate)}
                                    for Index, Key in pairs(GunFireRate) do
                                        if type(Key) == (decode_string_v1("eb18be15506c",1091044852,1644667938)) then
                                            GunFireRate[Index] = NewValue
                                        end
                                    end

                                    Contents.firerate = GunFireRate
                                else
                                    rawset(Contents, (decode_string_v1("318fa3fd8bac2273",36052445,1644667938)), rawget(getgenv()[(decode_string_v1("a8848880eb26883dd04e4bd699416e",476226042,1644667938))][tostring(Module)], (decode_string_v1("15d9772ce4c6b4d7",359865747,1644667938)) .. (decode_string_v1("b0a1d3",1163169010,1644667938))))
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
                getgenv()[(decode_string_v1("c429fe032d83eb2c361c4334ef9b",1239991123,1644667938))][(decode_string_v1("fe850fc67b00c536bd9e",91536574,1644667938))] = Drawing.new((decode_string_v1("f7ec41504725",1705224477,1644667938)))
                getgenv()[(decode_string_v1("ec29a8701a4bfc711ef991626931",87541118,1644667938))][(decode_string_v1("5e3197768547b9e47d6d",1080341436,1644667938))].Thickness = 3
                getgenv()[(decode_string_v1("183a2bf9ab80f52bc40cbdffbc55",900110420,1644667938))][(decode_string_v1("cf90eeea49d2260c539e",471823513,1644667938))].NumSides = 90
                getgenv()[(decode_string_v1("f13c265698bafbc8b5877748c360",184871397,1644667938))][(decode_string_v1("25c959d85be2faf4d3e9",1668217180,1644667938))].Filled = false
                getgenv()[(decode_string_v1("0c7d83fcbc97485296244d090d1e",1148303209,1644667938))][(decode_string_v1("9befe678f0d9bc2408aa",826442667,1644667938))].Visible = false

                getgenv()[(decode_string_v1("95955b4d05c02c2959e87f",129291566,1644667938))][(decode_string_v1("55d8ae8d4ff359e8cbe8",1460252756,1644667938))] = function()
                    if getgenv()[Settings_Name].FOV_ENABLED == true then
                        if getgenv()[(decode_string_v1("0f94bf5ae913021f16bd1a230e4d",1718487647,1644667938))][(decode_string_v1("8ff68d7a9e31fab4bc44",2045113243,1644667938))] ~= nil then
                            getgenv()[(decode_string_v1("c9836486225ab5a2c207f90bb640",210657591,1644667938))][(decode_string_v1("b34e2de3eac16a6d99a9",1065436470,1644667938))].Visible = type(getgenv()[Settings_Name].FOV_ENABLED) == (decode_string_v1("dc93a752995fae",1971556215,1644667938)) and getgenv()[Settings_Name].FOV_ENABLED or false
                            getgenv()[(decode_string_v1("63a858fc8cda679a2ab7ab4052f8",1742548517,1644667938))][(decode_string_v1("75c61afbdc0bdc6bc1c2",965334253,1644667938))].Radius = 90
                            getgenv()[(decode_string_v1("2d1e9540978cb5147f8e7bd099e4",291086382,1644667938))][(decode_string_v1("ca7849ea9edfa195017c",1593867557,1644667938))].Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
                            getgenv()[(decode_string_v1("6dd811af237b5aa8ca84d8e1efc0",1684180670,1644667938))][(decode_string_v1("c0d283b172fc57d8a559",912576581,1644667938))].Color = getgenv()[Settings_Name].ESP_COLOR or Color3.fromRGB(255, 255, 255)
                        end
                    else
                        if getgenv()[(decode_string_v1("767e1b6bef19bc606811f91768f3",1065556539,1644667938))][(decode_string_v1("684fe3ef5af3707e1a98",326668526,1644667938))] ~= nil then
                            getgenv()[(decode_string_v1("b17324054f2ec5ad48c684acb9f8",210591868,1644667938))][(decode_string_v1("e471d16e202951b80086",1758259295,1644667938))].Visible = false
                        end
                    end
                end

            end)
        end

        PlayerSection:addSlider((decode_string_v1("5351f46beef64b1bdcb81b166c375b",1537228679,1644667938)), 0, 0, 100, function(Value)
            getgenv()[Settings_Name].WALKSPEED = tonumber(Value)
        end)

        PlayerSection:addSlider((decode_string_v1("41d03e1808f0eb2d1139982524ac2b",887151252,1644667938)), 0, 0, 100, function(Value)
            getgenv()[Settings_Name].JUMPPOWER = tonumber(Value)
        end)

        PlayerSection:addToggle((decode_string_v1("612245fb2844d60cddf8d2e3efa5",1392546043,1644667938)), false, function(Bool)
            getgenv()[Settings_Name].NO_FALL_DAMAGE = Bool
        end)

        PlayerSection:addKeybind((decode_string_v1("3dd0b79d242ad1b6a85198fa1c41",783357319,1644667938)), Enum.KeyCode.Delete, function()
            Window:toggle()
        end, function()end)
        
        CombatSelection:addToggle((decode_string_v1("67c00ae0130503c78be2b3ddeb6e",1158215179,1644667938)), false, function(Bool)
            getgenv()[Settings_Name].INSTANT_RELOAD = Bool
        end)

        CombatSelection:addSlider((decode_string_v1("b31b773047533ba176f802a58214bb",716483997,1644667938)), 100, 100, 10000, function(Value)
            getgenv()[Settings_Name].FIRERATE_SPEED = Value

            if getgenv()[Settings_Name].FIRERATE_ENABLED == true then
                SetFireRate(Value, false)
            end
        end)

        CombatSelection:addToggle((decode_string_v1("00b27a005016d987cac69d72638b8175",1243948669,1644667938)), false, function(Bool)
            getgenv()[Settings_Name].FIRERATE_ENABLED = Bool
            if Bool then
                SetFireRate(getgenv()[Settings_Name].FIRERATE_SPEED, false)
            else
                SetFireRate(nil, true)
            end
        end)

        CombatSelection:addToggle((decode_string_v1("9957447faab6",2105292473,1644667938)), false, function(Bool)
            if Bool then
                AimbotMT.Start()
            else
                AimbotMT.End()
            end
        end)

        CombatSelection:addToggle((decode_string_v1("98e94875a74fae5880cb557b9b7a6eb5",1055283782,1644667938)), false, function(Bool)
            AimbotMT.TeamCheck(Bool)
        end)

        CombatSelection:addToggle((decode_string_v1("ed5b6798927c501407",2100283373,1644667938)), false, function(Bool)
            if Bool then
                for KeyName, KeyValue in ipairs(RecoilTable) do
                    if type(KeyValue) == (decode_string_v1("23916a1259",852847155,1644667938)) then
                        SetWeaponValue(KeyValue[1], KeyValue[2], false)
                    end
                end
            else
                for KeyName, KeyValue in ipairs(RecoilTable) do
                    if type(KeyValue) == (decode_string_v1("f0989e9d2d",1750184391,1644667938)) then
                        SetWeaponValue(KeyValue[1], nil, true)
                    end
                end
            end
        end)
        
        CombatSelection:addToggle((decode_string_v1("8ebd0c4f3b4637c8d896f41cca77f332",2108140715,1644667938)), false, function(Bool)
            getgenv()[Settings_Name].SPOT_ALL_PLAYERS = Bool
            
            if Bool then
                task.spawn(function()
                    while getgenv()[Settings_Name].SPOT_ALL_PLAYERS == true do
                        for _, Object in ipairs(Players:GetPlayers()) do
                            table.insert(SpotTable, Object)
                        end
                        
                        getgenv()[(decode_string_v1("6df8711ae72a3381de4d5dbec23dbcc9",51200855,1644667938))][(decode_string_v1("f38c0a4d21fb2b1afab785",1708968110,1644667938))]((decode_string_v1("3282d0b37090e8af247d95",1283135712,1644667938)), SpotTable)

                        table.clear(SpotTable)
                        task.wait(0.1)
                    end
                end)
            end
        end)

        VisualsSelection:addToggle((decode_string_v1("69abd11952f2ee4240da",741354350,1644667938)), false, function(Bool)
            getgenv()[Settings_Name].FOV_ENABLED = Bool
        end)

        VisualsSelection:addToggle((decode_string_v1("e1a51130237bf49733a31078a7",224001196,1644667938)), false, function(Bool)
            getgenv()[(decode_string_v1("09b0332b5fecb36ae6",1604626645,1644667938))].SetTeamCheck(Bool)
        end)

        VisualsSelection:addToggle((decode_string_v1("7aad06a0a7ac321e9f",1143300204,1644667938)), false, function(Bool)
            if Bool then
                for _, Plr in ipairs(Players:GetPlayers()) do
                    if Plr ~= Player then
                        getgenv()[(decode_string_v1("b684a158cec7434a2a",412572672,1644667938))].LoadBox(Plr)
                    end
                end
                getgenv()[(decode_string_v1("0db7d88e0fac4e793a",1558988973,1644667938))].SetBoxVisibility(true)
            else
                getgenv()[(decode_string_v1("454ceeb6c6a6e4bbab",534408421,1644667938))].UnLoadType((decode_string_v1("f66e88cb94599f5458c6",107693605,1644667938)))
                getgenv()[(decode_string_v1("243883d97a25244418",2116563730,1644667938))].SetBoxVisibility(false)
            end
        end)

        VisualsSelection:addToggle((decode_string_v1("da30d21b44a653f09adbf4",565673692,1644667938)), false, function(Bool)
            if Bool then
                for _, Plr in ipairs(Players:GetPlayers()) do
                    if Plr ~= Player then
                        getgenv()[(decode_string_v1("650f40e3112b404cd9",2060320462,1644667938))].LoadTracers(Plr)
                    end
                end
                getgenv()[(decode_string_v1("feb0e79e07eebec13e",525719593,1644667938))].SetTracersVisibility(true)
            else
                getgenv()[(decode_string_v1("2e08b3c3292a6ed8e7",551274449,1644667938))].UnLoadType((decode_string_v1("f0f4c350200c5da155b76005",1424471566,1644667938)))
                getgenv()[(decode_string_v1("c4ef12b58a30f1d464",381013871,1644667938))].SetTracersVisibility(false)
            end
        end)

        VisualsSelection:addColorPicker((decode_string_v1("915dfa17f6abd20651",1605640414,1644667938)), getgenv()[Settings_Name].ESP_COLOR, function(newcolor)
            local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)
            getgenv()[Settings_Name].ESP_COLOR = Color3.fromRGB(R, G, B)
            getgenv()[(decode_string_v1("c51c3be1498ae2a7e7",1611118492,1644667938))].UpdateColor(getgenv()[Settings_Name].ESP_COLOR)
        end)

        VisualsSelection:addButton((decode_string_v1("3271016819e604b60329",350095179,1644667938)), function(Bool)
            getgenv()[(decode_string_v1("570fa411a0dd7e03c3",2115397523,1644667938))].UnLoad()
        end)

        if not getgenv()[(decode_string_v1("158a6335d3094353549e",1362705897,1644667938))] then
            getgenv()[(decode_string_v1("fc0d709481e6ebc59d68",1074707046,1644667938))] = true
            RunService.Heartbeat:Connect(function()
                for _, Function in pairs(getgenv()[(decode_string_v1("ff93719717b88634e38f6b",203703722,1644667938))]) do
                    if type(Function) == (decode_string_v1("858d134aea56245c",630185574,1644667938)) then
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
        if tostring(game.PlaceId) == (decode_string_v1("f70df28a6cd12d0dde",255966386,1644667936)) then
            getgenv()[(decode_string_v1("6243d48117d3156c50072821310b6280b81d6075a0",1229163692,1644667936))] = false
            getgenv()[(decode_string_v1("68872733df02d3d4d0b1",1527648673,1644667936))] = type(getgenv()[(decode_string_v1("91c005e0c2d29fea86fa",630969304,1644667936))]) == (decode_string_v1("7f1c0786f150e4",91631600,1644667936)) and getgenv()[(decode_string_v1("c093a07f77cf07dbbae6",366170697,1644667936))] or false;
            getgenv()[(decode_string_v1("0fc516b5ba005208ff0990",844512738,1644667936))] = type(getgenv()[(decode_string_v1("19a7a31a9a1760540d6845",1692978856,1644667936))]) == (decode_string_v1("8cf5aae74e",310284858,1644667936)) and getgenv()[(decode_string_v1("6eb3fe8042beca89ebdaab",1261850689,1644667936))] or {};
            getgenv()[(decode_string_v1("b6bdd8ce557e80b5b323d12839090188",1845767211,1644667936))] = type(getgenv()[(decode_string_v1("a42f3a35e8bbb9ba1abcdd18363fcdc8",1740041038,1644667936))]) == (decode_string_v1("4a6273fe88",312967385,1644667936)) and getgenv()[(decode_string_v1("98de1bb4dc33c2d32e52d6b7627d2668",631035949,1644667936))] or {};
            getgenv()[(decode_string_v1("8de1ec2a3cb1b938280beca5d78e1988de56",1929236072,1644667936))] = type(getgenv()[(decode_string_v1("e8d962230a6877ce56eee9a1f602ba5fd1fa",944674784,1644667936))]) == (decode_string_v1("1f9585e57b",882190509,1644667936)) and getgenv()[(decode_string_v1("95c3edde0bb3aaf4062f78b612f52f0fd3cd",1346446447,1644667936))] or {};
            getgenv()[(decode_string_v1("a07361241858d94df5b235ea8c8933",124379960,1644667936))] = type(getgenv()[(decode_string_v1("dc65c2d1e872b3e7bddc047a8ab991",1024771975,1644667936))]) == (decode_string_v1("5905361a61",600956042,1644667936)) and getgenv()[(decode_string_v1("f26e167a569dc6f236b1821f51c980",2001029546,1644667936))] or {};
            getgenv()[(decode_string_v1("674495709328ca5d8144332a8c19f5",63325682,1644667936))] = type(getgenv()[(decode_string_v1("115aeded4eddb8f04172141e8ccb1b",919198744,1644667936))]) == (decode_string_v1("303cb8f4d3",1944681772,1644667936)) and getgenv()[(decode_string_v1("803f523ecc094e35a333b4bbffb740",751644389,1644667936))] or {};

            Settings_Name = (decode_string_v1("33e0247cb6f9abc53092b0f350fdda55c8",1571491841,1644667937))

            getgenv()[Settings_Name] = {
                Hairdresser_autofarm = false,
                HAIR_DRESSER_COLOR = nil,
                HAIR_DRESSER_TABLE = nil,
                HAIR_DRESSER_MIRROR = nil
            }

            local HairStyleData = {
                -- old
                [(decode_string_v1("f30ce393f070ac1d8d176e91c1d688c2e505771efb2c48",1905659436,1644667937))] = 13332444, [(decode_string_v1("2124c9009ecd68394c96379715199b0842b722dc66e8ba",287629255,1644667937))] = 16627529,
                [(decode_string_v1("fff46b805ab94cfddfb9fd7e0eeaddd5fe7ce6a6bd2f5c",1283361558,1644667937))] = 82186393, [(decode_string_v1("6556175b2ef620c88ce6f6d6b1c8753d1b7d22fe18ab13",1042759586,1644667937))] = 26400959,
                [(decode_string_v1("3a47c17d0417f29ed2ecf7b2ba8f48b0992e7052232e49",2138841501,1644667937))] = 19999424, [(decode_string_v1("b7723b1cb28f850dbdb081309579eb76b37928b39c0118",863827842,1644667937))] = 19999424,
                [(decode_string_v1("057cb70026e904ac448d0812b577e0835579411b8e6440",1939707680,1644667937))] = 13070796, [(decode_string_v1("890b15b23880e1b4a5a014614be81fa649c9b34c2fbb7a",874055001,1644667937))] = 31309506,
                [(decode_string_v1("b8e408304e54bbbf9c1f243c1c51d5e43ee39293330d3d",1688575084,1644667937))] = 74878559, [(decode_string_v1("74a2b0a42c20efc272e26797e5ebbffecac089706cd3d9",401649724,1644667937))] = 47963332,
                [(decode_string_v1("e719a449b0668eb504d7303f2bb0a9d29ff8b831f3e4cf",1760566633,1644667937))] = 11412443,
        
                -- new
                [(decode_string_v1("381656996146bac1a25ba4808a18d11bbf7ab9b3b1e861",1385933010,1644667937))] = 13332444, [(decode_string_v1("f57e783a0d5ca773be03ded8d0ded5c8287e7a96e16a3d",1216420097,1644667937))] = 16627529,
                [(decode_string_v1("f0f0cf64bc25c7d7757be6509e4e010392e4712c9d0897",280724641,1644667937))] = 82186393, [(decode_string_v1("2fb80067b87a8acf314f2390e6e547c165b9b6499c6686",1740581823,1644667937))] = 26400959,
                [(decode_string_v1("9590e28363b89b3d9980e118a2e35ff8d76156939fdfd3",1760357499,1644667937))] = 19999424, [(decode_string_v1("37e3b099e087c71c3f455d501a1704b86c53c97590f63b",902253325,1644667937))] = 13070796,
                [(decode_string_v1("a7c6361f484709953e82fc9363bc1c8fc510b0e0403623",1196796093,1644667937))] = 31309506, [(decode_string_v1("86da11f5237ae52d367273f81419732d78a71f0ca9db25",1554693385,1644667937))] = 74878559,
                [(decode_string_v1("08d8b1ffbe6454377cf25de5758df4426c3d99937a21e7",114751037,1644667937))] = 47963332, [(decode_string_v1("2ceba298fb18cb6ba6e3857b67d604e5f1c5d044dba08c",659091657,1644667937))] = 11412443
            }

            local HairStylesIconData = {
                Blacklisted = {[(decode_string_v1("52085ae88638d977a98bedb26b76be535ffd6a1636b2a7",360953730,1644667937))] = true},
                Whitelisted = {[(decode_string_v1("15b39d04c42f3fe5d9e6eb09a372457466d6e7ee542bc5",2024120054,1644667937))] = true}
            }

            local function GetHairDresserData()
                table.clear(getgenv()[(decode_string_v1("ec190179776c004350ec2bc91fb4af",265624317,1644667937))])
                for _, V in ipairs(workspace:GetDescendants()) do
                    if tostring(V) == (decode_string_v1("8ab13e6f",497429666,1644667937)) and V.ClassName == (decode_string_v1("d73408a2eb5cd1fb2ecb5d",798994274,1644667937)) then
                        table.insert(getgenv()[(decode_string_v1("050d8d2fd6acb9f522335554bd6439",1737768041,1644667937))], {
                            Mirror = V.Parent.Parent.Parent,
                            Station = V.Parent.Parent.Parent.Parent,
                            StyleFrame = V.Parent.Style,
                            ColorFrame = V.Parent.Color,
                            DoneFunction = getconnections(V.Activated)[1].Function,
                            NextColorFunction = getconnections(V.Parent:FindFirstChild((decode_string_v1("a0e5c1b31c",812922534,1644667937))).Next.Activated)[1].Function,
                            NextStyleFunction = getconnections(V.Parent:FindFirstChild((decode_string_v1("33bb42ff08",127997689,1644667937))).Next.Activated)[1].Function
                        })
                    end
                end
            end
            GetHairDresserData()

            local ReplicatedStorage = game[(decode_string_v1("4f66887272abb7cfe38a",1508945969,1644667937))](game, (decode_string_v1("d99fc72b91345d87396d9ae27d400ed5ac",571332575,1644667937)))
            local RunService = game[(decode_string_v1("df420dc6ae152bd65c46",1511477101,1644667937))](game, (decode_string_v1("ec6c7655be24ec767840",2036781330,1644667937)))
            local Players = game[(decode_string_v1("3f5223cd0b12f3f51ea9",1085142099,1644667937))](game, (decode_string_v1("de9fca044e9b41",1443898470,1644667937)))
            local Player = Players[(decode_string_v1("f48339234bb0b2267ff8cf",461087253,1644667937))]
            local PlayerGui = Players[(decode_string_v1("03ea7ad40b3472638371dc",363914295,1644667937))][(decode_string_v1("d014214695647976da",1453637495,1644667937))]
            local WorkLable = PlayerGui:FindFirstChild((decode_string_v1("ba77565093fb530692",1882210079,1644667937)), true)
            local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("be3e6a0cec25",194425622,1644667937))], string[(decode_string_v1("07ad345427",1538451199,1644667937))], string[(decode_string_v1("66921ccc",465099889,1644667937))], string[(decode_string_v1("1d4753d36783",800175949,1644667937))], string[(decode_string_v1("74062d819e",1521035295,1644667937))]

            Window = UILibrary.new((decode_string_v1("1304a4a52c68128172b0e1054c3c6872048cd74ea3",1082558460,1644667937)), 5013109572)

            local AutoFarmWindow = Window:addPage((decode_string_v1("0a3dffc90888f926f1",1617669567,1644667937)), 5012544693)
            local AutoFarmSection = AutoFarmWindow:addSection((decode_string_v1("512cb442ec7ba99d",144490540,1644667937)))

            for _, Key in pairs(getgc(true)) do
                local JobModule = type(Key) == (decode_string_v1("51a7fc3705",528772800,1644667937)) and rawget(Key, (decode_string_v1("315c103584b538e192f394cc",1440705700,1644667937))) and Key or nil
                local ModuleTable = type(Key) == (decode_string_v1("0301cbd294",1328440893,1644667937)) and rawget(Key, (decode_string_v1("a3b4f66ed5752b1edd233a",353334070,1644667937))) and Key or nil
                if JobModule then
                    getgenv()[(decode_string_v1("937e2a15f43b84b0c04fc9d7bf6b6c2ff316",980994180,1644667937))][(decode_string_v1("aad9b399cc3e60775ba1",1480828229,1644667937))] = getgenv()[(decode_string_v1("6d8fffe53a8571919b69f59fdb0bef3c1387",1527968161,1644667937))][(decode_string_v1("d089f8769c331d07981a",61691548,1644667937))] or JobModule
                end

                if ModuleTable then
                    if type(ModuleTable.ClientStats) == (decode_string_v1("44d17bd127",1082699849,1644667937)) then
                        getgenv()[(decode_string_v1("b665b255a7bfb128d6afa6a72cad776c4918",91264399,1644667937))][(decode_string_v1("6bbaa9fffcc15a10c91a42",2068878401,1644667937))] = getgenv()[(decode_string_v1("d07a2c0cec4e7ef14d7efbbdf8c066a9a3ad",967334633,1644667937))][(decode_string_v1("2e5257ac5ddef977ab52cb",1731899292,1644667937))] or ModuleTable
                    end
                end
            end

            local function DisconnectJobs()
                for _, Connection in ipairs(getgenv()[(decode_string_v1("121f6900d04f426a555d1c357103a4",1952363785,1644667937))]) do
                    if typeof(Connection) == (decode_string_v1("854d82f91ec31bd590dc1adebe2c17b9ab667d",1673743322,1644667937)) then
                        Connection:Disconnect()
                    end
                end

                table.clear(getgenv()[(decode_string_v1("f00536cedb159211ff69ebd16f9538",2136521648,1644667937))])
            end
            DisconnectJobs()

            local function CompleteHair_Dresser_Task(OBJ_Value)
                pcall(function()
                    task.spawn(function()
                        if OBJ_Value ~= nil then
                            if not getgenv()[Settings_Name].HAIR_DRESSER_MIRROR then return nil end
                            if getgenv()[Settings_Name].HAIR_DRESSER_MIRROR.Parent == nil then return nil end
                            local HDDummy = getgenv()[Settings_Name].HAIR_DRESSER_MIRROR.Parent:WaitForChild((decode_string_v1("2669131bbb40fb13cffc14b71db34505",741436283,1644667937)), 5)
                            local HDDummyHair = HDDummy:WaitForChild((decode_string_v1("cda251c4",1052853134,1644667937)), 5)
                            if not HDDummyHair then return nil end
                            local ChatPop = OBJ_Value.Head:WaitForChild((decode_string_v1("7a5cf0e76c877a35e2f9",1673592204,1644667937)), 5)
                            if not ChatPop then return nil end
                            local IconFrameHolder = ChatPop.Body.IconFrame:WaitForChild((decode_string_v1("29",1526065298,1644667937)), 5)
                            if not IconFrameHolder then return nil end
                            
                            for _, V in ipairs(IconFrameHolder:GetChildren()) do
                                if not getgenv()[Settings_Name].Hairdresser_autofarm then
                                    break
                                end

                                if V:isA((decode_string_v1("e6f1dbe7c2b52419fb72",1628277746,1644667937))) then
                                    if V.Name == (decode_string_v1("fefe6e05",1564955316,1644667937)) then
                                        if HairStylesIconData.Blacklisted[tostring(V.Image)] == nil then
                                            if HairStylesIconData.Whitelisted[tostring(V.Image)] == nil then
                                                local hasHData = HairStyleData[tostring(V.Image)]
                                                if hasHData ~= nil then

                                                    repeat
                                                        local Fixed = tostring(HDDummyHair.Mesh.MeshId)
                                                        
                                                        if not tostring(Fixed):find(tostring(hasHData)) and getgenv()[Settings_Name].Hairdresser_autofarm == true then
                                                            getgenv()[Settings_Name].HAIR_DRESSER_TABLE.NextStyleFunction()
                                                        else
                                                            break
                                                        end
                                                        task.wait(.05)
                                                    until tostring(Fixed):find(tostring(hasHData))
                                                else
                                                    getgenv()[Settings_Name].HAIR_DRESSER_TABLE.DoneFunction()
                                                end
                                            else
                                                -- colour
                                                getgenv()[Settings_Name].HAIR_DRESSER_COLOR = V.ImageColor3
                                                local ColorVal = getgenv()[Settings_Name].HAIR_DRESSER_COLOR
                                                local R, G, B = math.floor(ColorVal.R * 255), math.floor(ColorVal.G * 255), math.floor(ColorVal.B * 255)
                                                getgenv()[Settings_Name].HAIR_DRESSER_COLOR = Color3.fromRGB(R, G, B)
                                            end
                                        end
                                    end
                                end
                            end
                            if getgenv()[Settings_Name].Hairdresser_autofarm == true then
                                if getgenv()[Settings_Name].HAIR_DRESSER_COLOR ~= nil then
                                    repeat
                                        if HDDummyHair.Color ~= getgenv()[Settings_Name].HAIR_DRESSER_COLOR and getgenv()[Settings_Name].Hairdresser_autofarm == true then
                                            getgenv()[Settings_Name].HAIR_DRESSER_TABLE.NextColorFunction()
                                        end
                                        task.wait(.05)
                                    until HDDummyHair.Color == getgenv()[Settings_Name].HAIR_DRESSER_COLOR
                                end
                                task.wait(.1)
                                getgenv()[Settings_Name].HAIR_DRESSER_TABLE.DoneFunction()
                            end
                        end
                    end)
                end)
            end
            
            local STR_IDX = 0

            getgenv()[(decode_string_v1("0684f87a347f51c0300137",896449843,1644667937))][(decode_string_v1("1c1263bd59e838d585fd14",1505476829,1644667937))] = function()
                if getgenv()[Settings_Name].Hairdresser_autofarm == true then
                    if getgenv()[(decode_string_v1("35ceeeec0bae595ab8b92d36ea6eb762801f",1509884954,1644667937))][(decode_string_v1("7bd220401ac4e916bd50",804036636,1644667937))] ~= nil then
                        if getgenv()[(decode_string_v1("cf00b7023a489f7f24140399d9e9f82d864a",2067021385,1644667937))][(decode_string_v1("355ca050e34f13c532ca",713742221,1644667937))].IsWorking() then
                            if #getgenv()[(decode_string_v1("9072324f1117c6a5e90b6084e3fcb6",1860705228,1644667937))] <= 0 then
                                if WorkLable ~= nil then
                                    if WorkLable.Text == (decode_string_v1("a461f77f3508457247e68e",331890723,1644667937)) then
                                        DisconnectJobs()

                                        STR_IDX += 1
                                        print(STR_IDX)

                                        local Root = getgenv()[(decode_string_v1("f3546995c082603be6d33f4d0bb1de569659",1057916614,1644667937))][(decode_string_v1("6378331742178175706f",895911505,1644667937))].Modules.CharacterHandler:GetRoot()
                                        table.insert(getgenv()[(decode_string_v1("f6031913c23ea30ea9458d6b41dcf9",2007512942,1644667937))], true) -- Stops it from being spammed

                                        GetHairDresserData()
                                        task.wait(.2)

                                        getgenv()[Settings_Name].HAIR_DRESSER_MIRROR = nil
                                        getgenv()[Settings_Name].HAIR_DRESSER_TABLE = nil
                                        getgenv()[Settings_Name].HAIR_DRESSER_COLOR = nil

                                        if not getgenv()[Settings_Name].HAIR_DRESSER_MIRROR and Root then
                                            repeat
                                                for _, VV in pairs(getgenv()[(decode_string_v1("ba03ba9e9710c3d94903f16d68c6e9",1038493466,1644667937))]) do
                                                    if (Root.Position - VV.Mirror.Position).Magnitude <= 11.5 then
                                                        getgenv()[Settings_Name].HAIR_DRESSER_MIRROR = VV.Mirror
                                                        getgenv()[Settings_Name].HAIR_DRESSER_TABLE = VV
                                                        break
                                                    end
                                                end
                                                task.wait(0.1)
                                            until getgenv()[Settings_Name].HAIR_DRESSER_MIRROR ~= nil and getgenv()[Settings_Name].HAIR_DRESSER_TABLE ~= nil

                                            if getgenv()[Settings_Name].Hairdresser_autofarm == true then
                                                CompleteHair_Dresser_Task(getgenv()[Settings_Name].HAIR_DRESSER_TABLE.Station.Occupied.Value)
                                                table.insert(getgenv()[(decode_string_v1("8c838ada5471120e9d8b420c111ad2",2035465438,1644667937))], getgenv()[Settings_Name].HAIR_DRESSER_TABLE.Station.Occupied.Changed:Connect(function(OBJ_Value)
                                                    CompleteHair_Dresser_Task(OBJ_Value)
                                                end))
                                            end
                                        end

                                    else
                                        DisconnectJobs()
                                    end
                                else
                                    WorkLable = PlayerGui:FindFirstChild((decode_string_v1("8df29698642bd7fb72",968308636,1644667937)), true)
                                    DisconnectJobs()
                                end
                            end
                        else
                            DisconnectJobs()
                        end
                    end
                end
            end

            AutoFarmSection:addToggle((decode_string_v1("6001c9f9f0984886aaf02be04638aa2e0d72ab1482",1149559451,1644667937)), false, function(Bool)
                DisconnectJobs()
                getgenv()[Settings_Name].Hairdresser_autofarm = Bool
            end)

            if not getgenv()[(decode_string_v1("60339ab206e09fc75af0",918147269,1644667937))] then
                getgenv()[(decode_string_v1("9daba844e8c6ddd0c789",574568932,1644667937))] = true
                RunService.Heartbeat:Connect(function()
                    for _, Function in pairs(getgenv()[(decode_string_v1("34bec9247e5a6c1a28749f",716614293,1644667937))]) do
                        if type(Function) == (decode_string_v1("2a2a3297db2a6fe1",746973468,1644667937)) then
                            pcall(Function)
                        end
                    end
                end)
            end

            Window:SelectPage(Window.pages[1], true)
        end
    end, function(err)
        return warn(err .. (decode_string_v1("77",349883591,1644667937)) .. debug.traceback())
    end)
end
            local VRService = game:GetService((decode_string_v1("1ba1c03d2d0bf75901",151017673,1644667938)))

do
    local function WorldZeroInit()
        local MarketService = game:GetService((decode_string_v1("8c0a177458aa6260bba7cb0a420e1b16f744",596983185,1644667938)))
        local VRService = game:GetService((decode_string_v1("0f4160e10470d4e6057d81",100575255,1644667938)))
    
        local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
        if isSuccessful then
            if info.Creator.Name == (decode_string_v1("316243a16d81e13f8de3c2d2dc",1656338950,1644667938)) then
                --

                getgenv()[(decode_string_v1("59ce746c4a82d1a6468aa7c7fb1d7df5cede5fe6d5",1191679946,1644667938))] = false
            
                --------------------------------------------------------------------------------------------
        
                getgenv().UpdateLoop = type(getgenv().UpdateLoop) == (decode_string_v1("5d75876b125e25",497042046,1644667938)) and getgenv().UpdateLoop or false;
                getgenv().UpdateCache = type(getgenv().UpdateCache) == (decode_string_v1("14bb5a09a2",886302154,1644667938)) and getgenv().UpdateCache or {};
                getgenv().MOB_ESP_OBJECTS = type(getgenv().MOB_ESP_OBJECTS) == (decode_string_v1("cdad572837",914994391,1644667938)) and getgenv().MOB_ESP_OBJECTS or {};
                getgenv().MOB_ESP_CONNECTIONS = type(getgenv().MOB_ESP_CONNECTIONS) == (decode_string_v1("981d6aa31f",564504926,1644667938)) and getgenv().MOB_ESP_CONNECTIONS or {};
        
                local GameConfigFile = GetGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("6c3c8e87ae",1161204178,1644667938)))
                Settings_Name = (decode_string_v1("f42fa058a1d049e3288cd7861d926b28a24e3d2275c69d91711b3b",30957064,1644667938))

                getgenv()[Settings_Name] = {
                    AutoAttackMobs = GameConfigFile.AutoAttackMobs or false,
                    AutoPickupCoins = GameConfigFile.AutoPickupCoins or false,
                    AntiIdle = GameConfigFile.AntiIdle or false,
                    MobESP = GameConfigFile.MobESP or false,
                    MobESPRenderDistance = GameConfigFile.MobESPRenderDistance or 250
                }
                
                Window = UILibrary.new((decode_string_v1("aa3d96023f3a3e39330ab91f823c1d2cf5183a87a19273",1662360287,1644667938)), 5013109572)
    
                local TweenService = game:GetService((decode_string_v1("14353f7dedfd9b04f16031d1",1799358776,1644667938)))
                local Player = game.Players.LocalPlayer
                local Character = nil
                local PlayerPosition = nil
                local PlayerLookVector = nil
                local RootPart = nil
                local ItemTable = nil
                
                local ActionsModule = require(game.ReplicatedStorage.Client.Actions);
                local CombatModule = require(game.ReplicatedStorage.Shared.Combat);
                local AnimationModule = require(game.ReplicatedStorage.Client.Animations);
        
                local MobsFolder = workspace:FindFirstChild((decode_string_v1("9ce65a2f",911520706,1644667938)))
                --[===[local PlayerWindow = Window:addPage("Player", 5012544693)]===]
                local AutoFarmWindow = Window:addPage((decode_string_v1("bd933f23eeb7ffb7d4",113547404,1644667938)), 5012544693)
                local VisualsWindow = Window:addPage((decode_string_v1("949b6c62a55e79",827656669,1644667938)), 5012544693)
                local TeleportsWindow = Window:addPage((decode_string_v1("120ff5205e856e1ce8",1724781133,1644667938)), 5012544693)
                local AutoFarmSection = AutoFarmWindow:addSection((decode_string_v1("881f785f56111a00",1775591844,1644667938)), 5012544693)
                local VisualsSection = VisualsWindow:addSection((decode_string_v1("8fc546755b3e3a8f",1268768782,1644667938)), 5012544693)

                local Camera = workspace.Camera
                local GUIService = game[(decode_string_v1("527e41161b039d35842b",634076485,1644667938))](game, (decode_string_v1("68f8310c0640038f1e90",421765836,1644667938)))
                
                local function GetNearMobs()

                    local Mobs = {}
                    local HitBoxSize = Vector3.new(25, 15, 25)

                    if RootPart then

                        local MobParams = OverlapParams.new()
                        MobParams.FilterDescendantsInstances = MobsFolder:GetChildren()
                        MobParams.CollisionGroup = (decode_string_v1("730eb640cdf4f4",346994382,1644667938))
                        MobParams.FilterType = Enum.RaycastFilterType.Whitelist

                        local FoundInBox = workspace:GetPartBoundsInBox(RootPart.CFrame, HitBoxSize, MobParams)

                        if FoundInBox ~= nil then
                            for _, Part in ipairs(FoundInBox) do
                                if Part:IsA((decode_string_v1("ae2eeebcce841e41",400272124,1644667938))) then
                                    if Part.Name == (decode_string_v1("d68b28637cf502a2",1750019900,1644667938)) then
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
                                Box = Drawing.new((decode_string_v1("8015a98f3047",1983494161,1644667938))),
                                ESPText = Drawing.new((decode_string_v1("1ba58f26",2009547490,1644667938)))
                            }
    
                            local Box =  getgenv().MOB_ESP_OBJECTS[Mob].Box
                            local ESPText =  getgenv().MOB_ESP_OBJECTS[Mob].ESPText
    
                            ESPText.Text = (decode_string_v1("",403343047,1644667938))
                            ESPText.Color = Color3.fromRGB(255, 255, 255);
                            ESPText.Size = 20.0
                            ESPText.Visible = false
                            ESPText.Outline = true
                            ESPText.Center = true
    
                            Box.Thickness = 2;
                            Box.Filled = false;
                            Box.Visible = false;
                            
                            getgenv().UpdateCache[Mob] = function()
                                local Collider = Mob:FindFirstChild((decode_string_v1("91cbf737d0377f44",1565054861,1644667938)))

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
    
                                    ESPText.Text = string.format((decode_string_v1("029b7a6757ae1e25550a2a6d9d19c37da98421648105f0fe",1146418588,1644667938)), Mob.Name, tostring( math.floor( (MobPos - PlayerPosition).Magnitude ) ) )
    
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
    
                                            local CreatureHealthFolder = Mob:FindFirstChild((decode_string_v1("4e0fd194ec35d35efd6ec21d0d92f166",2020314810,1644667938)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("8bd08b5c802f",1892507447,1644667938)))
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
                            if typeof(V) == (decode_string_v1("3f5148170fdb27ef7b2e39e535147e95c95cdb",208856373,1644667938)) then
                                V:Disconnect()
                                getgenv().MOB_ESP_CONNECTIONS[I] = nil
                            end
                        end
                    end

                    ESP_META.StartConnections = function()
                        ESP_META.EndConnections()

                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("1d5f3e5faa85a921",1587593743,1644667938))] = MobsFolder.ChildAdded:Connect(function(Mob)
                            ESP_META.AddEsp(Mob)
                        end)
        
                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("a4824507b8b344c78a5a",995227754,1644667938))] = MobsFolder.ChildRemoved:Connect(function(Mob)
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
                
                getgenv()[(decode_string_v1("e3a15baa8a5e84c39a08e7",122690887,1644667938))][(decode_string_v1("7365ef9cc4f33b11b7862e5f594b9b55",769543329,1644667938))] = function()
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

                getgenv().UpdateCache[(decode_string_v1("3cfdd224db9e993ff85b",926285370,1644667938))] = function()
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
                
                VisualsSection:addSlider((decode_string_v1("0b5bf4f1cf417ab2e436587a85a446d40b79f1",305612974,1644667938)), getgenv()[Settings_Name].MobESPRenderDistance, 250, 10000, function(NewValue)
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

                VisualsSection:addToggle((decode_string_v1("1ec47d94554603",2015063338,1644667938)), getgenv()[Settings_Name].MobESP, function(Bool)
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

                AutoFarmSection:addToggle((decode_string_v1("916b7d0157f184d0f994dbacd20f3b8b635322c97717c859f58e8051a7069b69be4306",1144071638,1644667938)), getgenv()[Settings_Name].AutoAttackMobs, function(Bool)
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
                                            local CreatureHealthFolder = Creature:FindFirstChild((decode_string_v1("464ce3a257f8405f2a5f40bab85183b7",201089908,1644667938)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("80d6c7b987d8",1501328419,1644667938)))
                                                
                                                if CreatureHealth then
                                                    
                                                    if CreatureHealth.Value > 0 then
                                                        local CreaturePos = Creature:GetPivot();
    
                                                        --local v14 = AnimationModule:GetAnims().Defender["Attack" .. tostring(AttackIndex)];
                                                        if not ActionsModule:IsBusy() then
                                                            TotalHits = TotalHits + 1
    
                                                            --ActionsModule:FireSkillUsedSignal("Primary");
                                                            --ActionsModule:FireCooldown("Primary");
                                                            ActionsModule:SetBusy((decode_string_v1("2b673eca2c",848360429,1644667938)));
                                                        
                                                            if Character then
                                                                PlayerPosition = Character.PrimaryPart.Position
                                                                PlayerLookVector = Character.PrimaryPart.CFrame.LookVector
                                                                RootPart = Character.PrimaryPart
                                                            end
    
                                                            RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
                                                            Camera.CFrame = CFrame.new(Camera.CFrame.p, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
    
                                                            CombatModule:AttackWithSkill((decode_string_v1("4605e4bee85d017f",960236591,1644667938)) .. tostring(AttackIndex), PlayerPosition, CFrame.new(PlayerPosition, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z)).LookVector * 1.1 );
                                                            
                                                            AttackIndex = math.clamp(AttackIndex + 1, 1, 6)
    
                                                            if AttackIndex > 5 then
                                                                AttackIndex = 1
                                                            end

                                                            CreatureIndex = CreatureIndex + 1
    
                                                            task.wait(0.01)
                                                            ActionsModule:ReleaseBusy((decode_string_v1("20e956d957",1067498041,1644667938)));
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
                    if A:IsA((decode_string_v1("f9b1a00abb",1471475039,1644667938))) then
                        if tostring(A) == (decode_string_v1("7d195b100e",1489659723,1644667938)) then
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
    
                AutoFarmSection:addToggle((decode_string_v1("6ef148a03cda9e56",994774210,1644667938)), getgenv()[Settings_Name].AntiIdle, function(Bool)
                    getgenv()[Settings_Name].AntiIdle = Bool
                end)
    
                AutoFarmSection:addToggle((decode_string_v1("1afd2662b064b8df7ca8749eb307e10e12bec3f207dec7d096dd",548754266,1644667938)), getgenv()[Settings_Name].AutoPickupCoins, function(Bool)
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
        
                if not getgenv()[(decode_string_v1("35a99c62eab229add678",1199331824,1644667938))] then
                    getgenv()[(decode_string_v1("e5cdf9a225d72b285412",1686063224,1644667939))] = true
                    RunService.Heartbeat:Connect(function()
                        for _, Function in pairs(getgenv()[(decode_string_v1("0f4da0c288efeb0c3c364c",1487241403,1644667939))]) do
                            if type(Function) == (decode_string_v1("da52e5b21563b98b",1814064413,1644667939)) then
                                pcall(Function)
                            end
                        end
                    end)
                end
        
                print((decode_string_v1("347aceb516e2a60dd664c2a6963faced59026f2299",1701986250,1644667939)))
                --
            end
        end    
    end
    
    WorldZeroInit()

    local _Players = game:GetService((decode_string_v1("47ed894f67d8c0",1706338775,1644667939)))
    local _Player = _Players.LocalPlayer
    
    local queue_on_teleport = type(syn) == (decode_string_v1("f6b349b0d5",141280643,1644667939)) and syn.queue_on_teleport or queue_on_teleport
    
    local RejoinCode = (decode_string_v1("58cb86108b72fa47071f0094615537a02572252a6fcf25beae768fb1071b031ae9ac43e790d9f858ab68a0480f9270a6b378c2017550657fecf6dd933b4a7d703015cf51547e938da8db1fb48bcfcd8525e056bd0a14e675b8fcbd0a507df80fc142255f5f3a1e8ecdd5b033efb3d6646e372b03967d12461ce93f61989247a33fd2601a073d305a3f00c0dbe0447eec051e750ae1e24db4d10c8e475c717d9d93296605f416e3976ee499e2909484720f3a4533b9264d560b6749291a20b0cc157940695a11d3ee89917801e5314e07c3b776921206dfddc26b214c778bf4fef4af594c878bcd1158ad8371d5eed5eeeedb4c1afba552a729a55bb8de6ed9908ae8461e6336f02d308887b74a7de6f5168739ecb43fd8e2370e985cba162bda7e9fb84ea4053ca297e695768a29465d4571e3ff0a6db612dec1cd586ae893e1d64e3ba6b944c8155993723b9430efcf9d188bfe2d20c3c021f04b9d5cbbd7e1ffb30c03f43f96568e61086bb6652ab8deb9e1fd3cda707f8c3e9edda5210f3ac71b3f2c85b5d902892696fd6f933bfc033ffa29bcf25d94bb35c2a8eff0eaaaa25ece0b5870fe056ba2a57b78d15122da55e995f7715b57d4a1e3b362e1e58a12959e0a8ca6152db67c80885a4bf4f62fa8d3ffcd46d7822b0a2205347e7ba2e1b6363ee64393984f22cdefd6c83f666146d51874952c5e24daaa0dcd40cf077d1c5dba80e141864401c1f14255aecdde2cc07a906c043adcf5b5da580e48581ce1b22a480cde8426ea90c9ea41404343bca37ad00d879a867b19a1eb9208b9e62cd2c0fed5b30a20d0026c54deb8307c1751e3ee70bccb931d0dfe562e5b5b6896a9dd449bdd1923a1756aec4f1bb603b6ad085637d3c4b2208c607d80",168552426,1644667939))

    if not isfile((decode_string_v1("2db961f14c608fa6718f8fe4595768b288a126",1557377079,1644667939))) then
        writefile((decode_string_v1("85e37a8047a7a2b14240ea388327dae80c6819",1896588628,1644667939)), tostring(RejoinCode))
    end
    
    queue_on_teleport((decode_string_v1("48ff92855260a5e0719f5cc86967751beda32f99dc087e06f749e4a6287c53ba9376cff3a7064f59c0b38149e31f0dd9873686bad56cfbdc1c7c75008390e97c0c3b51548dca5d626d7bdfbf7d423ec4e03710bee6b096c69db8e48fa3bd71bdd631331864eddf2b40174d87",904043513,1644667939)))
end
            local UserInputService = game:GetService((decode_string_v1("5078db708026e3436e1787b55ed26e23",1932903595,1644667937)))
local VRService = game:GetService((decode_string_v1("5091af7f855bb651ca",1166921747,1644667937)))

do
    if tostring(game.PlaceId) == (decode_string_v1("4b55f9359d5470a08328",1675830072,1644667937)) then
        getgenv()[(decode_string_v1("9d6995e971a45769902d538e245708854c024f2ea8",1166702004,1644667937))] = false
    
        --------------------------------------------------------------------------------------------

        getgenv().UpdateLoop = type(getgenv().UpdateLoop) == (decode_string_v1("c17e487a28ac51",1519026458,1644667937)) and getgenv().UpdateLoop or false;
        getgenv().UpdateCache = type(getgenv().UpdateCache) == (decode_string_v1("17513efacc",804136936,1644667937)) and getgenv().UpdateCache or {};
        getgenv().GAME_CONNECTIONS = type(getgenv().GAME_CONNECTIONS) == (decode_string_v1("0056c4bcf7",731760330,1644667937)) and getgenv().GAME_CONNECTIONS or {};
        getgenv().GAME_HOOKS = type(getgenv().GAME_HOOKS) == (decode_string_v1("b50326ad81",1735702074,1644667937)) and getgenv().GAME_HOOKS or {};

        for _, Signal in pairs(getgenv().GAME_CONNECTIONS) do
            if typeof(Signal) == (decode_string_v1("aa8abce73c52749d042a1654f6a57f6daa7ba7",1626485686,1644667937)) then
                Signal:Disconnect()
            end
        end

        table.clear(getgenv().GAME_CONNECTIONS)

        local GameConfigFile = GetGameConfig(FixName((decode_string_v1("8debb5e7da20",86048039,1644667937))) .. (decode_string_v1("86bfa5caaf",1572668452,1644667937)))
        Settings_Name = (decode_string_v1("eede1bb7ca82adc53fbdaad4786eaab2536708afaee54cb9",1927492299,1644667937))

        getgenv()[Settings_Name] = {
            AntiIdle = GameConfigFile.AntiIdle or false,
            InstantStomp = GameConfigFile.InstantStomp or false,
            Fly = GameConfigFile.Fly or false,
            
            ESP_Color = GameConfigFile.ESP_Color or {R = 255, G = 255, B = 255},
            ESP_Teamcheck = GameConfigFile.ESP_Teamcheck or false,
            ESP_Boxes = GameConfigFile.ESP_Boxes or false,
            ESP_Tracers = GameConfigFile.ESP_Tracers or false,
            ESP_FOV = GameConfigFile.ESP_FOV or false
        }
        
        Window = UILibrary.new((decode_string_v1("414122c67b21c06153f61b34a5515a3fdfd7431f",979357394,1644667937)), 5013109572)

        local VRService = game:GetService((decode_string_v1("ca03646a190759f920750b",119208164,1644667937)))
        local PlayersService = game:GetService((decode_string_v1("09a3dcee323b44",563839575,1644667937)))
        local TweenService = game:GetService((decode_string_v1("99b7eeb11ff46aaa4520b7fa",1308907572,1644667937)))
        local ReplicatedStorage = game:GetService((decode_string_v1("be05b5866d7a040f53aff0d0b1643e3f42",1967123182,1644667937)))
        local UserInputService = game:GetService((decode_string_v1("7cf4c8f775892ebaa3e8f5c4c1ea00fd",501646443,1644667937)))
        local RunService = game:GetService((decode_string_v1("5b98fbedf9ae054ede64",1944773309,1644667937)))
        local Player = PlayersService.LocalPlayer
        local Character = nil
        local PlayerPosition = nil
        local PlayerLookVector = nil
        local RootPart = nil

        local MainGameEvent = ReplicatedStorage:WaitForChild((decode_string_v1("f7ac17edaa5efbb139",1171704921,1644667937)), 5)
        local PlayerWindow = Window:addPage((decode_string_v1("f8c6970e153f",2008736782,1644667937)), 5012544693)
        local AutoFarmWindow = Window:addPage((decode_string_v1("977c851b9a92a8554b",1620157540,1644667937)), 5012544693)
        local VisualsWindow = Window:addPage((decode_string_v1("84a1eba1e97019",2041382690,1644667937)), 5012544693)
        local TeleportsWindow = Window:addPage((decode_string_v1("7925fd4f4d2a0170f9",142542916,1644667937)), 5012544693)
        local AutoFarmSection = AutoFarmWindow:addSection((decode_string_v1("1159a90f3152baf5",2122700641,1644667937)), 5012544693)
        local PlayerSection = PlayerWindow:addSection((decode_string_v1("52ad1c35606d361e",638283795,1644667937)), 5012544693)
        local PlayerTeleportSection = TeleportsWindow:addSection((decode_string_v1("eac38039a4fa4fa5815bf9bd0ccd62",1572544394,1644667937)), 5012544693)
        local VisualsSelection = VisualsWindow:addSection((decode_string_v1("9ca8be7cee649fd6",620728431,1644667937)), 5012544693)

        local TeleportTarget = nil

        local Camera = workspace.Camera
        local GUIService = game[(decode_string_v1("b083a0ee4be0f9c9ad4e",448896400,1644667937))](game, (decode_string_v1("2f4ac6dd5ba8db7ece31",1081058324,1644667937)))

        local PlayersDropDown, PlayersDropDownOptions = nil, nil

        local function TeleportBypass(NewCFrame)
            if typeof(NewCFrame) == (decode_string_v1("c869110c6eed",1571482392,1644667937)) then
                if RootPart ~= nil then
                    if Character ~= nil then
                        Character.PrimaryPart = RootPart
                        Character:SetPrimaryPartCFrame(NewCFrame)
                        return true
                    else
                        return warn((decode_string_v1("7b764821b4b00a7c7b4a5c2437f2a628145eff6c7829e7ce742568bed578099d64bb4850681f99fccbbbc186b1bdda504b34132d",8190006,1644667937)))
                    end
                else
                    return warn((decode_string_v1("b27291aca3ffcb589627427787da97455d01181c7cc05e47efc5fd006c9383d8d404aded1d663b0f58d0135fa785c3e87e5e8002",1216974239,1644667937)))
                end
            else
                return warn((decode_string_v1("ea5e3fbe714ed6e8cf97a5763b5eb9b4edd5ed39cd531c2689cba65928412909b862f71ba3af917af7035ce19ea921a2df626fe366",2044086393,1644667937)))
            end
        end

        local function RemoveSignal(SignalName)
            for SignalIndex, Signal in pairs(getgenv().GAME_CONNECTIONS) do
                if SignalIndex == SignalName then
                    if typeof(Signal) == (decode_string_v1("635a69815c2d28c05c2e2aa54282166e097392",1486823982,1644667937)) then
                        Signal:Disconnect()
                        getgenv().GAME_CONNECTIONS[SignalIndex] = nil
                    end
                end
            end
        end

        local function RemoveAntiCheat()
            if Character then
                for _, Object in ipairs(Character:GetChildren()) do
                    if Object:IsA((decode_string_v1("1144bf62092c",909607713,1644667937))) then
                        local LocalScriptCheck = Object:FindFirstChild((decode_string_v1("d85d5ad4bdb1b4f921eaa3",2058853975,1644667937)))
                        if LocalScriptCheck then
                            return Object:Destroy()
                        end
                    end
                end
            end
        end

        local function ModelCFrameSmooth(Model, CF)
            local CValue = Instance.new((decode_string_v1("773f712016020f94496909",1884594597,1644667937)), nil)
            CValue.Value = Model:GetPrimaryPartCFrame()

            CValue.Changed:Connect(function()
                if Model ~= nil then
                    if Model:IsA((decode_string_v1("fd74103a9a",1704977850,1644667937))) then
                        if Model.PrimaryPart ~= nil then
                            Model:SetPrimaryPartCFrame(CValue.Value)
                        end
                    end
                end
            end)

            local Tween = TweenService:Create(CValue, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                Value = CF
            })

            Tween:Play()

            task.spawn(function()
                Tween.Stopped:Wait()
                if CValue ~= nil then
                    CValue:Destroy()
                end
            end)
        end

        local IsFlying = false
        local function FlyBypass()
            local OldChar = Character
            
            if OldChar then
                local ModelCF = Character:GetPrimaryPartCFrame()
                local BodyPosition = Instance.new((decode_string_v1("8cf02bc54b455e2312d77aa4",601838000,1644667937)), RootPart)
                BodyPosition.Position = Vector3.new(ModelCF.X, ModelCF.Y, ModelCF.Z)
                BodyPosition.MaxForce = Vector3.new(40000, 40000, 40000)

                IsFlying = true

                task.spawn(function() -- Threading yes sir!
                    local FlyData = {
                        W = false, -- Forward
                        S = false, -- Backward
                        A = false, -- Left
                        D = false  -- Right
                    }

                    getgenv().GAME_CONNECTIONS[(decode_string_v1("aab40dcfb479ce7a1d3eaad39194be",246014712,1644667937))] = UserInputService.InputBegan:Connect(function(Input, Processing)
                        if not Processing then
                            if Input.KeyCode == Enum.KeyCode.W then
                                FlyData.W = true
                            elseif Input.KeyCode == Enum.KeyCode.S then
                                FlyData.S = true
                            elseif Input.KeyCode == Enum.KeyCode.A then
                                FlyData.A = true
                            elseif Input.KeyCode == Enum.KeyCode.D then
                                FlyData.D = true
                            end
                        end
                    end)

                    getgenv().GAME_CONNECTIONS[(decode_string_v1("6d0e6efec939dd0a4824d6513b1acd",807473551,1644667937))] = UserInputService.InputEnded:Connect(function(Input, Processing)
                        if Input.KeyCode == Enum.KeyCode.W then
                            FlyData.W = false
                        elseif Input.KeyCode == Enum.KeyCode.S then
                            FlyData.S = false
                        elseif Input.KeyCode == Enum.KeyCode.A then
                            FlyData.A = false
                        elseif Input.KeyCode == Enum.KeyCode.D then
                            FlyData.D = false
                        end
                    end)

                    while IsFlying and getgenv()[Settings_Name].Fly and OldChar ~= nil and RootPart ~= nil do

                        if RootPart then
                            if FlyData.W then
                                -- Da hood is a cunt
                                BodyPosition.Position = (RootPart.Position + Vector3.new(0, 0, 1)) * 10
                            elseif FlyData.S then
                                BodyPosition.Position = (RootPart.Position + Vector3.new(0, 0, -1)) * 10
                            elseif FlyData.A then
                                BodyPosition.Position = (RootPart.Position + -RootPart.CFrame.RightVector) * 10
                            elseif FlyData.D then
                                BodyPosition.Position = (RootPart.Position + RootPart.CFrame.RightVector) * 10
                            else
                            end
                        else
                            break
                        end

                        RunService.RenderStepped:Wait() -- Wait for the render engine to update every 60th of a second!
                    end

                    if BodyPosition ~= nil then
                        BodyPosition:Destroy()
                    end

                    RemoveSignal((decode_string_v1("49d26a7525027087486c00c4758cd3",2090180021,1644667937)))
                    RemoveSignal((decode_string_v1("4bfd11e37e53453260da15b92afd64",573628045,1644667937)))
                end)
            end
        end

        local function FindPlayer(PlayerName)
            if type(PlayerName) == (decode_string_v1("2ec96c409699",256302471,1644667937)) then
                PlayerName = tostring(PlayerName):lower()

                for _, Target in ipairs(PlayersService:GetPlayers()) do
                    local TargetName = tostring(Target.Name):lower()

                    if TargetName:match(PlayerName) then
                        return Target
                    end
                end
            else
                return nil, warn((decode_string_v1("8ada172dcb24ab102270adbfb5ea868e5a8c1ee62756d229e37442370efbed33b2fa4996c7e6d7c000eb4dd5104e7ae9a6",376129217,1644667937)))
            end
            return nil
        end

        if getgenv().GAME_HOOKS.ANTI_CHEAT_BYPASS_1 == nil then
            getgenv().GAME_HOOKS.ANTI_CHEAT_BYPASS_1 = hookmetamethod(game, (decode_string_v1("9a1b606468d1ae",1576630870,1644667937)), newcclosure(function(A, B)

                if tostring(A) == tostring(Player) then
                    if tostring(B) == (decode_string_v1("89b46d0ecee715c18adf123c4b4a22a2",50073801,1644667937)) then
                        if RootPart ~= nil then
                            return RootPart
                        end
                    end
                end

                return getgenv().GAME_HOOKS.ANTI_CHEAT_BYPASS_1(A, B)
            end))

            getgenv().GAME_HOOKS.ANTI_CHEAT_BYPASS_2 = hookmetamethod(game, (decode_string_v1("7c3a8d14ee36cda33d51",1549788189,1644667937)), newcclosure(function(self, ...)
                local Method = getnamecallmethod()

                if Method == (decode_string_v1("8e783751f4d1fa39577f",1568295635,1644667937)) then
                    local FirstArg = unpack({...})

                    if type(tostring(FirstArg)) == (decode_string_v1("865860124bce",1457004160,1644667937)) then
                        local LowerArg = tostring(FirstArg):lower()

                        if LowerArg:find((decode_string_v1("ce5770986e955932",900597260,1644667937))) or LowerArg:find((decode_string_v1("686f1c8d67c6b7",1546535718,1644667937))) then
                            return true
                        end
                    end
                elseif Method == (decode_string_v1("2885a60969a7c57d5e321ee87da3",1646445011,1644667937)) then
                    local FirstArg = unpack({...})

                    if self == Character then
                        if tostring(FirstArg) == (decode_string_v1("80a4e25f29e359d7395efcf7f0db54bc",458722407,1644667937)) then
                            if RootPart ~= nil then
                                return RootPart
                            end
                        end
                    end
                elseif Method == (decode_string_v1("5c75f97ae2c6f7de81234645",23590054,1644667937)) then
                    local FirstArg = unpack({...})

                    if self == Character then
                        if tostring(FirstArg) == (decode_string_v1("3c188d6c520d1c5ac0a8985d6eda6e76",881857369,1644667937)) then
                            if RootPart ~= nil then
                                return RootPart
                            end
                        end
                    end
                end

                return getgenv().GAME_HOOKS.ANTI_CHEAT_BYPASS_2(self, ...)
            end))
        end

        getgenv()[(decode_string_v1("c24833e0336cbb51e67550",832337470,1644667937))][(decode_string_v1("af051c212d9ddb3897452e9df670fddb",2064169721,1644667937))] = function()
            Character = Player.Character

            if Character then
                local RootCheck = Character:FindFirstChild((decode_string_v1("c1a88ff95d8294c42fe7d85982ee4121",1550642318,1644667937)))

                if RootCheck ~= nil then
                    RootPart = RootCheck
                end

                RemoveAntiCheat()

                if RootPart then
                    PlayerPosition = RootPart.Position
                    PlayerLookVector = RootPart.CFrame.LookVector

                    Character.PrimaryPart = RootPart
                end

                if getgenv().GAME_HOOKS.Humanoid == nil then
                    local HumanoidNameCall = nil
                    local FoundHumanoid = Character:FindFirstChild((decode_string_v1("7a5a69a935be0926",954155051,1644667937)))

                    if FoundHumanoid then

                        getgenv().GAME_HOOKS.Humanoid = FoundHumanoid

                        HumanoidNameCall = hookmetamethod(getgenv().GAME_HOOKS.Humanoid, (decode_string_v1("6dad5ce7e167b68b6344",1500110876,1644667937)), newcclosure(function(self, ...)
                            local Method = getnamecallmethod()

                            if Method == (decode_string_v1("d36b7fb4",1571530123,1644667937)) then
                                if tostring(getfenv(2).script) == (decode_string_v1("d6d07b36e6ac45b645",853307044,1644667937)) then
                                    if tostring(self):lower() == (decode_string_v1("01e119c9a4",1470874118,1644667937)) and getgenv()[Settings_Name].InstantStomp == true then
                                        print((decode_string_v1("6f93e02bcf2a3a3a",2047470915,1644667937)))

                                        for I = 1, 3 do
                                            MainGameEvent:FireServer((decode_string_v1("09fc36b4f2",875031681,1644667937)))
                                        end

                                        return true
                                    end
                                end
                            end

                            return HumanoidNameCall(self, ...)
                        end))

                    end
                end
            end
        end

        task.spawn(function()
            getgenv().GAME_CONNECTIONS[(decode_string_v1("835fcf5cbb91cb71",1561686649,1644667937))] = Player.Idled:connect(function()
                if getgenv()[Settings_Name].AntiIdle == true then
                    VRService:Button2Down(Vector2.new(0, 0), CFrame.new(math.random(1, 10), math.random(1, 10), math.random(1, 10)) )
                    task.wait(.2)
                    VRService:Button2Up(Vector2.new(0, 0), CFrame.new(math.random(1, 10), math.random(1, 10), math.random(1, 10)) )
                end
            end)
        end)

        PlayerSection:addToggle((decode_string_v1("a8f451",1077916906,1644667937)), getgenv()[Settings_Name].Fly, function(Bool)
            getgenv()[Settings_Name].Fly = Bool

            if Bool then
                FlyBypass()
            else
                IsFlying = false
            end
        end)

        PlayerSection:addToggle((decode_string_v1("4ff718fa54648f729c4ba6329f",695956149,1644667937)), getgenv()[Settings_Name].InstantStomp, function(Bool)
            getgenv()[Settings_Name].InstantStomp = Bool
        end)

        AutoFarmSection:addToggle((decode_string_v1("5dc5729f7c437579",2110843622,1644667937)), getgenv()[Settings_Name].AntiIdle, function(Bool)
            getgenv()[Settings_Name].AntiIdle = Bool
        end)

        PlayersDropDown, PlayersDropDownOptions = PlayerTeleportSection:addDropdown((decode_string_v1("fb6b2713790e4c325009323a0b",1061311088,1644667937)), PlayersService:GetPlayers(), function(TargettedPlayer)
            TeleportTarget = FindPlayer(tostring(TargettedPlayer))

            if TeleportTarget ~= Player and TeleportTarget ~= nil then
                local TargetCharacter = TeleportTarget.Character

                if TargetCharacter then
                    local TargetRoot = TargetCharacter.PrimaryPart

                    if TargetRoot then
                        TeleportBypass(CFrame.new(TargetRoot.Position))
                    end
                end
            else
                TeleportTarget = nil
            end
        end, true)
        --[===[
        ESP_Color = GameConfigFile.ESP_Color or {R = 255, G = 255, B = 255},
        ESP_Teamcheck = GameConfigFile.ESP_Teamcheck or false,
        ESP_Boxes = GameConfigFile.ESP_Boxes or false,
        ESP_Tracers = GameConfigFile.ESP_Tracers or false,
        ESP_FOV = GameConfigFile.ESP_FOV or false
        ]===]

        VisualsSelection:addToggle((decode_string_v1("82896e70ff9aa3b92790",997995778,1644667937)), getgenv()[Settings_Name].ESP_FOV, function(Bool)
            getgenv()[Settings_Name].ESP_FOV = Bool
        end)

        VisualsSelection:addToggle((decode_string_v1("4d3dfdb7adc24e5fd9",1964265008,1644667937)), getgenv()[Settings_Name].ESP_Boxes, function(Bool)
            getgenv()[Settings_Name].ESP_Boxes = Bool

            if Bool then
                for _, Plr in ipairs(PlayersService:GetPlayers()) do
                    if Plr ~= Player then
                        getgenv()[(decode_string_v1("507e7c750346d76cbd",529787190,1644667937))].LoadBox(Plr)
                    end
                end
                getgenv()[(decode_string_v1("265fd2dee1121034bd",1594772545,1644667937))].SetBoxVisibility(true)
            else
                getgenv()[(decode_string_v1("75644e03f564615ce4",1546400255,1644667937))].UnLoadType((decode_string_v1("bf45deefdd5a3915910f",1513017842,1644667937)))
                getgenv()[(decode_string_v1("fdefbe7ec98954a7ce",1352364176,1644667937))].SetBoxVisibility(false)
            end
        end)

        VisualsSelection:addToggle((decode_string_v1("62e4e18edf42f20e5c660e",1356725949,1644667937)), getgenv()[Settings_Name].ESP_Tracers, function(Bool)
            getgenv()[Settings_Name].ESP_Tracers = Bool

            if Bool then
                for _, Plr in ipairs(PlayersService:GetPlayers()) do
                    if Plr ~= Player then
                        getgenv()[(decode_string_v1("febbc9b6eab4d1e451",82410643,1644667937))].LoadTracers(Plr)
                    end
                end
                getgenv()[(decode_string_v1("0abacbcb84fc1b7c81",1504895170,1644667937))].SetTracersVisibility(true)
            else
                getgenv()[(decode_string_v1("2c536f6c08f31158af",852954331,1644667937))].UnLoadType((decode_string_v1("fa1e665f9b33e0b6eb68d33e",781837152,1644667937)))
                getgenv()[(decode_string_v1("dddb5291d47afc1604",48218954,1644667937))].SetTracersVisibility(false)
            end
        end)

        local ESP_COLOR_LOCAL = getgenv()[Settings_Name].ESP_Color

        getgenv()[(decode_string_v1("e1aca70da127dcb477",1731219100,1644667937))].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

        VisualsSelection:addColorPicker((decode_string_v1("bd92b1dd3e0f8e84b2",1848300436,1644667937)), Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
            local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)
            
            getgenv()[Settings_Name].ESP_Color.R = R
            getgenv()[Settings_Name].ESP_Color.G = G
            getgenv()[Settings_Name].ESP_Color.B = B
            
            getgenv()[(decode_string_v1("b85c94b0c78a2b8aac",915192230,1644667937))].UpdateColor(Color3.fromRGB(R, G, B))
        end)

        VisualsSelection:addButton((decode_string_v1("f3016ff494c99d9b19e2",48642025,1644667937)), function(Bool)
            getgenv()[(decode_string_v1("6f2157712c2eb8549e",1845772427,1644667937))].UnLoad()
        end)

        getgenv().GAME_CONNECTIONS[(decode_string_v1("e726bf21c26a013e575ca9",151067774,1644667937))] = PlayersService.PlayerAdded:Connect(function(PlayerJoined)
            PlayersDropDownOptions(PlayersService:GetPlayers())
        end)

        getgenv().GAME_CONNECTIONS[(decode_string_v1("1f0a46f1bc7fa92c62cbc6b015",1537359992,1644667937))] = PlayersService.PlayerRemoving:Connect(function(PlayerLeft)
            PlayersDropDownOptions(PlayersService:GetPlayers())
        end)

        if not getgenv()[(decode_string_v1("d0cdded084aec1b4f017",1109591916,1644667937))] then
            getgenv()[(decode_string_v1("7f8f805367a80cbc9321",1469598416,1644667937))] = true
            RunService.Heartbeat:Connect(function()
                for _, Function in pairs(getgenv()[(decode_string_v1("f9fc71c292c848d8af667c",975345872,1644667937))]) do
                    if type(Function) == (decode_string_v1("4ee47a0232383a5a",589399445,1644667937)) then
                        pcall(Function)
                    end
                end
            end)
        end

        print((decode_string_v1("26db907be607ac86d24700b6832a08d2450a",1699123264,1644667937)))
        --
    end
end

			if getgenv()[(decode_string_v1("84a907673da1a79902e6cdef1a30808aefa4d5e52d",355231494,1644667936))] == true then
                do
    local Players = game[(decode_string_v1("637d737a72e62303fad2",2120221802,1644667938))](game, (decode_string_v1("c98433edfadbaa",1212686397,1644667938)))
    local Player = Players[(decode_string_v1("c99acaf718232bfa288838",1698537021,1644667938))]
    local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("8c2636b117ac",678375463,1644667938))], string[(decode_string_v1("c7179d7a77",2101208103,1644667938))], string[(decode_string_v1("63339b05",1589414624,1644667938))], string[(decode_string_v1("fa266b9a9466",1683177085,1644667938))], string[(decode_string_v1("756ec78fd4",415652426,1644667938))]

    Window = UILibrary.new((decode_string_v1("02c7bf8dad384731ffca636541e0ec68a933c3c0989a",671681477,1644667938)), 5013109572)

    local VisualsWindow = Window:addPage((decode_string_v1("92dbb70f4bd8bf",1101643646,1644667938)), 5012544693)
    local VisualsSelection = VisualsWindow:addSection((decode_string_v1("6bc088dd",98867413,1644667938)))

    local GameConfigFile = GetGameConfig(FixName(tostring((decode_string_v1("8ece80f9b2722e4720",1461760401,1644667938)))) .. (decode_string_v1("e4dc047fe5",27467932,1644667938)))
    Settings_Name = (decode_string_v1("3723c8bd5c21441d640804d117c613721326d06c63909154b17c",384545966,1644667938))

    getgenv()[Settings_Name] = {
        Teamcheck = GameConfigFile.Teamcheck or false,
        Boxes = GameConfigFile.Boxes or false,
        Tracers = GameConfigFile.Tracers or false,
        Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
    }

    VisualsSelection:addToggle((decode_string_v1("7c7c2c10ee07aef6780c47ebcf",1625627474,1644667938)), getgenv()[Settings_Name].Teamcheck, function(Bool)
        getgenv()[Settings_Name].Teamcheck = Bool
        getgenv()[(decode_string_v1("75ac2aaa8c32ca708f",1963767353,1644667938))].SetTeamCheck(Bool)
    end)

    VisualsSelection:addToggle((decode_string_v1("0cc8372a73d04c8490",1250721232,1644667938)), getgenv()[Settings_Name].Boxes, function(Bool)
        getgenv()[Settings_Name].Boxes = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("b29e0901b18eca54e3",1179388806,1644667938))].LoadBox(Plr)
                end
            end
            getgenv()[(decode_string_v1("28d01922cff591c51c",935675808,1644667938))].SetBoxVisibility(true)
        else
            getgenv()[(decode_string_v1("36c826b88d072b0e13",893635787,1644667938))].UnLoadType((decode_string_v1("1cecb614248443b32095",1189797797,1644667938)))
            getgenv()[(decode_string_v1("8919e28b166c9be59a",470091297,1644667938))].SetBoxVisibility(false)
        end
    end)

    VisualsSelection:addToggle((decode_string_v1("44705dc89724c86284d5e6",742563821,1644667938)), getgenv()[Settings_Name].Tracers, function(Bool)
        getgenv()[Settings_Name].Tracers = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("af4792ff2fa7843f0f",971082329,1644667938))].LoadTracers(Plr)
                end
            end
            getgenv()[(decode_string_v1("063888ea110b09054b",452515744,1644667938))].SetTracersVisibility(true)
        else
            getgenv()[(decode_string_v1("1acceff17dcc4ddf13",1065717438,1644667938))].UnLoadType((decode_string_v1("fc64257d3ba8662c4af4b927",1998770880,1644667938)))
            getgenv()[(decode_string_v1("274a624f6b28f6e738",1005837345,1644667938))].SetTracersVisibility(false)
        end
    end)

    local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color

    getgenv()[(decode_string_v1("8f3ff6bb3b8b79f2bd",1594780741,1644667938))].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

    VisualsSelection:addColorPicker((decode_string_v1("a4b07fad7658f0078c",1834178405,1644667938)), Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
        local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)

        getgenv()[Settings_Name].Color.R = R
        getgenv()[Settings_Name].Color.G = G
        getgenv()[Settings_Name].Color.B = B

        getgenv()[(decode_string_v1("ea5a4f175853b97f79",1112166399,1644667938))].UpdateColor(Color3.fromRGB(R, G, B))
    end)

    VisualsSelection:addButton((decode_string_v1("11d446b822025943ccad",523970132,1644667938)), function(Bool)
        getgenv()[(decode_string_v1("86446cdbcdd0b9d398",898470079,1644667938))].UnLoad()
    end)
end
			end

			if Window ~= nil and Settings_Name ~= nil then
				local MarketService = game:GetService((decode_string_v1("bd071b654c8b7bd7daa813efc6846956746d",1052322351,1644667936)))
				SettingsPage = SettingsPage or Window:addPage((decode_string_v1("632b6e8fe3ae59a9",1028095489,1644667936)), 5012544693)
				SettingsSection = SettingsSection or SettingsPage:addSection((decode_string_v1("3aa3a9f280",1624076511,1644667936)), 5012544693)
				SettingsSection:addButton((decode_string_v1("b54aa73d161222c0b97b0e",1718027048,1644667936)), function()
					local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
					if isSuccessful then
						if tostring(info.Creator.Name) == (decode_string_v1("ab5b1bb2fe95e7980c90caac79",1087243379,1644667936)) then
							SaveGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("420bbce419",1338364387,1644667936)), getgenv()[Settings_Name])
                        elseif getgenv()[(decode_string_v1("cd6201a252f8821598636f1cc9c436500e0a05cef9",1317554574,1644667936))] == true then
							SaveGameConfig(FixName(tostring((decode_string_v1("eb0b12f5942b5afa16",507662579,1644667936)))) .. (decode_string_v1("7259af8a02",1373023094,1644667936)), getgenv()[Settings_Name])
                        else
							SaveGameConfig(FixName(tostring(info.Name)) .. (decode_string_v1("6aaf7a29f3",1595451080,1644667936)), getgenv()[Settings_Name])
						end
					end
				end)
				SettingsSection:addKeybind((decode_string_v1("b966226c69ad5fa1df89b83c9892",1081340147,1644667936)), Enum.KeyCode.Home, function()
					Window:toggle()
				end, function()
				end)
			end
		else
			return sendError(serverData, clientData)
		end
	end
end, function(err)
	return warn(err .. (decode_string_v1("75",893227238,1644667936)) .. debug.traceback())
end)