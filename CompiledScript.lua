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
		getgenv().Key = (decode_string_v1("c24f4ab8714f2a6fe6fffe87417fd5442b0a8c2c65b87ee740",874691477));
		getgenv().DiscordWebhook = (decode_string_v1("fb06429d",445131076));
		getgenv().WebhookEnabled = false;
		getgenv().GubVersion = (decode_string_v1("88aa05",1865208389));

		local CLIENT_DEOBF_OFFSET = 3;
		local SERVER_DEOBF_OFFSET = 1;
		local StartTimer = os.time()
		local UILibrary = loadstring(game:HttpGet((decode_string_v1("5fdb768e1fd598494c5e133c8fe4f15079f21fa3e9869e1c5156befe1f2c5a5d5875b00824d5126471cbc3d561b0ecf33ddcf1ec35dc88e1a8e4966dcabc199b68fb42481676ca388e33dc8026",1855146218)), true))()
		local library = loadstring(game:HttpGet((decode_string_v1("2f8dce0f8759076aa5a78686424f3b32949053420fc714a695d5da3a570d30a638c4020990cd7f2221db0a35e5eb9948b28997f9092820b6233452365920b344ccde25de67950bcc1fc22393bd545e4f8e49ca0ee1b1fd61f493eadb1ced8a79f394",2074281152))))()
		library:Notification((decode_string_v1("12dc0a4f105a63",281649804)), (decode_string_v1("c2e0704f102edb53410ee4f75c4064333d74f70485c2f8ad03f0f802bd604911c4f7c9c1371d3c3f5bba53aebbda",1417794406)), 10, Color3.fromRGB(255, 255, 255))

		if not isfolder((decode_string_v1("e42115be7ebc9d2de53f5f94b9e8",1826577483))) then
			makefolder((decode_string_v1("f21f3aa756e70ac2d8cfafe998df",1285520243)))
		end

		for i, v in pairs(game:GetService((decode_string_v1("a466b5d3d2b759",227125920))):GetDescendants()) do
			pcall(function()
				if v.Name == (decode_string_v1("baac79a4",2002517405)) then
					v.Parent.Parent:Destroy()
				end
			end)
		end

		local function identify()
			local Executor = string.lower(identifyexecutor())
			local ExecutorTable = nil
			if string.find(Executor, (decode_string_v1("be48c19bd4a257",391497341))) then
				ExecutorTable = {
					(decode_string_v1("c548eba3cac410",193561051)),
					syn.request
				}
			end
			if string.find(Executor, (decode_string_v1("d201c7d2",2118829593))) then
				ExecutorTable = {
					(decode_string_v1("09557d73",552612314)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("62669dc4",721291))) then
				ExecutorTable = {
					(decode_string_v1("0a85601e641c",1659420027)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("e051d6307633",1214950540))) then
				ExecutorTable = {
					(decode_string_v1("aaee2a48ce87ab6d259c91",1042608883)),
					http.request
				}
			end
			if string.find(Executor, (decode_string_v1("b21804",1925524850))) then
				ExecutorTable = {
					(decode_string_v1("88157956627ef0e4",1821752353)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("27cc01",397594452))) then
				ExecutorTable = {
					(decode_string_v1("e8e7f2b2968d2b1e4db2ffe4",1602316395)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("5f11a99e",1292841463))) then
				ExecutorTable = {
					(decode_string_v1("94b31d27dbdc48dbec54",2071982837)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("decf3d6d",1266061988))) then
				ExecutorTable = {
					(decode_string_v1("e308c949061fdb",1521445957)),
					httprequest
				}
			end
			if string.find(Executor, (decode_string_v1("62b4f11f3d8ea6e0",2072471408))) then
				ExecutorTable = {
					(decode_string_v1("e4b0777e329618a2",1201175898)),
					http_request
				}
			end
			if getgenv().WRD_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("49f88a396da3b61f",446676188)),
					http_request
				}
			end
			if getgenv().unlock_module ~= nil and getgenv().setscriptable ~= nil and getgenv().import ~= nil then
				ExecutorTable = {
					(decode_string_v1("6c5a0a8073e04a28398a81d4170f20",1875530167)),
					http_request
				}
			end
			if getgenv().OXYGEN_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("816b5257c47c4e2a",1562937597)),
					http_request
				}
			end
			if ExecutorTable == nil then
				library:Notification((decode_string_v1("e6388829bdb8d75824aeabb64b",1930111788)), (decode_string_v1("af7bd87aca25de112df24388032342f0bbc1e5c1dfa3cd194beb698517e98159a813262e66c3147d629c8c7daa52b278b6ba42f5092e6a0d248e40e353b883217f9ace0d13f0f16b",1460561650)), 10, Color3.fromRGB(255, 255, 255))
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
				library:Notification((decode_string_v1("051435e5c3b446f39b795d7a2140",153939676)), (decode_string_v1("f2caf61ee9cb023859945a13b8df5e6db2c1a37c1478a609c4f2c849222d62d591d70e8c9e0a1a835d37f7b6e79f9279c2c080b2b126cbb9b5fc86c98e96c91e8e934fa6cd",317704721)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("2cc1abf17030d57eee6449cfa966dde9349d3dd8efa5bd66c3ddcebdab45b8afa5db2667d8b45e5c6ac08d34f323dc86",1287089531)) then
				library:Notification((decode_string_v1("0722cee10d7f4f66206d46d3871e",1351145393)), (decode_string_v1("d752ff8022911e3dc851a40439487fbcde4ad58fb8c3997c05fe8393f5e095735466d73e6d7c65cd7fca7dd4fbca6d98197d43ab582dbc25b4",1542692061)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("ce3bfbbd2f0d34889a569127d95d74493917e45d5820960098",679878909)) then
				library:Notification((decode_string_v1("beefc6f5ea8a5a6cd5b8feb25d51",1834671200)), (decode_string_v1("8cdefadb8ce25481f4b4d4afdfd89f8cc799d7aa1c140524c6456ea1573f5613049ce7c27522bf3cca68358f1d9d4501ef64d5f943389a45d81be00414",207118510)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("b69f8eb92df64e4590c500a5f198c8ea52315f7a",1874635471)) then
				library:Notification((decode_string_v1("f92e5fdd365bc8047c08de28ca976de6",103422729)), (decode_string_v1("5c91c43623f1b634d4cf6e720e68efd770d026e00645eb0aa3164caa85c7175f9582bb71b6a1c0e4da44541e20232d9f6fd6b12c9f62de8a2c273b5dcd35f4bdf80ec7b0d6",1865644121)), 15, Color3.fromRGB(255, 255, 255))
			else
				library:Notification((decode_string_v1("c0bfc03d269157faff313264915e",1979351708)), (decode_string_v1("eb31610d334b3cc757e7cb53c3cdb2762ade116059f300748dfe1655d6cc94e3cc74d7d35a370f92d3073aedfd89920a9608850f1047097b1556c494936a055b1e1028142d9ed74891ab611aaedb118c38bf50defa673f7c12273b3723e3b4c4911102a43318e3418782b074d3780b43e5a7249f653ca9ad28",1342174724)), 15, Color3.fromRGB(255, 255, 255))
				setclipboard((decode_string_v1("6a87448c2d2bf577bd8c44b0f82ee2a43e0bb32c3491182fa055ee5d7c22daf22ed729e5835dfadf9c816e50b24b8b87cbea6bbf213b0183400bd3cec88f",1906750147)) .. clientData .. (decode_string_v1("b7f4b6f226a66bbcc8c440c3",783866905)) .. exploit .. (decode_string_v1("b78074dfd2f66236",845443971)) .. Key .. (decode_string_v1("7715b9bf114a154eaa8950f09c68f825",602980101)) .. serverData .. (decode_string_v1("774b500901974c76df9d95b23b5d1b3b7c",1000865466)) .. tostring(newtime))
			end

			specialisedrequest({
				Url = (decode_string_v1("7f1b7295c5d1bb3801046780b41d7922b97e2e59b18ca9a6c2eae3c07d",1257421101)),
				Method = (decode_string_v1("87190053",1803539394)),
				Headers = {
					[(decode_string_v1("9a117b5e722d14c930e3a81a",1036260635))] = (decode_string_v1("668ea604edede0397cda625841dfb53c",1141308209));
					[(decode_string_v1("a0dcdb5179b6",748900387))] = (decode_string_v1("9fe770d35b219609ba98d9d5b3adbfa4b62123",1227814287));
				},
				Body = game:GetService((decode_string_v1("80f2eff33a8563be72273b",151637461))):JSONEncode({
					[(decode_string_v1("bc0820",1299999051))] = (decode_string_v1("da6db15166b436e1d61a9145e1d7",609793405));
					[(decode_string_v1("78cc695e",589875242))] = {
						[(decode_string_v1("0d12c752",525162508))] = (decode_string_v1("ff5047b185eca13086fc",1452281233))
					};
					[(decode_string_v1("a1c282afa9",1102454993))] = (decode_string_v1("54882199cc4a01c29a2b7e773486c7a42e4048fe4412ce03034d2429873d21ac7d0a2d89",1859464580));
				})
			})
		end

		local random = Random.new()
		local letters = {(decode_string_v1("73",485538154)),(decode_string_v1("71",244307619)),(decode_string_v1("b5",1729227372)),(decode_string_v1("c3",1991200967)),(decode_string_v1("94",652773361)),(decode_string_v1("9a",1479523602)),(decode_string_v1("04",831168346)),(decode_string_v1("9f",261095667)),(decode_string_v1("ec",1066212273)),(decode_string_v1("7e",1563523908)),(decode_string_v1("8c",1250048493)),(decode_string_v1("23",4490215)),(decode_string_v1("a8",787469418)),(decode_string_v1("39",1082907911)),(decode_string_v1("ce",1947524446)),(decode_string_v1("67",1975603493)),(decode_string_v1("3c",1233453242)),(decode_string_v1("1d",2126396310)),(decode_string_v1("6e",354726154)),(decode_string_v1("13",821790357)),(decode_string_v1("24",1921310035)),(decode_string_v1("d5",840789757)),(decode_string_v1("1e",2084149296)),(decode_string_v1("cf",95865709)),(decode_string_v1("f2",331205939)),(decode_string_v1("fd",689221354))}

		function getRandomLetter()
			return letters[random:NextInteger(1, #letters)]
		end
		local function FixName(GameName)
			return GameName:gsub((decode_string_v1("8effb6ceeca14f8d3b283490",335380972)), (decode_string_v1("",1161857170)))
		end

		local function GetGameConfig(GameName)
			local Table = {}
			if isfolder((decode_string_v1("9db49ba35b3716aedc8460c03d5a",1654015756))) then
				if isfile((decode_string_v1("29fa73111c9534bda1c3c82f721bc3",1569674838)) .. tostring(GameName)) then
					local HttpServices = game:GetService((decode_string_v1("2fc15f41f9599cb7b65934",1276975158)))
					local ConfigContents = readfile((decode_string_v1("de368a50afe331ffb4cc0d316adbb2",1256043336)) .. tostring(GameName))
					local DecodedSuccess, DecodedContents = pcall(HttpServices.JSONDecode, HttpServices, tostring(ConfigContents))
					if DecodedSuccess then
						Table = DecodedContents
					end
				end
			end
			return Table
		end

		local function SaveGameConfig(GameName, ConfigTable)
			if isfolder((decode_string_v1("f493b1fc8ff6be1de7785c1c2c5f",709948585))) then
				local HttpServices = game:GetService((decode_string_v1("ef9876cb7c861eb9a24ec4",663252767)))
				local EncodedSuccess, EncodedContents = pcall(HttpServices.JSONEncode, HttpServices, ConfigTable)
				if EncodedSuccess then
					writefile((decode_string_v1("7752f0cdc40f76d826d794650db8cd",1617692795)) .. tostring(GameName), tostring(EncodedContents))
					return true
				end
			end
			return false
		end

		function getRandomString(length, includeCapitals)
			local length = length or 10
			local str = (decode_string_v1("",928909840))
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
				return (str_gsub(s, (decode_string_v1("8d",389960761)), function(c)
					return str_fmt((decode_string_v1("8adaea34",1896284972)), str_byte(c))
				end))
			end

			local function num2s(l, n)
				local s = (decode_string_v1("",490228017))
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
				msg = msg .. (decode_string_v1("97",615989100)) .. str_rep((decode_string_v1("18",1366082515)), extra) .. len
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

		if getgenv().Key == (decode_string_v1("",142206121)) or nil then
			Key = (decode_string_v1("a222316e",184715768))
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
			local charset = (decode_string_v1("488bcdedc03296520693bb679cdebbdbf5c7bd900cd02ed62bb986d5ea724d4309f2ddc6aa7829e8b70fe0b44043e97b78f73901ccc734468df15c5696",695326958))
			if type(v1) == (decode_string_v1("2ea7c7a2605a",1860290149)) and type(v2) == (decode_string_v1("1c3b7ed4117b",744092363)) then
				local length1, length2, chars_1, chars_2 = #v1, #v2, {}, {}
				v1:gsub((decode_string_v1("ce",1528439945)), function(s)
					chars_1[#chars_1 + 1] = s
				end)
				v2:gsub((decode_string_v1("da",1540103800)), function(s)
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
			local Pos, Finished, charCodes, Key, arglen = 1, (decode_string_v1("",2075837360)), {}, 447 - #((decode_string_v1("0069c63f4bc60571c1733f25b1e496e52d34a3cae5a01863595238592ce28e961f",17637380))), 35 - #((decode_string_v1("3c5119",1785798829)))
			local schar = Finished.char
			local Keys = {
				233 + #((decode_string_v1("8de51d",1455331143))),
				781 - #((decode_string_v1("2a2b3cd3",1836305771))),
				785 - #((decode_string_v1("4a787b82385e",772857903))),
				876 - #((decode_string_v1("c8d0bf3900e339",2068161038))),
				350 - #((decode_string_v1("03e091c89f96c15fe84e1d2a67b9ffd9790d6f",997164549))),
				23 + #((decode_string_v1("5f4f10ce49a09014ecea1f6a9e6276e5fa3df7a356d989d3800610757b297d2005",281840168))),
				111 + #((decode_string_v1("0f69d29e680d291af0a95ab58cade51ad561b8489dbc3edd89f52484c0d3285227",2145042982))),
				440 + #((decode_string_v1("4797fea1ad88d22186bd7bed",1699642753))),
				341 + #((decode_string_v1("0e6403ea",2090070697))),
				322 - #((decode_string_v1("282744b890dc1296521a91766076b2a411380ab93940de698063cbc3e9590a980b5f1b364c174e9a717a53001882ae956a690d5b935b81120cb0c66608f854359522d4892a84c384f67bd45fa9dd95ca3602ded3a974a878fe8214ef0cd3608ecf4379b03bc48f3c493a5bb9",1522478661))),
				117 + #((decode_string_v1("b1a0ff228afac5a9b0a58a85",21503218))),
				196 + #((decode_string_v1("127eeb1dbd0aa14bb7d6e62a6e76f74bb272cf",1352524409))),
				272 - #((decode_string_v1("feaae2754c0ab95e0a61",843600534))),
				653 - #((decode_string_v1("662659ae99e56a3abb408b89",1309755780))),
				510 + #((decode_string_v1("c1e33d068be6",1614615955))),
				61 + #((decode_string_v1("22eb38df2b5152776ddd",1919904304))),
				61 - #((decode_string_v1("9d1c1ccf323388217d",1451918982))),
				283 - #((decode_string_v1("00afb8c1",632987746))),
				568 - #((decode_string_v1("ea889299798a",929344094))),
				933 + #((decode_string_v1("5e14f9072e84122c72a0920f5e40",1845698658))),
				642 - #((decode_string_v1("9300b72cb306a23ee1d0",630861235))),
				651 - #((decode_string_v1("3e03785f1f0af4770a4e",431722031))),
				875 - #((decode_string_v1("fd294518",1475381874))),
				882 - #((decode_string_v1("9c737e1d7ffa",1600471076))),
				333 - #((decode_string_v1("fa066c42ec3dbc4ff952238ad99cf602ffa0",1053686207))),
				245 - #((decode_string_v1("64c72ef19c8b",142795517))),
				988 - #((decode_string_v1("a402a0612a4da0a0a8",1089342494))),
				118 + #((decode_string_v1("737158c3177c766267ad3910d14ef6f9059ca6",228929986))),
				623 + #((decode_string_v1("ecb5047150fb",1195584930))),
				629 + #((decode_string_v1("7df88e",1965203072))),
				689 - #((decode_string_v1("f1bf53b868e59d6d75c7",524967162))),
				828 - #((decode_string_v1("d59e7f1e48790df996cfea5e",1378656980))),
				76 - #((decode_string_v1("a5f9338ec58977bdea051af6",1719781940))),
				71 - #((decode_string_v1("0281ef9d580b",1319795528))),
				85 - #((decode_string_v1("336aa217278900f34f9ff40a0d4699c360d408",1247844003))),
				79 - #((decode_string_v1("8ac2a80cfce4e9aea36d6cb8",1004530221))),
				56 + #((decode_string_v1("963d94c82a33ceba971761a8",2001317722)))
			}
			getfenv(0)
			Finished.split((decode_string_v1("",1021545721)), (decode_string_v1("",1565072677)))
			while Pos <= 132 - #((decode_string_v1("701bf89e7de881391f8e",258804686))) do
				charCodes[Pos] = schar(Pos)
				Pos = Pos + 1
			end
			Pos = 1
			local Confused = (decode_string_v1("",493331847))
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
			712 - #((decode_string_v1("63a73140",65268328))),
			1305 + #((decode_string_v1("eb78ef2696c9bef17f5d",2059279056))),
			1265 - #((decode_string_v1("9ffcc722e58e9a3b986fb9ac2013f95b9f218da97f444c1cc715e2533b9e654bb7",111326103))),
			1343 + #((decode_string_v1("7e92f21710cc29818f1631",1764415068))),
			784 + #((decode_string_v1("f2f69d08",1089375548))),
			553 - #((decode_string_v1("bfbf84c8add2c7",617398859))),
			594 + #((decode_string_v1("3b11130b69603cd7e427670c",1361260059))),
			929 + #((decode_string_v1("e52d389a5da3a65a5f0a48522a620949cb05e6",137892325))),
			822 + #((decode_string_v1("c8232f679b70c6c009b9",25635610))),
			735 - #((decode_string_v1("d1cb3fbe462937e712a2902b881080258abbbd",2004052814))),
			649 + #((decode_string_v1("8694fd64",1010286396))),
			726 - #((decode_string_v1("d36de4f3",261345097))),
			781 + #((decode_string_v1("789129881d85a05b6474",348146415))),
			1150 + #((decode_string_v1("546fa5",645574153))),
			1059 - #((decode_string_v1("2bcaa439f7b798a2",325604357))),
			607 - #((decode_string_v1("69e1239cce3440722485d3f48964f3262d8519",2098859555))),
			574 + #((decode_string_v1("d103a506409410b41919b69e5c1dd995009387",2033585980))),
			768 + #((decode_string_v1("1f784cbb2cce54fbbc701fca0d58547e7f1ff6276e6ee2ec971b7ee29b99af1187",679907235))),
			1103 + #((decode_string_v1("7652544391d6",1750215110))),
			1437 - #((decode_string_v1("e60dfd71",786415734))),
			1192 - #((decode_string_v1("63bee9cc7075733a",1140992122))),
			1136 - #((decode_string_v1("8a0825e8",1287886503))),
			1461 - #((decode_string_v1("7faa00346aca696aeaac23a0eb6b727c6cfa60cc99bb9086a05f189f26964ac1a6",1789881963))),
			1341 + #((decode_string_v1("00d1c8669725",1333290203))),
			813 + #((decode_string_v1("8c80137ecac3",1816960595))),
			710 + #((decode_string_v1("00c28e1ef82e",626491306))),
			1494 - #((decode_string_v1("241a74af5aad",777426527))),
			729 - #((decode_string_v1("6726468baf76d1b0968175b818157c44e48ca988fa74a27d94cb6afde8e6baebe58679081e9b5d709ebf084093e225af20cb0c24892b91781293bc3a70ba455dea74daca1f8b9d7cd4803f1cf2a44719e5c3f71826c73fc91ea0797f546a29cb57231a4890ad2750f7ae873a",2121701703))),
			1147 - #((decode_string_v1("2e82b1ad",624811485))),
			1111 + #((decode_string_v1("ee98e7aa11a522d9559f",1173589150))),
			1205 - #((decode_string_v1("847bca145ec3",2070049682))),
			1349 + #((decode_string_v1("eb031a2ec139a7414e1a",76178423))),
			54 + #((decode_string_v1("22173ceed09b37cb6fcd",217028015))),
			61 + #((decode_string_v1("9bb9f8c5",935033271))),
			-42 + #((decode_string_v1("878a3b8f1dea351e7af55a3f6c1b59d3b1b292e94a6041126a350962da1afb5cc0c98eecb19bb6936f66d5fca68e12f4eedf94edc2722946f1883bfd5658fbcb6102a864f4f559b83a0c8d05a0f78975363d1c6158795148f5ce3f20cb701335b18b085ba1e24ebe3826d21c",1269095703))),
			71 - #((decode_string_v1("c8430522",1272841532))),
			58 + #((decode_string_v1("0b1b6e838bd9e6ecfe07",962747821)))
		}

		local whitelisted = false
		local basec = (decode_string_v1("4e10651cf7db501a093bae6c0cbea7a4a599c26ca8eec410cbe069cd07cfc6be83e8f2921a73bada65ecf4780a7e94d5f496a8e8bd493c5132f044c7ff238297",119105281))

		local function base_encode(data)
			local b = basec
			return ((data:gsub((decode_string_v1("ad",1288441956)), function(x)
				local r, b = (decode_string_v1("",1898261232)), x:byte()
				for i = 8, 1, -1 do
					r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and (decode_string_v1("54",1842180774)) or (decode_string_v1("87",1061578822)))
				end
				return r;
			end) .. (decode_string_v1("27eaa18c",1052445931))):gsub((decode_string_v1("db9a3f98aeaac3f95f3895be10a47a6a",171799223)), function(x)
				if (#x < 6) then
					return (decode_string_v1("",1539112723))
				end
				local c = 0
				for i = 1, 6 do
					c = c + (x:sub(i, i) == (decode_string_v1("5d",1692502101)) and 2 ^ (6 - i) or 0)
				end
				return b:sub(c + 1, c + 1)
			end) .. ({
				(decode_string_v1("",679559598)),
				(decode_string_v1("081a",2034970202)),
				(decode_string_v1("83",1565374535))
			})[#data % 3 + 1])
		end

		local function base_decode(data)
			local b = basec
			data = string.gsub(data, (decode_string_v1("629f",923490002)) .. b .. (decode_string_v1("0ac0",2063640039)), (decode_string_v1("",1251396649)))
			return (data:gsub((decode_string_v1("d1",22342772)), function(x)
				if (x == (decode_string_v1("ac",1925850970))) then
					return (decode_string_v1("",679553703))
				end
				local r, f = (decode_string_v1("",633351630)), (b:find(x) - 1)
				for i = 6, 1, -1 do
					r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and (decode_string_v1("d6",227041489)) or (decode_string_v1("68",525137394)))
				end
				return r;
			end):gsub((decode_string_v1("c442293d90d60119bcee2d06c9ac2135028722f00fbc",1207026817)), function(x)
				if (#x ~= 8) then
					return (decode_string_v1("",1703126476))
				end
				local c = 0
				for i = 1, 8 do
					c = c + (x:sub(i, i) == (decode_string_v1("2f",1568245732)) and 2 ^ (8 - i) or 0)
				end
				return string.char(c)
			end))
		end

		if not getgenv()[(decode_string_v1("99e4b6",493932391))] then
			getgenv()[(decode_string_v1("bcd8df",971272497))] = {}
		end

		local StringTable = getfenv(pcall)[(decode_string_v1("5019d259a506",74063398))]

		-- More Security updates.

		local StringMT = getmetatable(newproxy(true))

		StringMT.char = StringTable.char

		Backup = getgenv()[(decode_string_v1("f2d2540d89bb99",365789547))] or StringMT
		
		getgenv()[(decode_string_v1("cec1abb845cd95",843372120))] = getgenv()[(decode_string_v1("74207d881d5e8f",2083749193))] or StringMT

		local function Convert_v1(Offset, Text)
			local Result = (decode_string_v1("",1136201719))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("4cc35b",629950265))](Text, Index, Index)
				local Byte = char[(decode_string_v1("b28d3e2a",1512334839))](char)
				local MMath = (Byte + Index + Offset + 3)
				local letter = Backup[(decode_string_v1("38fd89e5",200207199))](MMath)
				Result = Result .. letter
			end
			return Result
		end

		local function UnConvert_v1(Offset, Text)
			local Result = (decode_string_v1("",352048940))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("843bde",1245933982))](Text, Index, Index)
				local Byte = char[(decode_string_v1("fd88d238",1103996276))](char)
				local MMath = (Byte - Index - Offset - 3)
				local letter = Backup[(decode_string_v1("5e4f8c42",613008596))](MMath)
				Result = Result .. letter
			end
			return Result
		end
        
		local function GetReturnedData()
			local D_ATE = os.date()
			local T_ime = os.time()
			local HTTP_SERVICE = game:GetService((decode_string_v1("4f5178927bbe5672715e9b",2061293001)))
			local OffsetTable = {}
			local DataTable = {
				Url = (decode_string_v1("b064ec15bba8e95ed29600c1f2ab0b8e43de8b7fdcfe6f5db0aadddae1c448a452201a06426c207785a28fddac99716b71cb0a9705bd75b8f8a3",1717275439)),
				Method = (decode_string_v1("e31d84",1528412020)),
				Headers = {
					[(decode_string_v1("8aa53f",867887289))] = Key;
					[(decode_string_v1("f6adcd0130ea29f0",876953240))] = tostring(game.Players.LocalPlayer.Name);
					[(decode_string_v1("c397525f29",659472821))] = tostring(game.Players.LocalPlayer.DisplayName);
					[(decode_string_v1("d2752d9ef5b00d8d",1244977146))] = exploit;
				}
			}
			OffsetTable[(decode_string_v1("a3c1d65557af0ca5dd",1640619775))] = base_encode(tostring(D_ATE))
			OffsetTable[(decode_string_v1("46c9c9720abbd8be23",1916326608))] = base_encode(tostring(T_ime))
			DataTable.Headers[(decode_string_v1("23792752",940370783))] = tostring(base_encode(HTTP_SERVICE:JSONEncode(OffsetTable)));
			local returnedData = specialisedrequest(DataTable)
			return returnedData, tostring(D_ATE), tostring(T_ime)
		end

		local returnedData, ShouldReturn1, ShouldReturn2 = GetReturnedData()
		returnedData = returnedData.Body

		if type(returnedData) ~= (decode_string_v1("506e19a03632",656687901)) then
			repeat
				returnedData = GetReturnedData()
				returnedData = returnedData.Body
				wait(0.0003)
			until type(returnedData) == (decode_string_v1("38524bfd9ebf",2130723550))
		end

		local ReturnedArgs = string.split(tostring(returnedData), (decode_string_v1("8a8e67771eab4afeff83cf2e72",1292927791)))
		local CypherShit1 = UnConvert_v1(SERVER_DEOBF_OFFSET, tostring(ReturnedArgs[2]))
		local CypherShit2 = UnConvert_v1(SERVER_DEOBF_OFFSET, tostring(ReturnedArgs[3]))
		local serverData = tostring(ReturnedArgs[4])

		if CypherShit1 == ShouldReturn1 then
			print((decode_string_v1("02742fc4105f1bd4cad84e6d850c84a4eb08",641730543)))
		else
			--while true do end
		end

		if CypherShit2 == ShouldReturn2 then
		else
			print((decode_string_v1("2a5b154fb10ad93b75c4438630516ac8679d",2099976545)))
			--while true do end
		end

		repeat
			wait()
		until serverData ~= nil

		local currentTime = os.time()

		wait(2.45)

		if currentTime == os.time() then
			game.Players.LocalPlayers:Kick((decode_string_v1("b5ab0b6f8a4eced440ff22de8bbac58e8e9de14a98c4afeeb1b4d694623004dc68365c588b82a4b662e39ac106c2c74871b7125062927c693bd77c9f750de133bf31bf986c",1509889741)))
		end

		local number = tostring(os.time())
		local dynamic = number:split((decode_string_v1("",750174163)))
		table.remove(dynamic, 10)
		table.remove(dynamic, 9)
		local randomData = tostring(uniformRNG(dynamic[7], dynamic[8]))
		local randomData = randomData:sub(1, -3)
		local clientData = hmac(secret, Key .. randomData)

		if isfile((decode_string_v1("f82769df935056b41e0eea5ffaed1d01867571",1073414185))) then
			delfile((decode_string_v1("f8765d8f6cba1d56f1377f2004c8b476f5bdd6",359388680)))
		end

		if eq(serverData, clientData) then
			whitelisted = true

			if CypherShit1 == ShouldReturn1 then
			else
				print((decode_string_v1("57792ecffa7f280331eb46579488c4c24513",559568370)))
				--while true do end
			end

			if CypherShit2 == ShouldReturn2 then
			else
				print((decode_string_v1("a60106c84b61e27cdcd22c23fe9e157e4344",2025960334)))
				--while true do end
			end

			local Settings_Name = nil
			local Window = nil
			local SettingsPage = nil
			local SettingsSection = nil

			getgenv()[(decode_string_v1("4848f7cddb069e276c45b758148cb819b0a63e5d80",1281659197))] = true

			-- The ones with the spaces between .lua are the ones that I don't want to be loaded rn as they're not complete.
            do
    local json = {}
    local function kind_of(obj)
      if typeof(obj) == (decode_string_v1("184c509bf722",348245370)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("f266ff38fd8680",1567942807)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("c98a294f5f250b",834297513)) then return typeof(obj), obj end
      if type(obj) ~= (decode_string_v1("8b562c769b",1030354072)) then return type(obj) end
      local i = 1
      for _ in pairs(obj) do
        if obj[i] ~= nil then i = i + 1 else return (decode_string_v1("5b05e5fe1f",2006345623)) end
      end
      if i == 1 then return (decode_string_v1("53005f87d7",721068627)) else return (decode_string_v1("dd2830f21d",447901799)) end
    end
    
    local function escape_str(s)
      local in_char  = {(decode_string_v1("c3",1069327354)), (decode_string_v1("fd",1330564751)), (decode_string_v1("8a",1175801592)), (decode_string_v1("df",40421095)), (decode_string_v1("63",128258050)), (decode_string_v1("f9",1176521427)), (decode_string_v1("0b",569719541)), (decode_string_v1("d4",1009305966))}
      local out_char = {(decode_string_v1("cb",2137013864)), (decode_string_v1("72",1523880230)), (decode_string_v1("8e",650020589)),  (decode_string_v1("25",1900706743)),  (decode_string_v1("e9",998666127)),  (decode_string_v1("9a",1579242072)),  (decode_string_v1("ad",220778513)),  (decode_string_v1("1b",411252445))}
      for i, c in ipairs(in_char) do
        s = s:gsub(c, (decode_string_v1("6c",1660172173)) .. out_char[i])
      end
      return s
    end
    
    -- Returns pos, did_find; there are two cases:
    -- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
    -- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
    -- This throws an error if err_if_missing is true and the delim is not found.
    local function skip_delim(str, pos, delim, err_if_missing)
      pos = pos + #str:match((decode_string_v1("9dac3a1a",834454390)), pos)
      if str:sub(pos, pos) ~= delim then
        if err_if_missing then
          error((decode_string_v1("01245f69e062f5cc0c",1674207143)) .. delim .. (decode_string_v1("778aaee206882dfef29f280d656667",1981743074)) .. pos)
        end
        return pos, false
      end
      return pos + 1, true
    end
    
    -- Expects the given pos to be the first character after the opening quote.
    -- Returns val, pos; the returned pos is after the closing quote character.
    local function parse_str_val(str, pos, val)
      val = val or (decode_string_v1("",727470285))
      local early_end_error = (decode_string_v1("823c5d90bd1364462d784ee9bf37b89db5777d85c859a5e9e288f5d2d4c972515dc46128dfbdcb77",683324240))
      if pos > #str then error(early_end_error) end
      local c = str:sub(pos, pos)
      if c == (decode_string_v1("f6",1710988898))  then return val, pos + 1 end
      if c ~= (decode_string_v1("c3",1861644610)) then return parse_str_val(str, pos + 1, val .. c) end
      -- We must have a \ character.
      local esc_map = {b = (decode_string_v1("10",572971434)), f = (decode_string_v1("74",1524171344)), n = (decode_string_v1("c5",67129213)), r = (decode_string_v1("3a",2060085184)), t = (decode_string_v1("d4",111845283))}
      local nextc = str:sub(pos + 1, pos + 1)
      if not nextc then error(early_end_error) end
      return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
    end
    
    -- Returns val, pos; the returned pos is after the number's final character.
    local function parse_num_val(str, pos)
      local num_str = str:match((decode_string_v1("65dc3539361f2c27b28ee115f3e9aa0028d1ef4c95549baf3c",977117719)), pos)
      local val = tonumber(num_str)
      if not val then error((decode_string_v1("5e9335ae49b6a11e4c8549d25a0aceb6353b95ee79de9e029b4d1d1ad0d5e6935b",717002951)) .. pos .. (decode_string_v1("ca",1386556543))) end
      return val, pos + #num_str
    end
    
    
    -- Public values and functions.
    
    function json.stringify(obj, as_key)
      local s = {}  -- We'll build the string as an array of strings to be concatenated.
      local kind, kind_objecto = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
      if kind == (decode_string_v1("55b8dfb806",509479996)) then
        if as_key then error((decode_string_v1("894ec8d8efae956f83f8ecf543663ba80e8e1e9d489ce8299b02",487391594))) end
        s[#s + 1] = (decode_string_v1("e8",1334939286))
        for i, val in ipairs(obj) do
          if i > 1 then s[#s + 1] = (decode_string_v1("7bd4",1826298288)) end
          s[#s + 1] = json.stringify(val)
        end
        s[#s + 1] = (decode_string_v1("22",320752457))
      elseif kind == (decode_string_v1("0be7507a6c",90221821)) then
        if as_key then error((decode_string_v1("6f21d503e26c263cf14a848bf20f5fffaa1c1b9636b9856527cf",509644250))) end
        s[#s + 1] = (decode_string_v1("ca",754200619))
        for k, v in pairs(obj) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("c39c",270721305)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("c9",431262510))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("94",196336802))
      elseif kind == (decode_string_v1("4c6bbeb73efa",627718841)) then
        return (decode_string_v1("55",1134253529)) .. escape_str(obj) .. (decode_string_v1("82",49830591))
      elseif kind == (decode_string_v1("8993dbdf0c6a",1457440962)) then
        kind_objecto = {table_type = (decode_string_v1("8989c0360245",1468108214)), kind_objecto:components()}
        if as_key then error((decode_string_v1("a6eeeae6bf820247096e801ec01a9515b8a49537777ad0e1d047",2013803367))) end
        s[#s + 1] = (decode_string_v1("96",1867767163))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("1bcc",1963505785)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("de",1743747744))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("ca",2066601173))
    elseif kind == (decode_string_v1("ea90805f997469",489057175)) then
        kind_objecto = {table_type = (decode_string_v1("4d8f892e2c8000",926061237)), kind_objecto.X, kind_objecto.Y, kind_objecto.Z}
        if as_key then error((decode_string_v1("faf387071c4d19400ba149e839ab94c200a5938ba83b0c68f88b",806780283))) end
        s[#s + 1] = (decode_string_v1("c7",499203566))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("53df",621757035)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("c1",872209890))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("08",1116762697))
    elseif kind == (decode_string_v1("a681e0d42b365f",1705189039)) then
        kind_objecto = {table_type = (decode_string_v1("1573b5f44dda22",1175285180)), kind_objecto.X, kind_objecto.Y}
        if as_key then error((decode_string_v1("46afc49f80ecd925b61a790b90625ee09896a3245e4ed20e906d",300331648))) end
        s[#s + 1] = (decode_string_v1("44",1079502190))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("fb93",142128908)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("a6",1645408766))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("e7",494150201))
      elseif kind == (decode_string_v1("490eb3def6e4",1130780368)) then
        if as_key then return (decode_string_v1("f1",951494803)) .. tostring(obj) .. (decode_string_v1("ee",1487596011)) end
        return tostring(obj)
      elseif kind == (decode_string_v1("7dc11be7c290c5",1972660171)) then
        return tostring(obj)
      elseif kind == (decode_string_v1("0e272e",502601887)) then
        return (decode_string_v1("6d7bc4b8",841440477))
      else
        error((decode_string_v1("c39f55f33b9e4befc6a181e13422b0e41365e0cb",1743150315)) .. kind .. (decode_string_v1("da",1574331629)))
      end
      return table.concat(s)
    end
    
    json.null = {}  -- This is a one-off table to represent the null value.
    
    function json.parse(str, pos, end_delim)
      pos = pos or 1
      if pos > #str then error((decode_string_v1("e6c8f12ce066ebe2de4e449199a39b6d859e984b63371bf0ceced769fd215bbb",1396969283))) end
      local pos = pos + #str:match((decode_string_v1("05018649",1938387034)), pos)  -- Skip whitespace.
      local first = str:sub(pos, pos)
      if first == (decode_string_v1("d8",989372059)) then  -- Parse an object.
        local obj, key, delim_found = {}, true, true
        pos = pos + 1
        while true do
          key, pos = json.parse(str, pos, (decode_string_v1("40",947873654)))
          if key == nil then return obj, pos end
          if not delim_found then error((decode_string_v1("57e0be1454bd003c8419f1e5343b41dc50f13a0fc24fe1d6ae7ad3860586d459b43180",1682507161))) end
          pos = skip_delim(str, pos, (decode_string_v1("ed",248019966)), true)  -- true -> error if missing.
          obj[key], pos = json.parse(str, pos)
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("fb",820444444)))
        end
      elseif first == (decode_string_v1("20",1050777407)) then  -- Parse an array.
        local arr, val, delim_found = {}, true, true
        pos = pos + 1
        while true do
          val, pos = json.parse(str, pos, (decode_string_v1("87",1461893515)))
          if val == nil then return arr, pos end
          if not delim_found then error((decode_string_v1("5a1b718d379ec5c140a0030ab97fbc04b96c14ed3d4866b1bda37ad25273a80654fc",1756093717))) end
          arr[#arr + 1] = val
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("23",133344726)))
        end
      elseif first == (decode_string_v1("5a",477100897)) then  -- Parse a string.
        return parse_str_val(str, pos + 1)
      elseif first == (decode_string_v1("26",1799741639)) or first:match((decode_string_v1("61c5",1689263949))) then  -- Parse a number.
        return parse_num_val(str, pos)
      elseif first == end_delim then  -- End of an object or array.
        return nil, pos + 1
      else  -- Parse true, false, or null.
        local literals = {[(decode_string_v1("2394c33a",264999318))] = true, [(decode_string_v1("b5bf50e21d",1231818770))] = false, [(decode_string_v1("76dd1f13",1597507183))] = json.null}
        for lit_str, lit_val in pairs(literals) do
          local lit_end = pos + #lit_str - 1
          if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
        end
        local pos_info_str = (decode_string_v1("e7bf81fc4b24b5c572",1055298615)) .. pos .. (decode_string_v1("5dd2",1022502286)) .. str:sub(pos, pos + 10)
        error((decode_string_v1("42ebf1cce341dd8f0de2ee4bdd143ed54c44b8d510aabde4bc98744034af48aa",1218412054)) .. pos_info_str)
      end
    end

    getgenv()[(decode_string_v1("a8037522330ee7751e002ac1",396149467))] = json
end
            -----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

local ErrorHandlerTing = function(err)
    return warn(err)
end

getgenv().ESP_TESTING = false
do
    local Camera = workspace:WaitForChild((decode_string_v1("b416c06d85b1",1249506033)), 5)
    local Players = game[(decode_string_v1("2ef66a7c764d7126d988",1145254161))](game, (decode_string_v1("27008a51f07aa1",1282940884)))
    local GUIService = game[(decode_string_v1("06e95444085dcd4ffe22",862852779))](game, (decode_string_v1("fad6b434c6bcfc2a5fb5",1118141225)))
    local LPlayer = Players[(decode_string_v1("bb8b3775db618d70930346",1213099266))]
    local Mouse = LPlayer:GetMouse()
    
    getgenv()[(decode_string_v1("6cb47cbfb80e730b6f89",1772146632))] = type(getgenv()[(decode_string_v1("13e324cb57f3b7cfd1a4",1375234105))]) == (decode_string_v1("aee9a31ecf50d4",490459987)) and getgenv()[(decode_string_v1("e0fbdf197139e852866c",897406423))] or false;
    getgenv()[(decode_string_v1("f9b728ccecfc068942864d",167092212))] = type(getgenv()[(decode_string_v1("80f0c948d746c5261cc758",2016532691))]) == (decode_string_v1("c3865f9751",398839745)) and getgenv()[(decode_string_v1("2667454e5d03834a865eee",1212222085))] or {};
    getgenv()[(decode_string_v1("cc65ee707545d763fb",1142310864))] = type(getgenv()[(decode_string_v1("7c7b23a281aeee431d",1254842225))]) == (decode_string_v1("dcc2c5e31d",1357975118)) and getgenv()[(decode_string_v1("346e25c83342a84152",1091367526))] or {};
    getgenv()[(decode_string_v1("cba64dab54b342c258699803c8eb",950116057))] = type(getgenv()[(decode_string_v1("53eeffc863df9f7f54a8625ea5fe",416932333))]) == (decode_string_v1("5b30b3d0fd",225669349)) and getgenv()[(decode_string_v1("a3864be350dee32b40ef52145fc6",331580843))] or {};
    getgenv()[(decode_string_v1("28c56e97045e2136cc2aee438c61dc4b27e1a219619e77",2146921116))] = type(getgenv()[(decode_string_v1("5ad96edcc15b0369350c40fab16283573f0edc82821663",65515947))]) == (decode_string_v1("3cd2d2f62f",166893584)) and getgenv()[(decode_string_v1("ae4d3735e596fe0db1728c8543c5e43e693dff0664ed05",319699269))] or {};

    local PartNames = {
        [292439477] = {Root = (decode_string_v1("cbecc40b39",72530816)), Head = (decode_string_v1("df4235d3",308604704))},
        [3233893879] = {Root = (decode_string_v1("d5f049d655",1725198179)), Head = (decode_string_v1("8f5891f4",1905823874))}
    }
    
    if PartNames[game.PlaceId] ~= nil then
        getgenv()[(decode_string_v1("8b7232bf65ed8e65e5558301d6d60c5a5da17a",476777337))] = type(getgenv()[(decode_string_v1("42dbb32ddcee6149010bb2af807970e9aa5296",1086421497))]) == (decode_string_v1("73c18031bc",878968168)) and getgenv()[(decode_string_v1("2a366f33cd6b7d1beda6abacc8bb63c7d37465",705371832))] or {}

        for _, V in pairs(getgc(true)) do
            local GBPCheck = type(V) == (decode_string_v1("a353d64527",1025185823)) and rawget(V, (decode_string_v1("e44f0c9ec90360170dff5fb4",602041973))) and V or nil
            local GetCharCheck = type(V) == (decode_string_v1("538cb172c4",239626322)) and rawget(V, (decode_string_v1("f09e4794af2231f359890945",799479353))) and V or nil
            local BadBussinessTeamCheck = type(V) == (decode_string_v1("34a9658e34",1637458124)) and rawget(V, (decode_string_v1("d1e1cdfcf29135b478351ce6ea",194038054))) and V or nil

            if GBPCheck then
                getgenv()[(decode_string_v1("9ad505b17693ea02315304ef603bbadacb1bd8",344965981))][(decode_string_v1("b81d098c2e3c3ee112c296a0",1913144086))] = getgenv()[(decode_string_v1("f6a096d22cef2cabd57e3e16540313f3a3da0e",260538563))][(decode_string_v1("aa3311d4c72ffb8e75e23143",1229957129))] or GBPCheck.getbodyparts
            end

            if GetCharCheck then
                getgenv()[(decode_string_v1("5a40b6ac474e475c0a1b15ac188587ac546f98",1776942326))][(decode_string_v1("f04559fa0abc05bb92990dd5",266016782))] = getgenv()[(decode_string_v1("5ae8a93eb6f9b131c818f932ae2da2370081a2",592126855))][(decode_string_v1("4281813f6efacb6b128e9b5f",1171234923))] or GetCharCheck
            end

            if BadBussinessTeamCheck then
                getgenv()[(decode_string_v1("5036d6f75728b04d4566931be5cc1f5777d0f4",135040951))][(decode_string_v1("065e7b8b6fcb27ccd173bb4a25",869092721))] = getgenv()[(decode_string_v1("89d84d45fd0539ac7493831ed34c0cf88d943b",1466049093))][(decode_string_v1("10e8ded7b40f321a1acca8d839",1025573907))] or BadBussinessTeamCheck
            end
        end
    end

    local function GetPlrTeam(Plr)
        if typeof(Plr) == (decode_string_v1("18a909314a301d3c",1097571027)) then
            if game.PlaceId == 3233893879 then
                if getgenv()[(decode_string_v1("fe5027ab4c556b126994b7b58f4713e33666f5",1067190122))][(decode_string_v1("abe7f4513231a4e6895f1e4d28",1679472470))] ~= nil then
                    return getgenv()[(decode_string_v1("fedaf7bfce826d00c40adfb938e6d2b32600ce",1062655982))][(decode_string_v1("0ac6cf3d46159217e1dc7971fc",1229720973))]:GetPlayerTeam(Plr)
                else
                    return Plr.Team
                end
            else
                return Plr.Team
            end
        end
    end

    local function GetChar_Ez(Plr)
        if typeof(Plr) == (decode_string_v1("9207010cf16abcb8",221844166)) then
            if not PartNames[game.PlaceId] then
                if Plr:IsA((decode_string_v1("f9e99fa1aa",1358806633))) then
                    return Plr
                else
                    return Plr.Character
                end
            elseif game.PlaceId == 3233893879 then
                -- Bad business moment

                if type(getgenv()[(decode_string_v1("1083ba7bf58ff2b5148aae5cbbf28b2e76cea4",768231458))][(decode_string_v1("a07dc422c91139f682cc1efd",1137268486))]) == (decode_string_v1("63d985d63a",2082547433)) then
                    local PlrParts = getgenv()[(decode_string_v1("576c9228d0b176423a7296e1d97a04c0253f48",1671980482))][(decode_string_v1("5e4aab6e53689be16f27cb15",1779940517))]:GetCharacter(Plr)
                    if PlrParts ~= nil then
                        return PlrParts.Body
                    end
                end
            elseif game.PlaceId == 292439477 then
                -- Phantom Forces moment

                if type(getgenv()[(decode_string_v1("783d8c4dbe92d1fad12a5df2c5b159bf45a19b",820457448))][(decode_string_v1("c2c0e25b428d9ca5e2ec0b35",319361264))]) == (decode_string_v1("6d6d7924491f4530",751793522)) then
                    local PlrParts = getgenv()[(decode_string_v1("9e15f6a6fdedb5346b9bb4a276218df66ba1e5",1294870145))][(decode_string_v1("7eac87e6823659f8b341d4b1",586438844))](Plr)
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

    getgenv()[(decode_string_v1("82792db33636798846",2069099534))].SETTINGS = {
        BOXES_ENABLED = false,
        TRACERS_ENABLED = false,
        TEAM_CHECK = false,
        AIMBOT_ENABLED = false,
        AIMBOT_TEAM_CHECK_ENABLED = false,
        ESP_COLOR = Color3.fromRGB(255, 255, 255)
    }

    getgenv()[(decode_string_v1("ffdf7fd1a24ba77ee9",1485981867))].Connect = function()
        getgenv()[(decode_string_v1("24e05ae6fc8ad0ae3f",251468076))].UnLoad = function()
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("feeb8f316864a3862d518da38bfd5d0a262052848dac84",118856649))]) do
                pcall(function()
                    CachedItem:Remove()
                    getgenv()[(decode_string_v1("8b1ace75fa99b3357d4145c7f015cd589a60e160475a53",1449696025))][CacheName] = nil
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("7246ae104e250771adf212",2052915769))]) do
                if tostring(CacheName):find((decode_string_v1("f176c0a038",1549450084))) then
                    getgenv()[(decode_string_v1("48f2f899bb724981cf02ee",429717527))][CacheName] = nil
                end
            end
        end

        getgenv()[(decode_string_v1("2e9ab5679f1a7410d3",1797829927))].UnLoadType = function(TypeString)
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("079eb83dbfe50abad978b35a38d1fc65646aded3d998ee",5566612))]) do
                pcall(function()
                    if tostring(CacheName):find(tostring(TypeString)) then
                        CachedItem:Remove()
                        getgenv()[(decode_string_v1("2d156914e463f8781d7c9b1da652477a360a6679ce2682",514786108))][CacheName] = nil
                    end
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("da0ee0c5ab5ff877c5ab22",1899357619))]) do
                if tostring(CacheName):find(tostring(TypeString)) then
                    getgenv()[(decode_string_v1("80472231ab54b05c84d3e2",2010657476))][CacheName] = nil
                end
            end
        end
        
        getgenv()[(decode_string_v1("8484eb348a553fbfc2",976815990))].UnLoad()

        getgenv()[(decode_string_v1("36bdb5e57e79089788",775833811))].UpdateColor = function(Color)
            getgenv()[(decode_string_v1("585f2fb52489051c9c",69412888))].SETTINGS.ESP_COLOR = typeof(Color) == (decode_string_v1("fcebe0f96b4f",1876750923)) and Color or Color3.fromRGB(255, 255, 255)
        end

        getgenv()[(decode_string_v1("adc7bf6b1c8d0f4c92",1436945058))].SetTeamCheck = function(Bool)
            getgenv()[(decode_string_v1("d47c8743dc7ace30f6",867252095))].SETTINGS.TEAM_CHECK = type(Bool) == (decode_string_v1("c5fe788a662f06",964209285)) and Bool or false
        end
        
        getgenv()[(decode_string_v1("74af102457195bd735",215086324))].SetBoxVisibility = function(Bool)
            getgenv()[(decode_string_v1("bbe0620675c43059f7",522025314))].SETTINGS.BOXES_ENABLED = type(Bool) == (decode_string_v1("3dfad37d3bde23",876560418)) and Bool or false
        end

        getgenv()[(decode_string_v1("6624abbc3d9d051385",293578694))].SetTracersVisibility = function(Bool)
            getgenv()[(decode_string_v1("208afd8e43ee5ecd3e",1238401197))].SETTINGS.TRACERS_ENABLED = type(Bool) == (decode_string_v1("3130c400f9149b",947017870)) and Bool or false
        end

        getgenv()[(decode_string_v1("064a092b2106d70e0d",654425980))].LoadTracers = function(Plr)
            if getgenv()[(decode_string_v1("e89ef99e8aaf0654b4052f",1062029829))][Plr.Name .. (decode_string_v1("3e08d4c44b0a364aded58c95",1926901975))] == nil then
                if getgenv()[(decode_string_v1("96c790d79cde794fb5c266404c3d70c20421a1898c5fbb",1014139016))][Plr.Name .. (decode_string_v1("8c628ac074074b2ac0327ebc",1800331225))] == nil then
                    getgenv()[(decode_string_v1("07ce57474e8f60bbef6f5dc055e205326f889769dfd628",1364917727))][Plr.Name .. (decode_string_v1("da61611355a5ffae5dbed8e0",954327178))] = Drawing.new((decode_string_v1("54578d05",1678796615)))
                    getgenv()[(decode_string_v1("be9d4e7e8e76dfba8c6526b80188cf441328c332ba93bc",1839590331))][Plr.Name .. (decode_string_v1("94b46de5b09a2da1a7808db7",1967781354))].Visible = false
                    getgenv()[(decode_string_v1("b4b56d4d4c6b5dafe7a8a38ae749e9e9daeb87f2d36adb",416789192))][Plr.Name .. (decode_string_v1("94f17c2653771a0ae3a73dd2",1990280517))].Thickness = 2;
                    getgenv()[(decode_string_v1("fc845858d63b368950a574dc6da164e8ab9fe7c917f958",1915984343))][Plr.Name .. (decode_string_v1("8ce020ba001910b4002bce78",603128489))].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                end

                getgenv()[(decode_string_v1("9ac42f4802cb7c028f62e8",1078217998))][Plr.Name .. (decode_string_v1("3e33c789c62b37b025b64069",1924556011))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("0efb229f0fd96ce3ba39c26575e6e5edcce783123d5513",731783055))][Plr.Name .. (decode_string_v1("76d0459b6eaa7b7ad64e43a7",1758892218))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("cca6ea41aa",1435245023)) and PartNames[game.PlaceId].Root or (decode_string_v1("bfe9e8dff9a7cd692c7dbc20db1325b6",1835454561)))
                            local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("63627e3f0e",685571885)) and PartNames[game.PlaceId].Head or (decode_string_v1("8f83f248",1080687050)))
                            
                            if RootCheck and Plrhead then
                                if getgenv()[(decode_string_v1("8b78bdd3ed398e2b064a0a90ddac67b571fee83441b804",1450110041))][Plr.Name .. (decode_string_v1("64e2cb57104e91f846409a85",1213220401))] then
                                    local Line = getgenv()[(decode_string_v1("0023f20d24f44178b19456e9100c5fb15500c1b0bac4d4",1102800555))][Plr.Name .. (decode_string_v1("32f1bbf4672935ba040fcfde",2003528341))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                                    local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                                    Line.To = Vector2.new(LinePos.X, LinePos.Y)
                                    Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                                    Line.Color = typeof(getgenv()[(decode_string_v1("06e44961733d4261c8",1993512024))].SETTINGS.ESP_COLOR) == (decode_string_v1("e6e2f31f0ae8",371427914)) and getgenv()[(decode_string_v1("2333c50e18743075b6",468280073))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("74c0986a5b1c19e97a",652374236))].SETTINGS.TEAM_CHECK then
                                        Line.Visible = false
                                    else
                                        Line.Visible = getgenv()[(decode_string_v1("7893efcce729c8375e",1283772048))].SETTINGS.TRACERS_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("6f888cca0a92ca0054df5cc9928e1898ee44fbdc14998d",504611418))][Plr.Name .. (decode_string_v1("766a780703d944e06b64e305",588280703))] then
                                getgenv()[(decode_string_v1("d8564f02660e6e18a1c12a849b6d9327b6b4a84bacbdfb",1807515049))][Plr.Name .. (decode_string_v1("2fd8f56ff8acfa7ccd2ab063",1614855558))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("1cc18fc3c236138fafbffc",695970830))][Plr.Name .. (decode_string_v1("609f73ee3ee70eca6d6783b7",1305147543))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("2a17ede11c0d2665e4a025d611fd725fc25a8262dc77f5",2084415242))][Plr.Name .. (decode_string_v1("a956baf7e9f96e7ee9905172",1399403843))] then
                            getgenv()[(decode_string_v1("9c6dc04d9239d93b9e525dd4d410844c75f2f8691e4fbc",31702183))][Plr.Name .. (decode_string_v1("ccf8938107bfa6986046c164",1051650733))]:Remove()
                            getgenv()[(decode_string_v1("d8047f894181425b88a02e2a16d0742096d807308330ed",203146102))][Plr.Name .. (decode_string_v1("fa6c3cc8cb6439189dbd4e82",390147435))] = nil
                        end
                    end
                end
            end
        end
