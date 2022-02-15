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
		getgenv().Key = (decode_string_v1("ba0f6daecc06d55a6ebedef0b9840d4aae332fcf8694960471",1030500496));
		getgenv().DiscordWebhook = (decode_string_v1("1b96ef3b",2135821196));
		getgenv().WebhookEnabled = false;
		getgenv().GubVersion = (decode_string_v1("4f4af7",1461750137));

		local CLIENT_DEOBF_OFFSET = 3;
		local SERVER_DEOBF_OFFSET = 1;
		local StartTimer = os.time()
		local UILibrary = loadstring(game:HttpGet((decode_string_v1("202fb0e36440c828ba8cdbe0557418a666e9f4097b5006f939b2bc111bcef4045f18e7e639e18544f48f181011ee0d9000ae0d744df37a99210c2fe45f767b17626802fc72cb608c0dcc625ccb",1341455219)), true))()
		local library = loadstring(game:HttpGet((decode_string_v1("bfa18845f4e69146a0d1d34438d9288dc025f2d372f1ff304493b8f787d1f4dd8ae8b297fe76476286fce7ae6acf8f8a2e5d43a09f9e7151ab15dba1edd30ccda9c610cd2ef77c69760e3c94eb1a91a6454d73a1fd79f11fd6e8c5a7ff1ad730704d",1207141022))))()
		library:Notification((decode_string_v1("5cc624f3cf4ea6",766560202)), (decode_string_v1("7502d24a8f7c5bcff48da58c0446d8e03f7e0d8e7c7c3dca05d1c928e342e4ab80cad5f4780e08358a0443619c6c",1994205361)), 10, Color3.fromRGB(255, 255, 255))

		if not isfolder((decode_string_v1("acd2e812cf69c01e4d4c6d1a10e0",1993696195))) then
			makefolder((decode_string_v1("0493e1cf2e832775d6aa4d159d7f",833072186)))
		end

		for i, v in pairs(game:GetService((decode_string_v1("57943be8c664a8",1671420761))):GetDescendants()) do
			pcall(function()
				if v.Name == (decode_string_v1("fa94365a",124417628)) then
					v.Parent.Parent:Destroy()
				end
			end)
		end

		local function identify()
			local Executor = string.lower(identifyexecutor())
			local ExecutorTable = nil
			if string.find(Executor, (decode_string_v1("229fa65b689ddf",982268575))) then
				ExecutorTable = {
					(decode_string_v1("c3aae46bb4e458",1600742708)),
					syn.request
				}
			end
			if string.find(Executor, (decode_string_v1("f787da68",502186101))) then
				ExecutorTable = {
					(decode_string_v1("301dffe6",603743688)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("195aa357",312351852))) then
				ExecutorTable = {
					(decode_string_v1("829dffadc855",1577558715)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("1c154d789023",739111004))) then
				ExecutorTable = {
					(decode_string_v1("9014cd45cdaf392c6a173d",296151879)),
					http.request
				}
			end
			if string.find(Executor, (decode_string_v1("1cae60",737251625))) then
				ExecutorTable = {
					(decode_string_v1("dee0d2629911766d",80602776)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("48a3ec",1703252649))) then
				ExecutorTable = {
					(decode_string_v1("07e57ce16e5738d9b4b9ab85",49393775)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("aff6dd0d",803961592))) then
				ExecutorTable = {
					(decode_string_v1("8e8926b122d3ab6eaa1b",208121462)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("efa0f0bb",471812801))) then
				ExecutorTable = {
					(decode_string_v1("5cf86b54ff9baa",778180166)),
					httprequest
				}
			end
			if string.find(Executor, (decode_string_v1("5617b37f3099bffd",1215927643))) then
				ExecutorTable = {
					(decode_string_v1("666ea72e6a9f545c",98021650)),
					http_request
				}
			end
			if getgenv().WRD_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("0d11ad4261e46184",1244486458)),
					http_request
				}
			end
			if getgenv().unlock_module ~= nil and getgenv().setscriptable ~= nil and getgenv().import ~= nil then
				ExecutorTable = {
					(decode_string_v1("8e5e039cfd1dc990ee81cb76e4899d",1874320566)),
					http_request
				}
			end
			if getgenv().OXYGEN_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("6c3793946f81f3b5",719560102)),
					http_request
				}
			end
			if ExecutorTable == nil then
				library:Notification((decode_string_v1("41a88fa6712d023903e76e8d10",1397741665)), (decode_string_v1("4a405ff4ee939f3a213a44a69b71eb6954b7653ee95991fc9168fea76e34a3d3258a785f2673c3607f2b91e9763938f7a0761117f8f7136676b0116384984815471a6ce0ebca994f",398247395)), 10, Color3.fromRGB(255, 255, 255))
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
				library:Notification((decode_string_v1("02eeccc43ff1ea7bd56256ed7fbd",1953913405)), (decode_string_v1("446747ef19425736cca2a5866f9cc433bd11c900239f46f0775ff78a95130a60761f4018805b018d2cd0f4444676e34db40ec00953f8842c0dbb37f0abebd4d1d12b1b16f5",2136697063)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("a347e2b14e669678231d3bc232dcca611e4e3b9006bcf766de047adc805bc35ce64d9d28a810a132b03fe76486748589",1651279362)) then
				library:Notification((decode_string_v1("cc940353d722fd9a5c1d43b89a78",738460530)), (decode_string_v1("eb589e25ab813e1cbe0ee215b5a09b4ed3a5172e79de57d4a40354caf5c2226aa78af0ca5353c174460fb0325b33b631e2e3d41319a6cececa",164835078)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("136d5d909d78a60659a968e7f756cc3f0e737640e152126768",1430018423)) then
				library:Notification((decode_string_v1("8b47acefc737aa03249f04c659f8",1430724293)), (decode_string_v1("eb3c23412f30348569dd887ba7ef8b9aa6141c6098991e13758424355913a98815984def5a3ad7139f9e4a0f20b691c1cdbcce9ceaff83b8002ec0f8fd",1468362445)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("7080844930186b902621bb30a9fb7a0ce6d0d539",587790199)) then
				library:Notification((decode_string_v1("c9dd7179ea4a5edcf51741c3dca22b9c",1942555933)), (decode_string_v1("64a566446fd5f8e78e70fbda7b516c7d13ca4ad1d0817fcd0695c414d98342a18fa1a82996408c8d2e39b00c825a1729c7cfcecfa2d60c3c6afa9f88b8b906b580e3f2cd6b",111420627)), 15, Color3.fromRGB(255, 255, 255))
			else
				library:Notification((decode_string_v1("1456131e6cc9b57bba8aa8e0363c",1019991728)), (decode_string_v1("eb847fffc06f0d5d9640ca9289ac11b5881832da4d815a43eb4944194ada7f2e18e9246ac9684d258c1cf789a64cc90de15bbde56f330acf1b0e035432ad7ea2644027407294921ec418140d827fc8cb53e75fb2476bf05d29bb219b56bfb59e169fd46e9fcd3b43ae6d2f57689cf1ea5f9f4d262ed832d4cc",456248173)), 15, Color3.fromRGB(255, 255, 255))
				setclipboard((decode_string_v1("74641bd14bff7a440e517d621edbe740c4bf0e3511f230a375ca6ae6ba963367d90bc41a2776d74a4d046e66db58c7432e63e0375ef734869fd969cc435b",72123182)) .. clientData .. (decode_string_v1("77360759328d61d7a2cd2e20",1222732256)) .. exploit .. (decode_string_v1("f7142068f2b8e844",132767093)) .. Key .. (decode_string_v1("f7c73ef4e98f45fbb7525ee6a8bfb129",1882047299)) .. serverData .. (decode_string_v1("f7382be2f62afa6c49edfce472adffad8a",1136731141)) .. tostring(newtime))
			end

			specialisedrequest({
				Url = (decode_string_v1("a03fefd3f94753c9cc60c35f2f98977663cc0b5e812338619ad4ab8b79",1698682022)),
				Method = (decode_string_v1("073fceae",1219164292)),
				Headers = {
					[(decode_string_v1("d25605a9ae76ddae894bbb88",254033083))] = (decode_string_v1("7f9368c3a46318db94c9dfa56aa2c86f",1579251404));
					[(decode_string_v1("fefb3a3fca79",1201738735))] = (decode_string_v1("e0960b92c275de543345679dac38aa38d517d3",1529535638));
				},
				Body = game:GetService((decode_string_v1("2f37d9afe8e00711df2962",12991555))):JSONEncode({
					[(decode_string_v1("e54dbd",1406180819))] = (decode_string_v1("da90157a22ee0633ed9665d074d9",201399933));
					[(decode_string_v1("a48a6c14",836715674))] = {
						[(decode_string_v1("ba42c264",1032370702))] = (decode_string_v1("8b66af2c69ca9ac6d3d4",16576337))
					};
					[(decode_string_v1("9a1b3f3154",1561626407))] = (decode_string_v1("e77b1e6fd5b0e0e744bcea75fce6c26159d9f177a4f6064cadac8a31ca728745ccb370d6",1717005045));
				})
			})
		end

		local random = Random.new()
		local letters = {(decode_string_v1("bc",672221516)),(decode_string_v1("c5",966205048)),(decode_string_v1("ab",1420605977)),(decode_string_v1("f4",1405781731)),(decode_string_v1("be",2127583976)),(decode_string_v1("6d",754203259)),(decode_string_v1("0c",445167104)),(decode_string_v1("00",482187037)),(decode_string_v1("f2",220147383)),(decode_string_v1("e1",2114738135)),(decode_string_v1("38",1985290278)),(decode_string_v1("e3",982331962)),(decode_string_v1("9a",1139286695)),(decode_string_v1("ad",1068058910)),(decode_string_v1("70",632121173)),(decode_string_v1("07",1092291547)),(decode_string_v1("96",2056024665)),(decode_string_v1("4d",999798158)),(decode_string_v1("26",1236280777)),(decode_string_v1("3c",56562167)),(decode_string_v1("58",956611017)),(decode_string_v1("8d",1753724910)),(decode_string_v1("26",761950125)),(decode_string_v1("7f",444816341)),(decode_string_v1("7e",265338265)),(decode_string_v1("4d",1877380528))}

		function getRandomLetter()
			return letters[random:NextInteger(1, #letters)]
		end
		local function FixName(GameName)
			return GameName:gsub((decode_string_v1("f6a4f7c57d91143afcda3518",611856213)), (decode_string_v1("",2124432517)))
		end

		local function GetGameConfig(GameName)
			local Table = {}
			if isfolder((decode_string_v1("bccf3d0303133b70c8dfd1e67e52",764835153))) then
				if isfile((decode_string_v1("771aae9154297cf5449fd3d3761a69",531182781)) .. tostring(GameName)) then
					local HttpServices = game:GetService((decode_string_v1("1f9988a0504103f820dfde",1939583592)))
					local ConfigContents = readfile((decode_string_v1("48fde36aa923dc06fa081ba5b19116",249728155)) .. tostring(GameName))
					local DecodedSuccess, DecodedContents = pcall(HttpServices.JSONDecode, HttpServices, tostring(ConfigContents))
					if DecodedSuccess then
						Table = DecodedContents
					end
				end
			end
			return Table
		end

		local function SaveGameConfig(GameName, ConfigTable)
			if isfolder((decode_string_v1("92c48cc3a288f026835416444de1",1866478809))) then
				local HttpServices = game:GetService((decode_string_v1("4f5381678a0c76c1af9d2b",1127708252)))
				local EncodedSuccess, EncodedContents = pcall(HttpServices.JSONEncode, HttpServices, ConfigTable)
				if EncodedSuccess then
					writefile((decode_string_v1("c2c25a17245b91126f50965b09ad8b",318155865)) .. tostring(GameName), tostring(EncodedContents))
					return true
				end
			end
			return false
		end

		function getRandomString(length, includeCapitals)
			local length = length or 10
			local str = (decode_string_v1("",214504734))
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
				return (str_gsub(s, (decode_string_v1("ce",1517202919)), function(c)
					return str_fmt((decode_string_v1("e80c1a98",243699292)), str_byte(c))
				end))
			end

			local function num2s(l, n)
				local s = (decode_string_v1("",1816976034))
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
				msg = msg .. (decode_string_v1("97",1096685892)) .. str_rep((decode_string_v1("17",1848760049)), extra) .. len
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

		if getgenv().Key == (decode_string_v1("",579898261)) or nil then
			Key = (decode_string_v1("318c847b",1796786998))
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
			local charset = (decode_string_v1("42da0a6ca59777adb9ecd73acfcc081706966fe1a36d8a83e040a932028fb77bfda4904fd00fcbcb22bf56a62fa2743f32ac425b71fc513180eb59e39c",1043863170))
			if type(v1) == (decode_string_v1("01e00790c8b5",1648624360)) and type(v2) == (decode_string_v1("01e9620714cc",1634108904)) then
				local length1, length2, chars_1, chars_2 = #v1, #v2, {}, {}
				v1:gsub((decode_string_v1("ce",1512120614)), function(s)
					chars_1[#chars_1 + 1] = s
				end)
				v2:gsub((decode_string_v1("51",1054711196)), function(s)
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
			local Pos, Finished, charCodes, Key, arglen = 1, (decode_string_v1("",1459775364)), {}, 447 - #((decode_string_v1("1f16f2baf748bb45e77ec7ee04b985a5c0bba9efca389bf250351bc699e9a90f8a",668666949))), 35 - #((decode_string_v1("9067d0",2000385271)))
			local schar = Finished.char
			local Keys = {
				233 + #((decode_string_v1("8951fb",1512214358))),
				781 - #((decode_string_v1("ec7d044a",1274338045))),
				785 - #((decode_string_v1("0c1f13b6c766",1004290150))),
				876 - #((decode_string_v1("9b216f68d4338b",170673095))),
				350 - #((decode_string_v1("53afb459bc3d27646f2ae1f6c31ba2314c6b36",1187007367))),
				23 + #((decode_string_v1("3f6cb42655bd32734940232a29e72ad4e3e815f0e8f7bb75f503d1913a0f9c218a",1095194142))),
				111 + #((decode_string_v1("3021cfdf1fb9f5c8925e9358bdcfb4d755b1669f09e556ba04345f82abed0813ab",1409008783))),
				440 + #((decode_string_v1("504ce2b51f1d60de138a5594",1986456145))),
				341 + #((decode_string_v1("7e0beab3",1753457649))),
				322 - #((decode_string_v1("67c1566a95373d23a1d0d786369a445f7f3f83abed47f5d8e23c8bfe15ebf28cb2440c7a57dcd9c2be7e8054f68cef5addde8668046edb517970275ae942860354fa51d8a7ceebe0adc084da6d90b8997b67afd2339cb9c6815e50235d03fb3cfe028a40fd86f14ddd653358",816391144))),
				117 + #((decode_string_v1("efcf5384fe1e0ba1e6752396",478880453))),
				196 + #((decode_string_v1("79bb97d2e95d1f44c1909385bfd9220d16b8a7",651508400))),
				272 - #((decode_string_v1("b5a0428cd570e66c87a8",1729302809))),
				653 - #((decode_string_v1("9e1496320cb60902997e8ef9",814731269))),
				510 + #((decode_string_v1("127ce90d490d",387308127))),
				61 + #((decode_string_v1("d8671b5c1d21861d842f",827212576))),
				61 - #((decode_string_v1("351434656b019bc6b7",1590861707))),
				283 - #((decode_string_v1("a35916ac",1678369568))),
				568 - #((decode_string_v1("9ef76b9509bc",1061651395))),
				933 + #((decode_string_v1("28055f14af4a29c7c3f5c00a9fcc",944911725))),
				642 - #((decode_string_v1("3bf2b0336d7eabf16e89",42377546))),
				651 - #((decode_string_v1("38f53153a4a3ff0980de",1828104055))),
				875 - #((decode_string_v1("52f4cfbf",895011555))),
				882 - #((decode_string_v1("9c958079bc8a",1611934181))),
				333 - #((decode_string_v1("2a2a2dc5b1e7a606acc51fcaa4648a0e043f",2144366530))),
				245 - #((decode_string_v1("f4e3056f2a07",392649502))),
				988 - #((decode_string_v1("8169fb14b5d19979d7",1357391948))),
				118 + #((decode_string_v1("1be9fdc737f73c36876f368841a4d3f4e97260",761306566))),
				623 + #((decode_string_v1("5e4069beba4a",1847098841))),
				629 + #((decode_string_v1("1d1040",998201033))),
				689 - #((decode_string_v1("2f43234a875d2d787e1b",1606199419))),
				828 - #((decode_string_v1("92bd9baaef032a030076ced6",436679184))),
				76 - #((decode_string_v1("b2126c2d2569c6dda22ed3cb",642151231))),
				71 - #((decode_string_v1("ee9f49a0e51e",1183468526))),
				85 - #((decode_string_v1("c30361ef66f4643da5114d57757290753c3102",369325105))),
				79 - #((decode_string_v1("34a0532aa23eb376b0a9f3f3",129766355))),
				56 + #((decode_string_v1("50f286ae33d38dafb38bbc3c",1965366460)))
			}
			getfenv(0)
			Finished.split((decode_string_v1("",1528111079)), (decode_string_v1("",1439988939)))
			while Pos <= 132 - #((decode_string_v1("0f5cb6c0c7b4206a193c",1524835963))) do
				charCodes[Pos] = schar(Pos)
				Pos = Pos + 1
			end
			Pos = 1
			local Confused = (decode_string_v1("",1088337832))
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
			712 - #((decode_string_v1("33ac50af",244559608))),
			1305 + #((decode_string_v1("0b14aad1620a8f8e8f14",970043339))),
			1265 - #((decode_string_v1("0f82ebe3eb82735aea1a725c009f4b26baaa15217575130031d1df3bc3d5977ea6",2140759154))),
			1343 + #((decode_string_v1("29bdb34a022676f92355e1",1571762644))),
			784 + #((decode_string_v1("2c954c42",432262718))),
			553 - #((decode_string_v1("cfca2973f13993",137948946))),
			594 + #((decode_string_v1("406b2f80ab983892df1ca13a",2045197017))),
			929 + #((decode_string_v1("9a5bd63873d5dc116708e53625f49e305ea0a7",1593052369))),
			822 + #((decode_string_v1("4e4e5a2687d56122bdda",753058764))),
			735 - #((decode_string_v1("e173e9ca028162071427bb08eff993e7de47c0",1059041928))),
			649 + #((decode_string_v1("ce6d07b5",837547313))),
			726 - #((decode_string_v1("b4e9e879",499231624))),
			781 + #((decode_string_v1("53c592e53f366ad19734",1622632859))),
			1150 + #((decode_string_v1("9051e2",679209621))),
			1059 - #((decode_string_v1("340bc825d2afabf6",1645529026))),
			607 - #((decode_string_v1("35d35989ae5241a4937dec39b8c9d86a78eff1",107499579))),
			574 + #((decode_string_v1("2d6ef859effb93d844638124d4b21a07932eac",369186156))),
			768 + #((decode_string_v1("3f219e9ca7648c0d0c363e01ae7a57fe89d4dd39b395160ad82caa5c39af88bb04",1939553599))),
			1103 + #((decode_string_v1("8c2a61ca6e0a",1814910279))),
			1437 - #((decode_string_v1("9aac26d1",1151647375))),
			1192 - #((decode_string_v1("3cc56fbf37c0e521",1505092438))),
			1136 - #((decode_string_v1("138eb64b",1352577610))),
			1461 - #((decode_string_v1("4f2be5ef540cbfaa6cf1980ad63d9c95b885197fbc5927f149f1b4804e90ba555a",1111272434))),
			1341 + #((decode_string_v1("f76d05a4bb55",187494919))),
			813 + #((decode_string_v1("c8f295f7dc76",2074790502))),
			710 + #((decode_string_v1("058e65d1b0c5",542520939))),
			1494 - #((decode_string_v1("3e305f2d46e5",649060914))),
			729 - #((decode_string_v1("e7c549a3332267b6250b77e26861caf8833c390fdb316e5647d9d1b8336f2cde787a50b90152ea7322e89b80c2529909941bb3b22701a7bc4ad1fb9b988ddaf72b4de76003c48229de119f5167621c305ec08325b1debfda9b78388426020bb3a853976c9ddc7afa44988253",1317234348))),
			1147 - #((decode_string_v1("e62c501a",263634972))),
			1111 + #((decode_string_v1("ac635b9ffe16943d41e6",749153803))),
			1205 - #((decode_string_v1("ae4c4af8f80a",243705670))),
			1349 + #((decode_string_v1("5b700c8a894b6830b210",1335490074))),
			54 + #((decode_string_v1("e58f0a354a829a07bb14",459420142))),
			61 + #((decode_string_v1("5490c2f9",1685549580))),
			-42 + #((decode_string_v1("a8c6e40e7d2bc2e0c126180f76dfdd83e221244ed8eadc981103e81f5c212fcd6a3a0fd907b663386905fcd26e84d5aa8521ef8a5b7d2febc12bd923f7b2760bde4b6797b3972d093f38c816220d09934b5d1eb964b400c31110105e120c40c8f4dabee6a51feb6a907ff7cc",1704235728))),
			71 - #((decode_string_v1("99d2fcbf",55160034))),
			58 + #((decode_string_v1("93ac8372fe7905141878",1845227382)))
		}

		local whitelisted = false
		local basec = (decode_string_v1("dc6883d4e47cf26e279c600527d54ca04663a10131bca0e4cb013f2c6978ed476e356ba53c031111e418a763f0da9cafb23efe51f1bb65bb8ce9751486d758dc",41314992))

		local function base_encode(data)
			local b = basec
			return ((data:gsub((decode_string_v1("45",195627298)), function(x)
				local r, b = (decode_string_v1("",1694083721)), x:byte()
				for i = 8, 1, -1 do
					r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and (decode_string_v1("ee",967786066)) or (decode_string_v1("27",833162471)))
				end
				return r;
			end) .. (decode_string_v1("07bdaf89",1008899479))):gsub((decode_string_v1("fe32b7e0b58294323a3f157a115a37e3",2126587200)), function(x)
				if (#x < 6) then
					return (decode_string_v1("",302055146))
				end
				local c = 0
				for i = 1, 6 do
					c = c + (x:sub(i, i) == (decode_string_v1("1e",1899626268)) and 2 ^ (6 - i) or 0)
				end
				return b:sub(c + 1, c + 1)
			end) .. ({
				(decode_string_v1("",1523406187)),
				(decode_string_v1("25f9",473998120)),
				(decode_string_v1("08",672966660))
			})[#data % 3 + 1])
		end

		local function base_decode(data)
			local b = basec
			data = string.gsub(data, (decode_string_v1("c225",2096431603)) .. b .. (decode_string_v1("08d9",2032144198)), (decode_string_v1("",40096180)))
			return (data:gsub((decode_string_v1("7d",2006859820)), function(x)
				if (x == (decode_string_v1("36",828778667))) then
					return (decode_string_v1("",1752259156))
				end
				local r, f = (decode_string_v1("",1583459812)), (b:find(x) - 1)
				for i = 6, 1, -1 do
					r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and (decode_string_v1("d2",601624659)) or (decode_string_v1("e8",1748352988)))
				end
				return r;
			end):gsub((decode_string_v1("89e928d99a7d41ffda0843b4db1ac948193a7fd7d881",1532675842)), function(x)
				if (#x ~= 8) then
					return (decode_string_v1("",2018932489))
				end
				local c = 0
				for i = 1, 8 do
					c = c + (x:sub(i, i) == (decode_string_v1("b6",914566977)) and 2 ^ (8 - i) or 0)
				end
				return string.char(c)
			end))
		end

		if not getgenv()[(decode_string_v1("400209",110814649))] then
			getgenv()[(decode_string_v1("f77d47",1357187155))] = {}
		end

		local StringTable = getfenv(pcall)[(decode_string_v1("5a1363995673",2090547284))]

		-- More Security updates.

		local StringMT = getmetatable(newproxy(true))

		StringMT.char = StringTable.char

		Backup = getgenv()[(decode_string_v1("6e8483c5187776",1069286662))] or StringMT
		
		getgenv()[(decode_string_v1("f7d79889d1cb2a",447778257))] = getgenv()[(decode_string_v1("e316b35e89daca",1613106953))] or StringMT

		local function Convert_v1(Offset, Text)
			local Result = (decode_string_v1("",250412444))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("1caf3f",249025880))](Text, Index, Index)
				local Byte = char[(decode_string_v1("25353bc1",70904545))](char)
				local MMath = (Byte + Index + Offset + 3)
				local letter = Backup[(decode_string_v1("4ef6b631",952955295))](MMath)
				Result = Result .. letter
			end
			return Result
		end

		local function UnConvert_v1(Offset, Text)
			local Result = (decode_string_v1("",386764603))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("b456a5",378332871))](Text, Index, Index)
				local Byte = char[(decode_string_v1("e95cbe13",1940522649))](char)
				local MMath = (Byte - Index - Offset - 3)
				local letter = Backup[(decode_string_v1("7a8e15da",1783862576))](MMath)
				Result = Result .. letter
			end
			return Result
		end
        
		local function GetReturnedData()
			local D_ATE = os.date()
			local T_ime = os.time()
			local HTTP_SERVICE = game:GetService((decode_string_v1("ff9dca28c31c917eeb0489",780470626)))
			local OffsetTable = {}
			local DataTable = {
				Url = (decode_string_v1("e086debc038dc4ee39a5dc4321c4400d8fdbf0ca2c15e59d6668aec905237749d44da3c43846f268e23111cf57f76e8c41bb3b01d77da5246174",1525414685)),
				Method = (decode_string_v1("84f2ad",1822833800)),
				Headers = {
					[(decode_string_v1("841d18",972179266))] = Key;
					[(decode_string_v1("2635d35446bd06bd",996237703))] = tostring(game.Players.LocalPlayer.Name);
					[(decode_string_v1("047bb7d18d",1650437746))] = tostring(game.Players.LocalPlayer.DisplayName);
					[(decode_string_v1("f61761f0b0d4443b",110538078))] = exploit;
				}
			}
			OffsetTable[(decode_string_v1("e902b9f77595f3203e",1602609792))] = base_encode(tostring(D_ATE))
			OffsetTable[(decode_string_v1("da6bfbb5f9010ad1c4",1815943433))] = base_encode(tostring(T_ime))
			DataTable.Headers[(decode_string_v1("c37a3d93",1992064441))] = tostring(base_encode(HTTP_SERVICE:JSONEncode(OffsetTable)));
			local returnedData = specialisedrequest(DataTable)
			return returnedData, tostring(D_ATE), tostring(T_ime)
		end

		local returnedData, ShouldReturn1, ShouldReturn2 = GetReturnedData()
		returnedData = returnedData.Body

		if type(returnedData) ~= (decode_string_v1("a52b067b1144",1711496668)) then
			repeat
				returnedData = GetReturnedData()
				returnedData = returnedData.Body
				wait(0.0003)
			until type(returnedData) == (decode_string_v1("e8ea50cbce2c",1797504128))
		end

		local ReturnedArgs = string.split(tostring(returnedData), (decode_string_v1("8a685f8802d035445ab5074cc2",1284388967)))
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
			game.Players.LocalPlayers:Kick((decode_string_v1("80817e70b4fa6629822fe2de42bade794dd41e8c43cb4b21a6970131c0a06dec97e0bc26cf811818e39edd3597b3ebf725c01ccde790e47d48e0f07c1ab45a9d097cd578f2",757548519)))
		end

		local number = tostring(os.time())
		local dynamic = number:split((decode_string_v1("",1695432450)))
		table.remove(dynamic, 10)
		table.remove(dynamic, 9)
		local randomData = tostring(uniformRNG(dynamic[7], dynamic[8]))
		local randomData = randomData:sub(1, -3)
		local clientData = hmac(secret, Key .. randomData)

		if isfile((decode_string_v1("ecfe8dedffdde13d16ea7e1636edc9526edef4",1103729474))) then
			delfile((decode_string_v1("d02765beb1ad59aa6038dd2f5b86bb79818381",796408866)))
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

			getgenv()[(decode_string_v1("e88e842b32bc144c4fbfea0fd8b37713aebd76d0e4",1067159553))] = true

			-- The ones with the spaces between .lua are the ones that I don't want to be loaded rn as they're not complete.
            do
    local json = {}
    local function kind_of(obj)
      if typeof(obj) == (decode_string_v1("2acbed2008a7",2125400260)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("d9924df4e1913a",1982056544)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("0d6e318c7fee38",2104180015)) then return typeof(obj), obj end
      if type(obj) ~= (decode_string_v1("7b689d7abb",843531163)) then return type(obj) end
      local i = 1
      for _ in pairs(obj) do
        if obj[i] ~= nil then i = i + 1 else return (decode_string_v1("8bf075cca6",198610758)) end
      end
      if i == 1 then return (decode_string_v1("f398b38aa4",1959784902)) else return (decode_string_v1("18675860fd",140411202)) end
    end
    
    local function escape_str(s)
      local in_char  = {(decode_string_v1("cb",2134343877)), (decode_string_v1("ee",1469073797)), (decode_string_v1("46",198312148)), (decode_string_v1("6f",830745535)), (decode_string_v1("c3",646048696)), (decode_string_v1("8d",1023148898)), (decode_string_v1("af",1641607328)), (decode_string_v1("b1",1419405042))}
      local out_char = {(decode_string_v1("ab",655485893)), (decode_string_v1("7d",880363887)), (decode_string_v1("a1",1554140913)),  (decode_string_v1("55",908823304)),  (decode_string_v1("c9",1334346467)),  (decode_string_v1("76",19770459)),  (decode_string_v1("85",2048957340)),  (decode_string_v1("93",597627100))}
      for i, c in ipairs(in_char) do
        s = s:gsub(c, (decode_string_v1("c3",1069852046)) .. out_char[i])
      end
      return s
    end
    
    -- Returns pos, did_find; there are two cases:
    -- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
    -- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
    -- This throws an error if err_if_missing is true and the delim is not found.
    local function skip_delim(str, pos, delim, err_if_missing)
      pos = pos + #str:match((decode_string_v1("05ff7816",647765613)), pos)
      if str:sub(pos, pos) ~= delim then
        if err_if_missing then
          error((decode_string_v1("f2e8b71612366427d8",1252820788)) .. delim .. (decode_string_v1("37b0b99edda18d0cc707b8fc0a1f4d",78144834)) .. pos)
        end
        return pos, false
      end
      return pos + 1, true
    end
    
    -- Expects the given pos to be the first character after the opening quote.
    -- Returns val, pos; the returned pos is after the closing quote character.
    local function parse_str_val(str, pos, val)
      val = val or (decode_string_v1("",365835843))
      local early_end_error = (decode_string_v1("e8edb48ed6a9766111f5cff8283a11c7b3c842bfae89bb182a3eded880262d042e6fa46561fb3c2f",954293650))
      if pos > #str then error(early_end_error) end
      local c = str:sub(pos, pos)
      if c == (decode_string_v1("19",234251349))  then return val, pos + 1 end
      if c ~= (decode_string_v1("f3",422390515)) then return parse_str_val(str, pos + 1, val .. c) end
      -- We must have a \ character.
      local esc_map = {b = (decode_string_v1("60",529099805)), f = (decode_string_v1("dc",498242517)), n = (decode_string_v1("4d",1250090784)), r = (decode_string_v1("78",300840492)), t = (decode_string_v1("9f",465183783))}
      local nextc = str:sub(pos + 1, pos + 1)
      if not nextc then error(early_end_error) end
      return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
    end
    
    -- Returns val, pos; the returned pos is after the number's final character.
    local function parse_num_val(str, pos)
      local num_str = str:match((decode_string_v1("e622b3af935ea1fc38cf411767833d4649ed6dbb3af6958912",1606409801)), pos)
      local val = tonumber(num_str)
      if not val then error((decode_string_v1("60a64e8ef6bb4021843cbed179d509871ede795427ffdca00d20ec06b6d5af8624",260748713)) .. pos .. (decode_string_v1("55",1949697231))) end
      return val, pos + #num_str
    end
    
    
    -- Public values and functions.
    
    function json.stringify(obj, as_key)
      local s = {}  -- We'll build the string as an array of strings to be concatenated.
      local kind, kind_objecto = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
      if kind == (decode_string_v1("4e5ed5a9c1",852078612)) then
        if as_key then error((decode_string_v1("6f2ff913c34aa6544b2b64c586ecbe4d615659a523fd3058db97",1520239038))) end
        s[#s + 1] = (decode_string_v1("27",1508918977))
        for i, val in ipairs(obj) do
          if i > 1 then s[#s + 1] = (decode_string_v1("43a7",1763277188)) end
          s[#s + 1] = json.stringify(val)
        end
        s[#s + 1] = (decode_string_v1("6e",444716480))
      elseif kind == (decode_string_v1("1bcff37ada",409817771)) then
        if as_key then error((decode_string_v1("71007e9fa3e197b089b466a028bcb9ddb594994ba9e3f5a69f35",1646868181))) end
        s[#s + 1] = (decode_string_v1("b5",1560669684))
        for k, v in pairs(obj) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("8b5c",1908101432)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("09",353659047))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("72",1887245378))
      elseif kind == (decode_string_v1("a0bddd2856b6",9504471)) then
        return (decode_string_v1("c5",1197291285)) .. escape_str(obj) .. (decode_string_v1("39",1778997188))
      elseif kind == (decode_string_v1("fc2cc760afce",1876252073)) then
        kind_objecto = {table_type = (decode_string_v1("743d135c28ec",801654839)), kind_objecto:components()}
        if as_key then error((decode_string_v1("d58f06fc98dbc49c0e26f944c1678127b5c50169f8207d1a138e",1739857049))) end
        s[#s + 1] = (decode_string_v1("92",1758654926))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("74ec",1359284690)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("3d",2069657747))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("72",1881851583))
    elseif kind == (decode_string_v1("3d298f0354a661",1949910895)) then
        kind_objecto = {table_type = (decode_string_v1("0d6433859ec820",703391308)), kind_objecto.X, kind_objecto.Y, kind_objecto.Z}
        if as_key then error((decode_string_v1("2a0c7ede6fc0dc3d704c6c6ccdae2c7d2d7ab4cd816a356d9e87",697665881))) end
        s[#s + 1] = (decode_string_v1("a8",1112526799))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("1b8c",1979570319)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("a9",106216098))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("99",1688947455))
    elseif kind == (decode_string_v1("dd1f3d2acf8d4f",757792680)) then
        kind_objecto = {table_type = (decode_string_v1("d99825124a0490",217857218)), kind_objecto.X, kind_objecto.Y}
        if as_key then error((decode_string_v1("50c14b98c4673a6f6b9eafb087e300c8f5d7d44cfc1a90dbb04d",1214824387))) end
        s[#s + 1] = (decode_string_v1("71",499045777))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("8b5e",208360313)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("39",1124185703))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("43",1553903869))
      elseif kind == (decode_string_v1("664e8c5c4c90",1444819205)) then
        if as_key then return (decode_string_v1("51",1858075783)) .. tostring(obj) .. (decode_string_v1("f6",1729473532)) end
        return tostring(obj)
      elseif kind == (decode_string_v1("2d81c4a43e60eb",943034495)) then
        return tostring(obj)
      elseif kind == (decode_string_v1("d12101",92408114)) then
        return (decode_string_v1("eddba941",428931284))
      else
        error((decode_string_v1("f9ee301d9fdda817a189b038f075303d670d0295",1517923830)) .. kind .. (decode_string_v1("42",1661659297)))
      end
      return table.concat(s)
    end
    
    json.null = {}  -- This is a one-off table to represent the null value.
    
    function json.parse(str, pos, end_delim)
      pos = pos or 1
      if pos > #str then error((decode_string_v1("4d5306e617b6c484010851d6e453a3f387734023a104a137eb8599bc7da16421",1999394628))) end
      local pos = pos + #str:match((decode_string_v1("edb5735c",1115217430)), pos)  -- Skip whitespace.
      local first = str:sub(pos, pos)
      if first == (decode_string_v1("1f",1350389002)) then  -- Parse an object.
        local obj, key, delim_found = {}, true, true
        pos = pos + 1
        while true do
          key, pos = json.parse(str, pos, (decode_string_v1("46",2142588936)))
          if key == nil then return obj, pos end
          if not delim_found then error((decode_string_v1("d57087dc8ba16fe760b544d4b01072cb0e6096eafa65428bf67eec69e30872b9c55292",576197744))) end
          pos = skip_delim(str, pos, (decode_string_v1("89",1841178116)), true)  -- true -> error if missing.
          obj[key], pos = json.parse(str, pos)
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("9b",1334696604)))
        end
      elseif first == (decode_string_v1("48",367176192)) then  -- Parse an array.
        local arr, val, delim_found = {}, true, true
        pos = pos + 1
        while true do
          val, pos = json.parse(str, pos, (decode_string_v1("aa",1141274136)))
          if val == nil then return arr, pos end
          if not delim_found then error((decode_string_v1("0eb8d5ba934e7873db485326150cc60e2e8174c2e5113280126ecb9ddd765701c3fd",734885190))) end
          arr[#arr + 1] = val
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("ac",1386842132)))
        end
      elseif first == (decode_string_v1("a5",1304107959)) then  -- Parse a string.
        return parse_str_val(str, pos + 1)
      elseif first == (decode_string_v1("d2",324174172)) or first:match((decode_string_v1("f3fb",192186990))) then  -- Parse a number.
        return parse_num_val(str, pos)
      elseif first == end_delim then  -- End of an object or array.
        return nil, pos + 1
      else  -- Parse true, false, or null.
        local literals = {[(decode_string_v1("9c9aa92a",1692481243))] = true, [(decode_string_v1("2eabdd1080",535237173))] = false, [(decode_string_v1("d9d564b7",750030214))] = json.null}
        for lit_str, lit_val in pairs(literals) do
          local lit_end = pos + #lit_str - 1
          if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
        end
        local pos_info_str = (decode_string_v1("e784bf4402b126ad9a",934767304)) .. pos .. (decode_string_v1("41fe",1322780116)) .. str:sub(pos, pos + 10)
        error((decode_string_v1("465a3b5319770698d59595b9a96fb19608f37db8f0769386b95c059f31fab55b",1877845303)) .. pos_info_str)
      end
    end

    getgenv()[(decode_string_v1("9bd2c29e48fcb904bddca6c1",1362338509))] = json
end
            -----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

local ErrorHandlerTing = function(err)
    return warn(err)
end

getgenv().ESP_TESTING = false
do
    local Camera = workspace:WaitForChild((decode_string_v1("7164c6f0884b",1626030713)), 5)
    local Players = game[(decode_string_v1("f2eaa94c4d7cf7f6598b",1833535246))](game, (decode_string_v1("c8d6a1597999fc",1403839095)))
    local GUIService = game[(decode_string_v1("fa7720ca3de5f6c19d18",41391659))](game, (decode_string_v1("4c0443c5577c91701005",664015853)))
    local LPlayer = Players[(decode_string_v1("c4c876219654d5045e41bb",1602992871))]
    local Mouse = LPlayer:GetMouse()
    
    getgenv()[(decode_string_v1("10499b6200510f18ee90",1007953002))] = type(getgenv()[(decode_string_v1("88d00a9151c35e3ec07f",847834422))]) == (decode_string_v1("e99f6204b64e10",1941729117)) and getgenv()[(decode_string_v1("04920ac7fbab367fc2aa",215592448))] or false;
    getgenv()[(decode_string_v1("36032b9a6fb9fb13b2f7df",1985969071))] = type(getgenv()[(decode_string_v1("286267039a0ce5468cb8dd",1852580620))]) == (decode_string_v1("63396c5d13",2069410816)) and getgenv()[(decode_string_v1("26ff980e92e0a3b63899ce",1223592864))] or {};
    getgenv()[(decode_string_v1("da425696f40ca933e3",398004119))] = type(getgenv()[(decode_string_v1("6ae122e9bea6d09f5f",1884791571))]) == (decode_string_v1("bbebfb3196",1177936439)) and getgenv()[(decode_string_v1("e88c9e8d282df4a1d7",105246862))] or {};
    getgenv()[(decode_string_v1("1baca1ba2fcceed3a814bbb5b91f",2102890185))] = type(getgenv()[(decode_string_v1("b33e6e74b6a9f92b0ef016c02221",1074814927))]) == (decode_string_v1("2b279afc97",978443255)) and getgenv()[(decode_string_v1("83a5140bb13519e470509cf3dba4",1831450898))] or {};
    getgenv()[(decode_string_v1("5715a8e15ee97f0e712828209f6a4c286fd8f94ad567f0",1706421980))] = type(getgenv()[(decode_string_v1("681009cfbb12807a43a11d750192e277f6acae6b8dbfe7",387653901))]) == (decode_string_v1("8bfd1c05ab",194788382)) and getgenv()[(decode_string_v1("be4b346ce1b2a204b8dc0d8ef731a9746c8d9065deca26",1840234935))] or {};

    local PartNames = {
        [292439477] = {Root = (decode_string_v1("0c4b6e3105",1613694152)), Head = (decode_string_v1("3f724bc7",953243755))},
        [3233893879] = {Root = (decode_string_v1("50012bf092",407134499)), Head = (decode_string_v1("8ff8b353",849583482))}
    }
    
    if PartNames[game.PlaceId] ~= nil then
        getgenv()[(decode_string_v1("12bc01059f55ef0c278ebf3f70bd8e8b33fd90",1207302878))] = type(getgenv()[(decode_string_v1("070587d79d102cb0bdba276a076f06dde55f8a",455122495))]) == (decode_string_v1("9c25a08564",1672807979)) and getgenv()[(decode_string_v1("6c444066423d93396248532a4f1d09a8be6b21",973940316))] or {}

        for _, V in pairs(getgc(true)) do
            local GBPCheck = type(V) == (decode_string_v1("e4f2b3a8c9",156212492)) and rawget(V, (decode_string_v1("92937f8bae72481e15d02169",610909740))) and V or nil
            local GetCharCheck = type(V) == (decode_string_v1("e42d540132",1392540496)) and rawget(V, (decode_string_v1("3017deb8642248116d8205a7",1249634402))) and V or nil
            local BadBussinessTeamCheck = type(V) == (decode_string_v1("5b332dc9b8",2034706241)) and rawget(V, (decode_string_v1("3dd6029c60ff3be5ccc84971f3",550907863))) and V or nil

            if GBPCheck then
                getgenv()[(decode_string_v1("6f533977c8985ae91576f5b95127cb641bf48e",18570539))][(decode_string_v1("29b3f7c0933e30a9be3b1b8e",1558211530))] = getgenv()[(decode_string_v1("8b88f0b625d41ea38f1fc5c6abaa57ea8844ca",1443903333))][(decode_string_v1("b609088195fcde7f1c13ef83",982750192))] or GBPCheck.getbodyparts
            end

            if GetCharCheck then
                getgenv()[(decode_string_v1("44cd2c8926096c72d75a91832db9250332c846",909287355))][(decode_string_v1("2edb77a4d5f5585665fedd5d",1143819518))] = getgenv()[(decode_string_v1("740ea2e11d67283d2784bd2422fecc19e020ad",795583172))][(decode_string_v1("498cc574732407cbb0478ebc",1542291996))] or GetCharCheck
            end

            if BadBussinessTeamCheck then
                getgenv()[(decode_string_v1("0e915b4dd62d1f4bb575448b0a3edc49f76004",81470790))][(decode_string_v1("ea4de46da54f90e4447b6eafc3",1003120678))] = getgenv()[(decode_string_v1("fe5a9e992347fbce5c534715979de14fe9062c",1065443036))][(decode_string_v1("5c838b1b80db3775f99cdc7582",772415574))] or BadBussinessTeamCheck
            end
        end
    end

    local function GetPlrTeam(Plr)
        if typeof(Plr) == (decode_string_v1("da01a06b28f4988f",598381212)) then
            if game.PlaceId == 3233893879 then
                if getgenv()[(decode_string_v1("be980e5a56eaba203ed4620030d92fd021b000",1859245095))][(decode_string_v1("18e5cd6d5c9f2aeaed010ca726",119201958))] ~= nil then
                    return getgenv()[(decode_string_v1("c0fa28bae80a0976a786226fe6c40cfc038e9a",1992622226))][(decode_string_v1("1229e0f9a95e97b4645a6a441b",843261761))]:GetPlayerTeam(Plr)
                else
                    return Plr.Team
                end
            else
                return Plr.Team
            end
        end
    end

    local function GetChar_Ez(Plr)
        if typeof(Plr) == (decode_string_v1("9d3bd0edb8b3d9bb",1502551337)) then
            if not PartNames[game.PlaceId] then
                if Plr:IsA((decode_string_v1("a9c918b564",1678863904))) then
                    return Plr
                else
                    return Plr.Character
                end
            elseif game.PlaceId == 3233893879 then
                -- Bad business moment

                if type(getgenv()[(decode_string_v1("a084bed30379b1658183b4cf01c5f83cbfde2f",444325682))][(decode_string_v1("100d3cee6dd7f4d7bdb13773",1029516805))]) == (decode_string_v1("a367eb2355",1024293486)) then
                    local PlrParts = getgenv()[(decode_string_v1("282af7f9ac51879d3965b5979bcc522900e33c",2140557835))][(decode_string_v1("4995fd620f6b14d6004bfca4",1580905680))]:GetCharacter(Plr)
                    if PlrParts ~= nil then
                        return PlrParts.Body
                    end
                end
            elseif game.PlaceId == 292439477 then
                -- Phantom Forces moment

                if type(getgenv()[(decode_string_v1("a6bf56f038abb55b999f884c8d67a8f25d2efb",2015636262))][(decode_string_v1("dca74a7e8c52538342ef63a9",995931899))]) == (decode_string_v1("3d4d8c09242d73bb",420629397)) then
                    local PlrParts = getgenv()[(decode_string_v1("6c9e6d8c6e3d68d670d9e4a8e40a3b28d67960",965201468))][(decode_string_v1("d029522b0d8fc466990f7fd7",803720340))](Plr)
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

    getgenv()[(decode_string_v1("5e0a570eb9bcafbea9",713007728))].SETTINGS = {
        BOXES_ENABLED = false,
        TRACERS_ENABLED = false,
        TEAM_CHECK = false,
        AIMBOT_ENABLED = false,
        AIMBOT_TEAM_CHECK_ENABLED = false,
        ESP_COLOR = Color3.fromRGB(255, 255, 255)
    }

    getgenv()[(decode_string_v1("2e0bc7b3ea2544ce35",601866088))].Connect = function()
        getgenv()[(decode_string_v1("f2864b61f843554737",138201197))].UnLoad = function()
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("d529705ff968719901499a70a866456f7b50b82be7a9a3",63366492))]) do
                pcall(function()
                    CachedItem:Remove()
                    getgenv()[(decode_string_v1("c0b1bd6b5c38056fe338bdd4350e9d2eb6d3cb4f590265",1960362512))][CacheName] = nil
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("51598a0800a0ec88c5c8c6",559699676))]) do
                if tostring(CacheName):find((decode_string_v1("6ea3237853",329169883))) then
                    getgenv()[(decode_string_v1("fe48cc5711857fd9e6ba90",1270667142))][CacheName] = nil
                end
            end
        end

        getgenv()[(decode_string_v1("240f96eca8dd571370",761833765))].UnLoadType = function(TypeString)
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("a60470c2f55df85ed416ddbe070088e3cc107f1b8fa3a4",2041845627))]) do
                pcall(function()
                    if tostring(CacheName):find(tostring(TypeString)) then
                        CachedItem:Remove()
                        getgenv()[(decode_string_v1("57e7803048405a6d4532c391d0039cce20f8f4bf5a1967",559217734))][CacheName] = nil
                    end
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("f9ac862047d5e08c1168c5",1538882004))]) do
                if tostring(CacheName):find(tostring(TypeString)) then
                    getgenv()[(decode_string_v1("2cd261ca62b13bafbddd23",347719505))][CacheName] = nil
                end
            end
        end
        
        getgenv()[(decode_string_v1("0c7b981916855b92b5",704004223))].UnLoad()

        getgenv()[(decode_string_v1("7a5db505264fdb60d6",320478529))].UpdateColor = function(Color)
            getgenv()[(decode_string_v1("cc65445837cde80dde",1142141368))].SETTINGS.ESP_COLOR = typeof(Color) == (decode_string_v1("05f2eccd7e7f",153308752)) and Color or Color3.fromRGB(255, 255, 255)
        end

        getgenv()[(decode_string_v1("bc4adf89cfb312b56f",807535950))].SetTeamCheck = function(Bool)
            getgenv()[(decode_string_v1("d3dd4d8e6e9de8b0b0",64250404))].SETTINGS.TEAM_CHECK = type(Bool) == (decode_string_v1("0a41a350269580",1602733042)) and Bool or false
        end
        
        getgenv()[(decode_string_v1("42c389e2a617ea1aec",1133902966))].SetBoxVisibility = function(Bool)
            getgenv()[(decode_string_v1("ada12817b64d328b10",483715703))].SETTINGS.BOXES_ENABLED = type(Bool) == (decode_string_v1("d94491be9c5896",1148232517)) and Bool or false
        end

        getgenv()[(decode_string_v1("6c8cb0de2883a7fa53",103018633))].SetTracersVisibility = function(Bool)
            getgenv()[(decode_string_v1("747d592391ee5677ba",1925255117))].SETTINGS.TRACERS_ENABLED = type(Bool) == (decode_string_v1("f970e7c3f72434",343706786)) and Bool or false
        end

        getgenv()[(decode_string_v1("069d3db8cd408ba475",1962662038))].LoadTracers = function(Plr)
            if getgenv()[(decode_string_v1("dea9e230b61ed8d80e0681",1792658818))][Plr.Name .. (decode_string_v1("2f0584ce8a80f13a8173300a",1587897559))] == nil then
                if getgenv()[(decode_string_v1("a67157afaf4b398b232434a3e224c6270420e39e7826f5",2018235363))][Plr.Name .. (decode_string_v1("fd761aae718d9010c017732b",163171794))] == nil then
                    getgenv()[(decode_string_v1("334c3092dd6e44089cc7093ae5c89b2b83fd373235ed29",1584430936))][Plr.Name .. (decode_string_v1("d8584c6553221769697ddd31",268379484))] = Drawing.new((decode_string_v1("1bd0ae74",1162372683)))
                    getgenv()[(decode_string_v1("9ce4b751b078a1a4e9b1111591703e25c7677a4e858d1f",852697995))][Plr.Name .. (decode_string_v1("d6b1ce4582e0da6b62445207",1261738943))].Visible = false
                    getgenv()[(decode_string_v1("5af857882d64f453131d2b68a1e393c587a67e788a6850",1761115347))][Plr.Name .. (decode_string_v1("007daa2b980cd7e7631523c0",1886388112))].Thickness = 2;
                    getgenv()[(decode_string_v1("5aada0c68f5d5b59c0c9525c8bc6cc0491ed895ef64241",1787977287))][Plr.Name .. (decode_string_v1("94333979ea6a992fbfe7438f",1997876531))].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                end

                getgenv()[(decode_string_v1("51992c4927c32c723bdd50",562365873))][Plr.Name .. (decode_string_v1("e8b4d8ff4f2381fafcaf29bc",301994537))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("96b352af076cd4bcac7f05534f9a35af029887f25a805a",112575423))][Plr.Name .. (decode_string_v1("ac11a77cc3a25d46ca027575",820880532))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("5b2af7fa3e",672964406)) and PartNames[game.PlaceId].Root or (decode_string_v1("b076ed87a0ba721bcfd5a524582a297c",1475142382)))
                            local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("1b31ef787d",45654280)) and PartNames[game.PlaceId].Head or (decode_string_v1("d03c96f0",1721422040)))
                            
                            if RootCheck and Plrhead then
                                if getgenv()[(decode_string_v1("fa7188c1c8cdf5560d6d032344c1e33d7e9c2cf26db990",815080361))][Plr.Name .. (decode_string_v1("4ab746513849187bddac1079",278912790))] then
                                    local Line = getgenv()[(decode_string_v1("5a3be98701589b429da22c898d9f0bdd2ed020d69ee333",588158178))][Plr.Name .. (decode_string_v1("d6433df5a8bba87d980f75e1",1258573396))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                                    local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                                    Line.To = Vector2.new(LinePos.X, LinePos.Y)
                                    Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                                    Line.Color = typeof(getgenv()[(decode_string_v1("ff9c097b8338a605ae",1458047045))].SETTINGS.ESP_COLOR) == (decode_string_v1("86cacb25a172",1337884312)) and getgenv()[(decode_string_v1("8820250256e6e9b98d",729931557))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("82d55d0646711a188d",681790073))].SETTINGS.TEAM_CHECK then
                                        Line.Visible = false
                                    else
                                        Line.Visible = getgenv()[(decode_string_v1("23a28c22d8a9690df7",1373754498))].SETTINGS.TRACERS_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("079f554c382cea6dc2fee896272946227f238d844827c6",453483234))][Plr.Name .. (decode_string_v1("60565f57a017b25ecfbfcbc6",1298871971))] then
                                getgenv()[(decode_string_v1("2854f14eb67078e429c4a565f28b10777ae0b3f2f78e70",2127217264))][Plr.Name .. (decode_string_v1("52ae1ddb9f4f0b98d1a2f18a",896917031))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("8cefd4d633918b2339fd01",1264149679))][Plr.Name .. (decode_string_v1("3c51b029829078a7441f6dd1",936876047))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("0c35a679e8de1a44f84e9a5aa7b6a5f70fb289f86a1117",1189178178))][Plr.Name .. (decode_string_v1("b993ebcdc8882464147f5fcd",1717632673))] then
                            getgenv()[(decode_string_v1("33a02f7a1bd9ff1e6ad97fdb5766c8c2a414891b2bfb70",1591607008))][Plr.Name .. (decode_string_v1("50336840e3b8c876fb5e5dea",1195319589))]:Remove()
                            getgenv()[(decode_string_v1("00968d09d4bec9bf44b25c3164f0c3f6ae54b749bbeebf",1110616610))][Plr.Name .. (decode_string_v1("2ffb7842555f44690a7107d3",1588378856))] = nil
                        end
                    end
                end
            end
        end
