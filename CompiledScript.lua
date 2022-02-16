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
		getgenv().Key = (decode_string_v1("8e1af4322d879050232abaa210b673d6",792529949));
		getgenv().DiscordWebhook = (decode_string_v1("b38b1311",954716392));
		getgenv().WebhookEnabled = false;
		getgenv().GubVersion = (decode_string_v1("fa629a",1916023509));

		local CLIENT_DEOBF_OFFSET = 3;
		local SERVER_DEOBF_OFFSET = 1;
		local StartTimer = os.time()
		local UILibrary = loadstring(game:HttpGet((decode_string_v1("bfd16bbadf9d5bfbf4381f21f934098d74b6bf09317c6174a36a0407eb350e281dbbba81ff3767a89217f5e8667171d339b117395a2593b5e09faef9c42e6e2b03320fa57f799d23e3b224f4bc",984376964)), true))()
		local library = loadstring(game:HttpGet((decode_string_v1("5fc18912fd371cff26ee773fa63e02b3608a487952e68764f1027d9296917617fcf10965be7294286c6dc323e9b3165499d33f1217dee385bb88e313b0f8c9fa3f609fbd882551059e75aea7d3378248545873a381dcff3b26aab53002c3a25e13af",1066142858))))()
		library:Notification((decode_string_v1("be77bb627273b5",1258932951)), (decode_string_v1("0ef7bc15e67e5db066479011018892ed9d5be1cc098622d5f49f178947cb1094c6d161d831b266b4b0dbd9e07d22",192172588)), 10, Color3.fromRGB(255, 255, 255))

		if not isfolder((decode_string_v1("acbd2106c827f38645b889ab04d8",1968749711))) then
			makefolder((decode_string_v1("06238647580f1e4a77f12f37b0e1",642824768)))
		end

		for i, v in pairs(game:GetService((decode_string_v1("fa4ce7b2227c33",818800919))):GetDescendants()) do
			pcall(function()
				if v.Name == (decode_string_v1("ac2dae68",1325113353)) then
					v.Parent.Parent:Destroy()
				end
			end)
		end

		local function identify()
			local Executor = string.lower(identifyexecutor())
			local ExecutorTable = nil
			if string.find(Executor, (decode_string_v1("d894a3071be913",945984998))) then
				ExecutorTable = {
					(decode_string_v1("406e4dadadb46f",773003160)),
					syn.request
				}
			end
			if string.find(Executor, (decode_string_v1("22cb69ca",811759110))) then
				ExecutorTable = {
					(decode_string_v1("627e5397",1750153227)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("3114b525",113028380))) then
				ExecutorTable = {
					(decode_string_v1("25626bb4c795",615785838)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("88d76911ac34",821606646))) then
				ExecutorTable = {
					(decode_string_v1("3ae4e926337bdcf0185772",2115645034)),
					http.request
				}
			end
			if string.find(Executor, (decode_string_v1("cea08a",843205437))) then
				ExecutorTable = {
					(decode_string_v1("a11b46057ae7bc58",60706566)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("c7f5ad",846937694))) then
				ExecutorTable = {
					(decode_string_v1("a7f09e2d8bec94f4050dc40a",2041353651)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("afae51f5",415496375))) then
				ExecutorTable = {
					(decode_string_v1("0c661893e66ea4b8533b",856153770)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("d2e10382",1058258642))) then
				ExecutorTable = {
					(decode_string_v1("f0e7bb7aecca73",266822106)),
					httprequest
				}
			end
			if string.find(Executor, (decode_string_v1("2c12e8af508ade40",2122969643))) then
				ExecutorTable = {
					(decode_string_v1("6a4efa8ee4cca80e",69567934)),
					http_request
				}
			end
			if getgenv().WRD_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("c1a6eb78f66b3c24",700482196)),
					http_request
				}
			end
			if getgenv().unlock_module ~= nil and getgenv().setscriptable ~= nil and getgenv().import ~= nil then
				ExecutorTable = {
					(decode_string_v1("3a616614208b3efb0598cea7b8ea7b",2120512962)),
					http_request
				}
			end
			if getgenv().OXYGEN_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("dc4f34edf3a72b5a",1801353051)),
					http_request
				}
			end
			if ExecutorTable == nil then
				library:Notification((decode_string_v1("065ec31ca6145562d4e8082f33",863620971)), (decode_string_v1("da2e9aeb099bed6d400c87088e1148df58227556db2f85528c092a8d15e7379b44c521f9caddbcc2bfe690f3ef309c15613cb6f828d392484451196558ab3a55421709248ecd9c50",1887797117)), 10, Color3.fromRGB(255, 255, 255))
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
				library:Notification((decode_string_v1("0284f39d9080dc50b2243a6a3ada",1942375018)), (decode_string_v1("e76ef6ab2ff6577595c8ff7514053abc65c1230613634b4d465999c846e272db90b1c40ba102608d491cb27908312a884fb2c7e8e10232958ff560e9e632395af0072fe4e0",1592327717)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("44421c5824e16ddcdf97f9659a5fa426332fd2ae03e740ca62957bcf314ded82942b9de53d48bd0a0ea7ec8daeb0f2a2",2021519755)) then
				library:Notification((decode_string_v1("02997a367af139642b95a3293177",1953058473)), (decode_string_v1("f1722c2f02d2821e07680a82d09408d2c88556c00f147990286a0c538b1644892e3a969696016e768cd0e03c1b4dcb09404a2fd73c08e62f3b",1429018858)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("612410b3f10c0745e2a97166081d3ead5aa1502a2023d72f5d",1493791465)) then
				library:Notification((decode_string_v1("896742226b5c9eac6ddfbc226629",1460588636)), (decode_string_v1("52c2f90ae890db4fb64f304e5f04062429a5296d33e9c2b75af975a64afb0cc10f372535a047f9d8ea5662fd33ef6749ce960d55a4d816843eeac6bbf7",1104788587)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("3a2b318271368a3f7b0b7009748430cd1a8d45ed",389785170)) then
				library:Notification((decode_string_v1("a919ebb4ddc075e7048ca258ba724dad",760906549)), (decode_string_v1("5aa7a3a697dd580cea8340fada9b872ca5cef39ba10a6b47fa70120c696249ffa62f8c1907c45f7cd8a5997da746ccf7a2ba84326626fcb52f66d8be571530cdacadb4148a",938679675)), 15, Color3.fromRGB(255, 255, 255))
			else
				library:Notification((decode_string_v1("f66450639fb144f077a95f5f7920",9705175)), (decode_string_v1("fec11db9b9b06c13039162893474df6e9a8195a65f9c2eff184326caf94e26b9a1933639aaa9be208364ea5bbb3ace8a695d0ebc074a2ec7d67c5a01ca29952f330fa86e381e38d14f04936504a68113db6e7d987e96276053cb82209341d3ee6a55f520f32bd6054995e02bba9ec1ae69b46c48e99941b8e4",697228780)), 15, Color3.fromRGB(255, 255, 255))
				setclipboard((decode_string_v1("0c47ea8dc1f12cc97191327e1c79ace4aabf54ec6ef4e54b4e54c31b0670efe7a41f7ba5767b33052e6025238b28808da0736538fb7bda8a7c6e58c45868",695660393)) .. clientData .. (decode_string_v1("77de1ce83c0e6db1e5707134",330394345)) .. exploit .. (decode_string_v1("b7ab4b511ac8305e",1290058512)) .. Key .. (decode_string_v1("f751d39125fc17173225961189b4934e",303504920)) .. serverData .. (decode_string_v1("b72b651558d56783341b167f4fb61ef539",788692786)) .. tostring(newtime))
			end

			specialisedrequest({
				Url = (decode_string_v1("0ff4732a75fd5b86fcd0ec953d70ac2d26a316001e66e2a5a87c952829",240716562)),
				Method = (decode_string_v1("c7b0e661",303621396)),
				Headers = {
					[(decode_string_v1("0c31835ffa6d782385a14c9a",1193469791))] = (decode_string_v1("55fd9d85ea5b943423264e39bbf7dc8b",1526597372));
					[(decode_string_v1("4d825ed257ac",162658546))] = (decode_string_v1("ef9d5fc600027584a25906f41b3ae33d49dbca",970088869));
				},
				Body = game:GetService((decode_string_v1("af590bbbca14e694f1e776",937126869))):JSONEncode({
					[(decode_string_v1("928b0c",974193225))] = (decode_string_v1("eb684a2b2517d119125f29ce6ad9",1487644068));
					[(decode_string_v1("4dcc76e6",1682929779))] = {
						[(decode_string_v1("4a3298bd",705557050))] = (decode_string_v1("854427ebd2416ce909a1",1489099296))
					};
					[(decode_string_v1("95706da8b4",1951553378))] = (decode_string_v1("59b5eb39ba47820b6317dae990cc66ea441a08dcdb96b6cd44d1569d80e2947bd0732386",161037723));
				})
			})
		end

		local random = Random.new()
		local letters = {(decode_string_v1("70",1093144261)),(decode_string_v1("2d",935676306)),(decode_string_v1("36",112706739)),(decode_string_v1("6c",1519664126)),(decode_string_v1("e5",1614130549)),(decode_string_v1("51",2051815267)),(decode_string_v1("4e",380826896)),(decode_string_v1("1f",2022730587)),(decode_string_v1("1e",2046093451)),(decode_string_v1("b1",646149750)),(decode_string_v1("cf",1358574547)),(decode_string_v1("3b",1804237639)),(decode_string_v1("b4",234232460)),(decode_string_v1("bd",667094959)),(decode_string_v1("c4",663385246)),(decode_string_v1("47",677297544)),(decode_string_v1("e0",1322226231)),(decode_string_v1("ed",1327978374)),(decode_string_v1("74",228175068)),(decode_string_v1("b3",1223185937)),(decode_string_v1("99",55864603)),(decode_string_v1("b9",1103594729)),(decode_string_v1("26",755142181)),(decode_string_v1("2f",613117265)),(decode_string_v1("2f",1379493331)),(decode_string_v1("95",610258804))}

		function getRandomLetter()
			return letters[random:NextInteger(1, #letters)]
		end
		local function FixName(GameName)
			return GameName:gsub((decode_string_v1("b027425fa62a242f0c9add50",2145862567)), (decode_string_v1("",1704212830)))
		end

		local function GetGameConfig(GameName)
			local Table = {}
			if isfolder((decode_string_v1("b2cee5c23e20416f76715123d844",278477500))) then
				if isfile((decode_string_v1("f448b820449bee676ae0c99e9d792f",238317188)) .. tostring(GameName)) then
					local HttpServices = game:GetService((decode_string_v1("4f9810c4824ec1f42e392f",685150465)))
					local ConfigContents = readfile((decode_string_v1("acbab68bc80114087aec0731cbb9e1",659527843)) .. tostring(GameName))
					local DecodedSuccess, DecodedContents = pcall(HttpServices.JSONDecode, HttpServices, tostring(ConfigContents))
					if DecodedSuccess then
						Table = DecodedContents
					end
				end
			end
			return Table
		end

		local function SaveGameConfig(GameName, ConfigTable)
			if isfolder((decode_string_v1("1064f7127e93d5716d94c92c27b3",1251329210))) then
				local HttpServices = game:GetService((decode_string_v1("1f31d661e0c7cc5adca56f",1941528753)))
				local EncodedSuccess, EncodedContents = pcall(HttpServices.JSONEncode, HttpServices, ConfigTable)
				if EncodedSuccess then
					writefile((decode_string_v1("461af1d2b6f795ce56351ec667f852",1086400922)) .. tostring(GameName), tostring(EncodedContents))
					return true
				end
			end
			return false
		end

		function getRandomString(length, includeCapitals)
			local length = length or 10
			local str = (decode_string_v1("",985236633))
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
				return (str_gsub(s, (decode_string_v1("ca",1409027416)), function(c)
					return str_fmt((decode_string_v1("a5d9ff8e",1611402863)), str_byte(c))
				end))
			end

			local function num2s(l, n)
				local s = (decode_string_v1("",988754953))
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
				msg = msg .. (decode_string_v1("97",1078734477)) .. str_rep((decode_string_v1("17",672446674)), extra) .. len
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

		if getgenv().Key == (decode_string_v1("",1215800340)) or nil then
			Key = (decode_string_v1("29f75a74",911139296))
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
			local charset = (decode_string_v1("69a60350ff47e194a96e4c12a29857261536236d3286cdd6d0249d32259ac08d89ccb553d160e22ad4b7966548faf86fbce322363db71764419f5c0d36",1433122611))
			if type(v1) == (decode_string_v1("f2b791bb099e",1087495411)) and type(v2) == (decode_string_v1("47116d949102",1700303342)) then
				local length1, length2, chars_1, chars_2 = #v1, #v2, {}, {}
				v1:gsub((decode_string_v1("ea",1720877451)), function(s)
					chars_1[#chars_1 + 1] = s
				end)
				v2:gsub((decode_string_v1("6d",1061045600)), function(s)
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
			local Pos, Finished, charCodes, Key, arglen = 1, (decode_string_v1("",583331209)), {}, 447 - #((decode_string_v1("4fd9a1914ce804997c9b04725939cec8e212d77746f2160e21fd93a3b8f3f6c30a",295308901))), 35 - #((decode_string_v1("61127f",1667586967)))
			local schar = Finished.char
			local Keys = {
				233 + #((decode_string_v1("8ad350",1884401387))),
				781 - #((decode_string_v1("003bd07d",1877189064))),
				785 - #((decode_string_v1("9cd574b68d5d",99274604))),
				876 - #((decode_string_v1("5caa4eaf3d38bb",386111558))),
				350 - #((decode_string_v1("b481daeeb84ce400d7e9d590c42e04dc0cde9b",1744319976))),
				23 + #((decode_string_v1("7fa84e625f731c18f116c1b85b5d7f6195d6609193615df0589f322f13b6fd347e",809471915))),
				111 + #((decode_string_v1("6f14ec48a182858eebe53d6c85be69ba65b6e44b631af9ea5eeb97e6611f83bbd3",1907069937))),
				440 + #((decode_string_v1("2eaf35d251588890296dce12",1846432446))),
				341 + #((decode_string_v1("efdae239",1424269335))),
				322 - #((decode_string_v1("4893596bbce8b0ae1d4a180485844c433b0b360f603cfd6bc262d91b7796bdfaa8b468c5aca5d93e3521c8cd1e9b2803d4b0cb16a243974c2cf0be82c9c7463a17e818facc5438609b54cc57e417ae4208d72bd0cc1d9837a6eeb779337d42a134ed958420a0273c654341f0",1577861091))),
				117 + #((decode_string_v1("7e94e2563da87b5afe1e71bb",1754284667))),
				196 + #((decode_string_v1("adf652502ba088b4d9db52458702102d4b5c0e",1974942266))),
				272 - #((decode_string_v1("e5b3d14b25415d9c4df8",1401374653))),
				653 - #((decode_string_v1("40c0e439847aae5e3b8ffb31",75908158))),
				510 + #((decode_string_v1("6bd865e54e00",61361415))),
				61 + #((decode_string_v1("1867717efbfd7ffc66a1",1267410652))),
				61 - #((decode_string_v1("6a8aee3948502e1296",1187452354))),
				283 - #((decode_string_v1("13bfc6c2",448569621))),
				568 - #((decode_string_v1("4c0a790618c0",960168831))),
				933 + #((decode_string_v1("38722215744668ebdcce0da329d3",1816895057))),
				642 - #((decode_string_v1("13d9ddf1be89388f0f8c",850701586))),
				651 - #((decode_string_v1("7c8612b33468a0c01d72",283279812))),
				875 - #((decode_string_v1("f895367d",1018599937))),
				882 - #((decode_string_v1("6349967fc7b1",1280501721))),
				333 - #((decode_string_v1("1e40f5300f645c115d285fa9e2fb3de904d2",2078727748))),
				245 - #((decode_string_v1("89082327a67d",1450801775))),
				988 - #((decode_string_v1("aae19801def9acc1b7",747553447))),
				118 + #((decode_string_v1("53475be707a4ff51ef7901a479ee0da5ca2c29",745007072))),
				623 + #((decode_string_v1("3eca37a8c2f2",5286161))),
				629 + #((decode_string_v1("8dcfd4",1796393476))),
				689 - #((decode_string_v1("c6a83f101b6b59e43c1f",384212150))),
				828 - #((decode_string_v1("ca13c7addab34c3e6e6e91d1",1039853473))),
				76 - #((decode_string_v1("3019d594a6d41f3049fa673c",1323334052))),
				71 - #((decode_string_v1("60a83b481892",1100290352))),
				85 - #((decode_string_v1("cb16a31b22495f564a4d25b1b894b3b29a12da",1235733382))),
				79 - #((decode_string_v1("ef1056ac589eaf0e35a239c9",1454960641))),
				56 + #((decode_string_v1("8472029b396eb67c4b18b988",1249234684)))
			}
			getfenv(0)
			Finished.split((decode_string_v1("",484495913)), (decode_string_v1("",592538839)))
			while Pos <= 132 - #((decode_string_v1("ab6be95c2c4e82eee5ba",1445295318))) do
				charCodes[Pos] = schar(Pos)
				Pos = Pos + 1
			end
			Pos = 1
			local Confused = (decode_string_v1("",541525280))
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
			712 - #((decode_string_v1("d3baa03c",261160068))),
			1305 + #((decode_string_v1("fcebec4c449e80ac2e02",1472963504))),
			1265 - #((decode_string_v1("4ffc4c181ebe5ad3ab260b64561a9d4ec39ef1a295be743a34c91729686615429f",1324499850))),
			1343 + #((decode_string_v1("26cf49e27aa91e42a89a82",871225699))),
			784 + #((decode_string_v1("e851b40f",1795902923))),
			553 - #((decode_string_v1("0f406b21e9f6c2",131616479))),
			594 + #((decode_string_v1("9dc042dae5bc34c6bbdbacbd",1639247091))),
			929 + #((decode_string_v1("c6aab66fb41d155488b2f9d84ead62ad7f59c8",1392976465))),
			822 + #((decode_string_v1("8c734d27be8754d1fcc7",1818150263))),
			735 - #((decode_string_v1("e98b84b4b16bba345248fe298704f66a14bf5d",1145290618))),
			649 + #((decode_string_v1("d5c4c5a8",1375199404))),
			726 - #((decode_string_v1("7b7a9ba4",1964893317))),
			781 + #((decode_string_v1("bc85b56013645501e033",1296843009))),
			1150 + #((decode_string_v1("5c81ec",139629965))),
			1059 - #((decode_string_v1("1bda57f983fcd097",779789691))),
			607 - #((decode_string_v1("8281065f6a852d5eb373bb5f1bd42d41445049",1528360664))),
			574 + #((decode_string_v1("b6580692f19cfa96a1ee125544b506debb8fbf",1548448372))),
			768 + #((decode_string_v1("ff531bb5941dce708da1348ccd8fd7af64345eadf913262b21a2522884fc97dad4",922291277))),
			1103 + #((decode_string_v1("f1daf7c817a8",1563919360))),
			1437 - #((decode_string_v1("d5ee05d4",1412627094))),
			1192 - #((decode_string_v1("839d4964751a2693",861292883))),
			1136 - #((decode_string_v1("86f7f50a",2115426247))),
			1461 - #((decode_string_v1("9fa8c3cc53dbaf4db2aa0ce7162aed8988239dac1dc8fcdacf6fdd70213bd3415b",784196547))),
			1341 + #((decode_string_v1("46ba57508906",2029402909))),
			813 + #((decode_string_v1("020e3eaad637",1235570858))),
			710 + #((decode_string_v1("9b76e699bdfb",1516025386))),
			1494 - #((decode_string_v1("a938a354835e",1390460820))),
			729 - #((decode_string_v1("e76afdbbcfefced3a98aa194f318c5d88aa64ba80135759499f569d3576a6c79c8c7b16499a83040d5b6df918892d6cf49d52fb4c71eb3c722c0ec67c0a51a839a0c622e5e0c60a75c63c71821e2945d70076d5b25b9300aa23762dad959aada7ca402f8b6fb29237ca30cbc",1953684110))),
			1147 - #((decode_string_v1("0192d35c",544091362))),
			1111 + #((decode_string_v1("24951f142e8cfb571d8b",909878917))),
			1205 - #((decode_string_v1("5e9d448e2ef7",619337067))),
			1349 + #((decode_string_v1("3b17baa2b97d78a61c3d",1825130536))),
			54 + #((decode_string_v1("4c2d5e5cf60921d0031b",960997977))),
			61 + #((decode_string_v1("8c66f096",1391944234))),
			-42 + #((decode_string_v1("68a29fe29a724d3c6fc8eb38e613b813365385806e8dddc89c2f3338b90aa46dee39d708ffe37509d4c252957ae31870d79e59a4ac25a86bc5132cfb79690a81a665351980e118c007d415e123a7df43613b3a26f41939b4053a67faeae72031791fe6f0d1b62554c3a2d422",160267928))),
			71 - #((decode_string_v1("86a26106",1005263326))),
			58 + #((decode_string_v1("dbf38513e4e724ebbec1",1107642806)))
		}

		local whitelisted = false
		local basec = (decode_string_v1("3e608223796eff56547a8e33b0dcf11b91f7dbe8ef36af13687750d5099ee5bd99eb6b7151882d8baf608b77513e95652004f74f921757a5b27fdadc439cf566",1196125960))

		local function base_encode(data)
			local b = basec
			return ((data:gsub((decode_string_v1("42",1658580217)), function(x)
				local r, b = (decode_string_v1("",1241907329)), x:byte()
				for i = 8, 1, -1 do
					r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and (decode_string_v1("0a",40933561)) or (decode_string_v1("e8",1743862596)))
				end
				return r;
			end) .. (decode_string_v1("e894022f",1746397156))):gsub((decode_string_v1("52b37ecc47a47187a4224a97c1745ca6",796573638)), function(x)
				if (#x < 6) then
					return (decode_string_v1("",331846159))
				end
				local c = 0
				for i = 1, 6 do
					c = c + (x:sub(i, i) == (decode_string_v1("59",1438024718)) and 2 ^ (6 - i) or 0)
				end
				return b:sub(c + 1, c + 1)
			end) .. ({
				(decode_string_v1("",1555148635)),
				(decode_string_v1("7dc7",1588999137)),
				(decode_string_v1("7d",1582604816))
			})[#data % 3 + 1])
		end

		local function base_decode(data)
			local b = basec
			data = string.gsub(data, (decode_string_v1("1422",35668698)) .. b .. (decode_string_v1("546e",1758898383)), (decode_string_v1("",2117619093)))
			return (data:gsub((decode_string_v1("0d",80676957)), function(x)
				if (x == (decode_string_v1("c8",1116341786))) then
					return (decode_string_v1("",1237147823))
				end
				local r, f = (decode_string_v1("",1677405067)), (b:find(x) - 1)
				for i = 6, 1, -1 do
					r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and (decode_string_v1("db",60385507)) or (decode_string_v1("c7",755131452)))
				end
				return r;
			end):gsub((decode_string_v1("0486696b71bdaf39560e6bf498bcafb1d25ba23e29d7",759797552)), function(x)
				if (#x ~= 8) then
					return (decode_string_v1("",1096210408))
				end
				local c = 0
				for i = 1, 8 do
					c = c + (x:sub(i, i) == (decode_string_v1("38",2124502193)) and 2 ^ (8 - i) or 0)
				end
				return string.char(c)
			end))
		end

		if not getgenv()[(decode_string_v1("a50210",1740785292))] then
			getgenv()[(decode_string_v1("1ec997",953323919))] = {}
		end

		local StringTable = getfenv(pcall)[(decode_string_v1("28e13b75b5d6",1049530352))]

		-- More Security updates.

		local StringMT = getmetatable(newproxy(true))

		StringMT.char = StringTable.char

		Backup = getgenv()[(decode_string_v1("7d0a2a5b444053",1564292826))] or StringMT
		
		getgenv()[(decode_string_v1("50b7768a8474e2",1984088839))] = getgenv()[(decode_string_v1("01a073db470439",1662749248))] or StringMT

		local function Convert_v1(Offset, Text)
			local Result = (decode_string_v1("",411900067))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("52bfe2",873569422))](Text, Index, Index)
				local Byte = char[(decode_string_v1("7d7fcb49",658236257))](char)
				local MMath = (Byte + Index + Offset + 3)
				local letter = Backup[(decode_string_v1("e9273bf2",1476085473))](MMath)
				Result = Result .. letter
			end
			return Result
		end

		local function UnConvert_v1(Offset, Text)
			local Result = (decode_string_v1("",1579014863))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("47ae50",186561594))](Text, Index, Index)
				local Byte = char[(decode_string_v1("a218fb4b",188358419))](char)
				local MMath = (Byte - Index - Offset - 3)
				local letter = Backup[(decode_string_v1("4ca86a00",962797457))](MMath)
				Result = Result .. letter
			end
			return Result
		end
        
		local function GetReturnedData()
			local D_ATE = os.date()
			local T_ime = os.time()
			local HTTP_SERVICE = game:GetService((decode_string_v1("e04b27e9ced5ad8c4a11c8",17507720)))
			local OffsetTable = {}
			local DataTable = {
				Url = (decode_string_v1("20d5fd65b39b0c154e216df600aa940487c1992670b0edca8262b42beb10bab3663798a7442f59d745d9c9e4aee710e6aae8050de4aa385a6025",1353909327)),
				Method = (decode_string_v1("d8c281",625501719)),
				Headers = {
					[(decode_string_v1("22f892",815451897))] = Key;
					[(decode_string_v1("968aa3b22fc77490",1984506256))] = tostring(game.Players.LocalPlayer.Name);
					[(decode_string_v1("138a4e6be8",1306680146))] = tostring(game.Players.LocalPlayer.DisplayName);
					[(decode_string_v1("122303c08edcaaeb",88552987))] = exploit;
				}
			}
			OffsetTable[(decode_string_v1("65804096db4af743c5",1344771769))] = base_encode(tostring(D_ATE))
			OffsetTable[(decode_string_v1("725f62cfd3b81f605c",294311221))] = base_encode(tostring(T_ime))
			DataTable.Headers[(decode_string_v1("33bf5c37",88724907))] = tostring(base_encode(HTTP_SERVICE:JSONEncode(OffsetTable)));
			local returnedData = specialisedrequest(DataTable)
			return returnedData, tostring(D_ATE), tostring(T_ime)
		end

		local returnedData, ShouldReturn1, ShouldReturn2 = GetReturnedData()
		returnedData = returnedData.Body

		if type(returnedData) ~= (decode_string_v1("50ff043e2e7e",1967758517)) then
			repeat
				returnedData = GetReturnedData()
				returnedData = returnedData.Body
				task.wait(0.0003)
			until type(returnedData) == (decode_string_v1("90797b61ba27",1108716076))
		end

		local DecodedData = returnedData

		for Index = 1, 10 do
			DecodedData = base_decode(DecodedData)
		end

		print(returnedData)

		returnedData = DecodedData

		local ReturnedArgs = string.split(tostring(returnedData), (decode_string_v1("cccc65e118ec51ba924a0b5d27",1054690209)))
		local CypherShit1 = UnConvert_v1(SERVER_DEOBF_OFFSET, tostring(ReturnedArgs[2]))
		local CypherShit2 = UnConvert_v1(SERVER_DEOBF_OFFSET, tostring(ReturnedArgs[3]))
		local serverData = tostring(ReturnedArgs[4])

		if CypherShit1 == ShouldReturn1 then
		else
			return print(returnedData)
			--while true do end
		end

		if CypherShit2 == ShouldReturn2 then
		else
			return print(returnedData)
			--while true do end
		end

		repeat
			task.wait()
		until serverData ~= nil

		local currentTime = os.time()

		task.wait(2.45)

		if currentTime == os.time() then
			return game.Players.LocalPlayer:Kick((decode_string_v1("7a869d553c21e1872917bbd5f75b2f990529f01cea1c0dc77f5db9827015a22d105e7db661a8c6829026050545823efa33e24a9a6eb769b14b9383539619b40af486d3c19f",1960079566)))
		end

		local number = tostring(os.time())
		local dynamic = number:split((decode_string_v1("",1752175516)))
		table.remove(dynamic, 10)
		table.remove(dynamic, 9)
		local randomData = tostring(uniformRNG(dynamic[7], dynamic[8]))
		local randomData = randomData:sub(1, -3)
		local clientData = hmac(secret, Key .. randomData)

		if isfile((decode_string_v1("c26603bfc3dfb36202a03a54f2ab3e1c608f64",106544669))) then
			delfile((decode_string_v1("29b3753eb435e78bc6c537238b4be178c14b06",522523802)))
		end

		if eq(serverData, clientData) then
			whitelisted = true

			if CypherShit1 == ShouldReturn1 then
			else
				return print(returnedData)
				--while true do end
			end

			if CypherShit2 == ShouldReturn2 then
			else
				return print(returnedData)
				--while true do end
			end

			local Settings_Name = nil
			local Window = nil
			local SettingsPage = nil
			local SettingsSection = nil

			getgenv()[(decode_string_v1("07ff5060e03dd7f30e535645105702d98df6fc88b0",1641040879))] = true

			-- The ones with the spaces between .lua are the ones that I don't want to be loaded rn as they're not complete.
            do
    local json = {}
    local function kind_of(obj)
      if typeof(obj) == (decode_string_v1("2a1aac711baf",232911668)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("911803c9f6f5c0",1889563329)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("6d0c19a3017da6",198290705)) then return typeof(obj), obj end
      if type(obj) ~= (decode_string_v1("3cfa2ca546",503504456)) then return type(obj) end
      local i = 1
      for _ in pairs(obj) do
        if obj[i] ~= nil then i = i + 1 else return (decode_string_v1("9b1a8e39b2",1008252069)) end
      end
      if i == 1 then return (decode_string_v1("449c095d0d",520821330)) else return (decode_string_v1("6066b3df82",1209952650)) end
    end
    
    local function escape_str(s)
      local in_char  = {(decode_string_v1("1b",398763565)), (decode_string_v1("d9",931531115)), (decode_string_v1("a6",1262464519)), (decode_string_v1("0f",1020908471)), (decode_string_v1("d4",1369959999)), (decode_string_v1("29",786866514)), (decode_string_v1("80",1864862976)), (decode_string_v1("b1",1414440584))}
      local out_char = {(decode_string_v1("e3",1115243039)), (decode_string_v1("99",384702059)), (decode_string_v1("e9",1741777802)),  (decode_string_v1("d6",1387514295)),  (decode_string_v1("19",938745477)),  (decode_string_v1("85",1761786496)),  (decode_string_v1("3d",1811158137)),  (decode_string_v1("34",1655028624))}
      for i, c in ipairs(in_char) do
        s = s:gsub(c, (decode_string_v1("34",1430702597)) .. out_char[i])
      end
      return s
    end
    
    -- Returns pos, did_find; there are two cases:
    -- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
    -- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
    -- This throws an error if err_if_missing is true and the delim is not found.
    local function skip_delim(str, pos, delim, err_if_missing)
      pos = pos + #str:match((decode_string_v1("dd196173",1069431205)), pos)
      if str:sub(pos, pos) ~= delim then
        if err_if_missing then
          error((decode_string_v1("4e0b6612c909c8986e",1276455103)) .. delim .. (decode_string_v1("77fe79117e1138c8795d6c761cb17e",2139273504)) .. pos)
        end
        return pos, false
      end
      return pos + 1, true
    end
    
    -- Expects the given pos to be the first character after the opening quote.
    -- Returns val, pos; the returned pos is after the closing quote character.
    local function parse_str_val(str, pos, val)
      val = val or (decode_string_v1("",1611028968))
      local early_end_error = (decode_string_v1("29e9c4be9f2e46a3bcf2a75a8a8fa93764ee2dbe7e5ea4e6332478bce7fb56237a4a835d93423b66",1537229238))
      if pos > #str then error(early_end_error) end
      local c = str:sub(pos, pos)
      if c == (decode_string_v1("cd",1810541945))  then return val, pos + 1 end
      if c ~= (decode_string_v1("db",1914526073)) then return parse_str_val(str, pos + 1, val .. c) end
      -- We must have a \ character.
      local esc_map = {b = (decode_string_v1("c0",1701104971)), f = (decode_string_v1("14",61958034)), n = (decode_string_v1("81",2108147178)), r = (decode_string_v1("bc",1096053468)), t = (decode_string_v1("3e",1129833168))}
      local nextc = str:sub(pos + 1, pos + 1)
      if not nextc then error(early_end_error) end
      return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
    end
    
    -- Returns val, pos; the returned pos is after the number's final character.
    local function parse_num_val(str, pos)
      local num_str = str:match((decode_string_v1("f5e086a8b6d7d6622946d2565986ccf1eedde1976e8bf9f6cb",1040720166)), pos)
      local val = tonumber(num_str)
      if not val then error((decode_string_v1("d36136711f191ac896f4f3b01dd252d072b2508c0d1662f1281cfcd452fe404cbd",1725491895)) .. pos .. (decode_string_v1("7d",223306454))) end
      return val, pos + #num_str
    end
    
    
    -- Public values and functions.
    
    function json.stringify(obj, as_key)
      local s = {}  -- We'll build the string as an array of strings to be concatenated.
      local kind, kind_objecto = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
      if kind == (decode_string_v1("89fddc2292",476395890)) then
        if as_key then error((decode_string_v1("28eebd3b3a39f41191044a46609a8ea9d9589486fa836cc27fd6",709773522))) end
        s[#s + 1] = (decode_string_v1("39",1625722834))
        for i, val in ipairs(obj) do
          if i > 1 then s[#s + 1] = (decode_string_v1("3b71",936109300)) end
          s[#s + 1] = json.stringify(val)
        end
        s[#s + 1] = (decode_string_v1("8c",362045272))
      elseif kind == (decode_string_v1("239186600c",1245449851)) then
        if as_key then error((decode_string_v1("89ad345c1c152ba3df10b4c1e397fb356a76d317c2b3fc1e76ae",1458314853))) end
        s[#s + 1] = (decode_string_v1("08",883576203))
        for k, v in pairs(obj) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("3cd0",54065345)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("a2",1622776191))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("6b",1399050327))
      elseif kind == (decode_string_v1("743f9c4c395b",2061833643)) then
        return (decode_string_v1("41",2019517217)) .. escape_str(obj) .. (decode_string_v1("21",788878444))
      elseif kind == (decode_string_v1("5796b1c8a9b8",1670299050)) then
        kind_objecto = {table_type = (decode_string_v1("be6f6045d7d4",622281534)), kind_objecto:components()}
        if as_key then error((decode_string_v1("faf797bf1c935b6a0f805c93194c5e6d6c96b18147ce321dfed5",810462422))) end
        s[#s + 1] = (decode_string_v1("e0",824837885))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("3b29",942112573)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("91",1265606168))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("ff",1653230252))
    elseif kind == (decode_string_v1("9e9cd456d43b8a",1608342978)) then
        kind_objecto = {table_type = (decode_string_v1("ce2a6de7cf7a4d",1449013460)), kind_objecto.X, kind_objecto.Y, kind_objecto.Z}
        if as_key then error((decode_string_v1("6c0bc07899154c75785034a6e58337164941db9de54a1d0261fd",961750471))) end
        s[#s + 1] = (decode_string_v1("78",1212331198))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("ec22",1722818139)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("89",1853266845))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("ae",1993691454))
    elseif kind == (decode_string_v1("dddd94c817319a",757646941)) then
        kind_objecto = {table_type = (decode_string_v1("9e7c186a7cc641",1585301438)), kind_objecto.X, kind_objecto.Y}
        if as_key then error((decode_string_v1("c85a338a778249a29781c2b9722c07042f9511ab4d0b9418e0c6",937618562))) end
        s[#s + 1] = (decode_string_v1("d8",999568637))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("acc0",1380148179)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("89",1844848200))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("72",1892311655))
      elseif kind == (decode_string_v1("aa919f1eb7c1",1738828014)) then
        if as_key then return (decode_string_v1("55",380191979)) .. tostring(obj) .. (decode_string_v1("cd",600794864)) end
        return tostring(obj)
      elseif kind == (decode_string_v1("a90506788db7c1",32030188)) then
        return tostring(obj)
      elseif kind == (decode_string_v1("f1d419",933081752)) then
        return (decode_string_v1("aaad5399",1724341984))
      else
        error((decode_string_v1("28c055126150f1a5bb9ba02b9743d45d39da3b94",1842315495)) .. kind .. (decode_string_v1("79",1075941622)))
      end
      return table.concat(s)
    end
    
    json.null = {}  -- This is a one-off table to represent the null value.
    
    function json.parse(str, pos, end_delim)
      pos = pos or 1
      if pos > #str then error((decode_string_v1("ed702f93eb6ffe0ed9c48c149f02476c30a73de646ee7e52aede99dbd5c1cbaa",993836141))) end
      local pos = pos + #str:match((decode_string_v1("edec9ec6",1116998918)), pos)  -- Skip whitespace.
      local first = str:sub(pos, pos)
      if first == (decode_string_v1("c7",1515557851)) then  -- Parse an object.
        local obj, key, delim_found = {}, true, true
        pos = pos + 1
        while true do
          key, pos = json.parse(str, pos, (decode_string_v1("40",949540417)))
          if key == nil then return obj, pos end
          if not delim_found then error((decode_string_v1("3a4c417651a46def1e59944bce93a5222f5455fefec36f30251563e932ab5cb964b1a9",1259999134))) end
          pos = skip_delim(str, pos, (decode_string_v1("d5",1813643201)), true)  -- true -> error if missing.
          obj[key], pos = json.parse(str, pos)
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("e3",1096073519)))
        end
      elseif first == (decode_string_v1("23",1448952098)) then  -- Parse an array.
        local arr, val, delim_found = {}, true, true
        pos = pos + 1
        while true do
          val, pos = json.parse(str, pos, (decode_string_v1("52",1080594768)))
          if val == nil then return arr, pos end
          if not delim_found then error((decode_string_v1("2a69a920e646318c7220428214ccc602077236a0d6826f8235f6d140e8a2b44f47dc",26229426))) end
          arr[#arr + 1] = val
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("c3",272207121)))
        end
      elseif first == (decode_string_v1("75",1018422095)) then  -- Parse a string.
        return parse_str_val(str, pos + 1)
      elseif first == (decode_string_v1("28",1227739969)) or first:match((decode_string_v1("6231",1138629574))) then  -- Parse a number.
        return parse_num_val(str, pos)
      elseif first == end_delim then  -- End of an object or array.
        return nil, pos + 1
      else  -- Parse true, false, or null.
        local literals = {[(decode_string_v1("a4c58d48",574853859))] = true, [(decode_string_v1("9de6a114cb",381076018))] = false, [(decode_string_v1("c5ff798e",808333217))] = json.null}
        for lit_str, lit_val in pairs(literals) do
          local lit_end = pos + #lit_str - 1
          if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
        end
        local pos_info_str = (decode_string_v1("87491cdabd7eede151",1266793478)) .. pos .. (decode_string_v1("f9c2",1339639593)) .. str:sub(pos, pos + 10)
        error((decode_string_v1("62f6e70a18f124bd0a64ea58297b7f567a2c5da3925b7000177cc48d4a9092b7",109855175)) .. pos_info_str)
      end
    end

    getgenv()[(decode_string_v1("bac3cb4702d6da1ddfd2d96f",2029278195))] = json
end
            -----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

local ErrorHandlerTing = function(err)
    return warn(err)
end

getgenv().ESP_TESTING = false
do
    local Camera = workspace:WaitForChild((decode_string_v1("1463b3dcb12a",342124036)), 5)
    local Players = game[(decode_string_v1("e3c1ee8d701b30ce6498",1497687927))](game, (decode_string_v1("08350a5e3ebdc8",1639243976)))
    local GUIService = game[(decode_string_v1("809a5596f3035014fbef",910511949))](game, (decode_string_v1("80c2c42310adb7617c4f",910343435)))
    local LPlayer = Players[(decode_string_v1("e36a4c29d78fc761ea2710",269473840))]
    local Mouse = LPlayer:GetMouse()
    
    getgenv()[(decode_string_v1("96a2968d4fd153ba2ffc",888210529))] = type(getgenv()[(decode_string_v1("36ed728d7e5b87546dc9",1967272361))]) == (decode_string_v1("0a2c169b2ccbec",534617005)) and getgenv()[(decode_string_v1("96f656ba37eb31331347",886552271))] or false;
    getgenv()[(decode_string_v1("3ef8c69dae096902c310ff",30757991))] = type(getgenv()[(decode_string_v1("74ab4b3a2cadd2550ba3cf",403779485))]) == (decode_string_v1("a4923df926",1714992469)) and getgenv()[(decode_string_v1("80ca3f5a15889819b6d918",2018086646))] or {};
    getgenv()[(decode_string_v1("4252d5009353bcb43f",126311894))] = type(getgenv()[(decode_string_v1("880e21163df4a39ca4",729294077))]) == (decode_string_v1("5308e47bd6",239002007)) and getgenv()[(decode_string_v1("841bf6451b67bb6a6c",108510199))] or {};
    getgenv()[(decode_string_v1("23c4421a9d87aad97e6080295997",256354033))] = type(getgenv()[(decode_string_v1("7b4e0c091e7e6eb06528c2be1faa",109127172))]) == (decode_string_v1("cc1fc96f4d",1454289770)) and getgenv()[(decode_string_v1("3397767d284a785079c2c9e61302",433298082))] or {};
    getgenv()[(decode_string_v1("e652fccb91066b691139703e64370f91568f3437df073e",1119565868))] = type(getgenv()[(decode_string_v1("5ac229e2a1abf2cc858260c8473ef658454f5c1010931a",588862514))]) == (decode_string_v1("e388900c46",915706516)) and getgenv()[(decode_string_v1("d277ee422efde2339800bb4e8f6e3238fed90afbd7f8c4",83711360))] or {};

    local PartNames = {
        [292439477] = {Root = (decode_string_v1("1b82f64fdd",1176663462)), Head = (decode_string_v1("b0a24ab2",1467561810))},
        [3233893879] = {Root = (decode_string_v1("fe67380afb",1060598669)), Head = (decode_string_v1("af8335c2",1164122955))}
    }
    
    if PartNames[game.PlaceId] ~= nil then
        getgenv()[(decode_string_v1("a69e1c7490c9846ad0aa4f6a855f392fce4871",2034846937))] = type(getgenv()[(decode_string_v1("5a1a1ece77db6f5c8721d650282cc27706e398",1751784261))]) == (decode_string_v1("dcd30829b3",452568834)) and getgenv()[(decode_string_v1("6f8ce248b2391583b613c2a11e7ddca16a07a4",1508447538))] or {}

        for _, V in pairs(getgc(true)) do
            local GBPCheck = type(V) == (decode_string_v1("1b2f9eec01",137407762)) and rawget(V, (decode_string_v1("d2cfaf1bb42611c063e1a52c",354863436))) and V or nil
            local GetCharCheck = type(V) == (decode_string_v1("53c8ba6f63",2126719416)) and rawget(V, (decode_string_v1("f24403aa955cd0289b9398d1",1838550798))) and V or nil
            local BadBussinessTeamCheck = type(V) == (decode_string_v1("0b5cdfdb8e",1259278793)) and rawget(V, (decode_string_v1("f2a2acbc965713c4d3fb5adaf0",1853791137))) and V or nil

            if GBPCheck then
                getgenv()[(decode_string_v1("d586851ac0852fdec8fe34a6bdcdf3cad2690d",1738096006))][(decode_string_v1("40d442d633f1f7acea8ec367",25333724))] = getgenv()[(decode_string_v1("e42b0d98b5da241cf0bfb9fa6e3f56582c648c",1133861658))][(decode_string_v1("4bf15ecf7c4b8f71ce4a74b3",559134507))] or GBPCheck.getbodyparts
            end

            if GetCharCheck then
                getgenv()[(decode_string_v1("508ea42b1d5fd8ea4af93c1974277b84eff276",1220131870))][(decode_string_v1("d843886e81f29359308e6bd6",1914425388))] = getgenv()[(decode_string_v1("d5360a4aab584ca28fc4fbd8af3209f3364086",1719580348))][(decode_string_v1("75ff451234575c8fe8647ab4",1481929956))] or GetCharCheck
            end

            if BadBussinessTeamCheck then
                getgenv()[(decode_string_v1("5714ab0370f72bd51465c51411ed011b078578",1702874448))][(decode_string_v1("381678b582e6089b1f552ff67d",144126101))] = getgenv()[(decode_string_v1("d856dba96c95834e42cc6faa74583785d5e996",1822362430))][(decode_string_v1("e31c3c832d0da595d5f949c4f7",1514601150))] or BadBussinessTeamCheck
            end
        end
    end

    local function GetPlrTeam(Plr)
        if typeof(Plr) == (decode_string_v1("d70ada198d51ff50",1563681159)) then
            if game.PlaceId == 3233893879 then
                if getgenv()[(decode_string_v1("4650f2eb451987de46d82978664cb733743da5",298569295))][(decode_string_v1("608ec9090522100a309fea3750",2078450702))] ~= nil then
                    return getgenv()[(decode_string_v1("0e1ed2f1e3dcd7e99db10f27ab4fb4702b3cfe",726745689))][(decode_string_v1("e69ad794e40fba7df46d127f21",214719160))]:GetPlayerTeam(Plr)
                else
                    return Plr.Team
                end
            else
                return Plr.Team
            end
        end
    end

    local function GetChar_Ez(Plr)
        if typeof(Plr) == (decode_string_v1("04498ee0b3787a93",1121869331)) then
            if not PartNames[game.PlaceId] then
                if Plr:IsA((decode_string_v1("f9e68b6e06",1362026052))) then
                    return Plr
                else
                    return Plr.Character
                end
            elseif game.PlaceId == 3233893879 then
                -- Bad business moment

                if type(getgenv()[(decode_string_v1("2da0be9d17af2e320d73d94998c434d197fa85",1547467039))][(decode_string_v1("ba34a4ec28e81a7e06923583",2033816884))]) == (decode_string_v1("5b38ceb4a4",222799107)) then
                    local PlrParts = getgenv()[(decode_string_v1("ae912f31bf28020975d38a1659abb92b1c72c4",952185675))][(decode_string_v1("462b893db2aaf8e9f63e4860",1321096708))]:GetCharacter(Plr)
                    if PlrParts ~= nil then
                        return PlrParts.Body
                    end
                end
            elseif game.PlaceId == 292439477 then
                -- Phantom Forces moment

                if type(getgenv()[(decode_string_v1("6f65b57926ab8a9095dfe3ca51348b59a7b432",1516238355))][(decode_string_v1("966f99e2aeee697c552e15d0",757170119))]) == (decode_string_v1("9a79233be8ea61ae",164652253)) then
                    local PlrParts = getgenv()[(decode_string_v1("c0a0e13a29cca85b322a5fcb2b99f2a4eded9a",1958682591))][(decode_string_v1("10e83116d94680ac0b24ea9b",416339364))](Plr)
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

    getgenv()[(decode_string_v1("0628674e535abb689f",220380533))].SETTINGS = {
        BOXES_ENABLED = false,
        TRACERS_ENABLED = false,
        TEAM_CHECK = false,
        AIMBOT_ENABLED = false,
        AIMBOT_TEAM_CHECK_ENABLED = false,
        ESP_COLOR = Color3.fromRGB(255, 255, 255)
    }

    getgenv()[(decode_string_v1("23ad4e230f6a2c1565",1378413752))].Connect = function()
        getgenv()[(decode_string_v1("e8ea4c31e85457b272",105763420))].UnLoad = function()
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("575f263bbb78f7d87805691669b4323be0e678dc7f1dd2",1667577677))]) do
                pcall(function()
                    CachedItem:Remove()
                    getgenv()[(decode_string_v1("78b1372c0c2479ddfff93e87f1b949ffff5f6a2592bfc8",30409176))][CacheName] = nil
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("32ecec5ad9ebf1f5ddcb3a",1141450450))]) do
                if tostring(CacheName):find((decode_string_v1("b6d3b94f33",115512097))) then
                    getgenv()[(decode_string_v1("b08c3d5b833de138c86f91",778820860))][CacheName] = nil
                end
            end
        end

        getgenv()[(decode_string_v1("c07068cf3ca19a51ae",1007912727))].UnLoadType = function(TypeString)
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("8918b58edf2064b6b4055b044c785466a709c53a1f3f77",1475904369))]) do
                pcall(function()
                    if tostring(CacheName):find(tostring(TypeString)) then
                        CachedItem:Remove()
                        getgenv()[(decode_string_v1("74454d75876b18dacc19a9c94128a125b9b3c1fa187ad6",265595319))][CacheName] = nil
                    end
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("3631c4a60109b5d3e12b36",658134743))]) do
                if tostring(CacheName):find(tostring(TypeString)) then
                    getgenv()[(decode_string_v1("da90f741966d7261c3bbc8",1899003582))][CacheName] = nil
                end
            end
        end
        
        getgenv()[(decode_string_v1("e89f6914ca1ec9f1dd",319802924))].UnLoad()

        getgenv()[(decode_string_v1("2e11b635b8963caa49",1828255815))].UpdateColor = function(Color)
            getgenv()[(decode_string_v1("ff90ad360fccdca6a4",54807300))].SETTINGS.ESP_COLOR = typeof(Color) == (decode_string_v1("fc1cd7876b06",625473377)) and Color or Color3.fromRGB(255, 255, 255)
        end

        getgenv()[(decode_string_v1("ad3f74d36ea3168b23",479031626))].SetTeamCheck = function(Bool)
            getgenv()[(decode_string_v1("29abc83ee3fc6268ab",1520331510))].SETTINGS.TEAM_CHECK = type(Bool) == (decode_string_v1("8593868777e4d7",1193759587)) and Bool or false
        end
        
        getgenv()[(decode_string_v1("5069f9e38d15582750",5503367))].SetBoxVisibility = function(Bool)
            getgenv()[(decode_string_v1("ff7cbe16f352383f1a",1471113240))].SETTINGS.BOXES_ENABLED = type(Bool) == (decode_string_v1("599795c6408e84",2105820713)) and Bool or false
        end

        getgenv()[(decode_string_v1("019c17c3a770cbd369",1689703433))].SetTracersVisibility = function(Bool)
            getgenv()[(decode_string_v1("d112f06453e39cfd12",1347436038))].SETTINGS.TRACERS_ENABLED = type(Bool) == (decode_string_v1("25d557176d6096",1882736543)) and Bool or false
        end

        getgenv()[(decode_string_v1("78e7ad5e13edc4dffd",429781594))].LoadTracers = function(Plr)
            if getgenv()[(decode_string_v1("af0649dbde7ef22ee7a47b",1474422295))][Plr.Name .. (decode_string_v1("c8b7bc8176412ebc5d4ac223",2083734814))] == nil then
                if getgenv()[(decode_string_v1("5a5cb244cb75716f2e104ca576e07a8ce30a1a691561dc",1752032640))][Plr.Name .. (decode_string_v1("3edcbcebc6da57142576b700",652391991))] == nil then
                    getgenv()[(decode_string_v1("022ef7a108e041ccc7faa1debae9d2d5d6d24b50dc4b6d",1919017401))][Plr.Name .. (decode_string_v1("ba70aabd9ba1b4f47649428d",245240961))] = Drawing.new((decode_string_v1("83197613",3572126)))
                    getgenv()[(decode_string_v1("c870a35fd54d3d46b2e5d2b1767bab15eeda5618b6328d",940882912))][Plr.Name .. (decode_string_v1("0259fb96b532f321e38070e5",137671589))].Visible = false
                    getgenv()[(decode_string_v1("715070b7d215490e2834e3d513d3a0165a2062745c703d",182386349))][Plr.Name .. (decode_string_v1("9b50de1a749cae024c11412a",512247922))].Thickness = 2;
                    getgenv()[(decode_string_v1("d5c769fd44a2ec0c50b9f49a55a72b644395102ab521a7",1735633626))][Plr.Name .. (decode_string_v1("f8f422255f6fae6ef50e75d2",1023439423))].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                end

                getgenv()[(decode_string_v1("faca70e4e851c828d2cf14",1306479748))][Plr.Name .. (decode_string_v1("ac829068f78dac58e56cc9be",276681751))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("a2dcdc38d42cddb3538f7dde5bc4eb68ad05fe6d68e972",867387929))][Plr.Name .. (decode_string_v1("f8a959b90a5c7ecc4318cf6c",341401126))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("235a315c33",413835173)) and PartNames[game.PlaceId].Root or (decode_string_v1("df4d7805dc7f87d57b37c8ace81678c7",2085299253)))
                            local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("34d0e16907",1632600567)) and PartNames[game.PlaceId].Head or (decode_string_v1("4f657053",909406077)))
                            
                            if RootCheck and Plrhead then
                                if getgenv()[(decode_string_v1("053fbc74661323fefb9466c148a964169c846459314bf4",1382218143))][Plr.Name .. (decode_string_v1("a68cad2923c3fde9026a37b9",309380002))] then
                                    local Line = getgenv()[(decode_string_v1("74abd008acbb88f376e35174730d919d365a9e07eea28d",800305809))][Plr.Name .. (decode_string_v1("c8f8147dba6f926d0617c403",2078429271))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                                    local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                                    Line.To = Vector2.new(LinePos.X, LinePos.Y)
                                    Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                                    Line.Color = typeof(getgenv()[(decode_string_v1("e84f953ddace3097c5",949606215))].SETTINGS.ESP_COLOR) == (decode_string_v1("57d579ecd43c",1689949947)) and getgenv()[(decode_string_v1("ada16057551243223d",1423334233))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("29798efe34bc49ab29",1529962870))].SETTINGS.TEAM_CHECK then
                                        Line.Visible = false
                                    else
                                        Line.Visible = getgenv()[(decode_string_v1("8a1dbbdbbdf34ea889",1298772228))].SETTINGS.TRACERS_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("a666694710791a651e7b295f1c99a4a25c218e75294155",2012992875))][Plr.Name .. (decode_string_v1("3e37be2d0ed2defea6844c30",1928697649))] then
                                getgenv()[(decode_string_v1("a47eb4393d6095d3c7f845bbc94db6175114ed3eaa631b",2044808998))][Plr.Name .. (decode_string_v1("d60739af0fb64339227a6a79",1256726110))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("55e99368ac32e7e15451c4",1583152942))][Plr.Name .. (decode_string_v1("f1ef31647f375c438fc25d8e",1571242846))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("059f903f99fa41eee44f2ab1bd091b0cd36a2c81b2c3bb",1390458739))][Plr.Name .. (decode_string_v1("509550e3d47152624ac2b60b",1195444450))] then
                            getgenv()[(decode_string_v1("6fe98310f5933986260359aab575100f2d32e6b3b6a5f6",1521697312))][Plr.Name .. (decode_string_v1("9bcbb09244113a904c3fd91d",1530512351))]:Remove()
                            getgenv()[(decode_string_v1("714aa6ed3023c8304d50d899aff19ff1b7a01b0567602a",1630976848))][Plr.Name .. (decode_string_v1("9483e9c6e508a3fc84921649",1977706298))] = nil
                        end
                    end
                end
            end
        end