--GetPlayerTeam
        getgenv()[(decode_string_v1("c527901670531046b2",530803190))].LoadBox = function(Plr)
            if getgenv()[(decode_string_v1("1385281907a94803ab846b",468967971))][Plr.Name .. (decode_string_v1("c82b2474b814aeb87c19",229947314))] == nil then
                if getgenv()[(decode_string_v1("9a507f0291f1361cee4c303e03d805912ce0c6aea3cd80",343965365))][Plr.Name .. (decode_string_v1("05ae75bef4a2db8ed55a",544406290))] == nil then
                    getgenv()[(decode_string_v1("a6f2e9d23fa04ed74bdbf8c2ea52fdffaec87ae400311c",223781487))][Plr.Name .. (decode_string_v1("ba8b43e29dc11458eb06",81343765))] = Drawing.new((decode_string_v1("8e39272ccc5c",1862019726)));
                    getgenv()[(decode_string_v1("3c79e0063f189b6f3843b8fd959fb4498e1267fac9aa4a",1077106945))][Plr.Name .. (decode_string_v1("6774e6cd69ac06eef846",1436258585))].Thickness = 2;
                    getgenv()[(decode_string_v1("023abc7b78d4e6c86eb6bdcc3445c56ed857393e764cf3",1932340635))][Plr.Name .. (decode_string_v1("96108a5911389d690af2",89954267))].Filled = false;
                    getgenv()[(decode_string_v1("c0dc6e9398d5d8cbdb38366e1b9d2d486c1156ac1d516d",1989856268))][Plr.Name .. (decode_string_v1("8c262edb68e4205eca2b",67868149))].Visible = false;
                end

                getgenv()[(decode_string_v1("72ab46703b5cff5972a6f1",2043576499))][Plr.Name .. (decode_string_v1("4a94cbca3db5b8576845",846030885))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("e27085d5f35dcf975a4c7cb4211f59e44e997d6b41782c",1317965734))][Plr.Name .. (decode_string_v1("7619a2b68ccf48ee49cb",196915244))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("c3e82f15a3",1185095731)) and PartNames[game.PlaceId].Root or (decode_string_v1("ef31ca595ef44d062af1607ec8289b63",1979604174)))
                            
                            if RootCheck then
                                if getgenv()[(decode_string_v1("fce8bf2f6c822f76a73fe31a1681d2074c3349fbce3532",1894895984))][Plr.Name .. (decode_string_v1("6ac6b0b06542dac20b19",1068360076))] then
                                    local Inset = GUIService:GetGuiInset();
                                    local Box = getgenv()[(decode_string_v1("6f7cbf7c6b86631404d1cfdf6eb8826e547024a47e897a",170765507))][Plr.Name .. (decode_string_v1("9e863f8c78a0764460e2",48597046))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                                    Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                                    Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                                    Box.Color = typeof(getgenv()[(decode_string_v1("661571950dec53ecdf",883524506))].SETTINGS.ESP_COLOR) == (decode_string_v1("d5395860216c",1728413221)) and getgenv()[(decode_string_v1("826fe1f0b7550c7de9",2068904302))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("ee587299adf9389035",1049348314))].SETTINGS.TEAM_CHECK then
                                        Box.Visible = false
                                    else
                                        Box.Visible = getgenv()[(decode_string_v1("f0c15d59c818fe928a",1115665948))].SETTINGS.BOXES_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("607455aebd3518d50b7fb0236f900771f5293fee024b1c",880650411))][Plr.Name .. (decode_string_v1("05415d32a00b4c77d384",1645537600))] then
                                getgenv()[(decode_string_v1("5a74714158d45a59edb193aa1341142df4addc73862f77",1749945166))][Plr.Name .. (decode_string_v1("e24313974979cddff759",1003840137))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("f9ace0af55bc9d6b2493e1",168323724))][Plr.Name .. (decode_string_v1("c89744dcd159ea51160e",686803914))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("d88bd087e4ce9c72aaa1d37bdc65e1b5b6714f3c2c0a82",1818455790))][Plr.Name .. (decode_string_v1("2ae959dc39f236b9dfcc",1841790924))] then
                            getgenv()[(decode_string_v1("187803ca0e9b0483f57e7c33da13af1aea37c12a4bb3c3",1049281591))][Plr.Name .. (decode_string_v1("305cdae2fb7df4a63637",963711042))]:Remove()
                            getgenv()[(decode_string_v1("2dfa8ed7db55a791c5f507da5329c6d692675fc7e09f00",525113063))][Plr.Name .. (decode_string_v1("13de338d890c58025953",1345897479))] = nil
                        end
                    end
                end
            end
        end

        getgenv()[(decode_string_v1("d455da110ebddfcc1d",31950105))].LoadFov = function()
        end

        if getgenv().ESP_TESTING == true then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= LPlayer then
                    getgenv()[(decode_string_v1("c5e917d6d9181cddf6",1618134204))].LoadBox(Plr)
                    getgenv()[(decode_string_v1("88470733b5b562f386",727161485))].LoadTracers(Plr)
                end
            end
        end

        if getgenv()[(decode_string_v1("ff8db213ac7cb2bff5",1488941971))].RemovedAndAdded == nil then
            getgenv()[(decode_string_v1("c0b994f7af8649b6d0",337402755))].RemovedAndAdded = true

            Players.PlayerAdded:Connect(function(Plr)
                if getgenv()[(decode_string_v1("293bc51138050633b6",1501239214))].SETTINGS.BOXES_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("cab4ad2813cb8ad315",856637678))].LoadBox(Plr)
                end

                if getgenv()[(decode_string_v1("2e23af8f9f9d7230ef",1819605335))].SETTINGS.TRACERS_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("bb97c98f2a077f4501",1539582532))].LoadTracers(Plr)
                end
            end)
        end
    end
    
    getgenv()[(decode_string_v1("29db477bbd6d86203a",511506753))].Connect()

    getgenv()[(decode_string_v1("ad6360632178a6f40b",1422549111))].Aimbot = function()
        local Proxy = newproxy(true);
        local MetaTable = getmetatable(Proxy);

        local function AimAtPlayer(Camera, Mouse, target)
            local TARGETPOS = Camera:WorldToScreenPoint(target.Position)
            local GOTO = Vector2.new((TARGETPOS.X - Mouse.X) * .15, (TARGETPOS.Y - Mouse.Y) * .15)
            mousemoverel(GOTO.X, GOTO.Y) -- Quick math for the aim function lmao
        end

        getgenv()[(decode_string_v1("fe3a7c8ca09aa1b7cecf89",1277181069))].AimBot = nil

        MetaTable.Start = function()
            getgenv()[(decode_string_v1("bd8ba4a0335a0c69364350",1415104056))].AimBot = nil
            if getgenv()[(decode_string_v1("0704033b4be1fff3ff0242",1658694891))].AimBot == nil then

                getgenv()[(decode_string_v1("1cdfda9030ff7c521a0734",2104609567))].AimBot = function()
                    local LastDistance = 999999
                    for _, FPlayer in ipairs(Players:GetPlayers()) do
                        if FPlayer ~= LPlayer then

                            local TeamCheck = tostring(GetPlrTeam(FPlayer)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("c6bb85f523e447d235",370115326))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
                            if not TeamCheck then
                                local FChar = GetChar_Ez(FPlayer)

                                if FChar then
                                    local HeadCheck = FChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("53db95578d",2146764279)) and PartNames[game.PlaceId].Head or (decode_string_v1("ef4c5908",1105377451)))

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
            getgenv()[(decode_string_v1("0458d58edd74bae803f64c",1938815192))].AimBot = nil
        end

        MetaTable.TeamCheck = function(Bool)
            getgenv()[(decode_string_v1("d7afa4fd9fea5d3b28",20095900))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
        end

        return MetaTable
    end

    if getgenv().ESP_TESTING == true then
        getgenv()[(decode_string_v1("7ca82fdf1649a04529",1262353139))].SetTracersVisibility(true)
        getgenv()[(decode_string_v1("6aff6852dd1e8d032d",70891900))].SetBoxVisibility(true)
        getgenv()[(decode_string_v1("2304b20f4c2bd253a5",1401847080))].SetTeamCheck(false)
        getgenv()[(decode_string_v1("2912cf9a2056344e91",1535205140))].UpdateColor(Color3.fromRGB(79, 22, 201))
    end

    if not getgenv()[(decode_string_v1("5502b8d6456fed6c025e",177007464))] then
        getgenv()[(decode_string_v1("7c6c23e4bbe359c9039e",926594446))] = true
        local RunService = game[(decode_string_v1("ab0cb73284b7e2d2fdd8",563541161))](game, (decode_string_v1("15a96531cd43248e059d",1192408335)))
        RunService.Heartbeat:Connect(function()
            for _, Function in pairs(getgenv()[(decode_string_v1("72f4f8bc4d62d5438edd03",2081624719))]) do
                if type(Function) == (decode_string_v1("6a42e709d5a1db79",1650719478)) then
                    xpcall(Function, ErrorHandlerTing)
                end
            end
        end)
    end
end
            --Timber. lua_compile_spot
            --PhantomForces. lua_compile_spot
            --BloxBurg. lua_compile_spot
            local VRService = game:GetService((decode_string_v1("222f4730ea11cb9f37",465309959)))

do
    local function WorldZeroInit()
        local MarketService = game:GetService((decode_string_v1("64b186d8db7f08adf7b349daf80463727d64",1754175051)))
        local VRService = game:GetService((decode_string_v1("9e97fbe58a20fb1ba7dde9",177947920)))
    
        local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
        if isSuccessful then
            if info.Creator.Name == (decode_string_v1("0633549bb8a221fdc2e0921c6b",762340939)) then
                --

                getgenv()[(decode_string_v1("804a7faf06cf4890bea0cf6d4dd945b73664ad7e81",2040033025))] = false
            
                --------------------------------------------------------------------------------------------
        
                getgenv().UpdateLoop = type(getgenv().UpdateLoop) == (decode_string_v1("1d8d6005b0b3a7",329881323)) and getgenv().UpdateLoop or false;
                getgenv().UpdateCache = type(getgenv().UpdateCache) == (decode_string_v1("1bafeef3b0",408698280)) and getgenv().UpdateCache or {};
                getgenv().MOB_ESP_OBJECTS = type(getgenv().MOB_ESP_OBJECTS) == (decode_string_v1("2c9e673d73",1609462407)) and getgenv().MOB_ESP_OBJECTS or {};
                getgenv().MOB_ESP_CONNECTIONS = type(getgenv().MOB_ESP_CONNECTIONS) == (decode_string_v1("bb6e276a01",243768399)) and getgenv().MOB_ESP_CONNECTIONS or {};
        
                local GameConfigFile = GetGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("019258f862",404828440)))
                Settings_Name = (decode_string_v1("70833621524493f04e6e215ef756cd7118051b21427837cf4ff161",304096336))

                getgenv()[Settings_Name] = {
                    AutoAttackMobs = GameConfigFile.AutoAttackMobs or false,
                    AutoPickupCoins = GameConfigFile.AutoPickupCoins or false,
                    AntiIdle = GameConfigFile.AntiIdle or false,
                    MobESP = GameConfigFile.MobESP or false,
                    MobESPRenderDistance = GameConfigFile.MobESPRenderDistance or 250
                }
                
                Window = UILibrary.new((decode_string_v1("5e159322a03ada65dd7d57c75ade019b625b597a715440",198297365)), 5013109572)
    
                local TweenService = game:GetService((decode_string_v1("93885d65e039028fc2e016f1",1979450721)))
                local Player = game.Players.LocalPlayer
                local Character = nil
                local PlayerPosition = nil
                local PlayerLookVector = nil
                local RootPart = nil
                local ItemTable = nil
                
                local ActionsModule = require(game.ReplicatedStorage.Client.Actions);
                local CombatModule = require(game.ReplicatedStorage.Shared.Combat);
                local AnimationModule = require(game.ReplicatedStorage.Client.Animations);
        
                local MobsFolder = workspace:FindFirstChild((decode_string_v1("bad57a86",379814583)))
                --[===[local PlayerWindow = Window:addPage("Player", 5012544693)]===]
                local AutoFarmWindow = Window:addPage((decode_string_v1("e7b7b3a17290e9f4b6",458817081)), 5012544693)
                local VisualsWindow = Window:addPage((decode_string_v1("ed26ceca0c29d9",1034187719)), 5012544693)
                local TeleportsWindow = Window:addPage((decode_string_v1("a30c206ae72a0af19c",1305781562)), 5012544693)
                local AutoFarmSection = AutoFarmWindow:addSection((decode_string_v1("69051abace04745f",1329915677)), 5012544693)
                local VisualsSection = VisualsWindow:addSection((decode_string_v1("f5fd314dc319019d",2001903546)), 5012544693)

                local Camera = workspace.Camera
                local GUIService = game[(decode_string_v1("d142c67279d25d68c6a9",1713035485))](game, (decode_string_v1("57077f8fe69acc9af0c9",540430828)))
                
                local function GetNearMobs()

                    local Mobs = {}
                    local HitBoxSize = Vector3.new(25, 15, 25)

                    if RootPart then

                        local MobParams = OverlapParams.new()
                        MobParams.FilterDescendantsInstances = MobsFolder:GetChildren()
                        MobParams.CollisionGroup = (decode_string_v1("ccc6ca483f4c27",168721602))
                        MobParams.FilterType = Enum.RaycastFilterType.Whitelist

                        local FoundInBox = workspace:GetPartBoundsInBox(RootPart.CFrame, HitBoxSize, MobParams)

                        if FoundInBox ~= nil then
                            for _, Part in ipairs(FoundInBox) do
                                if Part:IsA((decode_string_v1("e1d9e2bb92f9293c",669800435))) then
                                    if Part.Name == (decode_string_v1("891ef276f42ba85e",1480100220)) then
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
                                Box = Drawing.new((decode_string_v1("c86a8d63e1a3",349100063))),
                                ESPText = Drawing.new((decode_string_v1("eb229591",1260829443)))
                            }
    
                            local Box =  getgenv().MOB_ESP_OBJECTS[Mob].Box
                            local ESPText =  getgenv().MOB_ESP_OBJECTS[Mob].ESPText
    
                            ESPText.Text = (decode_string_v1("",542092694))
                            ESPText.Color = Color3.fromRGB(255, 255, 255);
                            ESPText.Size = 20.0
                            ESPText.Visible = false
                            ESPText.Outline = true
                            ESPText.Center = true
    
                            Box.Thickness = 2;
                            Box.Filled = false;
                            Box.Visible = false;
                            
                            getgenv().UpdateCache[Mob] = function()
                                local Collider = Mob:FindFirstChild((decode_string_v1("1409cce9dc3b311d",1021348492)))

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
    
                                    ESPText.Text = string.format((decode_string_v1("0bb6ddcc9db60b13e2e238b53f13c481667764a93efdadc1",537651636)), Mob.Name, tostring( math.floor( (MobPos - PlayerPosition).Magnitude ) ) )
    
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
    
                                            local CreatureHealthFolder = Mob:FindFirstChild((decode_string_v1("df069b016a649385ec82def593bb1949",700035405)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("4f614a2beda5",2053965519)))
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
                            if typeof(V) == (decode_string_v1("b5670b196bb66c2c4881e05527ddc610aef50d",1895658130)) then
                                V:Disconnect()
                                getgenv().MOB_ESP_CONNECTIONS[I] = nil
                            end
                        end
                    end

                    ESP_META.StartConnections = function()
                        ESP_META.EndConnections()

                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("de6d8b2e37bd2b7b",1111997490))] = MobsFolder.ChildAdded:Connect(function(Mob)
                            ESP_META.AddEsp(Mob)
                        end)
        
                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("860e1c20b786c7bfbebb",1812356179))] = MobsFolder.ChildRemoved:Connect(function(Mob)
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
                
                getgenv()[(decode_string_v1("14cda9ca80de7e0210cad7",979636823))][(decode_string_v1("4432782e5bc3bcc1c70c15acb460f281",914144274))] = function()
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

                getgenv().UpdateCache[(decode_string_v1("230cb22a84a95a9677fa",1379772751))] = function()
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
                
                VisualsSection:addSlider((decode_string_v1("30684ccf8b81fbb90d3cb947c2e24aa012c413",2000614807)), getgenv()[Settings_Name].MobESPRenderDistance, 250, 10000, function(NewValue)
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

                VisualsSection:addToggle((decode_string_v1("2a4d78cf1e8dce",795543468)), getgenv()[Settings_Name].MobESP, function(Bool)
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

                AutoFarmSection:addToggle((decode_string_v1("184994256045844b11e7e2e9841b7bda4892582072c50f524e9adfe4d51f33056625b4",1031507028)), getgenv()[Settings_Name].AutoAttackMobs, function(Bool)
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
                                            local CreatureHealthFolder = Creature:FindFirstChild((decode_string_v1("5f639d3e4726bedfe8598162eaaffe07",198363708)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("2fd60c210196",1827433519)))
                                                
                                                if CreatureHealth then
                                                    
                                                    if CreatureHealth.Value > 0 then
                                                        local CreaturePos = Creature:GetPivot();
    
                                                        --local v14 = AnimationModule:GetAnims().Defender["Attack" .. tostring(AttackIndex)];
                                                        if not ActionsModule:IsBusy() then
                                                            TotalHits = TotalHits + 1
    
                                                            --ActionsModule:FireSkillUsedSignal("Primary");
                                                            --ActionsModule:FireCooldown("Primary");
                                                            ActionsModule:SetBusy((decode_string_v1("925388c577",1920733541)));
                                                        
                                                            if Character then
                                                                PlayerPosition = Character.PrimaryPart.Position
                                                                PlayerLookVector = Character.PrimaryPart.CFrame.LookVector
                                                                RootPart = Character.PrimaryPart
                                                            end
    
                                                            RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
                                                            Camera.CFrame = CFrame.new(Camera.CFrame.p, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
    
                                                            CombatModule:AttackWithSkill((decode_string_v1("bbd8e8bfcedd6c95",32214415)) .. tostring(AttackIndex), PlayerPosition, CFrame.new(PlayerPosition, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z)).LookVector * 1.1 );
                                                            
                                                            AttackIndex = math.clamp(AttackIndex + 1, 1, 6)
    
                                                            if AttackIndex > 5 then
                                                                AttackIndex = 1
                                                            end

                                                            CreatureIndex = CreatureIndex + 1
    
                                                            task.wait(0.01)
                                                            ActionsModule:ReleaseBusy((decode_string_v1("9485162429",2060403484)));
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
                    if A:IsA((decode_string_v1("cbe7bc2747",1722197704))) then
                        if tostring(A) == (decode_string_v1("5935715911",1750011545)) then
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
    
                AutoFarmSection:addToggle((decode_string_v1("0b0349c3291a0a98",553766600)), getgenv()[Settings_Name].AntiIdle, function(Bool)
                    getgenv()[Settings_Name].AntiIdle = Bool
                end)
    
                AutoFarmSection:addToggle((decode_string_v1("8cd6d0c0cf3d2a6c56d25198c283dcd76093242d6d29825256be",789529878)), getgenv()[Settings_Name].AutoPickupCoins, function(Bool)
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
        
                if not getgenv()[(decode_string_v1("80ae72a15f314d4afb9e",2041188714))] then
                    getgenv()[(decode_string_v1("2698fdbfbe37259dbb9c",1224233064))] = true
                    RunService.Heartbeat:Connect(function()
                        for _, Function in pairs(getgenv()[(decode_string_v1("3e7005307b22eb22afc4a7",823138225))]) do
                            if type(Function) == (decode_string_v1("0d56e96be6247002",32159204)) then
                                pcall(Function)
                            end
                        end
                    end)
                end
        
                print((decode_string_v1("761f86dcbc1185694e56d71d29d26c2648df0beb81",1918617615)))
                --
            end
        end    
    end
    
    WorldZeroInit()

    local _Players = game:GetService((decode_string_v1("e85537bfe632a0",532462745)))
    local _Player = _Players.LocalPlayer
    
    local queue_on_teleport = type(syn) == (decode_string_v1("93ee5fbb9e",1811751828)) and syn.queue_on_teleport or queue_on_teleport
    
    local RejoinCode = (decode_string_v1("b7ba347fd49906fcd928b4c7e8636bbb70de9ada209ba66013e5d7dd80f9cbdd75ef5eeb5f7d2b9cf828c3b25aed3e7fe5320e7c0b2ca731297c8b30ab24ba541484c96c55db44402b7cd110000db98994bff661758f89ba66227f71e332c2ff877ba498b0ac879e06202bc101b76ad024e8e2dc2318cd2f49a19416e29f0d6218291e1f191c3163407e6f25216449155d82ba2d95a97112c06866365d1a9c8a08254d2e95febf731187d6b018682e68ccc31fb6ba918cc1ef839ae97cd224d1f26a7a84255776f86a37246fb7fea21e7681bad489f0a49b6ee2be473f156ad69906de6ff6b385a9d2eb9ae610dc0d1cd501886022b13ac07468569b958601782a406c516ed847690abcae595f0cccf0a53173fff527ece01f3cc671ae316525515cdc3d4b2bd4a9b9becf27ee49e30e99e7fe0d9c7a1d945cab7796a03c12b30afa56f35ef980fd0b58800a8c212acf7debc783983a99fe0c8817a757ddddc1064b4bb893cfad6464d1d8e95f5a0b49c68a1791cf39105350d33c1fe6200a51d79d05e98b437597d18abb1b97aeee045a8bc576b8005df164ddca92d57bda0b1a54db66fa73e39b38086224cc3fcd703d0feea841b367b1c581234fa4c6cdd681ce4e721f9578eccdf549e662a62a9d1139d7eb493c5252a84a0c0d48a99fe97ba652a25241d9ec60d5d1d275cabdbd2dd1f61174626a56fd42fb00415fd615199fa8edacad305ae127f31b5b9772ee192da91c7d95602a0965ba1e4bcc8777c0079532e6ef8a0d53228ef5340749dcd221f88e9b5f10eca359fe55f4703c1bf32b7897c2d34c3f481346d4bf318793a2de9dc8aad5273a86cc47a56fa48d38810b123126d5c75919ccdb393307d949bf13c8",1858572750))

    if not isfile((decode_string_v1("a2e1ed46a7555f6714d1e6a09736cde3077f80",80533064))) then
        writefile((decode_string_v1("4445d35108b69b13b06a86fa2db86d6e5363da",1268361409)), tostring(RejoinCode))
    end
    
    queue_on_teleport((decode_string_v1("77e8d49c954f9e9d0015476758c09e755f4f0c7c2a767ec8e883c371791fbf12f25866092658d5e920597bafcb453d4e0d3b994c76045cd9a044a54759b0f4cc20aa73e6c2ccfd6b70104008004c4635b1365e0d244ee2ca75c1e56a0686c44719fdd720ae28af845411d521",1821176457)))
end
            --DaHood. lua_compile_spot

			if getgenv()[(decode_string_v1("6cd688fa305ba41b480a9ae2d95bcd25d717cc4cec",195703948))] == true then
                do
    local Players = game[(decode_string_v1("5ee20398e0fa736df038",586438074))](game, (decode_string_v1("67538348f76b5e",346013208)))
    local Player = Players[(decode_string_v1("0394af5641dc997fc77bbd",1942477514))]
    local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("191b8e5da373",939156742))], string[(decode_string_v1("471f801aac",1669548753))], string[(decode_string_v1("662bea87",1320609526))], string[(decode_string_v1("b86b2b40270a",1874718617))], string[(decode_string_v1("9a634ddf3a",1128866561))]

    Window = UILibrary.new((decode_string_v1("4984e2cccac653cbb88e3a56f72fc7221b72eb4407a4",1577329288)), 5013109572)

    local VisualsWindow = Window:addPage((decode_string_v1("91aa6a0719f7b4",634425217)), 5012544693)
    local VisualsSelection = VisualsWindow:addSection((decode_string_v1("94a4098b",2086338176)))

    local GameConfigFile = GetGameConfig(FixName(tostring((decode_string_v1("2ced024e9df5bf0d1f",1041426753)))) .. (decode_string_v1("f92895d9fb",629801068)))
    Settings_Name = (decode_string_v1("18ccd837c2b107495fc9d1327b9a76a04e3384ec19fe3612d91f",1175753502))

    getgenv()[Settings_Name] = {
        Teamcheck = GameConfigFile.Teamcheck or false,
        Boxes = GameConfigFile.Boxes or false,
        Tracers = GameConfigFile.Tracers or false,
        Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
    }

    VisualsSelection:addToggle((decode_string_v1("841f350d431a70dc361275cdb1",324947549)), getgenv()[Settings_Name].Teamcheck, function(Bool)
        getgenv()[Settings_Name].Teamcheck = Bool
        getgenv()[(decode_string_v1("ccbcd2d8894bc8d8bb",1151114358))].SetTeamCheck(Bool)
    end)

    VisualsSelection:addToggle((decode_string_v1("6067080fbcaa983085",790425720)), getgenv()[Settings_Name].Boxes, function(Bool)
        getgenv()[Settings_Name].Boxes = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("f2a2e70aa730874b84",413611784))].LoadBox(Plr)
                end
            end
            getgenv()[(decode_string_v1("f2818884a11bcc7fdb",1242564925))].SetBoxVisibility(true)
        else
            getgenv()[(decode_string_v1("0c51ad81db0690f80f",704284481))].UnLoadType((decode_string_v1("9bff749a5cea8a356bba",1511343683)))
            getgenv()[(decode_string_v1("7c616ce5564e219931",140324531))].SetBoxVisibility(false)
        end
    end)

    VisualsSelection:addToggle((decode_string_v1("5e81284b4e15dc43a0d4dd",712066184)), getgenv()[Settings_Name].Tracers, function(Bool)
        getgenv()[Settings_Name].Tracers = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("06a7a1825cd0729e2f",1993768166))].LoadTracers(Plr)
                end
            end
            getgenv()[(decode_string_v1("2e1720dcb04927c5cb",1796874914))].SetTracersVisibility(true)
        else
            getgenv()[(decode_string_v1("adb83ea3f0ca53bb0e",1451328804))].UnLoadType((decode_string_v1("323687e69c90c8e0fb51314c",2008137553)))
            getgenv()[(decode_string_v1("300da5a74df373a3a5",2026656795))].SetTracersVisibility(false)
        end
    end)

    local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color

    getgenv()[(decode_string_v1("d7a3439fac70f0ee6f",545146526))].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

    VisualsSelection:addColorPicker((decode_string_v1("60e96a71fb0d6a63b4",785784512)), Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
        local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)

        getgenv()[Settings_Name].Color.R = R
        getgenv()[Settings_Name].Color.G = G
        getgenv()[Settings_Name].Color.B = B

        getgenv()[(decode_string_v1("29b67cb7465a7bec71",503532853))].UpdateColor(Color3.fromRGB(R, G, B))
    end)

    VisualsSelection:addButton((decode_string_v1("8802e0368433b9cd5424",845836708)), function(Bool)
        getgenv()[(decode_string_v1("adc9e5ada945813446",1421004875))].UnLoad()
    end)