--GetPlayerTeam
        getgenv()[(decode_string_v1("29dd2d36341f2e216f",1528922539))].LoadBox = function(Plr)
            if getgenv()[(decode_string_v1("fef46f5b99af8860fd6139",1275056252))][Plr.Name .. (decode_string_v1("6ea30625daa182979525",985629975))] == nil then
                if getgenv()[(decode_string_v1("b80ac38fae2e676534e8f6502da69862e0b823faaf87ca",1280553357))][Plr.Name .. (decode_string_v1("329217d65d3d4b569ae0",74716243))] == nil then
                    getgenv()[(decode_string_v1("a460a35a1edc2c83698e33a5d5aaf0b140b723dd3dc8fa",693567338))][Plr.Name .. (decode_string_v1("946ec26ff4016262caec",1974505311))] = Drawing.new((decode_string_v1("0c25e6700555",855426181)));
                    getgenv()[(decode_string_v1("2d04efcc47052315ff675a28420da11b6b1e3bacde39ac",1580834314))][Plr.Name .. (decode_string_v1("c81488dc1a89b8b8355b",2054524499))].Thickness = 2;
                    getgenv()[(decode_string_v1("c08cd94f911a75babaac8a2cde79984f5af1b466e6e122",1981758298))][Plr.Name .. (decode_string_v1("2f0f9ef1f889e3666391",1599660590))].Filled = false;
                    getgenv()[(decode_string_v1("e4ca0a209c38840a88419040673d2665cc293b17fb2499",1134240042))][Plr.Name .. (decode_string_v1("020cce53c16c2fd36a8f",1228700134))].Visible = false;
                end

                getgenv()[(decode_string_v1("72c75ed0e176f33961a49f",2060786185))][Plr.Name .. (decode_string_v1("9490af0c864a8d86ac35",657288937))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("5e67c5082db842dc237f942e4f925dbb462ed02d734644",841210417))][Plr.Name .. (decode_string_v1("5c38a04a7ecff2684665",1162249925))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("e404d79f64",466679480)) and PartNames[game.PlaceId].Root or (decode_string_v1("0f3799c70b7175a238ff87c4af035621",961112598)))
                            
                            if RootCheck then
                                if getgenv()[(decode_string_v1("f6d3aaa76ab7981d7ecddca30f723890a1a6d8acb7d7d0",781607472))][Plr.Name .. (decode_string_v1("00b4ca619cbbf617acad",1881562216))] then
                                    local Inset = GUIService:GetGuiInset();
                                    local Box = getgenv()[(decode_string_v1("6f2152128d77d8510e0282894246c89554d8960de389dd",1511512665))][Plr.Name .. (decode_string_v1("1c5f13221eb6ed48b92c",2135731107))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                                    Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                                    Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                                    Box.Color = typeof(getgenv()[(decode_string_v1("b8b7ba09611e9a2fbb",844128712))].SETTINGS.ESP_COLOR) == (decode_string_v1("d5d56b49a270",190959659)) and getgenv()[(decode_string_v1("01988c935626b9a383",189421077))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("c58cab9c83aa8bbc98",1607316448))].SETTINGS.TEAM_CHECK then
                                        Box.Visible = false
                                    else
                                        Box.Visible = getgenv()[(decode_string_v1("237cab80befa60a08f",461111450))].SETTINGS.BOXES_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("fcb7965605272e19b8f654ad38495663c2a6589bc27cf8",1899107656))][Plr.Name .. (decode_string_v1("4a1adc1fdea326f11b48",841334920))] then
                                getgenv()[(decode_string_v1("caab8a7ba5245ff5357b2abaeb142c3008cd3826bdebbd",920596259))][Plr.Name .. (decode_string_v1("861650362a775c28ddca",2115774126))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("f90374dc292a43e8c5d9c7",1525146935))][Plr.Name .. (decode_string_v1("9400ad6d3f4be6b56928",1985368781))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("2d2d77ae3d2ecbac32561f0bfaafa143746347186d50e3",1546228728))][Plr.Name .. (decode_string_v1("c6fbb92acd97464e3db6",1142255794))] then
                            getgenv()[(decode_string_v1("6fd618ccb1fa97fa91730655870c5e515baf60c3f1bc8e",1498259754))][Plr.Name .. (decode_string_v1("9b0423ed095d682c6dbd",1511515363))]:Remove()
                            getgenv()[(decode_string_v1("be1fd71cc251714091211ae4bb2d1af60e4da0cfd31bfc",1855166526))][Plr.Name .. (decode_string_v1("9bb484dbb99783913300",56260993))] = nil
                        end
                    end
                end
            end
        end

        getgenv()[(decode_string_v1("e29b080c5a8ed036a2",916012470))].LoadFov = function()
        end

        if getgenv().ESP_TESTING == true then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= LPlayer then
                    getgenv()[(decode_string_v1("2ef283c37e4695d3b9",1813256638))].LoadBox(Plr)
                    getgenv()[(decode_string_v1("f0730291e5973f4172",1123919004))].LoadTracers(Plr)
                end
            end
        end

        if getgenv()[(decode_string_v1("23230b0c7b8e0cb32d",1407286864))].RemovedAndAdded == nil then
            getgenv()[(decode_string_v1("58aac45f42784eae00",1834520614))].RemovedAndAdded = true

            Players.PlayerAdded:Connect(function(Plr)
                if getgenv()[(decode_string_v1("8233c1e3174c152da8",690353022))].SETTINGS.BOXES_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("9079a5b120cf55a71d",899685669))].LoadBox(Plr)
                end

                if getgenv()[(decode_string_v1("24763a01060348b04d",754886125))].SETTINGS.TRACERS_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("2e32efa8b0bc4346f9",202394018))].LoadTracers(Plr)
                end
            end)
        end
    end
    
    getgenv()[(decode_string_v1("f000bce59a57510967",372433090))].Connect()

    getgenv()[(decode_string_v1("013ca594b9907c51dd",1694671018))].Aimbot = function()
        local Proxy = newproxy(true);
        local MetaTable = getmetatable(Proxy);

        local function AimAtPlayer(Camera, Mouse, target)
            local TARGETPOS = Camera:WorldToScreenPoint(target.Position)
            local GOTO = Vector2.new((TARGETPOS.X - Mouse.X) * .15, (TARGETPOS.Y - Mouse.Y) * .15)
            mousemoverel(GOTO.X, GOTO.Y) -- Quick math for the aim function lmao
        end

        getgenv()[(decode_string_v1("2b462087bb4484e05f874f",524754105))].AimBot = nil

        MetaTable.Start = function()
            getgenv()[(decode_string_v1("0416dce9719b8f405aa6ba",214591086))].AimBot = nil
            if getgenv()[(decode_string_v1("640dda3e5a884b8e49b57d",290207674))].AimBot == nil then

                getgenv()[(decode_string_v1("f9bc25403288530f0dba91",167858054))].AimBot = function()
                    local LastDistance = 999999
                    for _, FPlayer in ipairs(Players:GetPlayers()) do
                        if FPlayer ~= LPlayer then

                            local TeamCheck = tostring(GetPlrTeam(FPlayer)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("ffde3547fa28fab99a",163963491))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
                            if not TeamCheck then
                                local FChar = GetChar_Ez(FPlayer)

                                if FChar then
                                    local HeadCheck = FChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("eb15615a20",1943236583)) and PartNames[game.PlaceId].Head or (decode_string_v1("a04ddfb2",1603691607)))

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
            getgenv()[(decode_string_v1("e2e137a43c5d21677c0641",415351597))].AimBot = nil
        end

        MetaTable.TeamCheck = function(Bool)
            getgenv()[(decode_string_v1("c6f1a7611b41f773a6",1113485920))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
        end

        return MetaTable
    end

    if getgenv().ESP_TESTING == true then
        getgenv()[(decode_string_v1("5c15ddf8830bf89376",1749439133))].SetTracersVisibility(true)
        getgenv()[(decode_string_v1("01ec4c029c6fd99527",1701679601))].SetBoxVisibility(true)
        getgenv()[(decode_string_v1("adf3e102a77c9e7822",1448539788))].SetTeamCheck(false)
        getgenv()[(decode_string_v1("36bd8a132552a17394",777826601))].UpdateColor(Color3.fromRGB(79, 22, 201))
    end

    if not getgenv()[(decode_string_v1("cc8f9f6727039d2613ca",806551941))] then
        getgenv()[(decode_string_v1("138dc78e2314b88f9318",5748556))] = true
        local RunService = game[(decode_string_v1("a44f0861e688124e631a",830183841))](game, (decode_string_v1("4df99adaa67fff50ea42",1990865580)))
        RunService.Heartbeat:Connect(function()
            for _, Function in pairs(getgenv()[(decode_string_v1("55a945ec3df216156d88df",530410202))]) do
                if type(Function) == (decode_string_v1("050138ae3bd6d75f",93606339)) then
                    xpcall(Function, ErrorHandlerTing)
                end
            end
        end)
    end
end
            --Timber. lua_compile_spot
            --PhantomForces. lua_compile_spot
            --BloxBurg. lua_compile_spot
            local VRService = game:GetService((decode_string_v1("51a667ef600e16c001",1298257622)))

do
    local function WorldZeroInit()
        local MarketService = game:GetService((decode_string_v1("24e90a2e56fe086facf1d9184830edeece17",1038291284)))
        local VRService = game:GetService((decode_string_v1("c24f696ece973c58ab8b36",1713559772)))
    
        local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
        if isSuccessful then
            if info.Creator.Name == (decode_string_v1("bc34c5a5a0106823bab47b200e",41118355)) then
                --

                getgenv()[(decode_string_v1("720f6cd79610ff84ed29683637c82e12e03ee16f8d",2047738196))] = false
            
                --------------------------------------------------------------------------------------------
        
                getgenv().UpdateLoop = type(getgenv().UpdateLoop) == (decode_string_v1("d9d01b0efde53a",1144877349)) and getgenv().UpdateLoop or false;
                getgenv().UpdateCache = type(getgenv().UpdateCache) == (decode_string_v1("2c888986a6",1620561271)) and getgenv().UpdateCache or {};
                getgenv().MOB_ESP_OBJECTS = type(getgenv().MOB_ESP_OBJECTS) == (decode_string_v1("3c67922119",1526462926)) and getgenv().MOB_ESP_OBJECTS or {};
                getgenv().MOB_ESP_CONNECTIONS = type(getgenv().MOB_ESP_CONNECTIONS) == (decode_string_v1("7be06fa26c",1289891886)) and getgenv().MOB_ESP_CONNECTIONS or {};
        
                local GameConfigFile = GetGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("b2cade99cd",1466736761)))
                Settings_Name = (decode_string_v1("4a9eb4944830d593980de38e46d29732c68223c466c3743fb6f554",1116455822))

                getgenv()[Settings_Name] = {
                    AutoAttackMobs = GameConfigFile.AutoAttackMobs or false,
                    AutoPickupCoins = GameConfigFile.AutoPickupCoins or false,
                    AntiIdle = GameConfigFile.AntiIdle or false,
                    MobESP = GameConfigFile.MobESP or false,
                    MobESPRenderDistance = GameConfigFile.MobESPRenderDistance or 250
                }
                
                Window = UILibrary.new((decode_string_v1("e3595246a781eaed8c70224f14a7095449e5d0d00bd10c",1523214591)), 5013109572)
    
                local TweenService = game:GetService((decode_string_v1("9c85ec6163a3bef0a56cd4b2",1519807528)))
                local Player = game.Players.LocalPlayer
                local Character = nil
                local PlayerPosition = nil
                local PlayerLookVector = nil
                local RootPart = nil
                local ItemTable = nil
                
                local ActionsModule = require(game.ReplicatedStorage.Client.Actions);
                local CombatModule = require(game.ReplicatedStorage.Shared.Combat);
                local AnimationModule = require(game.ReplicatedStorage.Client.Animations);
        
                local MobsFolder = workspace:FindFirstChild((decode_string_v1("6f140a7e",1629211491)))
                --[===[local PlayerWindow = Window:addPage("Player", 5012544693)]===]
                local AutoFarmWindow = Window:addPage((decode_string_v1("187631aa09400dabfc",115824160)), 5012544693)
                local VisualsWindow = Window:addPage((decode_string_v1("229c0ba97ff206",460061893)), 5012544693)
                local TeleportsWindow = Window:addPage((decode_string_v1("cbc0efb00a259fdb91",1937571581)), 5012544693)
                local AutoFarmSection = AutoFarmWindow:addSection((decode_string_v1("be687c277189119d",1436855359)), 5012544693)
                local VisualsSection = VisualsWindow:addSection((decode_string_v1("0184b7f2882344e2",107467445)), 5012544693)

                local Camera = workspace.Camera
                local GUIService = game[(decode_string_v1("ee0104647fea4d93586d",696719859))](game, (decode_string_v1("493e34e82f734aea4517",522209838)))
                
                local function GetNearMobs()

                    local Mobs = {}
                    local HitBoxSize = Vector3.new(25, 15, 25)

                    if RootPart then

                        local MobParams = OverlapParams.new()
                        MobParams.FilterDescendantsInstances = MobsFolder:GetChildren()
                        MobParams.CollisionGroup = (decode_string_v1("43c1f3faf8da5a",2133061030))
                        MobParams.FilterType = Enum.RaycastFilterType.Whitelist

                        local FoundInBox = workspace:GetPartBoundsInBox(RootPart.CFrame, HitBoxSize, MobParams)

                        if FoundInBox ~= nil then
                            for _, Part in ipairs(FoundInBox) do
                                if Part:IsA((decode_string_v1("bd4b070c0daa2337",996907661))) then
                                    if Part.Name == (decode_string_v1("78eedcf22cf1a660",274902890)) then
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
                                Box = Drawing.new((decode_string_v1("886de28d8b5b",1807654717))),
                                ESPText = Drawing.new((decode_string_v1("dbbfd059",837576393)))
                            }
    
                            local Box =  getgenv().MOB_ESP_OBJECTS[Mob].Box
                            local ESPText =  getgenv().MOB_ESP_OBJECTS[Mob].ESPText
    
                            ESPText.Text = (decode_string_v1("",1599122367))
                            ESPText.Color = Color3.fromRGB(255, 255, 255);
                            ESPText.Size = 20.0
                            ESPText.Visible = false
                            ESPText.Outline = true
                            ESPText.Center = true
    
                            Box.Thickness = 2;
                            Box.Filled = false;
                            Box.Visible = false;
                            
                            getgenv().UpdateCache[Mob] = function()
                                local Collider = Mob:FindFirstChild((decode_string_v1("b4b79fba99f7e73e",1252669231)))

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
    
                                    ESPText.Text = string.format((decode_string_v1("11cb14c2191d9370d000c7f7bc96f4b0a2d0e59b3d91efa9",1473812022)), Mob.Name, tostring( math.floor( (MobPos - PlayerPosition).Magnitude ) ) )
    
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
    
                                            local CreatureHealthFolder = Mob:FindFirstChild((decode_string_v1("1ffa6c496bb39a927593e9820ff73793",1322385465)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("0ff1125c87d8",967931064)))
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
                            if typeof(V) == (decode_string_v1("61d68c8f537e8981e65cd1dc22c93365ea726b",957864827)) then
                                V:Disconnect()
                                getgenv().MOB_ESP_CONNECTIONS[I] = nil
                            end
                        end
                    end

                    ESP_META.StartConnections = function()
                        ESP_META.EndConnections()

                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("84bf8318adfeb0ea",1256024141))] = MobsFolder.ChildAdded:Connect(function(Mob)
                            ESP_META.AddEsp(Mob)
                        end)
        
                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("949209f4f9bfa8ff6cf8",696328396))] = MobsFolder.ChildRemoved:Connect(function(Mob)
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
                
                getgenv()[(decode_string_v1("80204cd3f056b4acd8bcb3",2036582605))][(decode_string_v1("d835cb94d9ff5a48272b6a2569b45465",202660316))] = function()
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

                getgenv().UpdateCache[(decode_string_v1("da07ff8ec1133a054c7a",1190408581))] = function()
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
                
                VisualsSection:addSlider((decode_string_v1("bbb81c5f06769e61ca36ebea0cfd27ac148e89",1564930455)), getgenv()[Settings_Name].MobESPRenderDistance, 250, 10000, function(NewValue)
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

                VisualsSection:addToggle((decode_string_v1("a9c69cfff833f0",1685631677)), getgenv()[Settings_Name].MobESP, function(Bool)
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

                AutoFarmSection:addToggle((decode_string_v1("fccae0a9c3bbd484639cba29df9b53e5e23ce40f4de5116702fd3bf19d71308483c10f",903828371)), getgenv()[Settings_Name].AutoAttackMobs, function(Bool)
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
                                            local CreatureHealthFolder = Creature:FindFirstChild((decode_string_v1("10125418da55c6bca845ea21ac271b38",173663506)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("df7735152839",233931540)))
                                                
                                                if CreatureHealth then
                                                    
                                                    if CreatureHealth.Value > 0 then
                                                        local CreaturePos = Creature:GetPivot();
    
                                                        --local v14 = AnimationModule:GetAnims().Defender["Attack" .. tostring(AttackIndex)];
                                                        if not ActionsModule:IsBusy() then
                                                            TotalHits = TotalHits + 1
    
                                                            --ActionsModule:FireSkillUsedSignal("Primary");
                                                            --ActionsModule:FireCooldown("Primary");
                                                            ActionsModule:SetBusy((decode_string_v1("f51705a233",1377104385)));
                                                        
                                                            if Character then
                                                                PlayerPosition = Character.PrimaryPart.Position
                                                                PlayerLookVector = Character.PrimaryPart.CFrame.LookVector
                                                                RootPart = Character.PrimaryPart
                                                            end
    
                                                            RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
                                                            Camera.CFrame = CFrame.new(Camera.CFrame.p, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
    
                                                            CombatModule:AttackWithSkill((decode_string_v1("f4db18546391984e",521399727)) .. tostring(AttackIndex), PlayerPosition, CFrame.new(PlayerPosition, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z)).LookVector * 1.1 );
                                                            
                                                            AttackIndex = math.clamp(AttackIndex + 1, 1, 6)
    
                                                            if AttackIndex > 5 then
                                                                AttackIndex = 1
                                                            end

                                                            CreatureIndex = CreatureIndex + 1
    
                                                            task.wait(0.01)
                                                            ActionsModule:ReleaseBusy((decode_string_v1("6af5dbedab",1777304487)));
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
                    if A:IsA((decode_string_v1("a994764685",1690735295))) then
                        if tostring(A) == (decode_string_v1("1251351069",1508796408)) then
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
    
                AutoFarmSection:addToggle((decode_string_v1("f2bd3af936116b0f",79839349)), getgenv()[Settings_Name].AntiIdle, function(Bool)
                    getgenv()[Settings_Name].AntiIdle = Bool
                end)
    
                AutoFarmSection:addToggle((decode_string_v1("821bb47ee341416c484ed807b69291b10bf637a011f6c4ffe0a4",199946429)), getgenv()[Settings_Name].AutoPickupCoins, function(Bool)
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
        
                if not getgenv()[(decode_string_v1("6c5c9b6dab6bd97ed68e",1786314957))] then
                    getgenv()[(decode_string_v1("72ed3ac2c8bd4a5c9ebf",2059137386))] = true
                    RunService.Heartbeat:Connect(function()
                        for _, Function in pairs(getgenv()[(decode_string_v1("de2f5d68018b3e3fcb99b3",1799346205))]) do
                            if type(Function) == (decode_string_v1("85e41c7881603be5",143735529)) then
                                pcall(Function)
                            end
                        end
                    end)
                end
        
                print((decode_string_v1("c10085afb8fe022f893f740abcd8d01261fc97f9a1",575713911)))
                --
            end
        end    
    end
    
    WorldZeroInit()

    local _Players = game:GetService((decode_string_v1("c8da76ff7c059b",1406774573)))
    local _Player = _Players.LocalPlayer
    
    local queue_on_teleport = type(syn) == (decode_string_v1("c3790afcc8",738669457)) and syn.queue_on_teleport or queue_on_teleport
    
    local RejoinCode = (decode_string_v1("7726713d4ace71b2090efb79c0e9edd440388b49be9cc6b6f707ad24addec5f9a82ee879dc4a10063437d6875afa0baa130401de48e179b074f4ca49119cb8b939c08a6fcc1682aeca82817cf191b00acf14b1ae169bf065a8ce39550997b1888fea7d678125b3eb866e47da3803e83d31ce88360f0a5664885a33c071403b537bf2d8a2d3e07fdb44ff51857faeb62ab0038f5bc9fb6f26c8b5e8113b45ff85e9c047ec85a03fc8af5c93d3e155fb6257320a4f44dbcca583328b54c7c8d5e294689ebc14ab8a9b72024ee1b1b81ca58f30fee81067e89555bbf0bc7686bdf887cc9f1a05607a578ed1d81b4adbe2d5b269498deb750863387820606d1f67a09eed8ed05689411a68c61b73b213053959b02436deb902265397ebf54580e14ccc4c3223bf76e81e06dac09bf9debb964d7648cd8ce8d8662bd85ccab01ad4e5674b98ac16466a77d8b3ea673878485ef4bc011dc0a5b4a8086ed34be37ae146e08b74689726d2c443c6341e6a18fd5307f4bcb109b80f33cb7164400920930df1969986b20895bc7ea0d1a11a53dd803310dcc683eccf8a4ae42efc4007b7d726b0fbfe5cd1375f5c3856f70e5eea7ae788abf5cda206e2ec746f6d20a483a991f6c9d9c2560f41547d4f1c8e50ffba17daec518f4514e508880aef86875948fe07d55ad47e1ccd75c53f60c77ef477b9ae54078391c8f07bdafee08935b92ae64924bb96c8a8d0269e52562c59136606190b3adb8ecf314eb8c090b295a88abfd70f804825ca2bc7c4b8e64475b5b8b0275301e48ef21a5d980a123be8813da6ce8c3a516483593b4542f726fed1d2013e54cb861d979b9641dae41970fa0894b8e2cc5dd9e103bba5d4d70d4daca2d59441",219247051))

    if not isfile((decode_string_v1("e45d0bc59dc04387e06da005dc71e3d7b4fd8b",22486481))) then
        writefile((decode_string_v1("d030026fc3320c6db4e1eb3ccc69ebcb58d1bf",29705924)), tostring(RejoinCode))
    end
    
    queue_on_teleport((decode_string_v1("7788ce14d342ffe7ef720f38396b797011459960dd9f5aff1e2fa57fe691d59ec75e8743de981a2a48d2be48ca45e7c34b5510a610831e2802beb4e04eda1dadec039ca01298bbc565a93963df658c3d524012bba392020658903fdc5b7d1c9545e4991f531c614d8726309f",883636720)))
end
            --DaHood. lua_compile_spot

			if getgenv()[(decode_string_v1("c426c81250e80755ab5b5d373624083b42fce76aae",1086174794))] == true then
                do
    local Players = game[(decode_string_v1("5cc0aa6bbc24054e7602",766965118))](game, (decode_string_v1("c7cdfa49edca3e",904781511)))
    local Player = Players[(decode_string_v1("5bea443f4c710c04c6a48c",821691174))]
    local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("c5ddbc480882",1858073474))], string[(decode_string_v1("f0a6b4e947",295947615))], string[(decode_string_v1("b87e33b5",69499972))], string[(decode_string_v1("dc41bafa5646",333377483))], string[(decode_string_v1("7be1739b3e",154456603))]

    Window = UILibrary.new((decode_string_v1("d88bed0e90ed9b07c985e9c99c1f30f318a922310010",1889510648)), 5013109572)

    local VisualsWindow = Window:addPage((decode_string_v1("ed28a557e69262",38203974)), 5012544693)
    local VisualsSelection = VisualsWindow:addSection((decode_string_v1("963b9a95",944602891)))

    local GameConfigFile = GetGameConfig(FixName(tostring((decode_string_v1("0e3202bca366fa4117",2146372469)))) .. (decode_string_v1("013e4009fa",405505266)))
    Settings_Name = (decode_string_v1("967d81c92ba7738cf74be2e75641d5844c23ee686984129957f8",292123635))

    getgenv()[Settings_Name] = {
        Teamcheck = GameConfigFile.Teamcheck or false,
        Boxes = GameConfigFile.Boxes or false,
        Tracers = GameConfigFile.Tracers or false,
        Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
    }

    VisualsSelection:addToggle((decode_string_v1("2eb4ca8b585e5cc619e50c2ff3",1802315329)), getgenv()[Settings_Name].Teamcheck, function(Bool)
        getgenv()[Settings_Name].Teamcheck = Bool
        getgenv()[(decode_string_v1("4e227b1f37bf933abf",1269430307))].SetTeamCheck(Bool)
    end)

    VisualsSelection:addToggle((decode_string_v1("29cb8be1bbfdab666c",168264761)), getgenv()[Settings_Name].Boxes, function(Bool)
        getgenv()[Settings_Name].Boxes = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("f6a5c875b32c036925",1218336937))].LoadBox(Plr)
                end
            end
            getgenv()[(decode_string_v1("84a938a7bca8288b9e",982300137))].SetBoxVisibility(true)
        else
            getgenv()[(decode_string_v1("bb2e9182f00a5b0c2a",1571180185))].UnLoadType((decode_string_v1("cc547145ef21ea5269fd",1044135755)))
            getgenv()[(decode_string_v1("74d0523fc49523a23a",214440195))].SetBoxVisibility(false)
        end
    end)

    VisualsSelection:addToggle((decode_string_v1("f649b61da1279c3c7d7f89",1220669289)), getgenv()[Settings_Name].Tracers, function(Bool)
        getgenv()[Settings_Name].Tracers = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("d75f4501fd6b9de814",1660556492))].LoadTracers(Plr)
                end
            end
            getgenv()[(decode_string_v1("5c0964dff575428680",595955554))].SetTracersVisibility(true)
        else
            getgenv()[(decode_string_v1("82caf54611cac31b54",2044158550))].UnLoadType((decode_string_v1("763912de6755beb6a3811967",1753609431)))
            getgenv()[(decode_string_v1("8210763ac15bab5257",690066284))].SetTracersVisibility(false)
        end
    end)

    local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color

    getgenv()[(decode_string_v1("781e466d247ee22d4e",142599355))].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

    VisualsSelection:addColorPicker((decode_string_v1("dac2fa59190e0388e5",131757682)), Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
        local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)

        getgenv()[Settings_Name].Color.R = R
        getgenv()[Settings_Name].Color.G = G
        getgenv()[Settings_Name].Color.B = B

        getgenv()[(decode_string_v1("1c53361dd6dd50ed14",1037331005))].UpdateColor(Color3.fromRGB(R, G, B))
    end)

    VisualsSelection:addButton((decode_string_v1("36a9d442c48f5f577a4c",1999010085)), function(Bool)
        getgenv()[(decode_string_v1("60ccb35b40d0a3712c",259939014))].UnLoad()
    end)