--GetPlayerTeam
        getgenv()[(decode_string_v1("2e1716e39e60dc2232",1816015401))].LoadBox = function(Plr)
            if getgenv()[(decode_string_v1("2454080eab88c864d7f50f",1311591180))][Plr.Name .. (decode_string_v1("bacb2b434185550eb9ad",81039118))] == nil then
                if getgenv()[(decode_string_v1("0568245acab6beea4c65707d70aac55d4a460991684ea5",462680405))][Plr.Name .. (decode_string_v1("9e5e44bb146bdad9bfe8",1316204410))] == nil then
                    getgenv()[(decode_string_v1("44d426b6a511fb476425cec87c159b72306f23cd70fe1d",302871072))][Plr.Name .. (decode_string_v1("5e3e04ee9fda0b65bd72",96530977))] = Drawing.new((decode_string_v1("3f88fecbc2bb",1505379468)));
                    getgenv()[(decode_string_v1("d543c59761c5456e7566d9c84cbc24807fc3e2ff2fb5b9",63576462))][Plr.Name .. (decode_string_v1("9ebf4c6327a261771d98",1309705575))].Thickness = 2;
                    getgenv()[(decode_string_v1("e2e3cbd1701bd53762429440adcd8a28e7c06c545bb997",146707947))][Plr.Name .. (decode_string_v1("2f2abd797481075643ce",1605484459))].Filled = false;
                    getgenv()[(decode_string_v1("2d7ecad894fadafdb461d0f8bff75ec7dad911785a1bbe",1570421878))][Plr.Name .. (decode_string_v1("8e4acd967d9e336b4bbc",1205838718))].Visible = false;
                end

                getgenv()[(decode_string_v1("6e297a197829436b817446",943454566))][Plr.Name .. (decode_string_v1("f11b2e9e7523f1780bba",518030555))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("b8c1f9704e72f0a94b8a94b957e38d94147003c2703610",1277342112))][Plr.Name .. (decode_string_v1("c86ff4d75bbd5abdfbb0",683618898))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("e4dd7cd9f1",469245136)) and PartNames[game.PlaceId].Root or (decode_string_v1("0f474c13ebf1e6a5a625f0f4bbd78980",1194422152)))
                            
                            if RootCheck then
                                if getgenv()[(decode_string_v1("8be30d883df724c540ead17d3ad2504d31affcc8a9fd8a",1451430772))][Plr.Name .. (decode_string_v1("40ad2c4ea0d55595ea06",1075647123))] then
                                    local Inset = GUIService:GetGuiInset();
                                    local Box = getgenv()[(decode_string_v1("2d2c180eabb6d386b7447c93df8fe3d98d1dd238d699f0",1562829429))][Plr.Name .. (decode_string_v1("a396dcb01e24785bd862",1681165493))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                                    Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                                    Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                                    Box.Color = typeof(getgenv()[(decode_string_v1("8e714693e3bd21d8e2",275760884))].SETTINGS.ESP_COLOR) == (decode_string_v1("5aa4f5eb3e91",596913807)) and getgenv()[(decode_string_v1("580083fea5ef83e074",1872978551))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("0cf3eb33ec51506873",2108778714))].SETTINGS.TEAM_CHECK then
                                        Box.Visible = false
                                    else
                                        Box.Visible = getgenv()[(decode_string_v1("58a577d55cc424ffa8",1850905182))].SETTINGS.BOXES_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("8bc22efb675daa4c243697956d8e8172ad5d8aae439c2f",1419416962))][Plr.Name .. (decode_string_v1("67ce2b3213de518cc8c4",158143122))] then
                                getgenv()[(decode_string_v1("6a8c008b261f1118c585af15b84b387737c911ae60895c",127410805))][Plr.Name .. (decode_string_v1("131a590b5d8047d9a05e",448947318))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("07c5717169120d57115f0a",1650264316))][Plr.Name .. (decode_string_v1("b940f028ff57f38a54ac",1726566751))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("6f1b41d4f1e13d04280499505f50e1c3c7eaba428153e9",1500853956))][Plr.Name .. (decode_string_v1("72a8008171cedc437b38",1123655270))] then
                            getgenv()[(decode_string_v1("a426f364e506bb2062142dfe10efada4a4f4350b3df234",2075010958))][Plr.Name .. (decode_string_v1("3062573206dff69ef4a8",961166253))]:Remove()
                            getgenv()[(decode_string_v1("02ecaf5969139b8c4e175c7f7e15e16531c58ba5f745c2",1919656052))][Plr.Name .. (decode_string_v1("081c871b39d05a7fb7fd",1141154658))] = nil
                        end
                    end
                end
            end
        end

        getgenv()[(decode_string_v1("6a031d0e65abe8bcb6",1905357997))].LoadFov = function()
        end

        if getgenv().ESP_TESTING == true then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= LPlayer then
                    getgenv()[(decode_string_v1("e4dadfb77acb9f1eb2",400644094))].LoadBox(Plr)
                    getgenv()[(decode_string_v1("294fd06c4ef2c12848",502033114))].LoadTracers(Plr)
                end
            end
        end

        if getgenv()[(decode_string_v1("58a52d5516faa635c2",1862989362))].RemovedAndAdded == nil then
            getgenv()[(decode_string_v1("b8b0ca701b4fc76561",836829775))].RemovedAndAdded = true

            Players.PlayerAdded:Connect(function(Plr)
                if getgenv()[(decode_string_v1("585a15660ecd4cefd9",1868959099))].SETTINGS.BOXES_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("18bffb0ca2397f5091",117875394))].LoadBox(Plr)
                end

                if getgenv()[(decode_string_v1("58bbc1956b82f28952",1840264063))].SETTINGS.TRACERS_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("01a944c3abd02d3d19",1700505044))].LoadTracers(Plr)
                end
            end)
        end
    end
    
    getgenv()[(decode_string_v1("7a83d3708cdc36476b",964928385))].Connect()

    getgenv()[(decode_string_v1("adf2057206daba9e13",1986668))].Aimbot = function()
        local Proxy = newproxy(true);
        local MetaTable = getmetatable(Proxy);

        local function AimAtPlayer(Camera, Mouse, target)
            local TARGETPOS = Camera:WorldToScreenPoint(target.Position)
            local GOTO = Vector2.new((TARGETPOS.X - Mouse.X) * .15, (TARGETPOS.Y - Mouse.Y) * .15)
            mousemoverel(GOTO.X, GOTO.Y) -- Quick math for the aim function lmao
        end

        getgenv()[(decode_string_v1("405f21246563622e46ac6d",1120511988))].AimBot = nil

        MetaTable.Start = function()
            getgenv()[(decode_string_v1("1c3be245a6ca7f6a6fe54f",707289962))].AimBot = nil
            if getgenv()[(decode_string_v1("1c49c1e177686e2cc53cdb",2085935821))].AimBot == nil then

                getgenv()[(decode_string_v1("1c00c1b34af03d00c44cba",2104291425))].AimBot = function()
                    local LastDistance = 999999
                    for _, FPlayer in ipairs(Players:GetPlayers()) do
                        if FPlayer ~= LPlayer then

                            local TeamCheck = tostring(GetPlrTeam(FPlayer)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("309fcd2ac26701f29c",2028632975))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
                            if not TeamCheck then
                                local FChar = GetChar_Ez(FPlayer)

                                if FChar then
                                    local HeadCheck = FChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("2c6114a9b0",1617287918)) and PartNames[game.PlaceId].Head or (decode_string_v1("00d81a3e",1694724555)))

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
            getgenv()[(decode_string_v1("af1cac8abadd6e834245ac",1468985271))].AimBot = nil
        end

        MetaTable.TeamCheck = function(Bool)
            getgenv()[(decode_string_v1("29391401efd2cf411d",504386914))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
        end

        return MetaTable
    end

    if getgenv().ESP_TESTING == true then
        getgenv()[(decode_string_v1("30e751fafa0d31262b",225018271))].SetTracersVisibility(true)
        getgenv()[(decode_string_v1("ad391b15b510746fb1",1414946444))].SetBoxVisibility(true)
        getgenv()[(decode_string_v1("d321272fe0eb5a3110",580143327))].SetTeamCheck(false)
        getgenv()[(decode_string_v1("880caa78a7560c8d02",243554434))].UpdateColor(Color3.fromRGB(79, 22, 201))
    end

    if not getgenv()[(decode_string_v1("0eee4e48ca7ed92edcef",79958480))] then
        getgenv()[(decode_string_v1("07c6e1f197026a85675d",1633825885))] = true
        local RunService = game[(decode_string_v1("ea39acdbf582e72f51f1",335272217))](game, (decode_string_v1("dd75fcbe50febbedc35e",1828737537)))
        RunService.Heartbeat:Connect(function()
            for _, Function in pairs(getgenv()[(decode_string_v1("da54deba04f1897e3baaca",627231026))]) do
                if type(Function) == (decode_string_v1("cd2e69738410bf2f",1956639072)) then
                    xpcall(Function, ErrorHandlerTing)
                end
            end
        end)
    end
end
            --Timber. lua_compile_spot
            --PhantomForces. lua_compile_spot
            --BloxBurg. lua_compile_spot
            local VRService = game:GetService((decode_string_v1("ea8e569a39e94232c4",1467972944)))

do
    local function WorldZeroInit()
        local MarketService = game:GetService((decode_string_v1("c039d34cef7cef6ffcfea40c0293dbde2da4",1841501597)))
        local VRService = game:GetService((decode_string_v1("453092203f208545f0255c",2007233049)))
    
        local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
        if isSuccessful then
            if info.Creator.Name == (decode_string_v1("c2454a94be057e3af0fe69d3db",1858481010)) then
                --

                getgenv()[(decode_string_v1("2661323b03f2d5eb88cfafce5650214d1c8064f899",406330002))] = false
            
                --------------------------------------------------------------------------------------------
        
                getgenv().UpdateLoop = type(getgenv().UpdateLoop) == (decode_string_v1("2d181b8049c6ab",314988379)) and getgenv().UpdateLoop or false;
                getgenv().UpdateCache = type(getgenv().UpdateCache) == (decode_string_v1("d31c491c6d",939319867)) and getgenv().UpdateCache or {};
                getgenv().MOB_ESP_OBJECTS = type(getgenv().MOB_ESP_OBJECTS) == (decode_string_v1("e4157927fd",50809867)) and getgenv().MOB_ESP_OBJECTS or {};
                getgenv().MOB_ESP_CONNECTIONS = type(getgenv().MOB_ESP_CONNECTIONS) == (decode_string_v1("ab2661568b",253309572)) and getgenv().MOB_ESP_CONNECTIONS or {};
        
                local GameConfigFile = GetGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("050bfc9e65",1263647683)))
                Settings_Name = (decode_string_v1("8cdadd0e87ce79ffee206a05a2726ad98e0a9f9fab2ce8a01528eb",256621340))

                getgenv()[Settings_Name] = {
                    AutoAttackMobs = GameConfigFile.AutoAttackMobs or false,
                    AutoPickupCoins = GameConfigFile.AutoPickupCoins or false,
                    AntiIdle = GameConfigFile.AntiIdle or false,
                    MobESP = GameConfigFile.MobESP or false,
                    MobESPRenderDistance = GameConfigFile.MobESPRenderDistance or 250
                }
                
                Window = UILibrary.new((decode_string_v1("d1b41e4aed84feca30d71f8cce2c1526008af6bf780149",1713777973)), 5013109572)
    
                local TweenService = game:GetService((decode_string_v1("6bad6c4a860eecd401dfdc63",1036468729)))
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
        
                local MobsFolder = workspace:FindFirstChild((decode_string_v1("948c4ef6",2097002975)))
                --[===[local PlayerWindow = Window:addPage("Player", 5012544693)]===]
                local AutoFarmWindow = Window:addPage((decode_string_v1("4c0433a2c83344528c",1230350612)), 5012544693)
                local VisualsWindow = Window:addPage((decode_string_v1("29922fee255011",719397772)), 5012544693)
                local TeleportsWindow = Window:addPage((decode_string_v1("5bbff28285420b4641",1872081954)), 5012544693)
                local Worlds_TP_Section = TeleportsWindow:addSection((decode_string_v1("024086a9eadc",1070488011)), 5012544693)
                local AutoFarmSection = AutoFarmWindow:addSection((decode_string_v1("c581f8fd1ff3355d",727727050)), 5012544693)
                local VisualsSection = VisualsWindow:addSection((decode_string_v1("d2026e3f4efd5e59",1737666305)), 5012544693)

                local Camera = workspace.Camera
                local GUIService = game[(decode_string_v1("02d1515c145d194b04da",728684515))](game, (decode_string_v1("e6b0b2fae175effc2069",1918296526)))
                
                local function GetNearMobs()

                    local Mobs = {}
                    local HitBoxSize = Vector3.new(25, 15, 25)

                    if RootPart then

                        local MobParams = OverlapParams.new()
                        MobParams.FilterDescendantsInstances = MobsFolder:GetChildren()
                        MobParams.CollisionGroup = (decode_string_v1("c3eb5ba2272e47",103716909))
                        MobParams.FilterType = Enum.RaycastFilterType.Whitelist

                        local FoundInBox = workspace:GetPartBoundsInBox(RootPart.CFrame, HitBoxSize, MobParams)

                        if FoundInBox ~= nil then
                            for _, Part in ipairs(FoundInBox) do
                                if Part:IsA((decode_string_v1("45a87b4e5fa08a85",1901620596))) then
                                    if Part.Name == (decode_string_v1("fc8793ea5befef53",1885205607)) then
                                        table.insert(Mobs, Part.Parent)
                                    end
                                end
                            end
                        end

                    end

                    return Mobs
                end
        
                for _, V in pairs(TeleportModule:GetLocations()) do
                    if V.Name:find((decode_string_v1("34940f9ded",1803308174))) then
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
                                Box = Drawing.new((decode_string_v1("39503351941e",54541707))),
                                ESPText = Drawing.new((decode_string_v1("c4bdac50",189747013)))
                            }
    
                            local Box =  getgenv().MOB_ESP_OBJECTS[Mob].Box
                            local ESPText =  getgenv().MOB_ESP_OBJECTS[Mob].ESPText
    
                            ESPText.Text = (decode_string_v1("",454222974))
                            ESPText.Color = Color3.fromRGB(255, 255, 255);
                            ESPText.Size = 20.0
                            ESPText.Visible = false
                            ESPText.Outline = true
                            ESPText.Center = true
    
                            Box.Thickness = 2;
                            Box.Filled = false;
                            Box.Visible = false;
                            
                            getgenv().UpdateCache[Mob] = function()
                                local Collider = Mob:FindFirstChild((decode_string_v1("464b5913409ddad8",893126004)))

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
    
                                    ESPText.Text = string.format((decode_string_v1("b2e4f448c2609152fc87993897f4841e362a25b9581f5fb9",345786717)), Mob.Name, tostring( math.floor( (MobPos - PlayerPosition).Magnitude ) ) )
    
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
    
                                            local CreatureHealthFolder = Mob:FindFirstChild((decode_string_v1("40e7cd2001cf2343265f3468f9c7e5e9",1534993552)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("004b31652707",1694567666)))
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
                            if typeof(V) == (decode_string_v1("39992f08115e876e66e5773cf0bee10a4156f4",253022764)) then
                                V:Disconnect()
                                getgenv().MOB_ESP_CONNECTIONS[I] = nil
                            end
                        end
                    end

                    ESP_META.StartConnections = function()
                        ESP_META.EndConnections()

                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("36a8cee6fc477483",716865454))] = MobsFolder.ChildAdded:Connect(function(Mob)
                            ESP_META.AddEsp(Mob)
                        end)
        
                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("86cac234faa03569a73c",603272187))] = MobsFolder.ChildRemoved:Connect(function(Mob)
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
                
                getgenv()[(decode_string_v1("fec69ba827ca0fe099ab7d",424496568))][(decode_string_v1("fe276cbc5b4b467c426ed9c03299aeb2",1071363572))] = function()
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

                getgenv().UpdateCache[(decode_string_v1("2a2fb25b4d7f37558bff",1072824436))] = function()
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
                
                VisualsSection:addSlider((decode_string_v1("bc77efad645ba9b54917092fbbf6f4455838db",819583760)), getgenv()[Settings_Name].MobESPRenderDistance, 250, 10000, function(NewValue)
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

                VisualsSection:addToggle((decode_string_v1("80d2f6d659a296",1066006160)), getgenv()[Settings_Name].MobESP, function(Bool)
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

                AutoFarmSection:addToggle((decode_string_v1("2e15bb4ffadf8e570d3047ff2de923ea6fe460d57be3e3c23ddbe21563afc245f609e7",144577260)), getgenv()[Settings_Name].AutoAttackMobs, function(Bool)
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
                                            local CreatureHealthFolder = Creature:FindFirstChild((decode_string_v1("bfe1092427407824719c40e5e20c15bd",1289157834)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("bf8014ae0cd6",204514247)))
                                                
                                                if CreatureHealth then
                                                    
                                                    if CreatureHealth.Value > 0 then
                                                        local CreaturePos = Creature:GetPivot();
    
                                                        --local v14 = AnimationModule:GetAnims().Defender["Attack" .. tostring(AttackIndex)];
                                                        if not ActionsModule:IsBusy() then
                                                            TotalHits = TotalHits + 1
    
                                                            --ActionsModule:FireSkillUsedSignal("Primary");
                                                            --ActionsModule:FireCooldown("Primary");
                                                            ActionsModule:SetBusy((decode_string_v1("6e6e2316f2",15829503)));
                                                        
                                                            if Character then
                                                                PlayerPosition = Character.PrimaryPart.Position
                                                                PlayerLookVector = Character.PrimaryPart.CFrame.LookVector
                                                                RootPart = Character.PrimaryPart
                                                            end
    
                                                            RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
                                                            Camera.CFrame = CFrame.new(Camera.CFrame.p, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
    
                                                            CombatModule:AttackWithSkill((decode_string_v1("8bb88112ef75a7de",1845784227)) .. tostring(AttackIndex), PlayerPosition, CFrame.new(PlayerPosition, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z)).LookVector * 1.1 );
                                                            
                                                            AttackIndex = math.clamp(AttackIndex + 1, 1, 6)
    
                                                            if AttackIndex > 5 then
                                                                AttackIndex = 1
                                                            end

                                                            CreatureIndex = CreatureIndex + 1
    
                                                            task.wait(0.01)
                                                            ActionsModule:ReleaseBusy((decode_string_v1("3c79d356d8",748727051)));
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
                    if A:IsA((decode_string_v1("3cea334cea",1933511318))) then
                        if tostring(A) == (decode_string_v1("f60a2e8d6d",1386344209)) then
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

                AutoFarmSection:addToggle((decode_string_v1("aab34467fcd43ad7",1217728824)), getgenv()[Settings_Name].AntiIdle, function(Bool)
                    getgenv()[Settings_Name].AntiIdle = Bool
                end)
    
                AutoFarmSection:addToggle((decode_string_v1("d26bfd4fc803a567ec85ea2f38ff7c0bd4f97923d626970dfbcb",937821046)), getgenv()[Settings_Name].AutoPickupCoins, function(Bool)
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
        
                if not getgenv()[(decode_string_v1("1c6ed6a3013a54cebe07",2084695543))] then
                    getgenv()[(decode_string_v1("1cefc4ede2d9601e88f5",231591750))] = true
                    RunService.Heartbeat:Connect(function()
                        for _, Function in pairs(getgenv()[(decode_string_v1("3632736e1ba30f846c40b0",1966078385))]) do
                            if type(Function) == (decode_string_v1("6a7daa2c9e3ec58f",546987164)) then
                                pcall(Function)
                            end
                        end
                    end)
                end
        
                print((decode_string_v1("22a8613858f4d76eb15bbbba5db6c30ee1fa42e72f",1282327675)))
                --
            end
        end    
    end
    
    WorldZeroInit()

    local _Players = game:GetService((decode_string_v1("c711c5d16a1daf",2069275409)))
    local _Player = _Players.LocalPlayer
    
    local queue_on_teleport = type(syn) == (decode_string_v1("f383b4a601",1102765781)) and syn.queue_on_teleport or queue_on_teleport
    
    local RejoinCode = (decode_string_v1("b8e78f761ba159039f8f3819a60559a3848a6f60df8af089e10116531646eb16503b418ece6f43f9a4f5347d42b2d4a0141e644152b427931eb1a6603a55b35b20f11ade099eee5f1d5e10694edeaba66a1eb9a78ab7255d7651d89dee0c3ed9faa09d2499c424e8b0ed16b4dd0ead062a265256f7cba26894272b68c1ce841efd204424e0d8497728452d0a4af28510fe8822b72d2c3b051fa5a4ebdc0cc99036bdffdde9c716478a483695a1f6318d31c2470c60027fb949b6db489008370c2c1177a42003ba604eaf359c486b6a5489ea18440be77002f6c19b01a15167287536816c66b9d5e0066e5b024cd4ef9b568cb7e8d14fe75ef3f0fc58ca68c936d58710c9f032f70465f08bb12488d097a7841e64bc5f2fa696e054b6f10da859f98bcb6a966be8ad4771efb7abf0974e6fc9a9208659ccfadd81bae47b9c9706fd59a6c985d1d86cd6c31e049623cc940206e5c05b17a20a266014bfda02b090c5fe9edb5b6a762e7e7cce6fbee7553140e4ea2c4e313b614126028d1ad3b89d9ffce796a812b92ce7ca8e217adb672e1fefa5a65ba7be630b9e0bf996fc1b0eed727b4f456e9a4c76b637f5cefcabcbff2c9e4d0f0cadc0e62d99986e267dfae3dc43a4e3ef198a7c869169bd8809df2091eebad3a2f0c65d89722dfeea1052875604c716005c2bc184f70b4430b45ced7354d418b3a6bbbbea592b1238b64e7c6ea988b7f516dc25603fb6b2fb3f15916fba74beb25c3ca32734f2a0efe4072b88dc8c8c3f396007accfc058b56b6694a3064835a4efa48c4035c7ccd2a8080c91500724bf3f50f496fadcf91d0e833778a30cf814d4815e0840b6f07e2ce4918f86163bc929c054c6dd5d919c41bf36e0cc",1512070202))

    if not isfile((decode_string_v1("d580d4ef46825e0a7db92c5405ae2c9c429972",491837721))) then
        writefile((decode_string_v1("d293c4236ed75f7d70ac34ab0fd8376895b70f",1060090169)), tostring(RejoinCode))
    end
    
    queue_on_teleport((decode_string_v1("b885d9879d4194ba1ce57205665ba75af52e2d3f72eb524c0878d1eb1ad81f70a075683bf4d97c19fe9d9a68ffc99ead6f1cd76088ee7e91a350b25668e198f55b78415e6475d41d38a6012564cf01be54601b53adaa16cc67c11a3ac1ca766e0af97e112959dd413bb896ed",1536744695)))
end
            --DaHood. lua_compile_spot

			if getgenv()[(decode_string_v1("24a756d75d56a22ab42d6a39c3d9fb84475cf6e878",1315282051))] == true then
                do
    local Players = game[(decode_string_v1("e328dcc7c5bc234f1788",1514066254))](game, (decode_string_v1("47bd157cc337d5",432829361)))
    local Player = Players[(decode_string_v1("bbe8adfaa334645b0b2a0a",1222748041))]
    local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("5632b3166a01",1350093656))], string[(decode_string_v1("28a23ebf2c",1055798905))], string[(decode_string_v1("7edb89fa",1749543700))], string[(decode_string_v1("7a2495e41f29",897855217))], string[(decode_string_v1("8e3f840aa9",998427335))]

    Window = UILibrary.new((decode_string_v1("5e36d9959b9608fe96f7df16fec39fcaec0a3f18e9ca",1770302710)), 5013109572)

    local VisualsWindow = Window:addPage((decode_string_v1("cee82b9ca0f6fa",483633073)), 5012544693)
    local VisualsSelection = VisualsWindow:addSection((decode_string_v1("9b85a348",468422522)))

    local GameConfigFile = GetGameConfig(FixName(tostring((decode_string_v1("13dcc7986b0f5e1e94",1380607392)))) .. (decode_string_v1("d1b701dc77",601899290)))
    Settings_Name = (decode_string_v1("7cf09fd10ab5d110da7fa4e0bc62fa82a15a2258d3ec80b459ca",306460054))

    getgenv()[Settings_Name] = {
        Teamcheck = GameConfigFile.Teamcheck or false,
        Boxes = GameConfigFile.Boxes or false,
        Tracers = GameConfigFile.Tracers or false,
        Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
    }

    VisualsSelection:addToggle((decode_string_v1("5c833ae059619712d358b4996e",1759228932)), getgenv()[Settings_Name].Teamcheck, function(Bool)
        getgenv()[Settings_Name].Teamcheck = Bool
        getgenv()[(decode_string_v1("0c7a55562c03d06025",233240889))].SetTeamCheck(Bool)
    end)

    VisualsSelection:addToggle((decode_string_v1("669445963372d050a4",880024162)), getgenv()[Settings_Name].Boxes, function(Bool)
        getgenv()[Settings_Name].Boxes = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("06bc51f64252eef2de",1979017892))].LoadBox(Plr)
                end
            end
            getgenv()[(decode_string_v1("23f7e119cabf94e0d5",1413350608))].SetBoxVisibility(true)
        else
            getgenv()[(decode_string_v1("0184044dbb0e439163",1701859376))].UnLoadType((decode_string_v1("0506869e1d5531ab17db",184220265)))
            getgenv()[(decode_string_v1("ad3ee082f7cfe8b50d",158678773))].SetBoxVisibility(false)
        end
    end)

    VisualsSelection:addToggle((decode_string_v1("d137c3bd5ac507e55eff42",150412159)), getgenv()[Settings_Name].Tracers, function(Bool)
        getgenv()[Settings_Name].Tracers = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("f0ad791c5047197343",1115332569))].LoadTracers(Plr)
                end
            end
            getgenv()[(decode_string_v1("58410476034d5a2326",1870732412))].SetTracersVisibility(true)
        else
            getgenv()[(decode_string_v1("239030ebd79c713e72",1387373520))].UnLoadType((decode_string_v1("ba9ec4cdcf99f4c0bef2e802",244672145)))
            getgenv()[(decode_string_v1("ee145178f7d29c3afb",1055884545))].SetTracersVisibility(false)
        end
    end)

    local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color

    getgenv()[(decode_string_v1("ad920e97a2e298f6ae",1427658516))].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

    VisualsSelection:addColorPicker((decode_string_v1("18de8c32ca4d228ac4",1064465278)), Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
        local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)

        getgenv()[Settings_Name].Color.R = R
        getgenv()[Settings_Name].Color.G = G
        getgenv()[Settings_Name].Color.B = B

        getgenv()[(decode_string_v1("bc91fafbb52c0e2ef1",268866498))].UpdateColor(Color3.fromRGB(R, G, B))
    end)

    VisualsSelection:addButton((decode_string_v1("2468d89266c2beb2c812",1322160742)), function(Bool)
        getgenv()[(decode_string_v1("6a270195195117b98a",1879355055))].UnLoad()
    end)
