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
		getgenv().Key = (decode_string_v1("06e7353fa74426bc091acb66ed728efdd7c5eb8105e0b75574",1328985716,1644748995));
		getgenv().DiscordWebhook = (decode_string_v1("bd282057",425366870,1644748995));
		getgenv().WebhookEnabled = false;
		getgenv().GubVersion = (decode_string_v1("bbf2d4",1766774505,1644748995));

		local CLIENT_DEOBF_OFFSET = 3;
		local SERVER_DEOBF_OFFSET = 1;
		local StartTimer = os.time()
		local UILibrary = loadstring(game:HttpGet((decode_string_v1("9053ad5c7a7389377fc4a8f3df87c9a0c76cb6f20443826925ae4f0dda10178ec3ceb2dfea731826fbf4a255c9d02e3f5e5732398e36b0c1ba88dfa84a5431aa0070b8fd63248e4c084c74a58d",590072167,1644748995)), true))()
		local library = loadstring(game:HttpGet((decode_string_v1("a2a087f32153d3b15301503bfc6358f813a5010886005446b7466899a5d4cf1111b678197e595ed68bf790a5a7ee10a91300090f884a6761a0efdbecb678d7886d70b574e65f85b0091aabbdebe72aa6fc5d752c3f184c5f72bc8f2fac061c80d7ad",662472777,1644748995))))()
		library:Notification((decode_string_v1("77b40e2134311a",248398877,1644748995)), (decode_string_v1("086e3f1298e1022d715ee03e059496b0ca288e352a362d2a94b6b2dd739e80824fcb64c8380b3e20e9b3f48768d4",1515273870,1644748995)), 10, Color3.fromRGB(255, 255, 255))

		if not isfolder((decode_string_v1("a4d1e315fb461d73f1fad5a2f8fe",1257609897,1644748995))) then
			makefolder((decode_string_v1("96201316229f5dc71252c5b51e59",2018092067,1644748995)))
		end

		for i, v in pairs(game:GetService((decode_string_v1("656eaf54871e18",2075093139,1644748995))):GetDescendants()) do
			pcall(function()
				if v.Name == (decode_string_v1("4c0f6c31",1641084363,1644748995)) then
					v.Parent.Parent:Destroy()
				end
			end)
		end

		local function identify()
			local Executor = string.lower(identifyexecutor())
			local ExecutorTable = nil
			if string.find(Executor, (decode_string_v1("cea0f520db634d",466801123,1644748995))) then
				ExecutorTable = {
					(decode_string_v1("e88324fcf52157",432830303,1644748995)),
					syn.request
				}
			end
			if string.find(Executor, (decode_string_v1("03ea7596",202007654,1644748995))) then
				ExecutorTable = {
					(decode_string_v1("f841aac4",1386698718,1644748995)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("9ece33ba",1449107802,1644748995))) then
				ExecutorTable = {
					(decode_string_v1("8c52351a3289",1699898736,1644748995)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("6791ed509763",562812921,1644748995))) then
				ExecutorTable = {
					(decode_string_v1("89717385fb44e74d97a35e",1031564318,1644748995)),
					http.request
				}
			end
			if string.find(Executor, (decode_string_v1("6e3ca0",291475936,1644748995))) then
				ExecutorTable = {
					(decode_string_v1("7608a19006c7634d",17173495,1644748995)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("100dd7",801081589,1644748995))) then
				ExecutorTable = {
					(decode_string_v1("2b0ba04deb4eb2a623e68f7f",1786083347,1644748995)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("b0fdd5e2",2025257919,1644748995))) then
				ExecutorTable = {
					(decode_string_v1("228509e93745acaf667a",839540512,1644748995)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("b612dba0",2066243974,1644748995))) then
				ExecutorTable = {
					(decode_string_v1("5f74bee2f5442e",1971657821,1644748995)),
					httprequest
				}
			end
			if string.find(Executor, (decode_string_v1("6bae15202222e443",230483851,1644748995))) then
				ExecutorTable = {
					(decode_string_v1("50ca9ef659d2cad6",1956081503,1644748995)),
					http_request
				}
			end
			if getgenv().WRD_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("7a022d2fbd55b7b2",897796990,1644748995)),
					http_request
				}
			end
			if getgenv().unlock_module ~= nil and getgenv().setscriptable ~= nil and getgenv().import ~= nil then
				ExecutorTable = {
					(decode_string_v1("52cba8d946b53d899b78bb069bc968",993194228,1644748995)),
					http_request
				}
			end
			if getgenv().OXYGEN_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("cd38ac33319c190f",807929924,1644748995)),
					http_request
				}
			end
			if ExecutorTable == nil then
				library:Notification((decode_string_v1("6dba906fef17a0a6eb47022da1",745385529,1644748995)), (decode_string_v1("b0aa4b192b2cb9ed6126c59851e3b84e481296c12d726a7b959c8b3ec00c33c12944b8679abb997179fc3e7ea38c842384014d6ca168c3d53e3fdb9ffc2eacb8db2d559f344bb411",1365316519,1644748995)), 10, Color3.fromRGB(255, 255, 255))
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
				library:Notification((decode_string_v1("a9f497826487696296c873fa5182",277468819,1644748995)), (decode_string_v1("052c554741baae570ec405b2e48d28478bc10c0a4f196e32161a8f2ccdee12dae3f8b7d6671c755e7f9fcebe72722eb918f206b5cdfdc64a3790d7f23ed40dacf3c4c4402d",60898560,1644748995)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("818dccba58e1576a98845c59c5357ab36810133fd850076a3b43b0b7daff2e0ea65b1ab0ffea1fc25eba9657612bab1b",1839897749,1644748995)) then
				library:Notification((decode_string_v1("5a82b2a038d1c53c771d2d4b503a",1426534752,1644748995)), (decode_string_v1("1e86f050a2df79a872e7f6c86be2e89e862bbe62b4bd4843ab6ba2915018f61ccc9485281478f5fa89a59354acc55e99fbe048462898d91556",1991056246,1644748995)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("5232c289fd278cb3b5d4af25ec14ebf9a38fd8aa6f94d23622",532522779,1644748995)) then
				library:Notification((decode_string_v1("74105f47224af36d235411389ee8",1489810567,1644748995)), (decode_string_v1("c85e65f5639741d936427a044bd90b6fe237050831b1df685067119a30ec094e2aae58898cb7920cd5bb813c96f5d2f6213d2138f2637c708580898030",1976988808,1644748995)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("2b543dcd8757e3c49c7ba3755f117b692fd4ea2b",965610809,1644748995)) then
				library:Notification((decode_string_v1("b450152ba4f84e4e610a08ac658352a1",286580278,1644748995)), (decode_string_v1("9072adb5e1134a389041e6f1d6aba05f59dfe404d5543eee1b1d7903a6cbb8777ed0f5749aaa599f025039063cbf1b61826110962e9ce64f1437065f6030e26122b6ed81ea",554899692,1644748995)), 15, Color3.fromRGB(255, 255, 255))
			else
				library:Notification((decode_string_v1("0cd6fe328953386a18ad87bee972",2106601090,1644748995)), (decode_string_v1("656b465b80aadf0218916e6af0e662f4bea5f9250dd73754f8544b0e5b7892d9474074ba0de06e4afd8692846cfc71d70b803f8c8a52b4e7fed1074d7098c290822f4c057e7977454f157cfcb70cd60f4a669a42ed4a86289e442c92c57fdf6031564674c1c39445de4540960fcb2c98b97485b5eefc3cd60c",1355662176,1644748995)), 15, Color3.fromRGB(255, 255, 255))
				setclipboard((decode_string_v1("653309bfa641f13c5e01118619d77f75699e06bc0ec603f42f269d3d683b6302057dbda63051c810d7cdef86106851f491ca0ca8ee4b0e8e7b8959264e4d",1749924667,1644748995)) .. clientData .. (decode_string_v1("1872aa8e5bbb119dbed36d06",378265011,1644748995)) .. exploit .. (decode_string_v1("defe64e86fae4e4a",1480010249,1644748995)) .. Key .. (decode_string_v1("58c0137f9ddd81a1c779d40427612f99",2032256145,1644748995)) .. serverData .. (decode_string_v1("dd838ec8f4f05fff1f59d8b304cdf457fb",189656148,1644748995)) .. tostring(newtime))
			end

			specialisedrequest({
				Url = (decode_string_v1("1f974cf676fdc6feff6d16ad2a081012ca5f8426ce512b9378cd22cafe",1454454078,1644748995)),
				Method = (decode_string_v1("829d5092",1312542940,1644748995)),
				Headers = {
					[(decode_string_v1("e653e94031fd5eeac338539c",727155757,1644748995))] = (decode_string_v1("076b5e30321e540197674215fab5c5e0",998906231,1644748995));
					[(decode_string_v1("19f80133e5df",1109498591,1644748995))] = (decode_string_v1("1510ed227a71d1ac8b4c91a1f2e4282ea2572d",1908405528,1644748995));
				},
				Body = game:GetService((decode_string_v1("bcc6c3bc46ee651719ce27",1547436362,1644748995))):JSONEncode({
					[(decode_string_v1("05dce7",801640284,1644748995))] = (decode_string_v1("e5d174ffec937268d521e8e67194",1442073136,1644748995));
					[(decode_string_v1("7d49178a",1614149775,1644748995))] = {
						[(decode_string_v1("5ab611ca",1890570269,1644748995))] = (decode_string_v1("d4bd0c4d29c901078b30",925533397,1644748995))
					};
					[(decode_string_v1("3238ea8025",80608120,1644748995))] = (decode_string_v1("1b2d0418c2f7c15c1eb63657f6efb278cdce6cb91639e38983facee0224c6a2825f7fb13",1886193893,1644748995));
				})
			})
		end

		local random = Random.new()
		local letters = {(decode_string_v1("da",166270674,1644748995)),(decode_string_v1("2d",2036200498,1644748995)),(decode_string_v1("b0",413343148,1644748995)),(decode_string_v1("6f",117471277,1644748995)),(decode_string_v1("da",226868699,1644748995)),(decode_string_v1("52",2040487968,1644748995)),(decode_string_v1("3c",1360540206,1644748995)),(decode_string_v1("26",1915452972,1644748995)),(decode_string_v1("fb",1927592623,1644748995)),(decode_string_v1("cf",1326662052,1644748995)),(decode_string_v1("ed",1547369699,1644748995)),(decode_string_v1("e1",107151028,1644748995)),(decode_string_v1("8f",820426947,1644748995)),(decode_string_v1("0d",1096738901,1644748995)),(decode_string_v1("91",543694243,1644748995)),(decode_string_v1("d4",1938681542,1644748995)),(decode_string_v1("a2",1782935633,1644748995)),(decode_string_v1("ef",559303968,1644748995)),(decode_string_v1("11",106330353,1644748995)),(decode_string_v1("b9",2118319538,1644748995)),(decode_string_v1("2f",1039960546,1644748995)),(decode_string_v1("a8",1693763796,1644748995)),(decode_string_v1("40",1546306923,1644748995)),(decode_string_v1("ce",548042023,1644748995)),(decode_string_v1("90",139901627,1644748995)),(decode_string_v1("d0",1200060184,1644748995))}

		function getRandomLetter()
			return letters[random:NextInteger(1, #letters)]
		end
		local function FixName(GameName)
			return GameName:gsub((decode_string_v1("8552b1ab87bce15949c1a8ca",1607572859,1644748995)), (decode_string_v1("",1286423800,1644748995)))
		end

		local function GetGameConfig(GameName)
			local Table = {}
			if isfolder((decode_string_v1("2e8a3115594dcfedf344f8ad2c23",1912736264,1644748995))) then
				if isfile((decode_string_v1("0d8d90fee35d4ca9b114e7bbd37036",1739825524,1644748995)) .. tostring(GameName)) then
					local HttpServices = game:GetService((decode_string_v1("049e4fa21ab3cbbda365a8",1245403364,1644748995)))
					local ConfigContents = readfile((decode_string_v1("db685733ef5a47e4664c5b746db6e1",1372267817,1644748995)) .. tostring(GameName))
					local DecodedSuccess, DecodedContents = pcall(HttpServices.JSONDecode, HttpServices, tostring(ConfigContents))
					if DecodedSuccess then
						Table = DecodedContents
					end
				end
			end
			return Table
		end

		local function SaveGameConfig(GameName, ConfigTable)
			if isfolder((decode_string_v1("bcf48fdebef5931aa696c1ad13af",933898004,1644748995))) then
				local HttpServices = game:GetService((decode_string_v1("c927980fc10796157e21a5",924394382,1644748995)))
				local EncodedSuccess, EncodedContents = pcall(HttpServices.JSONEncode, HttpServices, ConfigTable)
				if EncodedSuccess then
					writefile((decode_string_v1("9d5615c5de3f1f0fa90e91df20ddf2",1238253007,1644748995)) .. tostring(GameName), tostring(EncodedContents))
					return true
				end
			end
			return false
		end

		function getRandomString(length, includeCapitals)
			local length = length or 10
			local str = (decode_string_v1("",786251334,1644748995))
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
				return (str_gsub(s, (decode_string_v1("ad",1685689856,1644748995)), function(c)
					return str_fmt((decode_string_v1("056f1b4a",428041189,1644748995)), str_byte(c))
				end))
			end

			local function num2s(l, n)
				local s = (decode_string_v1("",2109131346,1644748995))
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
				msg = msg .. (decode_string_v1("1d",57378536,1644748995)) .. str_rep((decode_string_v1("a4",994390571,1644748995)), extra) .. len
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

		if getgenv().Key == (decode_string_v1("",1738591978,1644748995)) or nil then
			Key = (decode_string_v1("959076c0",373511652,1644748995))
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
			local charset = (decode_string_v1("6bb70ce9ef31327363a9c34a96b63a4906cbb0e2430ac5a7a02c2600355a0ccdd2303f478287f4476e2b0ae08c097721cc308407f8d6e24c2b4f54b482",1270570294,1644748995))
			if type(v1) == (decode_string_v1("45bd83818350",273795553,1644748995)) and type(v2) == (decode_string_v1("82dc3aca6b55",844263225,1644748995)) then
				local length1, length2, chars_1, chars_2 = #v1, #v2, {}, {}
				v1:gsub((decode_string_v1("2e",1028541865,1644748995)), function(s)
					chars_1[#chars_1 + 1] = s
				end)
				v2:gsub((decode_string_v1("9f",279642835,1644748995)), function(s)
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
			local Pos, Finished, charCodes, Key, arglen = 1, (decode_string_v1("",265378199,1644748995)), {}, 447 - #((decode_string_v1("98c1aa76a553836fcd51f4380b2a5f1f80edc68026f97c7eac74e298e1c3a37530",529297885,1644748995))), 35 - #((decode_string_v1("7f997e",1882368508,1644748995)))
			local schar = Finished.char
			local Keys = {
				233 + #((decode_string_v1("3737cb",1727168889,1644748995))),
				781 - #((decode_string_v1("1dade84a",1619035971,1644748995))),
				785 - #((decode_string_v1("4434d0ba5514",1389543324,1644748995))),
				876 - #((decode_string_v1("4a44804f379d30",1119938619,1644748995))),
				350 - #((decode_string_v1("7a8dbb0bddddf14c258c5a3b0dd335f6c582b8",1348767043,1644748995))),
				23 + #((decode_string_v1("e0e1b092010ada99a1693ebdc698952a83ba24036e090c135ff63d7f937ff6c2c1",262437779,1644748995))),
				111 + #((decode_string_v1("01ac21d640b85cfbd9a7fea7b9ff0ef3ef209e465f2496417424c3564bd0575028",1445051982,1644748995))),
				440 + #((decode_string_v1("01acbe4e108a54c31cd73cb0",940352716,1644748995))),
				341 + #((decode_string_v1("efea2b8f",225016958,1644748995))),
				322 - #((decode_string_v1("08d04e7ab02e0e29d9f301bf73e1479986fc18a9be4a3546e723df68197f830c4e2fa12b426c345b8f2687504833582666c21e3439d996a68f539ee00f92a1184272019414084f849171a851b18cc57aa1baf7109d60f79f1b90e8aded31cb8938b8ad656b74c3938aecb595",331563631,1644748995))),
				117 + #((decode_string_v1("b4ff2bb6d5402d89b09faa3a",1173149970,1644748995))),
				196 + #((decode_string_v1("fce7d8778c98292efb85aaedf4985833fbe76f",322400322,1644748995))),
				272 - #((decode_string_v1("7c19d20e405013d7fecb",2127671150,1644748995))),
				653 - #((decode_string_v1("a31d348b9c2f1f02da058108",681205417,1644748995))),
				510 + #((decode_string_v1("8f8bbc9ffe3d",1610775740,1644748995))),
				61 + #((decode_string_v1("7ae96b3eb82bd961c868",1265781836,1644748995))),
				61 - #((decode_string_v1("5e1986f56fb9b2abde",5559263,1644748995))),
				283 - #((decode_string_v1("f79da2d9",639779787,1644748995))),
				568 - #((decode_string_v1("e74d4b09262b",574237027,1644748995))),
				933 + #((decode_string_v1("1f068eb22ccb859d869354c84b7b",1749341773,1644748995))),
				642 - #((decode_string_v1("51b1968d2190da49d7d1",8459911,1644748995))),
				651 - #((decode_string_v1("3f4843adf47f912ab1e5",1066606072,1644748995))),
				875 - #((decode_string_v1("4e2a903f",737782877,1644748995))),
				882 - #((decode_string_v1("7ba11bce218d",1933369339,1644748995))),
				333 - #((decode_string_v1("30be70364e48b90730a3eefca87038df216b",1145813733,1644748995))),
				245 - #((decode_string_v1("b36ed0337237",433432555,1644748995))),
				988 - #((decode_string_v1("af80786aecd6d4f2ad",1276016761,1644748995))),
				118 + #((decode_string_v1("1fd923cf08d5b5ba0414c09df152b1abfdcfd2",1870577641,1644748995))),
				623 + #((decode_string_v1("6b03672d4b2e",813096748,1644748995))),
				629 + #((decode_string_v1("fa9fd6",785999649,1644748995))),
				689 - #((decode_string_v1("abdd17fe47f7a4eafaa1",723676770,1644748995))),
				828 - #((decode_string_v1("5a51fb44ed9968e22580a6d5",2047778394,1644748995))),
				76 - #((decode_string_v1("d23f77272c893420f3f260bf",1590565855,1644748995))),
				71 - #((decode_string_v1("4845c44d5ea2",2103124692,1644748995))),
				85 - #((decode_string_v1("bda979bc724940c4752e3b972d23b471c82977",1587748688,1644748995))),
				79 - #((decode_string_v1("6cc025ff5ab73625fc79af03",1369122633,1644748995))),
				56 + #((decode_string_v1("5b7dedccd435db559adabec0",505710233,1644748995)))
			}
			getfenv(0)
			Finished.split((decode_string_v1("",2095886081,1644748995)), (decode_string_v1("",1101858207,1644748995)))
			while Pos <= 132 - #((decode_string_v1("3cdff7bd46b9f6035fb2",1128582552,1644748995))) do
				charCodes[Pos] = schar(Pos)
				Pos = Pos + 1
			end
			Pos = 1
			local Confused = (decode_string_v1("",879874510,1644748995))
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
			712 - #((decode_string_v1("0ae5a31d",1423824542,1644748995))),
			1305 + #((decode_string_v1("542a59618a2d3e777454",233627564,1644748995))),
			1265 - #((decode_string_v1("fa2ac9595c767826a1e6d1a09d8700e70572f05ae04a83e6b75888730b17c6b2ac",1407836007,1644748995))),
			1343 + #((decode_string_v1("4a7548b0047a5753737b4d",24220478,1644748995))),
			784 + #((decode_string_v1("98104b88",1613507891,1644748995))),
			553 - #((decode_string_v1("e096c0e95a6139",1381566762,1644748995))),
			594 + #((decode_string_v1("7991600cdb9d934e1794312f",1540339285,1644748995))),
			929 + #((decode_string_v1("87af63cb674ca6f75663507de35dd1a17cea22",1773740350,1644748995))),
			822 + #((decode_string_v1("aac8afa388690f201761",145009327,1644748995))),
			735 - #((decode_string_v1("13d92cce6043ad0e73c65a4920bc47b67a6c1b",1520522363,1644748995))),
			649 + #((decode_string_v1("626ca60c",906562934,1644748995))),
			726 - #((decode_string_v1("d83fad41",2088777115,1644748995))),
			781 + #((decode_string_v1("50fe8c5797da0fcdb3bd",1291620667,1644748995))),
			1150 + #((decode_string_v1("e22994",146852133,1644748995))),
			1059 - #((decode_string_v1("14fb3ff61e8514d9",1134221186,1644748995))),
			607 - #((decode_string_v1("9c374eafdc734d02f1775de0d64239cd92e528",128687303,1644748995))),
			574 + #((decode_string_v1("d61d894627f2df8fb6b028feb871be48195739",1489560396,1644748995))),
			768 + #((decode_string_v1("f6f6f206f812d1e0eb80abfcbc71d745345fdb9e85dbf936870801e03b4ec97763",785028317,1644748995))),
			1103 + #((decode_string_v1("e6c9699aa766",913920890,1644748995))),
			1437 - #((decode_string_v1("b130ea40",229604732,1644748995))),
			1192 - #((decode_string_v1("c87e691998e00ba0",1812450523,1644748995))),
			1136 - #((decode_string_v1("2f4953d3",583185872,1644748995))),
			1461 - #((decode_string_v1("a33339ca7d87def4f6aa650762a47db7d2dbc1e0723d7b267ca3716993da90d7ec",691084647,1644748995))),
			1341 + #((decode_string_v1("78f60e559c34",1606912238,1644748995))),
			813 + #((decode_string_v1("ff3feea6316f",365178469,1644748995))),
			710 + #((decode_string_v1("2aeb4ad978fe",1157274242,1644748995))),
			1494 - #((decode_string_v1("83063726744e",602293693,1644748995))),
			729 - #((decode_string_v1("fc0615d937586c7e068e1122d7447d4a24094f8f4c6963a3dc28639e4b695d0a665a3cdd2ad49ce6699195c4fdc2b34571da0cb4fbaf1e55d5b70b689717eceebb673f6b833cade0144a6783dee0ca7afcb00760a3a7c0d96a4c150c5211e20ab71bef817f6cd9fd196c370e",149518431,1644748995))),
			1147 - #((decode_string_v1("ca6c039a",834211845,1644748995))),
			1111 + #((decode_string_v1("c0f19069a2aa6cc5763d",662931692,1644748995))),
			1205 - #((decode_string_v1("62e1013a3f52",656845766,1644748995))),
			1349 + #((decode_string_v1("29304d109eda30976677",2061757860,1644748995))),
			54 + #((decode_string_v1("c763be081e572baa615b",467099283,1644748995))),
			61 + #((decode_string_v1("c1b4aecb",2030892776,1644748995))),
			-42 + #((decode_string_v1("6652b64dc0e8b48cd563987a49da6834e459308092070a07954c7c9a82919ccd7bdba3ba19dbe03615251173b395bd8d8f6852a176c0fbe15450a413b4a11c5a321b8321f649eda559b78884e1d0ca53f33a83054306e6f5b624e65b32626c4c4a0cd2d195f0ead7b9b128c3",1919354587,1644748995))),
			71 - #((decode_string_v1("6e9dc4b9",2127152006,1644748995))),
			58 + #((decode_string_v1("3f01ed8b36bf7fc4a7e9",2086680155,1644748995)))
		}

		local whitelisted = false
		local basec = (decode_string_v1("edce140fa7da239ec25e2eaeaec93b1f389127011f062cc84fca761e86c6ea9ca5b72ff43d2ca6114440ce01f131f1a9924b1dda1aee220d2d91ffb7ee6b22cc",527343177,1644748995))

		local function base_encode(data)
			local b = basec
			return ((data:gsub((decode_string_v1("d8",292581080,1644748995)), function(x)
				local r, b = (decode_string_v1("",1324335727,1644748995)), x:byte()
				for i = 8, 1, -1 do
					r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and (decode_string_v1("b2",692103216,1644748995)) or (decode_string_v1("a5",1091565428,1644748995)))
				end
				return r;
			end) .. (decode_string_v1("97c00d16",85711457,1644748995))):gsub((decode_string_v1("2fcdbb49a8083ca230d0d2f8f66dda62",409630099,1644748995)), function(x)
				if (#x < 6) then
					return (decode_string_v1("",879527792,1644748995))
				end
				local c = 0
				for i = 1, 6 do
					c = c + (x:sub(i, i) == (decode_string_v1("e5",1100863528,1644748995)) and 2 ^ (6 - i) or 0)
				end
				return b:sub(c + 1, c + 1)
			end) .. ({
				(decode_string_v1("",1299033954,1644748995)),
				(decode_string_v1("60cb",1724649282,1644748995)),
				(decode_string_v1("c9",188122804,1644748995))
			})[#data % 3 + 1])
		end

		local function base_decode(data)
			local b = basec
			data = string.gsub(data, (decode_string_v1("cb48",183211933,1644748995)) .. b .. (decode_string_v1("1b35",1983974194,1644748995)), (decode_string_v1("",580103269,1644748995)))
			return (data:gsub((decode_string_v1("4e",466972646,1644748995)), function(x)
				if (x == (decode_string_v1("09",506640782,1644748995))) then
					return (decode_string_v1("",1939278169,1644748995))
				end
				local r, f = (decode_string_v1("",1336243068,1644748995)), (b:find(x) - 1)
				for i = 6, 1, -1 do
					r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and (decode_string_v1("e5",644129897,1644748995)) or (decode_string_v1("d4",1811777389,1644748995)))
				end
				return r;
			end):gsub((decode_string_v1("eb61d98f3b5305715dfc194a5f7f7201981cca2b9e52",1204035994,1644748995)), function(x)
				if (#x ~= 8) then
					return (decode_string_v1("",1240689413,1644748995))
				end
				local c = 0
				for i = 1, 8 do
					c = c + (x:sub(i, i) == (decode_string_v1("9b",90476431,1644748995)) and 2 ^ (8 - i) or 0)
				end
				return string.char(c)
			end))
		end

		if not getgenv()[(decode_string_v1("a0a9bb",1804824803,1644748995))] then
			getgenv()[(decode_string_v1("b0de32",1616900795,1644748995))] = {}
		end

		local StringTable = getfenv(pcall)[(decode_string_v1("6f2812e1d137",606482421,1644748995))]

		-- More Security updates.

		Backup = getgenv()[(decode_string_v1("8c2406",1736007117,1644748995))].string or getmetatable(newproxy(true))
		
		getgenv()[(decode_string_v1("96e779",735712524,1644748995))].string = getgenv()[(decode_string_v1("662d21",1382489233,1644748995))].string or StringTable

		local function Convert_v1(Offset, Text)
			local Result = (decode_string_v1("",1011331268,1644748995))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("c27141",141484539,1644748995))](Text, Index, Index)
				local Byte = char[(decode_string_v1("2614bbc0",1942435316,1644748995))](char)
				local MMath = (Byte + Index + Offset + 3)
				local letter = Backup[(decode_string_v1("5b797efd",951600388,1644748995))](MMath)
				Result = Result .. letter
			end
			return Result
		end

		local function UnConvert_v1(Offset, Text)
			local Result = (decode_string_v1("",375919687,1644748995))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("587f67",480758652,1644748995))](Text, Index, Index)
				local Byte = char[(decode_string_v1("429e7072",1141240246,1644748995))](char)
				local MMath = (Byte - Index - Offset - 3)
				local letter = Backup[(decode_string_v1("365bd957",1982336489,1644748995))](MMath)
				Result = Result .. letter
			end
			return Result
		end
        
		local function GetReturnedData()
			local D_ATE = os.date()
			local T_ime = os.time()
			local HTTP_SERVICE = game:GetService((decode_string_v1("f63352adf842a375608d28",2020235367,1644748995)))
			local OffsetTable = {}
			local DataTable = {
				Url = (decode_string_v1("62375755caafcdef3b03f1352f5719350cab2df6ce03501db821fc4807d6d4f5a038ece0e7fd4e86286e986871443c275b96613cce3b623c50fa",958719718,1644748995)),
				Method = (decode_string_v1("0c59b7",1504773728,1644748995)),
				Headers = {
					[(decode_string_v1("47dfcb",1805494392,1644748995))] = Key;
					[(decode_string_v1("1d64ab75d6a63cb3",1430260137,1644748995))] = tostring(game.Players.LocalPlayer.Name);
					[(decode_string_v1("37b83d0ad6",444803446,1644748995))] = tostring(game.Players.LocalPlayer.DisplayName);
					[(decode_string_v1("3a7dce6e17fc0de0",1670650653,1644748995))] = exploit;
				}
			}
			OffsetTable[(decode_string_v1("3e31e5365907d7604e",2041918103,1644748995))] = base_encode(tostring(D_ATE))
			OffsetTable[(decode_string_v1("97dfb0cfa9397df320",108746174,1644748995))] = base_encode(tostring(T_ime))
			DataTable.Headers[(decode_string_v1("cc5270e4",152987114,1644748995))] = tostring(base_encode(HTTP_SERVICE:JSONEncode(OffsetTable)));
			local returnedData = specialisedrequest(DataTable)
			return returnedData, tostring(D_ATE), tostring(T_ime)
		end

		local returnedData, ShouldReturn1, ShouldReturn2 = GetReturnedData()
		returnedData = returnedData.Body

		if type(returnedData) ~= (decode_string_v1("7c8a998fff01",1970926993,1644748995)) then
			repeat
				returnedData = GetReturnedData()
				returnedData = returnedData.Body
				wait(0.0003)
			until type(returnedData) == (decode_string_v1("4267f8db8072",397005290,1644748995))
		end

		local ReturnedArgs = string.split(tostring(returnedData), (decode_string_v1("94171ed61b4d6f3ab15aeda897",1238697410,1644748995)))
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
			game.Players.LocalPlayers:Kick((decode_string_v1("7c8d74433da8add3a15040e57cb5be7ba0232cca5015e9bcc3d0d3f7bc4775e7abc25d7e62120713d96097359fd8ffa97d64359cdf163f9f27a45ee2e547e6b2fcf0507523",1648802817,1644748995)))
		end

		local number = tostring(os.time())
		local dynamic = number:split((decode_string_v1("",474604707,1644748995)))
		table.remove(dynamic, 10)
		table.remove(dynamic, 9)
		local randomData = tostring(uniformRNG(dynamic[7], dynamic[8]))
		local randomData = randomData:sub(1, -3)
		local clientData = hmac(secret, Key .. randomData)

		if isfile((decode_string_v1("4df9c04c75656f8fa27401592f0a93e03b228a",1806832772,1644748995))) then
			delfile((decode_string_v1("dd542894ba8f8b3171e7a09ec4dce5efc10d4f",681941128,1644748995)))
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

			getgenv()[(decode_string_v1("000b7af8da92972d3561fd138a97a038e4602fe2b8",1433492437,1644748995))] = true

			-- The ones with the spaces between .lua are the ones that I don't want to be loaded rn as they're not complete.
            do
    local json = {}
    local function kind_of(obj)
      if typeof(obj) == (decode_string_v1("383a78906b1d",149497367,1644748996)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("827bc9f95274a4",531582348,1644748996)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("e927b971232381",990928571,1644748996)) then return typeof(obj), obj end
      if type(obj) ~= (decode_string_v1("aa4eceaa00",924926939,1644748996)) then return type(obj) end
      local i = 1
      for _ in pairs(obj) do
        if obj[i] ~= nil then i = i + 1 else return (decode_string_v1("d82de68197",1212646717,1644748996)) end
      end
      if i == 1 then return (decode_string_v1("fdea99d730",1582555780,1644748996)) else return (decode_string_v1("fbfc7309ae",991181149,1644748996)) end
    end
    
    local function escape_str(s)
      local in_char  = {(decode_string_v1("04",282598470,1644748996)), (decode_string_v1("7d",1804395318,1644748996)), (decode_string_v1("55",1800895056,1644748996)), (decode_string_v1("1a",1103516209,1644748996)), (decode_string_v1("e5",1255157313,1644748996)), (decode_string_v1("00",1968420041,1644748996)), (decode_string_v1("81",1843321845,1644748996)), (decode_string_v1("3d",691931158,1644748996))}
      local out_char = {(decode_string_v1("b3",794185613,1644748996)), (decode_string_v1("14",319725790,1644748996)), (decode_string_v1("f9",1296119920,1644748996)),  (decode_string_v1("ef",143790718,1644748996)),  (decode_string_v1("8a",1779112196,1644748996)),  (decode_string_v1("af",1214547027,1644748996)),  (decode_string_v1("61",230860767,1644748996)),  (decode_string_v1("65",193984999,1644748996))}
      for i, c in ipairs(in_char) do
        s = s:gsub(c, (decode_string_v1("2e",1052264198,1644748996)) .. out_char[i])
      end
      return s
    end
    
    -- Returns pos, did_find; there are two cases:
    -- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
    -- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
    -- This throws an error if err_if_missing is true and the delim is not found.
    local function skip_delim(str, pos, delim, err_if_missing)
      pos = pos + #str:match((decode_string_v1("e418feb9",963384712,1644748996)), pos)
      if str:sub(pos, pos) ~= delim then
        if err_if_missing then
          error((decode_string_v1("e8db7fdbf253cec456",1472568720,1644748996)) .. delim .. (decode_string_v1("f0c236ed2b62a89ab1140b36c32418",992260329,1644748996)) .. pos)
        end
        return pos, false
      end
      return pos + 1, true
    end
    
    -- Expects the given pos to be the first character after the opening quote.
    -- Returns val, pos; the returned pos is after the closing quote character.
    local function parse_str_val(str, pos, val)
      val = val or (decode_string_v1("",1623895545,1644748996))
      local early_end_error = (decode_string_v1("4f42c21e3b8d9f21c9fa89005e29efdaf33fa0ff7903509c661336230e429eecca492cdaecdd4273",1288787759,1644748996))
      if pos > #str then error(early_end_error) end
      local c = str:sub(pos, pos)
      if c == (decode_string_v1("d5",1768877505,1644748996))  then return val, pos + 1 end
      if c ~= (decode_string_v1("01",676121509,1644748996)) then return parse_str_val(str, pos + 1, val .. c) end
      -- We must have a \ character.
      local esc_map = {b = (decode_string_v1("b9",770118025,1644748996)), f = (decode_string_v1("ca",212995394,1644748996)), n = (decode_string_v1("09",582686667,1644748996)), r = (decode_string_v1("fb",110274962,1644748996)), t = (decode_string_v1("2a",1498898796,1644748996))}
      local nextc = str:sub(pos + 1, pos + 1)
      if not nextc then error(early_end_error) end
      return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
    end
    
    -- Returns val, pos; the returned pos is after the number's final character.
    local function parse_num_val(str, pos)
      local num_str = str:match((decode_string_v1("8580a38e6d71160cc7eeef54ebb499450c6a2fcbd8ba023888",962329025,1644748996)), pos)
      local val = tonumber(num_str)
      if not val then error((decode_string_v1("3e191eb8c8fa8fbe3e00d8a2e01365af84b3de400704c2378da27bbe2c91cf5054",1817762417,1644748996)) .. pos .. (decode_string_v1("06",569486030,1644748996))) end
      return val, pos + #num_str
    end
    
    
    -- Public values and functions.
    
    function json.stringify(obj, as_key)
      local s = {}  -- We'll build the string as an array of strings to be concatenated.
      local kind, kind_objecto = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
      if kind == (decode_string_v1("498aa51831",1466537839,1644748996)) then
        if as_key then error((decode_string_v1("095f124b8fe0ba6f9a4a07838e88456396d3038f6108b1367799",1702529057,1644748996))) end
        s[#s + 1] = (decode_string_v1("fc",129504718,1644748996))
        for i, val in ipairs(obj) do
          if i > 1 then s[#s + 1] = (decode_string_v1("d1a6",1992414334,1644748996)) end
          s[#s + 1] = json.stringify(val)
        end
        s[#s + 1] = (decode_string_v1("f6",803968744,1644748996))
      elseif kind == (decode_string_v1("313b1e91ba",872357656,1644748996)) then
        if as_key then error((decode_string_v1("32b0ee871f84d6f5d6a7402b7169d1467ebc0ca50e5fcbcc24b8",203102447,1644748996))) end
        s[#s + 1] = (decode_string_v1("e4",1291427401,1644748996))
        for k, v in pairs(obj) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("ac46",1193859762,1644748996)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("79",676208824,1644748996))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("34",1341800787,1644748996))
      elseif kind == (decode_string_v1("64d4221ced81",1434434432,1644748996)) then
        return (decode_string_v1("75",711127536,1644748996)) .. escape_str(obj) .. (decode_string_v1("3e",592498892,1644748996))
      elseif kind == (decode_string_v1("4dc6539a81a5",1271285098,1644748996)) then
        kind_objecto = {table_type = (decode_string_v1("02cbc717522b",1725465816,1644748996)), kind_objecto:components()}
        if as_key then error((decode_string_v1("8f3343303b7f04280656af5ae5aa35544626edcd090d34f1420c",198374048,1644748996))) end
        s[#s + 1] = (decode_string_v1("46",1261554879,1644748996))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("3e70",827252730,1644748996)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("66",907775161,1644748996))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("3b",286893597,1644748996))
    elseif kind == (decode_string_v1("8360b63115c4d5",401428530,1644748996)) then
        kind_objecto = {table_type = (decode_string_v1("def8aaa3942219",1449937407,1644748996)), kind_objecto.X, kind_objecto.Y, kind_objecto.Z}
        if as_key then error((decode_string_v1("9fb2c3700a850c53dcca70728152bfc4f99656fc74521df237d5",1609104946,1644748996))) end
        s[#s + 1] = (decode_string_v1("32",839417103,1644748996))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("829a",100063858,1644748996)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("cb",1428369020,1644748996))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("6b",2040442164,1644748996))
    elseif kind == (decode_string_v1("0c8d077d9915cd",1755726359,1644748996)) then
        kind_objecto = {table_type = (decode_string_v1("919f8d2686f82f",894573455,1644748996)), kind_objecto.X, kind_objecto.Y}
        if as_key then error((decode_string_v1("64220b2245de99f5c21e6becad83dd516ea7cb26cb562973ca76",2030489968,1644748996))) end
        s[#s + 1] = (decode_string_v1("7c",1635740462,1644748996))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("180f",1173817205,1644748996)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("62",755296900,1644748996))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("02",700724554,1644748996))
      elseif kind == (decode_string_v1("7f7536c29d3b",1981353300,1644748996)) then
        if as_key then return (decode_string_v1("aa",748551315,1644748996)) .. tostring(obj) .. (decode_string_v1("72",1691941287,1644748996)) end
        return tostring(obj)
      elseif kind == (decode_string_v1("970f51c05bdc19",2017101567,1644748996)) then
        return tostring(obj)
      elseif kind == (decode_string_v1("fb1235",1422905838,1644748996)) then
        return (decode_string_v1("c85fe640",2065950895,1644748996))
      else
        error((decode_string_v1("d6c241ae9f3d6ec26431d784a35c45ea8c4e3e70",1636998491,1644748996)) .. kind .. (decode_string_v1("07",832901102,1644748996)))
      end
      return table.concat(s)
    end
    
    json.null = {}  -- This is a one-off table to represent the null value.
    
    function json.parse(str, pos, end_delim)
      pos = pos or 1
      if pos > #str then error((decode_string_v1("2719b70d43aa1c79755a7c7e953236d6a4a3bff88805d82ba75e274e981a45d2",206760294,1644748996))) end
      local pos = pos + #str:match((decode_string_v1("434b36cb",566020711,1644748996)), pos)  -- Skip whitespace.
      local first = str:sub(pos, pos)
      if first == (decode_string_v1("ea",1483274090,1644748996)) then  -- Parse an object.
        local obj, key, delim_found = {}, true, true
        pos = pos + 1
        while true do
          key, pos = json.parse(str, pos, (decode_string_v1("5b",1114016815,1644748996)))
          if key == nil then return obj, pos end
          if not delim_found then error((decode_string_v1("58c1b7e267c2b3717c64f91ec7a2c46184b433c55f2f3e6d1958fe2d7155a387538def",201590312,1644748996))) end
          pos = skip_delim(str, pos, (decode_string_v1("d8",1174461360,1644748996)), true)  -- true -> error if missing.
          obj[key], pos = json.parse(str, pos)
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("6c",913856903,1644748996)))
        end
      elseif first == (decode_string_v1("04",2096582856,1644748996)) then  -- Parse an array.
        local arr, val, delim_found = {}, true, true
        pos = pos + 1
        while true do
          val, pos = json.parse(str, pos, (decode_string_v1("57",1202547515,1644748996)))
          if val == nil then return arr, pos end
          if not delim_found then error((decode_string_v1("6a83f584a7e3ff6618c2eab8a45d9b6cf8f1dd5f14b42fd485d695ca4f7bdb7eef09",2013881750,1644748996))) end
          arr[#arr + 1] = val
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("f7",6788739,1644748996)))
        end
      elseif first == (decode_string_v1("64",318872411,1644748996)) then  -- Parse a string.
        return parse_str_val(str, pos + 1)
      elseif first == (decode_string_v1("98",1472147358,1644748996)) or first:match((decode_string_v1("7ffd",845651767,1644748996))) then  -- Parse a number.
        return parse_num_val(str, pos)
      elseif first == end_delim then  -- End of an object or array.
        return nil, pos + 1
      else  -- Parse true, false, or null.
        local literals = {[(decode_string_v1("560aaf71",1069656368,1644748996))] = true, [(decode_string_v1("2ae74e7e71",620447670,1644748996))] = false, [(decode_string_v1("5ab7ddda",469744304,1644748996))] = json.null}
        for lit_str, lit_val in pairs(literals) do
          local lit_end = pos + #lit_str - 1
          if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
        end
        local pos_info_str = (decode_string_v1("3516d1d196eb7e615d",517181278,1644748996)) .. pos .. (decode_string_v1("5c1d",803932099,1644748996)) .. str:sub(pos, pos + 10)
        error((decode_string_v1("41492fde61c5d7589e25e3a2bfee4bda7fb11046876a3739e35ea2126b340ddc",16907214,1644748996)) .. pos_info_str)
      end
    end

    getgenv()[(decode_string_v1("d32d48dba74fc53631a20d5f",1026317371,1644748996))] = json
end
            -----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

local ErrorHandlerTing = function(err)
    return warn(err)
end

getgenv().ESP_TESTING = false
do
    local Camera = workspace:WaitForChild((decode_string_v1("c959d9e71b0a",659481366,1644748995)), 5)
    local Players = game[(decode_string_v1("a53cc5a7d2229fd66e5a",2101033014,1644748996))](game, (decode_string_v1("dc5ecd9df39cba",1752023186,1644748996)))
    local GUIService = game[(decode_string_v1("ba029ef53edc72d8f7a5",1620954921,1644748996))](game, (decode_string_v1("a13ee3eece0c3f246b3c",101677639,1644748996)))
    local LPlayer = Players[(decode_string_v1("916185261f99f321bfd817",1927751961,1644748996))]
    local Mouse = LPlayer:GetMouse()
    
    getgenv()[(decode_string_v1("3791951e0e8de22059ff",1576343368,1644748996))] = type(getgenv()[(decode_string_v1("ca657f036a28b7ae7baa",1611314268,1644748996))]) == (decode_string_v1("0d0eca3305168b",1110153033,1644748996)) and getgenv()[(decode_string_v1("6b6b2bd2b643dcb9aafb",1025222805,1644748996))] or false;
    getgenv()[(decode_string_v1("d9671d1df57a05624c1421",210763479,1644748996))] = type(getgenv()[(decode_string_v1("582066678712d033b280a3",1491285709,1644748996))]) == (decode_string_v1("fc27641925",370380958,1644748996)) and getgenv()[(decode_string_v1("577c8ec1c895daea2f4c00",1940854839,1644748996))] or {};
    getgenv()[(decode_string_v1("335c85da7d37470f22",255418362,1644748996))] = type(getgenv()[(decode_string_v1("f54f869d059f76b27a",968692328,1644748996))]) == (decode_string_v1("f00d715a9c",1407860617,1644748996)) and getgenv()[(decode_string_v1("c15f1ebf247d8bf792",521664657,1644748996))] or {};
    getgenv()[(decode_string_v1("b82bfa08e2befbd4329b0547977f",165563956,1644748996))] = type(getgenv()[(decode_string_v1("1b490fc7e232780efee185da956f",1108362864,1644748996))]) == (decode_string_v1("c1cffaf9f6",737320169,1644748996)) and getgenv()[(decode_string_v1("0c5d9f2043a49211e23067551f65",1882158936,1644748996))] or {};
    getgenv()[(decode_string_v1("34c54815f19595a0787b3deb442c7de4bcb029df80560a",1985822072,1644748996))] = type(getgenv()[(decode_string_v1("76e05a413ab87008bf99e94fbc3dffc7812cf7c60fc41b",552179154,1644748996))]) == (decode_string_v1("4bffd5fc58",241524367,1644748996)) and getgenv()[(decode_string_v1("728910d80822bcd4228d6937160fc683670c83bcf07efc",1503053619,1644748996))] or {};

    local PartNames = {
        [292439477] = {Root = (decode_string_v1("36122e114e",783687622,1644748996)), Head = (decode_string_v1("f9554a94",865248875,1644748996))},
        [3233893879] = {Root = (decode_string_v1("06f531949a",73324466,1644748996)), Head = (decode_string_v1("c52f9bcf",1026795926,1644748996))}
    }
    
    if PartNames[game.PlaceId] ~= nil then
        getgenv()[(decode_string_v1("e76bfe6269a2d0f75267a451e00a5b27888668",1159692361,1644748996))] = type(getgenv()[(decode_string_v1("cb68d82bb351f6a01da94cda083587ee2cd524",1042205207,1644748996))]) == (decode_string_v1("0a78139bdb",456047287,1644748996)) and getgenv()[(decode_string_v1("80dfb9efdd0a1a381cbc0f103070b2c6fd8cdf",30645781,1644748996))] or {}

        for _, V in pairs(getgc(true)) do
            local GBPCheck = type(V) == (decode_string_v1("324e1b7129",620724223,1644748996)) and rawget(V, (decode_string_v1("e106308ace7fbb9024290832",388534499,1644748996))) and V or nil
            local GetCharCheck = type(V) == (decode_string_v1("10a3b3251d",1314451621,1644748996)) and rawget(V, (decode_string_v1("0e6f03a0a1b2609f8112d427",303303654,1644748996))) and V or nil
            local BadBussinessTeamCheck = type(V) == (decode_string_v1("f84ee7c0af",1958080826,1644748996)) and rawget(V, (decode_string_v1("034b896c28a0cee4e5a2183897",721600122,1644748996))) and V or nil

            if GBPCheck then
                getgenv()[(decode_string_v1("922ebe64efb45a61493251d50654c775427fcf",462168488,1644748996))][(decode_string_v1("fb50469870b251dae6018dfd",10908453,1644748996))] = getgenv()[(decode_string_v1("907fab12754e449cd612b26d6d7bf9c9db749c",2081085796,1644748996))][(decode_string_v1("65e530246dfe5a86ebce9b2b",2054677410,1644748996))] or GBPCheck.getbodyparts
            end

            if GetCharCheck then
                getgenv()[(decode_string_v1("0785958d578dbc552dcb39c318287c4d603406",1967925006,1644748996))][(decode_string_v1("f62c1596438aa27f9c7e0c19",955839828,1644748996))] = getgenv()[(decode_string_v1("66ed27c8bb7cf447c103694d38f3ea84e947b3",1442688497,1644748996))][(decode_string_v1("c485fc499152b411008a6cdf",176031580,1644748996))] or GetCharCheck
            end

            if BadBussinessTeamCheck then
                getgenv()[(decode_string_v1("9c2b5256ed4122b25b74b673fcc4b458ecc183",1726607561,1644748996))][(decode_string_v1("e69e965ba3eb6de9cea52c027b",1380475774,1644748996))] = getgenv()[(decode_string_v1("901679137fb91dff27f1e78549ab8923eb024a",1272950423,1644748996))][(decode_string_v1("79e8c6a3c93b833a04af5cebd6",68914081,1644748996))] or BadBussinessTeamCheck
            end
        end
    end

    local function GetPlrTeam(Plr)
        if typeof(Plr) == (decode_string_v1("abe3e57ead6f1357",919758941,1644748996)) then
            if game.PlaceId == 3233893879 then
                if getgenv()[(decode_string_v1("3c8d293f8c9105491a7047b6eafdf09b059d50",919199042,1644748996))][(decode_string_v1("5f953005330e36d391ac873a7e",968930180,1644748996))] ~= nil then
                    return getgenv()[(decode_string_v1("92fa58bf97ea5c2e62ae76f48b3c536342ac57",844544909,1644748996))][(decode_string_v1("a9b4cef2e2e9ed4b4c64ea0ead",137011137,1644748996))]:GetPlayerTeam(Plr)
                else
                    return Plr.Team
                end
            else
                return Plr.Team
            end
        end
    end

    local function GetChar_Ez(Plr)
        if typeof(Plr) == (decode_string_v1("d6c57775ff464e90",1563002649,1644748996)) then
            if not PartNames[game.PlaceId] then
                if Plr:IsA((decode_string_v1("db2c9a2c53",1421741522,1644748996))) then
                    return Plr
                else
                    return Plr.Character
                end
            elseif game.PlaceId == 3233893879 then
                -- Bad business moment

                if type(getgenv()[(decode_string_v1("21c04ff45b0a54b3e9c546a65558d5c4a496e6",2023322335,1644748996))][(decode_string_v1("93d096048f30c6fc90e94690",278162944,1644748996))]) == (decode_string_v1("95ea326f07",874111628,1644748996)) then
                    local PlrParts = getgenv()[(decode_string_v1("9c827e0e53cd62b72b39b343136a4e0d58e9a3",1329924839,1644748996))][(decode_string_v1("9cf0b4305920dd61e1007384",72124526,1644748996))]:GetCharacter(Plr)
                    if PlrParts ~= nil then
                        return PlrParts.Body
                    end
                end
            elseif game.PlaceId == 292439477 then
                -- Phantom Forces moment

                if type(getgenv()[(decode_string_v1("f98fe6639dfb44876e6c646e911f8fb7a27a3f",1652909687,1644748996))][(decode_string_v1("67ed4e076daa5cabe1d6a0df",1868716904,1644748996))]) == (decode_string_v1("9df691636afa8565",1623961626,1644748996)) then
                    local PlrParts = getgenv()[(decode_string_v1("be38af121cdf645a10d2a93e59b9a15f39ce69",1641281455,1644748996))][(decode_string_v1("3e116cc68272c784d2dc1a93",581985507,1644748996))](Plr)
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

    getgenv()[(decode_string_v1("25ca199006770dab33",1366442126,1644748996))].SETTINGS = {
        BOXES_ENABLED = false,
        TRACERS_ENABLED = false,
        TEAM_CHECK = false,
        AIMBOT_ENABLED = false,
        AIMBOT_TEAM_CHECK_ENABLED = false,
        ESP_COLOR = Color3.fromRGB(255, 255, 255)
    }

    getgenv()[(decode_string_v1("b1af654392b7d31fb8",686894474,1644748996))].Connect = function()
        getgenv()[(decode_string_v1("c677938f783db12852",1573697867,1644748996))].UnLoad = function()
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("8287773b183af36240f42d80d70c2504eb908dc9466880",151261337,1644748996))]) do
                pcall(function()
                    CachedItem:Remove()
                    getgenv()[(decode_string_v1("1596e811ea9b36a886e7aa829831ae6508b341e782afe2",879725099,1644748996))][CacheName] = nil
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("194afd1eb9f85322ff3937",1475457496,1644748996))]) do
                if tostring(CacheName):find((decode_string_v1("93cb237aab",475327298,1644748996))) then
                    getgenv()[(decode_string_v1("6292a448dfa3a030ac8362",753430616,1644748996))][CacheName] = nil
                end
            end
        end

        getgenv()[(decode_string_v1("ec91d99879606ea32c",1795381263,1644748996))].UnLoadType = function(TypeString)
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("517e0e32877f348af996b9f0dac8f242b58d94bb9bc453",2041922657,1644748996))]) do
                pcall(function()
                    if tostring(CacheName):find(tostring(TypeString)) then
                        CachedItem:Remove()
                        getgenv()[(decode_string_v1("5e9976e6970de90cda53354ff4d8dcec25a2720b590994",473793653,1644748996))][CacheName] = nil
                    end
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("d351803d8250798fe5549f",1152559560,1644748996))]) do
                if tostring(CacheName):find(tostring(TypeString)) then
                    getgenv()[(decode_string_v1("fdcfa5f22a1af821d5d67e",1663442603,1644748996))][CacheName] = nil
                end
            end
        end
        
        getgenv()[(decode_string_v1("cd529e6c3bfae25db7",905427370,1644748996))].UnLoad()

        getgenv()[(decode_string_v1("0df367919c704db412",1214638147,1644748996))].UpdateColor = function(Color)
            getgenv()[(decode_string_v1("6b2f210a8ed6d2160d",1459207396,1644748996))].SETTINGS.ESP_COLOR = typeof(Color) == (decode_string_v1("006723fab627",1110090189,1644748996)) and Color or Color3.fromRGB(255, 255, 255)
        end

        getgenv()[(decode_string_v1("ed26c2ecf41ef9779f",143019243,1644748996))].SetTeamCheck = function(Bool)
            getgenv()[(decode_string_v1("d857d066d094e2ccae",627024407,1644748996))].SETTINGS.TEAM_CHECK = type(Bool) == (decode_string_v1("0e4ade434221cc",1473500116,1644748996)) and Bool or false
        end
        
        getgenv()[(decode_string_v1("db0db16876d4e323e4",887268323,1644748996))].SetBoxVisibility = function(Bool)
            getgenv()[(decode_string_v1("68aa571ec72244c0f4",151722623,1644748996))].SETTINGS.BOXES_ENABLED = type(Bool) == (decode_string_v1("269272a7896938",669757976,1644748996)) and Bool or false
        end

        getgenv()[(decode_string_v1("7ec7eb69a0b1a7db07",1443399634,1644748996))].SetTracersVisibility = function(Bool)
            getgenv()[(decode_string_v1("c7a33673e5564aa993",922020970,1644748996))].SETTINGS.TRACERS_ENABLED = type(Bool) == (decode_string_v1("2bcbb8e8ab51ed",1732029398,1644748996)) and Bool or false
        end

        getgenv()[(decode_string_v1("787a9abadce5a77cd7",993130478,1644748996))].LoadTracers = function(Plr)
            if getgenv()[(decode_string_v1("b549bf024fdd4c62b4988d",808634711,1644748996))][Plr.Name .. (decode_string_v1("c16be1d1a79af33198554276",750195123,1644748996))] == nil then
                if getgenv()[(decode_string_v1("7060d48803eaf4259d828ca4cbc3c6d0489de0494cab4b",723083831,1644748996))][Plr.Name .. (decode_string_v1("fb82670f9b104373e4f9fbbf",1641370870,1644748996))] == nil then
                    getgenv()[(decode_string_v1("c8b6b7d90d3ae122e3a0906f697cd9822453f0501461b0",659128625,1644748996))][Plr.Name .. (decode_string_v1("12bbb2a7592dfd34703450ca",1495435953,1644748996))] = Drawing.new((decode_string_v1("e3435b77",1246512499,1644748996)))
                    getgenv()[(decode_string_v1("d45de81e4f45f18b44ca34856bf884644df371c8309383",1949418717,1644748996))][Plr.Name .. (decode_string_v1("0e707b4442b23459ff2f60c6",21009242,1644748996))].Visible = false
                    getgenv()[(decode_string_v1("1cca75f0b05a0303f1a89af7c6ef700738fca3452be2bf",983804498,1644748996))][Plr.Name .. (decode_string_v1("40938e5b138a9979737b7f44",1972191490,1644748996))].Thickness = 2;
                    getgenv()[(decode_string_v1("91b0a02d1370d3b4a095b3a539245b2327c5d0e7955344",1860880633,1644748996))][Plr.Name .. (decode_string_v1("e252b1c9163b1233c1a3ddf7",474452200,1644748996))].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                end

                getgenv()[(decode_string_v1("40d097288e15a9c127bb4b",2011383093,1644748996))][Plr.Name .. (decode_string_v1("e72d5c3dc8f355232d16593a",2141355572,1644748996))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("250c4fac34b53808f343f63bd4eec83dae51b7ea12f975",285659436,1644748996))][Plr.Name .. (decode_string_v1("9da57f7d8124d411acbe97fc",1059453191,1644748996))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("aa652d2223",675178080,1644748996)) and PartNames[game.PlaceId].Root or (decode_string_v1("cf81a33e432d8fe170a742510b429ef1",228670803,1644748996)))
                            local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("e9ce04a837",341607408,1644748996)) and PartNames[game.PlaceId].Head or (decode_string_v1("9b44b59c",568601422,1644748996)))
                            
                            if RootCheck and Plrhead then
                                if getgenv()[(decode_string_v1("f6b5e5df1f6c6d66cd4739c1ba5efd9b4cab9152f5b68b",1236018267,1644748996))][Plr.Name .. (decode_string_v1("5a72a1efb4685041195df5b8",1817279288,1644748996))] then
                                    local Line = getgenv()[(decode_string_v1("8e418a4f01a215f08ab0f94a9494137d65ecd85ebb0114",1300796480,1644748996))][Plr.Name .. (decode_string_v1("f76dfc7ed66b0b1f2944e426",925017625,1644748996))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                                    local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                                    Line.To = Vector2.new(LinePos.X, LinePos.Y)
                                    Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                                    Line.Color = typeof(getgenv()[(decode_string_v1("1a03512ec814ea5f36",589648061,1644748996))].SETTINGS.ESP_COLOR) == (decode_string_v1("05dc6577d7e8",1286080724,1644748996)) and getgenv()[(decode_string_v1("43fd4067ec357bd39d",226564813,1644748996))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("f2e9e8fda7781d6eae",2116793316,1644748996))].SETTINGS.TEAM_CHECK then
                                        Line.Visible = false
                                    else
                                        Line.Visible = getgenv()[(decode_string_v1("af495c1461be243643",613581609,1644748996))].SETTINGS.TRACERS_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("bd5d68d85249b17822fd29277e35ab458765a66efe5f63",608946755,1644748996))][Plr.Name .. (decode_string_v1("dc3b77da011bb8ca6c355ef9",150168038,1644748996))] then
                                getgenv()[(decode_string_v1("c659c96fb85e697a358f4634f9c1860e10b5da8b615cde",2066728784,1644748996))][Plr.Name .. (decode_string_v1("81ba1c2af6b954d06f8e2289",1769348957,1644748996))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("f5a4b210bf07c945f1ec48",638472187,1644748996))][Plr.Name .. (decode_string_v1("1e678fbc0d2c17f6ab1de42a",1420159614,1644748996))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("cec43331813d249250c1c3ae0fc28f9577656e25ca5678",1604613872,1644748996))][Plr.Name .. (decode_string_v1("8700ecd01133892285fd9365",299491312,1644748996))] then
                            getgenv()[(decode_string_v1("9e0ad1175ba9442f787f360c327659da4c0b2a874fa298",67546003,1644748996))][Plr.Name .. (decode_string_v1("c2ebb02b1183447cf74a86b9",2085506177,1644748996))]:Remove()
                            getgenv()[(decode_string_v1("13561cec165e1338cd0c9cc48b7e715efc1bee3c6b9357",830958017,1644748996))][Plr.Name .. (decode_string_v1("280f273c45004416b5c3ea31",1302124378,1644748996))] = nil
                        end
                    end
                end
            end
        end