end
			end

			if Window ~= nil and Settings_Name ~= nil then
				local MarketService = game:GetService((decode_string_v1("f339ab25d1c29139cbb2e1b9e7a0f8af8128",524740875)))
				SettingsPage = SettingsPage or Window:addPage((decode_string_v1("a40851a4761948e8",1248173965)), 5012544693)
				SettingsSection = SettingsSection or SettingsPage:addSection((decode_string_v1("08d1268d02",341411852)), 5012544693)
				SettingsSection:addButton((decode_string_v1("9bb1b2dd1ce2467b663953",1437572409)), function()
					local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
					if isSuccessful then
						if tostring(info.Creator.Name) == (decode_string_v1("fe7b26089cbbcab5f42c17bcda",232860867)) then
							SaveGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("da55114a4f",1565066075)), getgenv()[Settings_Name])
                        elseif getgenv()[(decode_string_v1("eac24f94c0b4bad1d6d6386ca9d722d1917b28623e",967068570))] == true then
							SaveGameConfig(FixName(tostring((decode_string_v1("3e0b63e1e4403e7d31",827432289)))) .. (decode_string_v1("edbcf3bb11",68200564)), getgenv()[Settings_Name])
                        else
							SaveGameConfig(FixName(tostring(info.Name)) .. (decode_string_v1("b530603666",986600860)), getgenv()[Settings_Name])
						end
					end
				end)
				SettingsSection:addKeybind((decode_string_v1("532efc5a1abbda62ca3624793ad0",1220624750)), Enum.KeyCode.Home, function()
					Window:toggle()
				end, function()
				end)
			end
		else
			return sendError(serverData, clientData)
		end
	end
end, function(err)
	return warn(err .. (decode_string_v1("e5",939333042)) .. debug.traceback())
end)