end
			end

			if Window ~= nil and Settings_Name ~= nil then
				local MarketService = game:GetService((decode_string_v1("3c557cb2d4414416cec567bad1276ea9a547",1945372327)))
				SettingsPage = SettingsPage or Window:addPage((decode_string_v1("39900d5a30e51a72",162731670)), 5012544693)
				SettingsSection = SettingsSection or SettingsPage:addSection((decode_string_v1("18a6fc2817",379419772)), 5012544693)
				SettingsSection:addButton((decode_string_v1("36fadc890b64efdaa0dd93",371421896)), function()
					local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
					if isSuccessful then
						if tostring(info.Creator.Name) == (decode_string_v1("0af64bf1af3e2ba2bbabb316f5",2022933622)) then
							SaveGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("d54a9c5a53",1092143486)), getgenv()[Settings_Name])
                        elseif getgenv()[(decode_string_v1("e81f9b83a6d9a31d19482a77b3e966172a3f0276c2",1067060148))] == true then
							SaveGameConfig(FixName(tostring((decode_string_v1("8082ebfd18eaaab91a",2031607586)))) .. (decode_string_v1("caef8e153f",1382750102)), getgenv()[Settings_Name])
                        else
							SaveGameConfig(FixName(tostring(info.Name)) .. (decode_string_v1("428832b19d",550030250)), getgenv()[Settings_Name])
						end
					end
				end)
				SettingsSection:addKeybind((decode_string_v1("0c8234771919d2c4d5e0b8bc1db2",175958764)), Enum.KeyCode.Home, function()
					Window:toggle()
				end, function()
				end)
			end
		else
			return sendError(serverData, clientData)
		end
	end
end, function(err)
	return warn(err .. (decode_string_v1("11",863451426)) .. debug.traceback())
end)