--GetPlayerTeam
        getgenv()[(decode_string_v1("beb9b263075c1cbe89",626898260,1644748996))].LoadBox = function(Plr)
            if getgenv()[(decode_string_v1("25127b196eddd986cf5cf2",323870578,1644748996))][Plr.Name .. (decode_string_v1("34f2daf44aecafa158f1",1358628427,1644748996))] == nil then
                if getgenv()[(decode_string_v1("0f688e0fddf043ced7b24352576a99c3d3f9c41d88a0cb",897484720,1644748996))][Plr.Name .. (decode_string_v1("831200b9e2bf2cd890ca",120380674,1644748996))] == nil then
                    getgenv()[(decode_string_v1("b80dcaadd6bbc03d9c2e043fbee5dc063acd1c07f16cc6",814115765,1644748996))][Plr.Name .. (decode_string_v1("f5cb566aeaf9726b8719",1075450598,1644748996))] = Drawing.new((decode_string_v1("8ad5d74c3a8c",385890293,1644748996)));
                    getgenv()[(decode_string_v1("355a3d04f6eb1f800d9915b6b895848380206616d4eeeb",1361241659,1644748996))][Plr.Name .. (decode_string_v1("c01e4518e714738eddd3",1269662901,1644748996))].Thickness = 2;
                    getgenv()[(decode_string_v1("159527fc79e82eddb10482a70f4f141e17748cfecb306f",1752768054,1644748996))][Plr.Name .. (decode_string_v1("9dd26f0c874ea5adbd58",1730213764,1644748996))].Filled = false;
                    getgenv()[(decode_string_v1("cebc03ad4bc1a3e3bfc578b0c83a5a265044d014d9f6bb",882119207,1644748996))][Plr.Name .. (decode_string_v1("f76617795472d2845b8f",854236313,1644748996))].Visible = false;
                end

                getgenv()[(decode_string_v1("7e9818d7fd2e971a39ac47",217109672,1644748996))][Plr.Name .. (decode_string_v1("348bbd6953c8ada95e89",1278985317,1644748996))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("5dc89466d5eb39a9721287288e1db3ece51b360a6eda4c",1511264162,1644748996))][Plr.Name .. (decode_string_v1("64a3ddbe828ddf213963",1858160234,1644748996))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("0a616531c6",1387534078,1644748996)) and PartNames[game.PlaceId].Root or (decode_string_v1("a0bbe6584374af35b18fbbf63d5ebb42",1606613152,1644748996)))
                            
                            if RootCheck then
                                if getgenv()[(decode_string_v1("54e73db61379510cc5f69d668dacae71bb8859610547d7",369252401,1644748996))][Plr.Name .. (decode_string_v1("2e4df6216fd5d0acfc1a",633495929,1644748996))] then
                                    local Inset = GUIService:GetGuiInset();
                                    local Box = getgenv()[(decode_string_v1("c85dfe6a114f1f558df939b85997fd47fba2f133189289",1839497510,1644748996))][Plr.Name .. (decode_string_v1("69070d1c78d542839d48",1772134692,1644748996))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                                    Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                                    Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                                    Box.Color = typeof(getgenv()[(decode_string_v1("2a978d78e3ceeb219e",752968140,1644748996))].SETTINGS.ESP_COLOR) == (decode_string_v1("79effbfda298",1500816951,1644748996)) and getgenv()[(decode_string_v1("ca82ea35bc134f81bd",793513114,1644748996))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("0f812897d917d93015",2137166685,1644748996))].SETTINGS.TEAM_CHECK then
                                        Box.Visible = false
                                    else
                                        Box.Visible = getgenv()[(decode_string_v1("67d7cefc8bf6984535",337986509,1644748996))].SETTINGS.BOXES_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("3ec411e0e6e85da1924ef8f09b3406f11b9f04380b4d70",60196379,1644748996))][Plr.Name .. (decode_string_v1("d52bfc7044320604527c",1863539252,1644748996))] then
                                getgenv()[(decode_string_v1("4e75ee4867179aec15f8fa76cad26a1160f9704849ea31",1270310755,1644748996))][Plr.Name .. (decode_string_v1("d9afd6a94b3fc3d9aeba",586087406,1644748996))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("0abe01c5209bee88bd59e1",522196077,1644748996))][Plr.Name .. (decode_string_v1("68bd7ccedaaa4a5ab488",1092567370,1644748996))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("70cf2299bcd5f757511f15f514e3b86d1740f8b7baabd2",1238915818,1644748996))][Plr.Name .. (decode_string_v1("f809b377c84e08fffe2f",158492126,1644748996))] then
                            getgenv()[(decode_string_v1("c390648f827680931d505c6e2f022d9d99eeebcd3d7103",1543321421,1644748996))][Plr.Name .. (decode_string_v1("691953d59598dddbb52e",2124640522,1644748996))]:Remove()
                            getgenv()[(decode_string_v1("73a587092cd6f13e47bfcf1fdfaee7325a93aa4f8735fe",1861687743,1644748996))][Plr.Name .. (decode_string_v1("f63ff6913bea69c7a972",378939029,1644748996))] = nil
                        end
                    end
                end
            end
        end

        getgenv()[(decode_string_v1("79facea85d98f81276",1691950098,1644748996))].LoadFov = function()
        end

        if getgenv().ESP_TESTING == true then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= LPlayer then
                    getgenv()[(decode_string_v1("dbe15e54f70a016d1a",1343001894,1644748996))].LoadBox(Plr)
                    getgenv()[(decode_string_v1("70e8ac5e51cd811c03",958434722,1644748996))].LoadTracers(Plr)
                end
            end
        end

        if getgenv()[(decode_string_v1("59645235f84930bb09",2078654026,1644748996))].RemovedAndAdded == nil then
            getgenv()[(decode_string_v1("b0d474dd82207ca986",528647117,1644748996))].RemovedAndAdded = true

            Players.PlayerAdded:Connect(function(Plr)
                if getgenv()[(decode_string_v1("48976ed4f22aa91211",907087705,1644748996))].SETTINGS.BOXES_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("f619f4f919e56d13d2",1596287876,1644748996))].LoadBox(Plr)
                end

                if getgenv()[(decode_string_v1("9e315b126690fb240e",922829315,1644748996))].SETTINGS.TRACERS_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("41794770f4bea185e4",2121600695,1644748996))].LoadTracers(Plr)
                end
            end)
        end
    end
    
    getgenv()[(decode_string_v1("c6e72b064a49127480",1353546728,1644748996))].Connect()

    getgenv()[(decode_string_v1("8fc63a5ffd6ee6006f",2062192690,1644748996))].Aimbot = function()
        local Proxy = newproxy(true);
        local MetaTable = getmetatable(Proxy);

        local function AimAtPlayer(Camera, Mouse, target)
            local TARGETPOS = Camera:WorldToScreenPoint(target.Position)
            local GOTO = Vector2.new((TARGETPOS.X - Mouse.X) * .15, (TARGETPOS.Y - Mouse.Y) * .15)
            mousemoverel(GOTO.X, GOTO.Y) -- Quick math for the aim function lmao
        end

        getgenv()[(decode_string_v1("0c5312d32e7c3b5fd9ffed",1761911089,1644748996))].AimBot = nil

        MetaTable.Start = function()
            getgenv()[(decode_string_v1("46b453ef0975bdcde4bc64",423133529,1644748996))].AimBot = nil
            if getgenv()[(decode_string_v1("dbb53e73efe1fe4c6d62fe",1115030660,1644748996))].AimBot == nil then

                getgenv()[(decode_string_v1("2d1a40792b0a9a6691389a",608623771,1644748996))].AimBot = function()
                    local LastDistance = 999999
                    for _, FPlayer in ipairs(Players:GetPlayers()) do
                        if FPlayer ~= LPlayer then

                            local TeamCheck = tostring(GetPlrTeam(FPlayer)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("f8d034e2b868f1e129",1246371381,1644748996))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
                            if not TeamCheck then
                                local FChar = GetChar_Ez(FPlayer)

                                if FChar then
                                    local HeadCheck = FChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("f76ee77288",1946837654,1644748996)) and PartNames[game.PlaceId].Head or (decode_string_v1("7cc4d00b",249810091,1644748996)))

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
            getgenv()[(decode_string_v1("d19f109b4e99dfd95a27e0",852020140,1644748996))].AimBot = nil
        end

        MetaTable.TeamCheck = function(Bool)
            getgenv()[(decode_string_v1("1b0d1b356c8593a7b5",1205600748,1644748996))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
        end

        return MetaTable
    end

    if getgenv().ESP_TESTING == true then
        getgenv()[(decode_string_v1("f1a8cdb99ba271d931",1447394241,1644748996))].SetTracersVisibility(true)
        getgenv()[(decode_string_v1("9ca427e85f31943701",331654380,1644748996))].SetBoxVisibility(true)
        getgenv()[(decode_string_v1("07e87242758dbe7503",53125726,1644748996))].SetTeamCheck(false)
        getgenv()[(decode_string_v1("f7f03616159aa453f1",1476832677,1644748996))].UpdateColor(Color3.fromRGB(79, 22, 201))
    end

    if not getgenv()[(decode_string_v1("a95033a54fcecb6b2d93",1325784271,1644748996))] then
        getgenv()[(decode_string_v1("8a6a91dd4c242e288735",1276708381,1644748996))] = true
        local RunService = game[(decode_string_v1("08c2915ca1397cf38978",699722594,1644748996))](game, (decode_string_v1("8416aa5e2c1418b614f2",2103072428,1644748996)))
        RunService.Heartbeat:Connect(function()
            for _, Function in pairs(getgenv()[(decode_string_v1("dd98322a41dbbdeb34d5aa",1442335838,1644748996))]) do
                if type(Function) == (decode_string_v1("616d2a9c28cc24ad",146663222,1644748996)) then
                    xpcall(Function, ErrorHandlerTing)
                end
            end
        end)
    end
end
            --Timber. lua_compile_spot
            --PhantomForces. lua_compile_spot
            --BloxBurg. lua_compile_spot
            local VRService = game:GetService((decode_string_v1("52ac2a51325dbf8bc4",601132559,1644748996)))

do
    local function WorldZeroInit()
        local MarketService = game:GetService((decode_string_v1("a6642937ea7d8539a48e81e7b833af99c6a0",2094996660,1644748996)))
        local VRService = game:GetService((decode_string_v1("7f2e682ff623795ce7d9fb",600812352,1644748996)))
    
        local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
        if isSuccessful then
            if info.Creator.Name == (decode_string_v1("5f99e8fa1268182b5d8d1947b5",1456754558,1644748996)) then
                --

                getgenv()[(decode_string_v1("c768a29791ab9c976182cf403f12cf05223064be38",1240732542,1644748996))] = false
            
                --------------------------------------------------------------------------------------------
        
                getgenv().UpdateLoop = type(getgenv().UpdateLoop) == (decode_string_v1("e9a5d6534ca33e",569437251,1644748996)) and getgenv().UpdateLoop or false;
                getgenv().UpdateCache = type(getgenv().UpdateCache) == (decode_string_v1("f22363a39d",1711524007,1644748996)) and getgenv().UpdateCache or {};
                getgenv().MOB_ESP_OBJECTS = type(getgenv().MOB_ESP_OBJECTS) == (decode_string_v1("2c3de6eb9e",1775302788,1644748996)) and getgenv().MOB_ESP_OBJECTS or {};
                getgenv().MOB_ESP_CONNECTIONS = type(getgenv().MOB_ESP_CONNECTIONS) == (decode_string_v1("6f820c611b",1369642549,1644748996)) and getgenv().MOB_ESP_CONNECTIONS or {};
        
                local GameConfigFile = GetGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("c8fe04c3f6",864077900,1644748996)))
                Settings_Name = (decode_string_v1("bef5dfef4af07a925a2636ffef80604938402dc1803c2a6a3026a7",598940488,1644748996))

                getgenv()[Settings_Name] = {
                    AutoAttackMobs = GameConfigFile.AutoAttackMobs or false,
                    AutoPickupCoins = GameConfigFile.AutoPickupCoins or false,
                    AntiIdle = GameConfigFile.AntiIdle or false,
                    MobESP = GameConfigFile.MobESP or false,
                    MobESPRenderDistance = GameConfigFile.MobESPRenderDistance or 250
                }
                
                Window = UILibrary.new((decode_string_v1("87499f5e8b08693c0563596d512c5c4ee834786da8440d",205736000,1644748996)), 5013109572)
    
                local TweenService = game:GetService((decode_string_v1("2b81fed21fea99d4a739f6d2",1810746805,1644748996)))
                local Player = game.Players.LocalPlayer
                local Character = nil
                local PlayerPosition = nil
                local PlayerLookVector = nil
                local RootPart = nil
                local ItemTable = nil
                
                local ActionsModule = require(game.ReplicatedStorage.Client.Actions);
                local CombatModule = require(game.ReplicatedStorage.Shared.Combat);
                local AnimationModule = require(game.ReplicatedStorage.Client.Animations);
        
                local MobsFolder = workspace:FindFirstChild((decode_string_v1("32466780",1124049157,1644748996)))
                --[===[local PlayerWindow = Window:addPage("Player", 5012544693)]===]
                local AutoFarmWindow = Window:addPage((decode_string_v1("1ac4bcd843650a7f64",2082154343,1644748996)), 5012544693)
                local VisualsWindow = Window:addPage((decode_string_v1("175f73510a8844",1842385340,1644748996)), 5012544693)
                local TeleportsWindow = Window:addPage((decode_string_v1("65e6839a12c1b7864b",593901140,1644748996)), 5012544693)
                local AutoFarmSection = AutoFarmWindow:addSection((decode_string_v1("ed26c92916e79c31",67466262,1644748996)), 5012544693)
                local VisualsSection = VisualsWindow:addSection((decode_string_v1("cdb0adeab3064f8b",2115420196,1644748996)), 5012544693)

                local Camera = workspace.Camera
                local GUIService = game[(decode_string_v1("8b67d143250c541d90a5",750785087,1644748996))](game, (decode_string_v1("b4ddb570c66c3a15a284",2106983920,1644748996)))
                
                local function GetNearMobs()

                    local Mobs = {}
                    local HitBoxSize = Vector3.new(25, 15, 25)

                    if RootPart then

                        local MobParams = OverlapParams.new()
                        MobParams.FilterDescendantsInstances = MobsFolder:GetChildren()
                        MobParams.CollisionGroup = (decode_string_v1("b4b89851d03b64",294372533,1644748996))
                        MobParams.FilterType = Enum.RaycastFilterType.Whitelist

                        local FoundInBox = workspace:GetPartBoundsInBox(RootPart.CFrame, HitBoxSize, MobParams)

                        if FoundInBox ~= nil then
                            for _, Part in ipairs(FoundInBox) do
                                if Part:IsA((decode_string_v1("555a9dcff5903b21",1307277151,1644748996))) then
                                    if Part.Name == (decode_string_v1("2f6dd4ed5ea2ad3d",816839248,1644748996)) then
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
                                Box = Drawing.new((decode_string_v1("dda792ae693d",49381278,1644748996))),
                                ESPText = Drawing.new((decode_string_v1("5669a010",1693373545,1644748996)))
                            }
    
                            local Box =  getgenv().MOB_ESP_OBJECTS[Mob].Box
                            local ESPText =  getgenv().MOB_ESP_OBJECTS[Mob].ESPText
    
                            ESPText.Text = (decode_string_v1("",1039469331,1644748996))
                            ESPText.Color = Color3.fromRGB(255, 255, 255);
                            ESPText.Size = 20.0
                            ESPText.Visible = false
                            ESPText.Outline = true
                            ESPText.Center = true
    
                            Box.Thickness = 2;
                            Box.Filled = false;
                            Box.Visible = false;
                            
                            getgenv().UpdateCache[Mob] = function()
                                local Collider = Mob:FindFirstChild((decode_string_v1("36fedb998fa574b0",1821497250,1644748996)))

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
    
                                    ESPText.Text = string.format((decode_string_v1("7f5af197d393d1860cdd535d90dd7a38785e0ac9a1af7d24",692271891,1644748996)), Mob.Name, tostring( math.floor( (MobPos - PlayerPosition).Magnitude ) ) )
    
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
    
                                            local CreatureHealthFolder = Mob:FindFirstChild((decode_string_v1("6ac707cfd45b137f59ea2cbad77731d6",2072585800,1644748996)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("7dfa304dca9d",1543327728,1644748996)))
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
                            if typeof(V) == (decode_string_v1("f97e69766a7a8c95bd6b14d3cb79c7b7ba9074",755737402,1644748996)) then
                                V:Disconnect()
                                getgenv().MOB_ESP_CONNECTIONS[I] = nil
                            end
                        end
                    end

                    ESP_META.StartConnections = function()
                        ESP_META.EndConnections()

                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("01493536378349a7",388479347,1644748996))] = MobsFolder.ChildAdded:Connect(function(Mob)
                            ESP_META.AddEsp(Mob)
                        end)
        
                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("55391a45ae5d21cc8c0f",448624656,1644748996))] = MobsFolder.ChildRemoved:Connect(function(Mob)
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
                
                getgenv()[(decode_string_v1("39341a72b7cd4256366fcb",738610756,1644748996))][(decode_string_v1("a96f68c94e03bd48adb0c24716c62fe6",776110709,1644748996))] = function()
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

                getgenv().UpdateCache[(decode_string_v1("abb6b0fb250d54c1fdbc",821507890,1644748996))] = function()
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
                
                VisualsSection:addSlider((decode_string_v1("3e009af88535aa658d8a934e24e2651d11fa90",30854666,1644748996)), getgenv()[Settings_Name].MobESPRenderDistance, 250, 10000, function(NewValue)
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

                VisualsSection:addToggle((decode_string_v1("cf6fbec9720a9c",986509829,1644748996)), getgenv()[Settings_Name].MobESP, function(Bool)
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

                AutoFarmSection:addToggle((decode_string_v1("3bacfa3a8cf446a3efff2f555e29f56fc221aa298636c1d606cc8f9ee48255c6b2660a",229887326,1644748996)), getgenv()[Settings_Name].AutoAttackMobs, function(Bool)
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
                                            local CreatureHealthFolder = Creature:FindFirstChild((decode_string_v1("28264c28f3181c8abb3727bd5e97ab24",23184351,1644748996)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("35bab2a3fcbf",1133946729,1644748996)))
                                                
                                                if CreatureHealth then
                                                    
                                                    if CreatureHealth.Value > 0 then
                                                        local CreaturePos = Creature:GetPivot();
    
                                                        --local v14 = AnimationModule:GetAnims().Defender["Attack" .. tostring(AttackIndex)];
                                                        if not ActionsModule:IsBusy() then
                                                            TotalHits = TotalHits + 1
    
                                                            --ActionsModule:FireSkillUsedSignal("Primary");
                                                            --ActionsModule:FireCooldown("Primary");
                                                            ActionsModule:SetBusy((decode_string_v1("efa451f61d",872374886,1644748996)));
                                                        
                                                            if Character then
                                                                PlayerPosition = Character.PrimaryPart.Position
                                                                PlayerLookVector = Character.PrimaryPart.CFrame.LookVector
                                                                RootPart = Character.PrimaryPart
                                                            end
    
                                                            RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
                                                            Camera.CFrame = CFrame.new(Camera.CFrame.p, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
    
                                                            CombatModule:AttackWithSkill((decode_string_v1("50b5a4b7457a1f04",1031586629,1644748996)) .. tostring(AttackIndex), PlayerPosition, CFrame.new(PlayerPosition, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z)).LookVector * 1.1 );
                                                            
                                                            AttackIndex = math.clamp(AttackIndex + 1, 1, 6)
    
                                                            if AttackIndex > 5 then
                                                                AttackIndex = 1
                                                            end

                                                            CreatureIndex = CreatureIndex + 1
    
                                                            task.wait(0.01)
                                                            ActionsModule:ReleaseBusy((decode_string_v1("6e3f436854",1639055327,1644748996)));
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
                    if A:IsA((decode_string_v1("e0849c5255",530002497,1644748996))) then
                        if tostring(A) == (decode_string_v1("50a416ec3e",520649178,1644748996)) then
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
    
                AutoFarmSection:addToggle((decode_string_v1("f91ad425506c5f55",517082916,1644748996)), getgenv()[Settings_Name].AntiIdle, function(Bool)
                    getgenv()[Settings_Name].AntiIdle = Bool
                end)
    
                AutoFarmSection:addToggle((decode_string_v1("2445e07c0c29773d5de4d96cc24d08e0fac5ad996eadf106c211",1520210038,1644748996)), getgenv()[Settings_Name].AutoPickupCoins, function(Bool)
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
        
                if not getgenv()[(decode_string_v1("1e6fdbb7f2442a639455",109346246,1644748996))] then
                    getgenv()[(decode_string_v1("8fe0ca1365275e54bb4a",1649665295,1644748996))] = true
                    RunService.Heartbeat:Connect(function()
                        for _, Function in pairs(getgenv()[(decode_string_v1("33265ab514c191414e1dd2",576684836,1644748996))]) do
                            if type(Function) == (decode_string_v1("3de64ac8689d542f",597366360,1644748996)) then
                                pcall(Function)
                            end
                        end
                    end)
                end
        
                print((decode_string_v1("571d728139e3765dbd89d02494d47327e737119dde",629973528,1644748996)))
                --
            end
        end    
    end
    
    WorldZeroInit()

    local _Players = game:GetService((decode_string_v1("0f0c1b6977ec34",1845271162,1644748996)))
    local _Player = _Players.LocalPlayer
    
    local queue_on_teleport = type(syn) == (decode_string_v1("8a20d402ea",1583706955,1644748996)) and syn.queue_on_teleport or queue_on_teleport
    
    local RejoinCode = (decode_string_v1("5fbd761692632a91b545fc2b34170e7278f3b9f79244fd1429760ae3ef60db17f3468897c5b2307c0ea09180dcb1eba050bca3811df979a34463fd6d0a3f55eaaed713bf2a3c48f7c755ba56ba7dc4b9eb12ab118d5f870c26252d7a6e35fe86985762e37647aa029a152581ffe02d1708208c2d3bf8aba216b8f96c6a8e4906dcedc99d72c88ad7c8bf0df6db8df53f354c52ec67b05b12150c02d159f9e1d93b20744a4b06c57bc28d2293e79bf05b1a0bb1fc125570cf104ff2a3e57df15109b0832f1c5d28fe95298f0e249eb733340627c69c9f675269fa134d7e352389a1761ad873738b303320ff8d9f266595163e4edad0d89835987ad777a3dac358a257f43c0d8827211aaed7cac5864c9ddafcb14e7291a79e2b53f883971a73f66bc145b46e93dc6163244d42ff48c43d537eaea4e0d84ebb980b951f21c16c793152f5a031305a233dfa7412fa1e100480ae22088e3fd6728e1a6114da3223a09ee754adc0943fec1ecbe7f543dc43406e5b599ca8e1e9b467adcca6ca98f3f2ffc1cac972fecf68bf9d2736c8e7745b9bfd89ff05cc03bb109a6b631b9d10724d60eebd5e4c34f4f53a73eb154048e77e0b02097c814aedd48d662c660c725be47a090a997b367b474ac52b4fe1830df0de138fa293100ea15cad04cb4f1c051cf8168df30a95c541af0ea30a8ca18ae0f9d9fe8811d6d8980119863d174b87981e3c92ceb682e5747dfe813b4f182e5685ac9c1fed572670f3d3a3a8e1da550cc7c95da7af5aeef0086e61bdf15153b1ec1012dd1dc8b198eee1d64444ed25c912154b8c9e82f454d1511247c9ce1be4e984724d9e02defd1e1ec173abfcbad15b480651d7b64360170a594edcc0ce62823f",1347689104,1644748996))

    if not isfile((decode_string_v1("92fac2771f3f5eb3709d662dc9d6190ab2ca8d",52507038,1644748996))) then
        writefile((decode_string_v1("516748e17db78f60e2867341ec88c0b8a21bd6",757328105,1644748996)), tostring(RejoinCode))
    end
    
    queue_on_teleport((decode_string_v1("d44ccb64ba52e4d3187cfe2839fbab9c9fb5b52b7a415cf120dd2af9fa0492bae6552ab8ad00f506cd054ddfb524894336dcc578edc4977829df0b36119a4bfde250f4af43d18b9a497ab3e81ba5fd5498e17a8c9ce0fb913fc40a28f81ac4d6ea60daacd76e09d81a53ccb5",1827331385,1644748996)))
end
            --DaHood. lua_compile_spot

			if getgenv()[(decode_string_v1("1907c24d74a30dfaccc3e8ee5875a36d2ddb2a542f",341561541,1644748995))] == true then
                do
    local Players = game[(decode_string_v1("8552cba5f640b8395dc7",1175513021,1644748996))](game, (decode_string_v1("19550a4f006fcf",23074376,1644748996)))
    local Player = Players[(decode_string_v1("0833f123192fae5ee9d479",2120744557,1644748996))]
    local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("5bdc39fafa12",537038179,1644748996))], string[(decode_string_v1("cffaf969b4",1188581671,1644748996))], string[(decode_string_v1("82f1fd9b",1059400542,1644748996))], string[(decode_string_v1("dd7f855a988c",154066210,1644748996))], string[(decode_string_v1("c6429ca63b",698432859,1644748996))]

    Window = UILibrary.new((decode_string_v1("e50f0eace2f220150892feea3f847e3dd18bb52bb9f8",941104310,1644748996)), 5013109572)

    local VisualsWindow = Window:addPage((decode_string_v1("2328ca0673e298",560719617,1644748996)), 5012544693)
    local VisualsSelection = VisualsWindow:addSection((decode_string_v1("4c4e3701",325617756,1644748996)))

    local GameConfigFile = GetGameConfig(FixName(tostring((decode_string_v1("9b821fe89f2b2c60f3",582868182,1644748996)))) .. (decode_string_v1("1110715e95",1589119660,1644748996)))
    Settings_Name = (decode_string_v1("fce6b1e0d0dde850b353516f7e7e2fe6520e77248e14367c58c0",1422218005,1644748996))

    getgenv()[Settings_Name] = {
        Teamcheck = GameConfigFile.Teamcheck or false,
        Boxes = GameConfigFile.Boxes or false,
        Tracers = GameConfigFile.Tracers or false,
        Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
    }

    VisualsSelection:addToggle((decode_string_v1("25863cce6443d67e82068768da",544869039,1644748996)), getgenv()[Settings_Name].Teamcheck, function(Bool)
        getgenv()[Settings_Name].Teamcheck = Bool
        getgenv()[(decode_string_v1("f84c6e20bab83066ad",1732670408,1644748996))].SetTeamCheck(Bool)
    end)

    VisualsSelection:addToggle((decode_string_v1("208e488a9dbc2bc06c",1280944373,1644748996)), getgenv()[Settings_Name].Boxes, function(Bool)
        getgenv()[Settings_Name].Boxes = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("30dedbcdc4bb76ce96",1485406230,1644748996))].LoadBox(Plr)
                end
            end
            getgenv()[(decode_string_v1("7794ae3b129ab6f1fc",611895566,1644748996))].SetBoxVisibility(true)
        else
            getgenv()[(decode_string_v1("ac069eaf2f3c5ab636",377028294,1644748996))].UnLoadType((decode_string_v1("6f07f833da913502e58c",1294265246,1644748996)))
            getgenv()[(decode_string_v1("1ab6e19803536adbb0",1746885482,1644748996))].SetBoxVisibility(false)
        end
    end)

    VisualsSelection:addToggle((decode_string_v1("5333615f500245856bea09",1927964442,1644748996)), getgenv()[Settings_Name].Tracers, function(Bool)
        getgenv()[Settings_Name].Tracers = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("4936ce0245cecef563",1413339412,1644748996))].LoadTracers(Plr)
                end
            end
            getgenv()[(decode_string_v1("453b5b420533790268",2087794614,1644748996))].SetTracersVisibility(true)
        else
            getgenv()[(decode_string_v1("7421bc08d9ce5e220f",2087972817,1644748996))].UnLoadType((decode_string_v1("15ca5bff94498f020fc70785",308834770,1644748996)))
            getgenv()[(decode_string_v1("75d8ee5c6b89d3414b",1956809591,1644748996))].SetTracersVisibility(false)
        end
    end)

    local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color

    getgenv()[(decode_string_v1("f252dff05494963dd7",947697379,1644748996))].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

    VisualsSelection:addColorPicker((decode_string_v1("468b232fcff47f9783",586314090,1644748996)), Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
        local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)

        getgenv()[Settings_Name].Color.R = R
        getgenv()[Settings_Name].Color.G = G
        getgenv()[Settings_Name].Color.B = B

        getgenv()[(decode_string_v1("59134d40612c957221",409176605,1644748996))].UpdateColor(Color3.fromRGB(R, G, B))
    end)

    VisualsSelection:addButton((decode_string_v1("37a9d43da4a9b451f08a",359114424,1644748996)), function(Bool)
        getgenv()[(decode_string_v1("56e810b39d0e67889d",768254302,1644748996))].UnLoad()
    end)