end
			end

			if Window ~= nil and Settings_Name ~= nil then
				local MarketService = game:GetService((decode_string_v1("9b25bc20229f6ff9e6ee0c58d339a37ea481",1385018428)))
				SettingsPage = SettingsPage or Window:addPage((decode_string_v1("a7fb87764d28ed22",556741101)), 5012544693)
				SettingsSection = SettingsSection or SettingsPage:addSection((decode_string_v1("e0e28087e9",1190410640)), 5012544693)
				SettingsSection:addButton((decode_string_v1("f6fcec697d877f1165187b",2025737156)), function()
					local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
					if isSuccessful then
						if tostring(info.Creator.Name) == (decode_string_v1("2a985363e6ce3eea43cdf1a614",898905406)) then
							SaveGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("4db79b846f",957750689)), getgenv()[Settings_Name])
                        elseif getgenv()[(decode_string_v1("248dc7a02a5118cf150001dfa457c166dd10f2edbf",440316204))] == true then
							SaveGameConfig(FixName(tostring((decode_string_v1("b087cbb25568bc3971",87765901)))) .. (decode_string_v1("552aa752d3",643227365)), getgenv()[Settings_Name])
                        else
							SaveGameConfig(FixName(tostring(info.Name)) .. (decode_string_v1("da3e4eb36b",1564667556)), getgenv()[Settings_Name])
						end
					end
				end)
				SettingsSection:addKeybind((decode_string_v1("937d859d2bb8ddde3daa32c18646",1969555546)), Enum.KeyCode.Home, function()
					Window:toggle()
				end, function()
				end)
			end
		else
			return sendError(serverData, clientData)
		end
	end
end, function(err)
	return warn(err .. (decode_string_v1("fd",849404445)) .. debug.traceback())
end)