end
			end

			if Window ~= nil and Settings_Name ~= nil then
				local MarketService = game:GetService((decode_string_v1("9c18864c63a0f6d8de5d6b97a803196b95e6",1376530759,1644748995)))
				SettingsPage = SettingsPage or Window:addPage((decode_string_v1("cebed2dcd0cf18df",928960205,1644748995)), 5012544693)
				SettingsSection = SettingsSection or SettingsPage:addSection((decode_string_v1("3f8787e6d2",939148510,1644748995)), 5012544693)
				SettingsSection:addButton((decode_string_v1("9e3cf994b46ede76af0256",1578450406,1644748995)), function()
					local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
					if isSuccessful then
						if tostring(info.Creator.Name) == (decode_string_v1("ae062fcb2b59cde39ddb5abe55",958369774,1644748995)) then
							SaveGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("d8d0b042ef",1224376729,1644748995)), getgenv()[Settings_Name])
                        elseif getgenv()[(decode_string_v1("87468ae22cba9fca0955bf440958f94bb65b3fd3a0",1742457242,1644748995))] == true then
							SaveGameConfig(FixName(tostring((decode_string_v1("11e9bd1c5fa08c93de",344750891,1644748995)))) .. (decode_string_v1("0b966aa1f0",206447856,1644748995)), getgenv()[Settings_Name])
                        else
							SaveGameConfig(FixName(tostring(info.Name)) .. (decode_string_v1("08c6791f81",461101498,1644748995)), getgenv()[Settings_Name])
						end
					end
				end)
				SettingsSection:addKeybind((decode_string_v1("74994fba2df8795cf885280f7c4f",1442011982,1644748995)), Enum.KeyCode.Home, function()
					Window:toggle()
				end, function()
				end)
			end
		else
			return sendError(serverData, clientData)
		end
	end
end, function(err)
	return warn(err .. (decode_string_v1("f3",1704255533,1644748995)) .. debug.traceback())
end)