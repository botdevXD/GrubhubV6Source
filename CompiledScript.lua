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
		getgenv().Key = (decode_string_v1("b54b3eb8b3473f3ee7d43e1670fe8d8fa3e0bc7c31c00e78ed",1732180812));
		getgenv().DiscordWebhook = (decode_string_v1("2c3a29f6",515473863));
		getgenv().WebhookEnabled = false;
		getgenv().GubVersion = (decode_string_v1("aeb414",2141605832));

		local CLIENT_DEOBF_OFFSET = 3;
		local SERVER_DEOBF_OFFSET = 1;
		local StartTimer = os.time()
		local UILibrary = loadstring(game:HttpGet((decode_string_v1("8fa453bba39cdc404058b260431ce6fe61de4d2d2b3895a18071b6baebe3431ee90946f4aa90e3ea0000198d763c0adea0892c7497071cd236225cedecc0525595447e8e89c7c8450b17eecfec",350863397)), true))()
		local library = loadstring(game:HttpGet((decode_string_v1("9ff2a6a1428d2dd3844bd10bf4cc4ea790ce92c9af1764e9e293c279bee2d2a545b016c6433628068410681037b31d3ca83017d5529bd1c11bd25fe7dfc8f26b50c338d10d7a1b8d27da03787b95bc134dc69130ac4b8590006eb4d1f5a57160bf17",1008211475))))()
		library:Notification((decode_string_v1("ab4ff4cd1964ba",1673064203)), (decode_string_v1("516f0624997ad8eab862fd6acfe501911a7d07d192d90f98e9b88f797f3c4751eecbb20bc6bd453cf32436a017e3",1925002807)), 10, Color3.fromRGB(255, 255, 255))

		if not isfolder((decode_string_v1("d555c95bf8f13c84309ef2a98836",1467219396))) then
			makefolder((decode_string_v1("b60a7958dadf280a8c84ca68a062",987811885)))
		end

		for i, v in pairs(game:GetService((decode_string_v1("6cfb2b2b377240",323504792))):GetDescendants()) do
			pcall(function()
				if v.Name == (decode_string_v1("d8e50aba",1894699319)) then
					v.Parent.Parent:Destroy()
				end
			end)
		end

		local function identify()
			local Executor = string.lower(identifyexecutor())
			local ExecutorTable = nil
			if string.find(Executor, (decode_string_v1("b413a982cce368",1135711304))) then
				ExecutorTable = {
					(decode_string_v1("c8202b4fc909be",1051517744)),
					syn.request
				}
			end
			if string.find(Executor, (decode_string_v1("06131a75",353581897))) then
				ExecutorTable = {
					(decode_string_v1("4816fa20",1001486807)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("399a5813",1815600725))) then
				ExecutorTable = {
					(decode_string_v1("fdd957aebb7f",2119189738)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("7d30114bbefd",1581105252))) then
				ExecutorTable = {
					(decode_string_v1("623bc1b4caf8637d7f317e",751434085)),
					http.request
				}
			end
			if string.find(Executor, (decode_string_v1("3875c6",237620636))) then
				ExecutorTable = {
					(decode_string_v1("88f3a7f0332ac148",1818207738)),
					request
				}
			end
			if string.find(Executor, (decode_string_v1("c85a8a",1501799529))) then
				ExecutorTable = {
					(decode_string_v1("a8403a345e47550a28be6ec8",1687951692)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("2fb86c46",683579409))) then
				ExecutorTable = {
					(decode_string_v1("64f85af115bad0447c05",89092316)),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1("5a114ab5",2017711946))) then
				ExecutorTable = {
					(decode_string_v1("88084605a1bdff",960208193)),
					httprequest
				}
			end
			if string.find(Executor, (decode_string_v1("90969faaaadc3367",1120259082))) then
				ExecutorTable = {
					(decode_string_v1("8ed2e43ddd1f9a6d",275105127)),
					http_request
				}
			end
			if getgenv().WRD_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("bd58118d1322ab50",857578565)),
					http_request
				}
			end
			if getgenv().unlock_module ~= nil and getgenv().setscriptable ~= nil and getgenv().import ~= nil then
				ExecutorTable = {
					(decode_string_v1("3066543a830712d7fd60aed0e07e0b",1101147205)),
					http_request
				}
			end
			if getgenv().OXYGEN_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1("4dacfcf9b0bddbc2",1495170013)),
					http_request
				}
			end
			if ExecutorTable == nil then
				library:Notification((decode_string_v1("7c0c8c3a855782dba1bdc67bdb",991507322)), (decode_string_v1("80c176d077c4300e79102e97ed9b705c7d37ca79ff195568dd36feb078f5e4219e470f84d7ccf8c6a29d72eea4c7ec1e164e16f9e3b8a865f2747a1f275fc791c0dd3f97b29d88e6",2038001450)), 10, Color3.fromRGB(255, 255, 255))
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
				library:Notification((decode_string_v1("4251e50cfaf2f61cb0e7ff06930f",1094909040)), (decode_string_v1("0aa191fc7a42ff16b72087c22dc09d5b7d80ad32622a111b83aa8f1dca061df198da154ccc07ddc52bb66f67bc3bc628e5cc18aed4b6c19c8ccc7de57072d7206816795473",2008503633)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("e9817d0aaa7082919f0b64fcdfc76c98bfeb7037457975561ef96573084ff4955497c2ad0832471ea0b733eec8ae28cc",535650111)) then
				library:Notification((decode_string_v1("28630f7822b2c2efcf934859c34a",711298657)), (decode_string_v1("14d739850f6c9dfb2d4d3153985c2b1c5af21571bf2018b93386e94443a89378612316171c0b52de79a05f8b5d5fc3375d57ec6ae9e5f3a21f",1015302769)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("ced841c6254f0014fd44645c1b0a28b0c57164ed8d66263e36",2005655771)) then
				library:Notification((decode_string_v1("bed76ac0ffaf0795cd8622d9bf10",1860914166)), (decode_string_v1("6c3c88a168e2c9f823b3726382b5400cde284fd080db0a4520a4f72f67d9032c55f48d4b92aa123ce8afea9b3cd7656fcebf9d04ba851658ced9acade6",280087524)), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1("826465893d7cdb7cd8625aa592e9ce3829a0cc70",366757665)) then
				library:Notification((decode_string_v1("19dae109b8986a8d50580f45b80c3567",807955120)), (decode_string_v1("544001d7789c8427e6ba83a3572c1801240a1f419e423f37d6a9cd51b5c1c30c624c5562abb15c847750f42d2f2d963ba92950e66c66e64734eda0f6ca89c19d7e704a1ed5",375515784)), 15, Color3.fromRGB(255, 255, 255))
			else
				library:Notification((decode_string_v1("d5ce2a47bdebbc56ab9ec6ca82ff",576397526)), (decode_string_v1("4497456dd076d26952a58e71cfe5007958d05ab8cd9041463028add3e9729aab0a3583230b929d921d21e7969f532c72e82c23d6bded66d6c90bacdbf2fe1b9dca512298bf3118ad662c413447c6c9085116739d2cab65068df4b6f0e80bac228e399d4bdfd21f4b6faf7b040d2d550dea8c0bd5989b8bfe7f",2145753389)), 15, Color3.fromRGB(255, 255, 255))
				setclipboard((decode_string_v1("2e38fe7dc07f192fc79aa46b5b70d17c66a517ebb2c7dd0dda7227b4029c2e22f01b401ae10fef1906a353fe4768f1c16b84e1671bd7d78d2d033ff6f41c",1828705191)) .. clientData .. (decode_string_v1("f8944ee6e55ea2b63618c65d",1573937871)) .. exploit .. (decode_string_v1("776cb7ecce160d6f",116210989)) .. Key .. (decode_string_v1("38f2c35fae894f42b4cde40b1ff15cda",1420466623)) .. serverData .. (decode_string_v1("78aae0a3fcc9f0afee7e9f5c231f8f1a0d",1652182683)) .. tostring(newtime))
			end

			specialisedrequest({
				Url = (decode_string_v1("4fe185c71add9818bbac55da04ceacf9ab32a333e56b1760a108a1258d",294419776)),
				Method = (decode_string_v1("070c5b0a",222077420)),
				Headers = {
					[(decode_string_v1("9c4e96b7467aba48bc4097a0",856968316))] = (decode_string_v1("c7fd01089c62f54e29d1be57219064d2",154771800));
					[(decode_string_v1("e03db30db170",131618415))] = (decode_string_v1("dff03ad098516a72fc20462c27a80c7f5b96ad",722986714));
				},
				Body = game:GetService((decode_string_v1("7fb3cd41830eed58f55bcd",49552029))):JSONEncode({
					[(decode_string_v1("b0de54",406307325))] = (decode_string_v1("e6b7c452d3df3d5daca509d3bab9",1308635980));
					[(decode_string_v1("32f992e6",935556287))] = {
						[(decode_string_v1("2228fad3",1917439524))] = (decode_string_v1("ffcbcea0efe8618aa0a7",1421145815))
					};
					[(decode_string_v1("e18a659009",442587359))] = (decode_string_v1("d2e65a097a04328ed0906ded9f839c7fa0b7f53c120eae76ccac315141161dc9ea9063d5",1812985436));
				})
			})
		end

		local random = Random.new()
		local letters = {(decode_string_v1("84",1059403606)),(decode_string_v1("79",1768484232)),(decode_string_v1("4e",950205276)),(decode_string_v1("5b",1918469530)),(decode_string_v1("a4",977579565)),(decode_string_v1("1d",704536891)),(decode_string_v1("9d",554175377)),(decode_string_v1("d0",181292521)),(decode_string_v1("e8",757544492)),(decode_string_v1("e1",2102999384)),(decode_string_v1("ea",215936332)),(decode_string_v1("93",7671927)),(decode_string_v1("37",1456186478)),(decode_string_v1("a5",232523635)),(decode_string_v1("0e",1099078208)),(decode_string_v1("87",1771322990)),(decode_string_v1("b7",465439590)),(decode_string_v1("fd",92501379)),(decode_string_v1("bb",158708042)),(decode_string_v1("ab",751957218)),(decode_string_v1("56",368096642)),(decode_string_v1("9d",31972436)),(decode_string_v1("72",725430860)),(decode_string_v1("10",1440334905)),(decode_string_v1("9a",1161860255)),(decode_string_v1("9e",1748482693))}

		function getRandomLetter()
			return letters[random:NextInteger(1, #letters)]
		end
		local function FixName(GameName)
			return GameName:gsub((decode_string_v1("64cfbe16b7752fc6dc2b9167",357272126)), (decode_string_v1("",1649269429)))
		end

		local function GetGameConfig(GameName)
			local Table = {}
			if isfolder((decode_string_v1("0c09de7dfd81f4700cec32b2795c",1324241447))) then
				if isfile((decode_string_v1("e4c8261b9ca73b66184fdcf3e52a32",608879218)) .. tostring(GameName)) then
					local HttpServices = game:GetService((decode_string_v1("9ff2f2d634fd37ada1dcb0",328537356)))
					local ConfigContents = readfile((decode_string_v1("eca8d0e7e98bac78307a20130accc1",1109988187)) .. tostring(GameName))
					local DecodedSuccess, DecodedContents = pcall(HttpServices.JSONDecode, HttpServices, tostring(ConfigContents))
					if DecodedSuccess then
						Table = DecodedContents
					end
				end
			end
			return Table
		end

		local function SaveGameConfig(GameName, ConfigTable)
			if isfolder((decode_string_v1("88a4f1b1b734e221de1d033422b6",397577427))) then
				local HttpServices = game:GetService((decode_string_v1("00179f409bbedcc29491c4",1676654197)))
				local EncodedSuccess, EncodedContents = pcall(HttpServices.JSONEncode, HttpServices, ConfigTable)
				if EncodedSuccess then
					writefile((decode_string_v1("4005c12e992f32e38fef26c5adfd90",682884038)) .. tostring(GameName), tostring(EncodedContents))
					return true
				end
			end
			return false
		end

		function getRandomString(length, includeCapitals)
			local length = length or 10
			local str = (decode_string_v1("",1414801846))
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
				return (str_gsub(s, (decode_string_v1("a9",1242399078)), function(c)
					return str_fmt((decode_string_v1("a221d7bd",681994670)), str_byte(c))
				end))
			end

			local function num2s(l, n)
				local s = (decode_string_v1("",2029253360))
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
				msg = msg .. (decode_string_v1("97",102647567)) .. str_rep((decode_string_v1("17",782114682)), extra) .. len
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

		if getgenv().Key == (decode_string_v1("",751027202)) or nil then
			Key = (decode_string_v1("e9d8afc1",692147486))
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
			local charset = (decode_string_v1("8e5452ffcf31b0e6851459543317615e6e33766726043077ce2348e69bd7afc609e85963ce8f4564285fffeba32cd5ddbd0938fd9dc0631288cb5ff1cd",1887265749))
			if type(v1) == (decode_string_v1("dfdff387eee4",511717779)) and type(v2) == (decode_string_v1("1435eef92383",908192235)) then
				local length1, length2, chars_1, chars_2 = #v1, #v2, {}, {}
				v1:gsub((decode_string_v1("7d",667921824)), function(s)
					chars_1[#chars_1 + 1] = s
				end)
				v2:gsub((decode_string_v1("7d",678994190)), function(s)
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
			local Pos, Finished, charCodes, Key, arglen = 1, (decode_string_v1("",2083000876)), {}, 447 - #((decode_string_v1("b01240367e563d37f2f0cd4c925bbf7dbbd3f39fed0a3d9e205a04e3927c3db3e4",582013608))), 35 - #((decode_string_v1("ce29a1",1810460387)))
			local schar = Finished.char
			local Keys = {
				233 + #((decode_string_v1("d8ca48",143563452))),
				781 - #((decode_string_v1("760751a2",1789371975))),
				785 - #((decode_string_v1("70ed45f3c494",1090290087))),
				876 - #((decode_string_v1("761e11c877d98c",1771989819))),
				350 - #((decode_string_v1("3bd682b0e1f3e9c984891e0f2691e5c5aba479",1152632756))),
				23 + #((decode_string_v1("2052b6ee317234a5d81d576e562030777e7e6d841c0fcc0c985b1124e7e279fc0d",1356904259))),
				111 + #((decode_string_v1("20776e68bc082ee4901f6b99ef76bcb87e0af6e3943db88f329da80593ba1e2770",1361550386))),
				440 + #((decode_string_v1("e31db7c71243982b31767be3",530316870))),
				341 + #((decode_string_v1("7e9185a0",1761159103))),
				322 - #((decode_string_v1("68fccc5cdd65bd532dd4d410133573488a3ddc807432e05efdf73ea17e3d9bc0c76d0f78fbf100359fe2eb3bc19da0b01dbc215cae6902f79b2ac5729c50fe39bb2e3d86a6035a82bd372587700539d54c5e3fdf7afa433d764cf324b2a0091f590259080cbe36af132a3636",1448516773))),
				117 + #((decode_string_v1("60e2f73d26d0a8196014787c",911179271))),
				196 + #((decode_string_v1("4d222ecf93314ddc70c746e88491d401152eb2",329858790))),
				272 - #((decode_string_v1("84316a29a6be5ca036bd",693482363))),
				653 - #((decode_string_v1("40cccbca4a795451b458dfa6",2061625359))),
				510 + #((decode_string_v1("a240cf17ba5b",12990345))),
				61 + #((decode_string_v1("84d00e29ccd21e91ee5b",2056331635))),
				61 - #((decode_string_v1("faa8b9fc4e46583267",628319754))),
				283 - #((decode_string_v1("c8e5ce05",2068071394))),
				568 - #((decode_string_v1("ac234f3bb6f1",249456857))),
				933 + #((decode_string_v1("b0434e98caacb4954185573b7f65",1222006423))),
				642 - #((decode_string_v1("8c0d51540480cb605f2e",1370809801))),
				651 - #((decode_string_v1("929a3492dd66f540663f",985929237))),
				875 - #((decode_string_v1("d6638ebe",419748740))),
				882 - #((decode_string_v1("93d2737b3acf",208762362))),
				333 - #((decode_string_v1("38ab01ec17ed51e75fd9e7ce5b7a05b7a9e8",1098494517))),
				245 - #((decode_string_v1("c4e0ab9076fb",611735844))),
				988 - #((decode_string_v1("4be00228838757d09f",1540698638))),
				118 + #((decode_string_v1("db8be422810b0ce5415f7338453580c0956c92",1313897451))),
				623 + #((decode_string_v1("0df7afa130d2",516716827))),
				629 + #((decode_string_v1("9e18e5",1657948764))),
				689 - #((decode_string_v1("3215e43ce9298fa86f4c",226066929))),
				828 - #((decode_string_v1("b20f4b6885ba97ba9547139e",1919047668))),
				76 - #((decode_string_v1("1c3988fca02bb4fdeafde32a",747345427))),
				71 - #((decode_string_v1("a73a2c559892",1354581883))),
				85 - #((decode_string_v1("9b5e2d929d18dc20daee9ee41f9b58b2621381",981337406))),
				79 - #((decode_string_v1("6a76c1b1bc86309f549515a5",261709895))),
				56 + #((decode_string_v1("e335061bcc0a73c106b79bc9",529863552)))
			}
			getfenv(0)
			Finished.split((decode_string_v1("",1176114024)), (decode_string_v1("",928949596)))
			while Pos <= 132 - #((decode_string_v1("ee0315633748bd8ade79",1169951884))) do
				charCodes[Pos] = schar(Pos)
				Pos = Pos + 1
			end
			Pos = 1
			local Confused = (decode_string_v1("",807927612))
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
			712 - #((decode_string_v1("1b36fd72",1169485828))),
			1305 + #((decode_string_v1("1b5a4eedccfe457c0738",768014285))),
			1265 - #((decode_string_v1("6f30fff246e6b46551b7d862d975e8ee1d95f40bff1ee25b6d0f3ab69528993e5d",1879768292))),
			1343 + #((decode_string_v1("5a5a75a95904920be6b558",2025430709))),
			784 + #((decode_string_v1("dfedc699",1507721878))),
			553 - #((decode_string_v1("5f77af622f1890",814249896))),
			594 + #((decode_string_v1("b167009f2275a8fe2dbd34c7",1739481134))),
			929 + #((decode_string_v1("f202d604235eba3b0504ffd29b2182bd1daf7b",1695817161))),
			822 + #((decode_string_v1("2a69a603565e84cf8958",1844407880))),
			735 - #((decode_string_v1("9a7af751e06af7b93bf19f39fb0c24664a662d",179269659))),
			649 + #((decode_string_v1("5005cfe8",1967671088))),
			726 - #((decode_string_v1("833dd759",869568749))),
			781 + #((decode_string_v1("f7c78c7213a2ba271e04",1669636802))),
			1150 + #((decode_string_v1("6152ff",1679546578))),
			1059 - #((decode_string_v1("e41de329d16086a8",1390675961))),
			607 - #((decode_string_v1("dd2d1b60b3b3f34217f0d452c84d0aa408f69a",34777490))),
			574 + #((decode_string_v1("12bcb51ae529f968850eb4e1ed771ab1aae86c",451710480))),
			768 + #((decode_string_v1("10e4e85fd60a70be82c32d2c39a1cb1a05f8ae92dde9157e91139a73bc3385fb79",1477959839))),
			1103 + #((decode_string_v1("fdb4fd9e6126",486861837))),
			1437 - #((decode_string_v1("bef9f3ab",1183323271))),
			1192 - #((decode_string_v1("7ba24d6a2f78e805",279437102))),
			1136 - #((decode_string_v1("76e90b78",195187951))),
			1461 - #((decode_string_v1("ff5315cbe1048347cb355a7fb38b2607630e5867511ead3ec99a9e01ea0879d5a4",694827676))),
			1341 + #((decode_string_v1("f71b9428b337",1688500865))),
			813 + #((decode_string_v1("5ebd557a6297",862617306))),
			710 + #((decode_string_v1("76829b6044bd",585113318))),
			1494 - #((decode_string_v1("ecefd1f35c19",423568819))),
			729 - #((decode_string_v1("c8bfee5dac152ddc2426a8dd2817795b7d3f7dd0d3631b03ce367f4b9da462f24b91a4364348c62a049d798806370f4b39486cbf0d087890d022fe452264874495de21a764d3e516e6ea7633f8c145738a893bfab86cf1ed074ffb872d465b6830a6be0227b00500aa1b9c75",1386085906))),
			1147 - #((decode_string_v1("26cca4cf",1226031894))),
			1111 + #((decode_string_v1("4a948b9ff91bfdabe243",2085103180))),
			1205 - #((decode_string_v1("53714d37da7d",1603022211))),
			1349 + #((decode_string_v1("ab221cbaa2a412c8e363",113188351))),
			54 + #((decode_string_v1("b536f460631dc7068c63",1739930015))),
			61 + #((decode_string_v1("d38a1b5d",45445365))),
			-42 + #((decode_string_v1("c733d6be91c65d8b122e8b67aa11b23d8d407eae7ee606ae0ec32b32310b17ca59865b41decf0ef5e4aa3a2cc2919a974c0058771814a5e59f94045e6ce2d07c23d738a7e3ac6f204cc52b954f3fe787ecd51e6e44d789a86e4e6ccd3300a36ba1bd5887515e4e029c4e7cd1",377561213))),
			71 - #((decode_string_v1("e3c98792",1586041754))),
			58 + #((decode_string_v1("bbc18a8039b1d606bcb4",422550949)))
		}

		local whitelisted = false
		local basec = (decode_string_v1("94e1814ba849d2c07e3cf79ff589eaf120546ec4b6c4262c1c2ebb59ec664a455a30b611f6d435e3492d8666348c4fefc958901ab851da4a3d9d3505ef931859",724757924))

		local function base_encode(data)
			local b = basec
			return ((data:gsub((decode_string_v1("a1",295716739)), function(x)
				local r, b = (decode_string_v1("",1024308901)), x:byte()
				for i = 8, 1, -1 do
					r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and (decode_string_v1("a4",954415243)) or (decode_string_v1("47",2110134206)))
				end
				return r;
			end) .. (decode_string_v1("67cdaf26",1080133041))):gsub((decode_string_v1("b83b450abcf55bc0d4ea3196785f9350",1857269982)), function(x)
				if (#x < 6) then
					return (decode_string_v1("",737397062))
				end
				local c = 0
				for i = 1, 6 do
					c = c + (x:sub(i, i) == (decode_string_v1("3c",781211867)) and 2 ^ (6 - i) or 0)
				end
				return b:sub(c + 1, c + 1)
			end) .. ({
				(decode_string_v1("",2046515027)),
				(decode_string_v1("836d",1551024519)),
				(decode_string_v1("ee",1980011099))
			})[#data % 3 + 1])
		end

		local function base_decode(data)
			local b = basec
			data = string.gsub(data, (decode_string_v1("2423",1895665414)) .. b .. (decode_string_v1("ab81",1377987945)), (decode_string_v1("",977436430)))
			return (data:gsub((decode_string_v1("55",1932288881)), function(x)
				if (x == (decode_string_v1("e6",944795667))) then
					return (decode_string_v1("",2063064366))
				end
				local r, f = (decode_string_v1("",2053117953)), (b:find(x) - 1)
				for i = 6, 1, -1 do
					r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and (decode_string_v1("54",1871151866)) or (decode_string_v1("67",322353330)))
				end
				return r;
			end):gsub((decode_string_v1("c4c14ed121ae59f50073a08063b5335d45734a5d5d13",1205094998)), function(x)
				if (#x ~= 8) then
					return (decode_string_v1("",1609743581))
				end
				local c = 0
				for i = 1, 8 do
					c = c + (x:sub(i, i) == (decode_string_v1("ed",1346919798)) and 2 ^ (8 - i) or 0)
				end
				return string.char(c)
			end))
		end

		if not getgenv()[(decode_string_v1("4ccb4f",209298279))] then
			getgenv()[(decode_string_v1("52acd8",291549437))] = {}
		end

		local StringTable = getfenv(pcall)[(decode_string_v1("7418428efa58",25499878))]

		-- More Security updates.

		local StringMT = getmetatable(newproxy(true))

		StringMT.char = StringTable.char

		Backup = getgenv()[(decode_string_v1("9a5bec",384563861))].string or StringMT
		
		getgenv()[(decode_string_v1("c8c51d",426069520))].string = getgenv()[(decode_string_v1("e8bc02",600895706))].string or StringMT

		local function Convert_v1(Offset, Text)
			local Result = (decode_string_v1("",349965789))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("d5bb90",463039589))](Text, Index, Index)
				local Byte = char[(decode_string_v1("9eef6a2d",1664156658))](char)
				local MMath = (Byte + Index + Offset + 3)
				local letter = Backup[(decode_string_v1("2483fda2",911328041))](MMath)
				Result = Result .. letter
			end
			return Result
		end

		local function UnConvert_v1(Offset, Text)
			local Result = (decode_string_v1("",1240074356))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1("d510ca",1401383792))](Text, Index, Index)
				local Byte = char[(decode_string_v1("79e65b39",1754742931))](char)
				local MMath = (Byte - Index - Offset - 3)
				local letter = Backup[(decode_string_v1("1a949573",806808856))](MMath)
				Result = Result .. letter
			end
			return Result
		end
        
		local function GetReturnedData()
			local D_ATE = os.date()
			local T_ime = os.time()
			local HTTP_SERVICE = game:GetService((decode_string_v1("a05ac6472e394e7602dec7",1597981878)))
			local OffsetTable = {}
			local DataTable = {
				Url = (decode_string_v1("c07dc1750a00c3c685632cb93e2dd29f71405b5fa14e4cd15621b17c611e031f634708031629015fe17fa2ae7ce79312d5d2962fdc4183240a4c",537179478)),
				Method = (decode_string_v1("e665eb",1944347307)),
				Headers = {
					[(decode_string_v1("d243c6",698571467))] = Key;
					[(decode_string_v1("0b71bc32a62249bb",1555653502))] = tostring(game.Players.LocalPlayer.Name);
					[(decode_string_v1("cbf2e12d7f",780864566))] = tostring(game.Players.LocalPlayer.DisplayName);
					[(decode_string_v1("8e640b07b2a98aff",1812106375))] = exploit;
				}
			}
			OffsetTable[(decode_string_v1("e6cd539c183c21b67d",1305049542))] = base_encode(tostring(D_ATE))
			OffsetTable[(decode_string_v1("3ef711f68f71837f4f",2061147519))] = base_encode(tostring(T_ime))
			DataTable.Headers[(decode_string_v1("832cc9fb",767874651))] = tostring(base_encode(HTTP_SERVICE:JSONEncode(OffsetTable)));
			local returnedData = specialisedrequest(DataTable)
			return returnedData, tostring(D_ATE), tostring(T_ime)
		end

		local returnedData, ShouldReturn1, ShouldReturn2 = GetReturnedData()
		returnedData = returnedData.Body

		if type(returnedData) ~= (decode_string_v1("0ec399d680ed",47582164)) then
			repeat
				returnedData = GetReturnedData()
				returnedData = returnedData.Body
				wait(0.0003)
			until type(returnedData) == (decode_string_v1("bb36a9e719ae",1417464919))
		end

		local ReturnedArgs = string.split(tostring(returnedData), (decode_string_v1("c8430cbdf185f5d4f2f811ed10",2045870533)))
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
			game.Players.LocalPlayers:Kick((decode_string_v1("288f57b1ab513fb3654ea14df891195a91393b242690fd54d4643b4816bce3cc576dd0cfa0900645208fe85030588e4e785e8339c8effee74936c05e072d1e768f685acc87",310014286)))
		end

		local number = tostring(os.time())
		local dynamic = number:split((decode_string_v1("",1418406533)))
		table.remove(dynamic, 10)
		table.remove(dynamic, 9)
		local randomData = tostring(uniformRNG(dynamic[7], dynamic[8]))
		local randomData = randomData:sub(1, -3)
		local clientData = hmac(secret, Key .. randomData)

		if isfile((decode_string_v1("7758352ecb579976cafba957a880a795fa8640",530019770))) then
			delfile((decode_string_v1("77eee21644c0ea15be8d4a1130e9d3e6e5aacb",1620871258)))
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

			getgenv()[(decode_string_v1("07acdfbf7a3f7f18e965b2e2fe95400c3863308b88",1631688525))] = true

			-- The ones with the spaces between .lua are the ones that I don't want to be loaded rn as they're not complete.
            do
    local json = {}
    local function kind_of(obj)
      if typeof(obj) == (decode_string_v1("d88131dfbe48",1814379277)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("3dcf1eff63b43d",1921546778)) then return typeof(obj), obj end
      if typeof(obj) == (decode_string_v1("6d2b958c38fa21",1776801642)) then return typeof(obj), obj end
      if type(obj) ~= (decode_string_v1("0b1dbe0877",418561948)) then return type(obj) end
      local i = 1
      for _ in pairs(obj) do
        if obj[i] ~= nil then i = i + 1 else return (decode_string_v1("cbb0362c21",929392097)) end
      end
      if i == 1 then return (decode_string_v1("3ca950ea4e",1520888691)) else return (decode_string_v1("73b47bce31",493853724)) end
    end
    
    local function escape_str(s)
      local in_char  = {(decode_string_v1("ab",1104240770)), (decode_string_v1("19",2086537083)), (decode_string_v1("46",196725109)), (decode_string_v1("a0",1455228675)), (decode_string_v1("5b",1162294348)), (decode_string_v1("05",1272863599)), (decode_string_v1("90",949132438)), (decode_string_v1("00",272589597))}
      local out_char = {(decode_string_v1("a4",1701541483)), (decode_string_v1("cd",1832516803)), (decode_string_v1("86",1035751424)),  (decode_string_v1("7d",1998067445)),  (decode_string_v1("81",357942384)),  (decode_string_v1("55",1313284816)),  (decode_string_v1("6d",295143814)),  (decode_string_v1("3c",501783064))}
      for i, c in ipairs(in_char) do
        s = s:gsub(c, (decode_string_v1("bc",1726851113)) .. out_char[i])
      end
      return s
    end
    
    -- Returns pos, did_find; there are two cases:
    -- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
    -- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
    -- This throws an error if err_if_missing is true and the delim is not found.
    local function skip_delim(str, pos, delim, err_if_missing)
      pos = pos + #str:match((decode_string_v1("ddcf5964",1059037409)), pos)
      if str:sub(pos, pos) ~= delim then
        if err_if_missing then
          error((decode_string_v1("82ce9c1068d7abc30b",684258515)) .. delim .. (decode_string_v1("77554ba22aedf596ff06b76b835ec3",331491219)) .. pos)
        end
        return pos, false
      end
      return pos + 1, true
    end
    
    -- Expects the given pos to be the first character after the opening quote.
    -- Returns val, pos; the returned pos is after the closing quote character.
    local function parse_str_val(str, pos, val)
      val = val or (decode_string_v1("",501569448))
      local early_end_error = (decode_string_v1("231e3c408e12356b50c0ebe01549f9ef5b0452008bbad709034bf3787fa153200ba66b0dd8f9f006",459345317))
      if pos > #str then error(early_end_error) end
      local c = str:sub(pos, pos)
      if c == (decode_string_v1("11",843756025))  then return val, pos + 1 end
      if c ~= (decode_string_v1("73",1753212070)) then return parse_str_val(str, pos + 1, val .. c) end
      -- We must have a \ character.
      local esc_map = {b = (decode_string_v1("90",1395080887)), f = (decode_string_v1("f3",130373428)), n = (decode_string_v1("01",127482826)), r = (decode_string_v1("af",548041924)), t = (decode_string_v1("15",186731842))}
      local nextc = str:sub(pos + 1, pos + 1)
      if not nextc then error(early_end_error) end
      return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
    end
    
    -- Returns val, pos; the returned pos is after the number's final character.
    local function parse_num_val(str, pos)
      local num_str = str:match((decode_string_v1("855191353e04faeac554c1e44d1218debb3bcc415eb74e33df",363816248)), pos)
      local val = tonumber(num_str)
      if not val then error((decode_string_v1("c687f8d272fb51408a3c3478f43d73c44d9ca7765a53fc5e374f318627bd543591",1102994462)) .. pos .. (decode_string_v1("65",235337120))) end
      return val, pos + #num_str
    end
    
    
    -- Public values and functions.
    
    function json.stringify(obj, as_key)
      local s = {}  -- We'll build the string as an array of strings to be concatenated.
      local kind, kind_objecto = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
      if kind == (decode_string_v1("e24afc3a26",1825162630)) then
        if as_key then error((decode_string_v1("33927c57d4f083707c960c3ccbede540e83f5eff3570a5c2150d",540483588))) end
        s[#s + 1] = (decode_string_v1("e0",605246025))
        for i, val in ipairs(obj) do
          if i > 1 then s[#s + 1] = (decode_string_v1("cb68",247107669)) end
          s[#s + 1] = json.stringify(val)
        end
        s[#s + 1] = (decode_string_v1("9f",1657508723))
      elseif kind == (decode_string_v1("63bdc2fa3d",2065499181)) then
        if as_key then error((decode_string_v1("ca936856813179e812881dfe02d1dd682aeee96862d3e6a81482",931927257))) end
        s[#s + 1] = (decode_string_v1("54",739092487))
        for k, v in pairs(obj) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("4354",1768096347)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("9d",800252725))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("bd",1602344730))
      elseif kind == (decode_string_v1("4700bd352ab2",1688345105)) then
        return (decode_string_v1("a9",644790851)) .. escape_str(obj) .. (decode_string_v1("05",962851954))
      elseif kind == (decode_string_v1("d543aff9fb7b",189993214)) then
        kind_objecto = {table_type = (decode_string_v1("42b6454303d8",1085744358)), kind_objecto:components()}
        if as_key then error((decode_string_v1("feb1d672d17b8b1e7f4ea917af75def784b70fe4502940d064cb",355569713))) end
        s[#s + 1] = (decode_string_v1("0a",133632083))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("5b09",86357651)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("51",1769479060))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("ac",365746546))
    elseif kind == (decode_string_v1("c537ee8434bca9",1116032476)) then
        kind_objecto = {table_type = (decode_string_v1("a6fc6009e9dd62",562929079)), kind_objecto.X, kind_objecto.Y, kind_objecto.Z}
        if as_key then error((decode_string_v1("3ae945033e565bd05c441036905508b81c6da0ef874d551fbef9",1264255464))) end
        s[#s + 1] = (decode_string_v1("c7",1530073041))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("d3d3",94021221)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("b9",680663376))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("43",516417552))
    elseif kind == (decode_string_v1("fd8caf065d1f61",439073621)) then
        kind_objecto = {table_type = (decode_string_v1("0d41b48d735b82",2107885621)), kind_objecto.X, kind_objecto.Y}
        if as_key then error((decode_string_v1("fec6fdbb936c23fb679ce92b79ad8a96800216ba81b99a3ed4a8",1058206136))) end
        s[#s + 1] = (decode_string_v1("ef",187404999))
        for k, v in pairs(kind_objecto) do
          if #s > 1 then s[#s + 1] = (decode_string_v1("9314",729072275)) end
          s[#s + 1] = json.stringify(k, true)
          s[#s + 1] = (decode_string_v1("01",651253481))
          s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = (decode_string_v1("1e",1214037753))
      elseif kind == (decode_string_v1("d9c56cdac899",740984648)) then
        if as_key then return (decode_string_v1("72",510172822)) .. tostring(obj) .. (decode_string_v1("51",1855786317)) end
        return tostring(obj)
      elseif kind == (decode_string_v1("9e58ab48cd4d9d",543244732)) then
        return tostring(obj)
      elseif kind == (decode_string_v1("f536ec",979466047)) then
        return (decode_string_v1("958e09bd",1941151758))
      else
        error((decode_string_v1("e01cad83e403e65264ebdeb72137ac558b16934d",301386544)) .. kind .. (decode_string_v1("31",935661775)))
      end
      return table.concat(s)
    end
    
    json.null = {}  -- This is a one-off table to represent the null value.
    
    function json.parse(str, pos, end_delim)
      pos = pos or 1
      if pos > #str then error((decode_string_v1("855b2851ee5822263eac2ba5a99d43b01f91840eec1d07e8c92d62ccf7fd06db",265788967))) end
      local pos = pos + #str:match((decode_string_v1("d2812246",546157839)), pos)  -- Skip whitespace.
      local first = str:sub(pos, pos)
      if first == (decode_string_v1("ec",688974690)) then  -- Parse an object.
        local obj, key, delim_found = {}, true, true
        pos = pos + 1
        while true do
          key, pos = json.parse(str, pos, (decode_string_v1("43",1547901829)))
          if key == nil then return obj, pos end
          if not delim_found then error((decode_string_v1("fe0d2a07a488803ef1e2f623b53c926986a68c95f990b32fa083a03edb74c64da4632b",1063561940))) end
          pos = skip_delim(str, pos, (decode_string_v1("cd",1298621424)), true)  -- true -> error if missing.
          obj[key], pos = json.parse(str, pos)
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("b4",1667027117)))
        end
      elseif first == (decode_string_v1("b2",1041523836)) then  -- Parse an array.
        local arr, val, delim_found = {}, true, true
        pos = pos + 1
        while true do
          val, pos = json.parse(str, pos, (decode_string_v1("4e",1971517168)))
          if val == nil then return arr, pos end
          if not delim_found then error((decode_string_v1("a69743fa91179818c7d86caf6bfeec09904b01bea54e78c1007ddcb157e1eac50314",679262481))) end
          arr[#arr + 1] = val
          pos, delim_found = skip_delim(str, pos, (decode_string_v1("dc",1638696632)))
        end
      elseif first == (decode_string_v1("05",968369251)) then  -- Parse a string.
        return parse_str_val(str, pos + 1)
      elseif first == (decode_string_v1("e6",1053055219)) or first:match((decode_string_v1("9036",676677565))) then  -- Parse a number.
        return parse_num_val(str, pos)
      elseif first == end_delim then  -- End of an object or array.
        return nil, pos + 1
      else  -- Parse true, false, or null.
        local literals = {[(decode_string_v1("f30df969",1975917178))] = true, [(decode_string_v1("511d11e24d",2053349992))] = false, [(decode_string_v1("9a5c659f",1540828478))] = json.null}
        for lit_str, lit_val in pairs(literals) do
          local lit_end = pos + #lit_str - 1
          if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
        end
        local pos_info_str = (decode_string_v1("47da09b3f838f95fd7",299250371)) .. pos .. (decode_string_v1("7677",1482272259)) .. str:sub(pos, pos + 10)
        error((decode_string_v1("aa0af9c54fa962785b57c40f508d0c3b4194c9ef1a47454df543a2d5cc6939f4",314186474)) .. pos_info_str)
      end
    end

    getgenv()[(decode_string_v1("d1c74e699027fd5f94c19a16",1710970012))] = json
end
            -----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

local ErrorHandlerTing = function(err)
    return warn(err)
end

getgenv().ESP_TESTING = false
do
    local Camera = workspace:WaitForChild((decode_string_v1("2d85efe8d8ac",173928799)), 5)
    local Players = game[(decode_string_v1("9b095af70b778e5b943b",1369793573))](game, (decode_string_v1("08484f1d91b1f0",182958786)))
    local GUIService = game[(decode_string_v1("9bd38f2717e823cf6da6",150461317))](game, (decode_string_v1("6ccadd8f5eb9d987e7c0",887656473)))
    local LPlayer = Players[(decode_string_v1("4384a004a14e13870a8aa9",403655950))]
    local Mouse = LPlayer:GetMouse()
    
    getgenv()[(decode_string_v1("2b5a399107aa7a21fa3d",525758977))] = type(getgenv()[(decode_string_v1("e22394d3eaeeae9c71b5",1248576822))]) == (decode_string_v1("6d8d614608b2c7",710038322)) and getgenv()[(decode_string_v1("1c44ff8c83d9073fbb63",2095394777))] or false;
    getgenv()[(decode_string_v1("510c8415b82ea3911e2c47",1682467241))] = type(getgenv()[(decode_string_v1("2b290ad5817d4a857d6328",172156160))]) == (decode_string_v1("8b4aad19f3",583412822)) and getgenv()[(decode_string_v1("888848e764b63889b7aa7a",845829763))] or {};
    getgenv()[(decode_string_v1("29768e7b1afc84cf31",509860255))] = type(getgenv()[(decode_string_v1("1ceedb38da1775f41b",1043467381))]) == (decode_string_v1("9b8fbf3073",37195859)) and getgenv()[(decode_string_v1("8efb45c3bec92f765f",823742724))] or {};
    getgenv()[(decode_string_v1("cc395021ecb727b54043450a03f3",1539223919))] = type(getgenv()[(decode_string_v1("2b2ebc50c11a33e20fd32eec7708",782213433))]) == (decode_string_v1("fb2536cc38",1861627157)) and getgenv()[(decode_string_v1("331aab7c15ea2b5d424303980d40",433976240))] or {};
    getgenv()[(decode_string_v1("74317cba088fd4495a6402f06ab9b3e45448404558d095",803821079))] = type(getgenv()[(decode_string_v1("d839c5d948f48e2bdcc0d0c49e619fa431ffa649b25fa7",1814763670))]) == (decode_string_v1("1bc4bceb26",136765174)) and getgenv()[(decode_string_v1("28d8adc1588ee7902a08ce151dff46295c44cbeac59358",718139872))] or {};

    local PartNames = {
        [292439477] = {Root = (decode_string_v1("4b9bd2ab1c",440667621)), Head = (decode_string_v1("efbc8ef1",366815834))},
        [3233893879] = {Root = (decode_string_v1("2ae43ca149",2093154680)), Head = (decode_string_v1("7089e4e9",1632437920))}
    }
    
    if PartNames[game.PlaceId] ~= nil then
        getgenv()[(decode_string_v1("0c3e71994a3fbc73fabce01ae373f4261178a5",132446070))] = type(getgenv()[(decode_string_v1("18c47c6b825e14654604d8ba60b55f1a1db4ac",1049179064))]) == (decode_string_v1("63d19cd71d",1137906604)) and getgenv()[(decode_string_v1("d86a69b828dcbe0d98c6bb856a617af8280352",1821038129))] or {}

        for _, V in pairs(getgc(true)) do
            local GBPCheck = type(V) == (decode_string_v1("f3a84ca9d7",1970359440)) and rawget(V, (decode_string_v1("f4868939c81a1fa7d8f2e5e1",710621214))) and V or nil
            local GetCharCheck = type(V) == (decode_string_v1("a4aa654a36",1713317801)) and rawget(V, (decode_string_v1("3d3dc7a9323bb5fda561a212",180473099))) and V or nil
            local BadBussinessTeamCheck = type(V) == (decode_string_v1("446d2c27a7",518074531)) and rawget(V, (decode_string_v1("a4dd6891da9ce563d2891d7a23",275986923))) and V or nil

            if GBPCheck then
                getgenv()[(decode_string_v1("33611d7fc48d1674e553b47fe8f227a75c8f4a",1581431798))][(decode_string_v1("f4b41739a6e72e8d14b42552",2141914249))] = getgenv()[(decode_string_v1("1093af9f69a50fdf5d43d9675250b47e920807",768550816))][(decode_string_v1("77a760da70bd7d0ceb73e57a",1602524828))] or GBPCheck.getbodyparts
            end

            if GetCharCheck then
                getgenv()[(decode_string_v1("3a8c6ccca7e4bc183692860cd5b0c50e80eddf",421232798))][(decode_string_v1("ba90e3bc50d769adcc12672d",2025303097))] = getgenv()[(decode_string_v1("b8bc4e1735ccc1a87b1b3bfaba023b6f8a27b1",1271091081))][(decode_string_v1("bad2ad98ec8107e70d203577",2028293776))] or GetCharCheck
            end

            if BadBussinessTeamCheck then
                getgenv()[(decode_string_v1("6a1eb8f1dd47c30bae264dd0cb64a4d8afceb8",1145246673))][(decode_string_v1("80fdeb5c9016d43f0456a67dcf",101229050))] = getgenv()[(decode_string_v1("109c28469d64b9be02dffd319207cfb9a3772b",775213459))][(decode_string_v1("8c158e04478e1e200190fedb1d",1113205631))] or BadBussinessTeamCheck
            end
        end
    end

    local function GetPlrTeam(Plr)
        if typeof(Plr) == (decode_string_v1("46376c1c72f4f91f",1902583768)) then
            if game.PlaceId == 3233893879 then
                if getgenv()[(decode_string_v1("4465653be1d32b1685a22a01adda6c4d128e04",916342497))][(decode_string_v1("cfdf3c5b97c24c1c054fd0440c",1437504327))] ~= nil then
                    return getgenv()[(decode_string_v1("027fdb0ff3a46df9b74d96e80d602a7a6e3e45",1924686331))][(decode_string_v1("0e82a1d1a32c28ab7689746451",920121636))]:GetPlayerTeam(Plr)
                else
                    return Plr.Team
                end
            else
                return Plr.Team
            end
        end
    end

    local function GetChar_Ez(Plr)
        if typeof(Plr) == (decode_string_v1("ae968c67b5bd3f2c",798556353)) then
            if not PartNames[game.PlaceId] then
                if Plr:IsA((decode_string_v1("3c4a23d77d",650889150))) then
                    return Plr
                else
                    return Plr.Character
                end
            elseif game.PlaceId == 3233893879 then
                -- Bad business moment

                if type(getgenv()[(decode_string_v1("0706da997eebfcc69c3e2e39ad4f7ed8672b36",1347882565))][(decode_string_v1("fa2b6f22c6df6d2d02f0ccc9",1118227176))]) == (decode_string_v1("4486f3dc33",1578561550)) then
                    local PlrParts = getgenv()[(decode_string_v1("6f4598abc9e85cb0a22d38a4c0900f1ccbfbac",18714891))][(decode_string_v1("fa09d6e9cc9a93c7b17e2a46",1118935681))]:GetCharacter(Plr)
                    if PlrParts ~= nil then
                        return PlrParts.Body
                    end
                end
            elseif game.PlaceId == 292439477 then
                -- Phantom Forces moment

                if type(getgenv()[(decode_string_v1("00e228ca836ef772ac8752563f0c7d0114b15d",1102627506))][(decode_string_v1("9d5c5c5b1a5a73c56e85a67f",183262247))]) == (decode_string_v1("d5d86be300c44596",903266764)) then
                    local PlrParts = getgenv()[(decode_string_v1("ae3acf5da68c2b35c907a871ac78880bd23f4e",106397557))][(decode_string_v1("66767e798109c8f096b04074",1318832629))](Plr)
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

    getgenv()[(decode_string_v1("5ccc4d5664487ad758",197674994))].SETTINGS = {
        BOXES_ENABLED = false,
        TRACERS_ENABLED = false,
        TEAM_CHECK = false,
        AIMBOT_ENABLED = false,
        AIMBOT_TEAM_CHECK_ENABLED = false,
        ESP_COLOR = Color3.fromRGB(255, 255, 255)
    }

    getgenv()[(decode_string_v1("ad85d8715fe47a9e27",1447729243))].Connect = function()
        getgenv()[(decode_string_v1("2ec989687cbdd71a80",1801007515))].UnLoad = function()
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("be3f59c21b583628054c1f89cf8e9a7e06fc0982347bdd",1835085994))]) do
                pcall(function()
                    CachedItem:Remove()
                    getgenv()[(decode_string_v1("a0fff49f184ee0a1ddc884e157364ebcb488bbedf292ce",147250893))][CacheName] = nil
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("72097c9bcc633d46878cab",2068185501))]) do
                if tostring(CacheName):find((decode_string_v1("b47f185e9c",887519007))) then
                    getgenv()[(decode_string_v1("ccb37696a4f837c6149cf2",808900663))][CacheName] = nil
                end
            end
        end

        getgenv()[(decode_string_v1("d77b10d3395cf8cebb",553413082))].UnLoadType = function(TypeString)
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("892c05d94d98527b09a370b310b0f1ca38e26806cfcfda",1494976074))]) do
                pcall(function()
                    if tostring(CacheName):find(tostring(TypeString)) then
                        CachedItem:Remove()
                        getgenv()[(decode_string_v1("9e43a7c68b7d6e3b69d9072de4dfe4d7956f44478837ef",1284342487))][CacheName] = nil
                    end
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1("da33f92445f723ed17f660",1898205577))]) do
                if tostring(CacheName):find(tostring(TypeString)) then
                    getgenv()[(decode_string_v1("56d023865939fb33e2e668",1323172488))][CacheName] = nil
                end
            end
        end
        
        getgenv()[(decode_string_v1("c5b70072294bfbaef6",1615303751))].UnLoad()

        getgenv()[(decode_string_v1("0130198df829148ffc",567732169))].UpdateColor = function(Color)
            getgenv()[(decode_string_v1("f00057c93e8d26821d",1118512725))].SETTINGS.ESP_COLOR = typeof(Color) == (decode_string_v1("a42ed244d076",684692290)) and Color or Color3.fromRGB(255, 255, 255)
        end

        getgenv()[(decode_string_v1("9254265f1bb9e56517",338724825))].SetTeamCheck = function(Bool)
            getgenv()[(decode_string_v1("26f1e38903122b5a44",445098397))].SETTINGS.TEAM_CHECK = type(Bool) == (decode_string_v1("49321fcd034d73",1208616804)) and Bool or false
        end
        
        getgenv()[(decode_string_v1("c5c083329d07e53194",178312093))].SetBoxVisibility = function(Bool)
            getgenv()[(decode_string_v1("74ef0d32462b385907",1917522918))].SETTINGS.BOXES_ENABLED = type(Bool) == (decode_string_v1("e90ffc39c5d37d",639037359)) and Bool or false
        end

        getgenv()[(decode_string_v1("06504afa79e6048228",1977451746))].SetTracersVisibility = function(Bool)
            getgenv()[(decode_string_v1("d78e1810a94526c263",1651870630))].SETTINGS.TRACERS_ENABLED = type(Bool) == (decode_string_v1("a204590e89da4a",561412753)) and Bool or false
        end

        getgenv()[(decode_string_v1("304fcb518f96cd463b",2016658109))].LoadTracers = function(Plr)
            if getgenv()[(decode_string_v1("07f98e46451a8ee6b66018",551102874))][Plr.Name .. (decode_string_v1("d8618c5fd3764ca5dab4ef26",802251340))] == nil then
                if getgenv()[(decode_string_v1("b8197e76530e7ffd9f0539e183f98e2ae5023c0a65db54",1269894432))][Plr.Name .. (decode_string_v1("6a68363392d2aa0188dfcde7",1068537066))] == nil then
                    getgenv()[(decode_string_v1("9c2555d6fe7333237b848f9314c627c0589433a075d9fa",95481938))][Plr.Name .. (decode_string_v1("d4c14ac04e413189ed7c5ff3",1110156366))] = Drawing.new((decode_string_v1("54468e8b",1699155376)))
                    getgenv()[(decode_string_v1("6ac2fd3f1113d3b6e379908bd9e3588d408ed1a97363f2",1148825631))][Plr.Name .. (decode_string_v1("326ad25aaaf808c76d2e9d12",2032936265))].Visible = false
                    getgenv()[(decode_string_v1("fcf3fbe564d68c2c92c5e50c2c7588b93d33d1d58b9186",1875900357))][Plr.Name .. (decode_string_v1("2ad259c973e31806b7979987",1860291565))].Thickness = 2;
                    getgenv()[(decode_string_v1("0757d5478ae4c2cd009d87e4e63d31a27abcacac4d60ba",1342478020))][Plr.Name .. (decode_string_v1("8c83eddfd15a7ef9635c8b43",606733336))].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                end

                getgenv()[(decode_string_v1("88f9910ec69a6aaec8f7c3",847045767))][Plr.Name .. (decode_string_v1("133caab8abcc468af87b11f7",1346891536))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("50c9e0520ec698fd3b070b92f83ae4d38334e3d7e50280",405130500))][Plr.Name .. (decode_string_v1("a337f33606fd3db36c5c089f",1676254570))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("93de6bce12",352006842)) and PartNames[game.PlaceId].Root or (decode_string_v1("6f0afee9c9629486ba4969456b0343bf",404174089)))
                            local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("3ce8ade073",1537821721)) and PartNames[game.PlaceId].Head or (decode_string_v1("6f066f0c",995649668)))
                            
                            if RootCheck and Plrhead then
                                if getgenv()[(decode_string_v1("aea01ab5170f2ad6050ffad851f52720983bfd9abdd30a",946810254))][Plr.Name .. (decode_string_v1("02c77659bf3c2a266373cf58",1232091285))] then
                                    local Line = getgenv()[(decode_string_v1("be24025a93c226562fc1b4a6fd136da3f5bcc3cbfcab2f",1866037305))][Plr.Name .. (decode_string_v1("f16f22a8a45d1ae5f03db406",1551214860))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                                    local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                                    Line.To = Vector2.new(LinePos.X, LinePos.Y)
                                    Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                                    Line.Color = typeof(getgenv()[(decode_string_v1("4e7ac80d0ad9df966e",1271462772))].SETTINGS.ESP_COLOR) == (decode_string_v1("c041b5b9fdc1",1959420854)) and getgenv()[(decode_string_v1("23ac78643b15f6c333",1390876625))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("be40aafd680764ad69",313428980))].SETTINGS.TEAM_CHECK then
                                        Line.Visible = false
                                    else
                                        Line.Visible = getgenv()[(decode_string_v1("1891884d8c40732379",1061686165))].SETTINGS.TRACERS_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("3363f57033bcbc982241d217cc2c95fbeaebdccaedf147",528893839))][Plr.Name .. (decode_string_v1("3e67372f982e335b97263dd9",647623084))] then
                                getgenv()[(decode_string_v1("8b39dbadce7de1a19467adf982f16fe3ec0e25e8ad32ad",1433864060))][Plr.Name .. (decode_string_v1("5cb6654e336dc8538f4a8fe3",389031574))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("2b6ccfc630bb90f30aa7e3",524251918))][Plr.Name .. (decode_string_v1("7e05c5c942b06b1db4f537b7",1085910688))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("5ab5cb6a82be5642cf872e15bdad602057e44e34e4eab4",1761784993))][Plr.Name .. (decode_string_v1("a9e3cdeb1132fd54d3059343",1383676341))] then
                            getgenv()[(decode_string_v1("a0115caf1a7f362a18750af585aeb9b414e4849148c7a5",1330513499))][Plr.Name .. (decode_string_v1("a31bd72f36cc82d4e2d960bc",1682855801))]:Remove()
                            getgenv()[(decode_string_v1("14b31eba3c1822b2c8cf3f92de0b15f4a13de2f53c6be4",1024430290))][Plr.Name .. (decode_string_v1("a9d0817e9f8edcbc1060d377",1384717224))] = nil
                        end
                    end
                end
            end
        end
--GetPlayerTeam
        getgenv()[(decode_string_v1("ffd649fd5ed159513f",1487143820))].LoadBox = function(Plr)
            if getgenv()[(decode_string_v1("22c7b885845e854df92c9d",798629193))][Plr.Name .. (decode_string_v1("4ad45c6449efda953095",840652222))] == nil then
                if getgenv()[(decode_string_v1("6fd473f311d37f7471743312651108839b51a8f477f7d7",1502720853))][Plr.Name .. (decode_string_v1("c890fd4cdf79dcb84fe5",2069877972))] == nil then
                    getgenv()[(decode_string_v1("a41ff1a9f4dc48012fd109c8abf7ee528bb3ab6b393778",692259094))][Plr.Name .. (decode_string_v1("d8e249e0d147a2aa604e",29645565))] = Drawing.new((decode_string_v1("86b18eca04ff",410262735)));
                    getgenv()[(decode_string_v1("897a4cf7b3f99b8ce243e76c673c38e5f3468d24814c93",1475405308))][Plr.Name .. (decode_string_v1("32fb4f8e1fd136d8f3ce",673322603))].Thickness = 2;
                    getgenv()[(decode_string_v1("1835820712abb7966d1b935b76fff1df26e9340cb50f02",1050855019))][Plr.Name .. (decode_string_v1("c2084394ba8e50583430",87186005))].Filled = false;
                    getgenv()[(decode_string_v1("5a2ac7595d4d6e8a6b8b4df1c98c22081e12226ea70f9b",1788750195))][Plr.Name .. (decode_string_v1("9b8bd988c5288c01a70c",1523387568))].Visible = false;
                end

                getgenv()[(decode_string_v1("40f517a59e254905d64575",1115954090))][Plr.Name .. (decode_string_v1("1c63ec5a243ce0f39b87",239474723))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1("6f3896fafb41d887ce816f0f5b8867ec94b4adc2292284",1513887195))][Plr.Name .. (decode_string_v1("c8241dc931aa4cc15080",2079452781))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("7bd2bbe006",282647606)) and PartNames[game.PlaceId].Root or (decode_string_v1("b056659673091fa88ce332add816b6a6",486821494)))
                            
                            if RootCheck then
                                if getgenv()[(decode_string_v1("0757bc96bafe2c139999f8e4551e3f58446263729a2202",1350524535))][Plr.Name .. (decode_string_v1("fd481953422916561d4e",1460116219))] then
                                    local Inset = GUIService:GetGuiInset();
                                    local Box = getgenv()[(decode_string_v1("00176a2e1e8a79b438fd51cac362e0a60da9d09bc4cc42",1113220593))][Plr.Name .. (decode_string_v1("3c02c3602180c455e3e6",942988113))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                                    Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                                    Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                                    Box.Color = typeof(getgenv()[(decode_string_v1("c5abf28e467276032e",1598676859))].SETTINGS.ESP_COLOR) == (decode_string_v1("05e6caf86e4a",468180681)) and getgenv()[(decode_string_v1("c67de615153dd8e75b",1107415312))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("d43a2e615b102553d8",868484795))].SETTINGS.TEAM_CHECK then
                                        Box.Visible = false
                                    else
                                        Box.Visible = getgenv()[(decode_string_v1("483d209822e2607718",1171905460))].SETTINGS.BOXES_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1("5e42c9523d2c77c179db9953ac57ddeb2774912871dee5",844288685))][Plr.Name .. (decode_string_v1("4ef7f10f6aead7493511",750948355))] then
                                getgenv()[(decode_string_v1("be0f91eb2356983e32f8bc1ad5d06acdc553c6128cfbac",1847093321))][Plr.Name .. (decode_string_v1("d855720ef2ccc7412567",9791605))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1("136fb2b675c4f50c79a304",1396516135))][Plr.Name .. (decode_string_v1("8cc808183b9b01464306",599919768))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1("57668bf92d240061a1a44348b2eb1c10785fcea01739d1",187769565))][Plr.Name .. (decode_string_v1("c2527a343ec1fc5a19d1",779309625))] then
                            getgenv()[(decode_string_v1("3c057d7d254170d66a709768b824f9678de58030ca1606",359591952))][Plr.Name .. (decode_string_v1("f428a1c8af0d856298a2",1325227058))]:Remove()
                            getgenv()[(decode_string_v1("0c61e32e0120b5c3933f522a6af77c0cdd3efa86615811",1184116850))][Plr.Name .. (decode_string_v1("949beab57a5683d93cd9",73524639))] = nil
                        end
                    end
                end
            end
        end

        getgenv()[(decode_string_v1("3095121dcef7d0a3b3",2023181024))].LoadFov = function()
        end

        if getgenv().ESP_TESTING == true then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= LPlayer then
                    getgenv()[(decode_string_v1("c03045c196e8d80be4",1010128812))].LoadBox(Plr)
                    getgenv()[(decode_string_v1("7c873be9de976293f4",1254696912))].LoadTracers(Plr)
                end
            end
        end

        if getgenv()[(decode_string_v1("74194e740c09216843",1956924346))].RemovedAndAdded == nil then
            getgenv()[(decode_string_v1("062d7d48e0c5e6575d",1996752937))].RemovedAndAdded = true

            Players.PlayerAdded:Connect(function(Plr)
                if getgenv()[(decode_string_v1("5e2bcdcb45a79559a2",2146649664))].SETTINGS.BOXES_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("2920b5733cb28bcb38",509914720))].LoadBox(Plr)
                end

                if getgenv()[(decode_string_v1("5e11ee4c101e414beb",718312749))].SETTINGS.TRACERS_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1("1a72db591d02366829",27628564))].LoadTracers(Plr)
                end
            end)
        end
    end
    
    getgenv()[(decode_string_v1("7ce2a9d60ca2d5cf59",1261508043))].Connect()

    getgenv()[(decode_string_v1("5ca89127df6dd75f19",591158174))].Aimbot = function()
        local Proxy = newproxy(true);
        local MetaTable = getmetatable(Proxy);

        local function AimAtPlayer(Camera, Mouse, target)
            local TARGETPOS = Camera:WorldToScreenPoint(target.Position)
            local GOTO = Vector2.new((TARGETPOS.X - Mouse.X) * .15, (TARGETPOS.Y - Mouse.Y) * .15)
            mousemoverel(GOTO.X, GOTO.Y) -- Quick math for the aim function lmao
        end

        getgenv()[(decode_string_v1("368fced7904c1097d74513",666358512))].AimBot = nil

        MetaTable.Start = function()
            getgenv()[(decode_string_v1("8873ae17e5174a07512995",844905897))].AimBot = nil
            if getgenv()[(decode_string_v1("ea381e361066b0486d39f1",972829149))].AimBot == nil then

                getgenv()[(decode_string_v1("74406088101452fe73f404",400516719))].AimBot = function()
                    local LastDistance = 999999
                    for _, FPlayer in ipairs(Players:GetPlayers()) do
                        if FPlayer ~= LPlayer then

                            local TeamCheck = tostring(GetPlrTeam(FPlayer)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1("2eb8003e8871216853",1827534434))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
                            if not TeamCheck then
                                local FChar = GetChar_Ez(FPlayer)

                                if FChar then
                                    local HeadCheck = FChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1("bbf02bb331",244566427)) and PartNames[game.PlaceId].Head or (decode_string_v1("d0ac3f5d",1707801982)))

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
            getgenv()[(decode_string_v1("fe4f929373bebf648caea4",1275495624))].AimBot = nil
        end

        MetaTable.TeamCheck = function(Bool)
            getgenv()[(decode_string_v1("6cbc75f8a995276dbf",925506633))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
        end

        return MetaTable
    end

    if getgenv().ESP_TESTING == true then
        getgenv()[(decode_string_v1("ad53d55f34b6e2b94c",1436674953))].SetTracersVisibility(true)
        getgenv()[(decode_string_v1("2a90efe39e3c1a5b48",119978482))].SetBoxVisibility(true)
        getgenv()[(decode_string_v1("3026641fa56a9cb054",2035383727))].SetTeamCheck(false)
        getgenv()[(decode_string_v1("2e87a0ec77c060ab6a",597961174))].UpdateColor(Color3.fromRGB(79, 22, 201))
    end

    if not getgenv()[(decode_string_v1("1ce4c2ac11c9dd33044d",698435592))] then
        getgenv()[(decode_string_v1("af393e636033d615e2ae",1485745196))] = true
        local RunService = game[(decode_string_v1("412cca44bdd0682360cb",466809761))](game, (decode_string_v1("6132ce1d4f907ea55cd4",105821642)))
        RunService.Heartbeat:Connect(function()
            for _, Function in pairs(getgenv()[(decode_string_v1("c648c19e2b0622a5a0675a",988645102))]) do
                if type(Function) == (decode_string_v1("cd5e63f734e2f870",213655271)) then
                    xpcall(Function, ErrorHandlerTing)
                end
            end
        end)
    end
end
            --Timber. lua_compile_spot
            --PhantomForces. lua_compile_spot
            --BloxBurg. lua_compile_spot
            local VRService = game:GetService((decode_string_v1("718f16fb0b8a83e879",967063504)))

do
    local function WorldZeroInit()
        local MarketService = game:GetService((decode_string_v1("1eb7bd8644bbda9baa14526572c52f5a1e6d",217615789)))
        local VRService = game:GetService((decode_string_v1("51125e9e7a4c5af3e17611",48093682)))
    
        local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
        if isSuccessful then
            if info.Creator.Name == (decode_string_v1("54dc5cb14b4a200e53f567b4c4",834079096)) then
                --

                getgenv()[(decode_string_v1("c386a8b5c3ad0edbb66b776ec7b2573028ee1c6035",1708006943))] = false
            
                --------------------------------------------------------------------------------------------
        
                getgenv().UpdateLoop = type(getgenv().UpdateLoop) == (decode_string_v1("d9c5140be8c698",1150890466)) and getgenv().UpdateLoop or false;
                getgenv().UpdateCache = type(getgenv().UpdateCache) == (decode_string_v1("8b89436b94",586705278)) and getgenv().UpdateCache or {};
                getgenv().MOB_ESP_OBJECTS = type(getgenv().MOB_ESP_OBJECTS) == (decode_string_v1("f30e591ced",1107017024)) and getgenv().MOB_ESP_OBJECTS or {};
                getgenv().MOB_ESP_CONNECTIONS = type(getgenv().MOB_ESP_CONNECTIONS) == (decode_string_v1("93500edbf8",1053221081)) and getgenv().MOB_ESP_CONNECTIONS or {};
        
                local GameConfigFile = GetGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("1d13c25253",1231008296)))
                Settings_Name = (decode_string_v1("bcee5b49c8c7b713c77c2a64287735196d33f750db84487d798802",1103866687))

                getgenv()[Settings_Name] = {
                    AutoAttackMobs = GameConfigFile.AutoAttackMobs or false,
                    AutoPickupCoins = GameConfigFile.AutoPickupCoins or false,
                    AntiIdle = GameConfigFile.AntiIdle or false,
                    MobESP = GameConfigFile.MobESP or false,
                    MobESPRenderDistance = GameConfigFile.MobESPRenderDistance or 250
                }
                
                Window = UILibrary.new((decode_string_v1("571b22df62bf1b725d913bcf7f771db6a421f4b25ce0c9",532743525)), 5013109572)
    
                local TweenService = game:GetService((decode_string_v1("6b54db9175e585d4cb56e998",1768334992)))
                local Player = game.Players.LocalPlayer
                local Character = nil
                local PlayerPosition = nil
                local PlayerLookVector = nil
                local RootPart = nil
                local ItemTable = nil
                
                local ActionsModule = require(game.ReplicatedStorage.Client.Actions);
                local CombatModule = require(game.ReplicatedStorage.Shared.Combat);
                local AnimationModule = require(game.ReplicatedStorage.Client.Animations);
        
                local MobsFolder = workspace:FindFirstChild((decode_string_v1("a901eb3f",1692841676)))
                --[===[local PlayerWindow = Window:addPage("Player", 5012544693)]===]
                local AutoFarmWindow = Window:addPage((decode_string_v1("bc47b3c800c2707235",1339679071)), 5012544693)
                local VisualsWindow = Window:addPage((decode_string_v1("eaa9e0b92c5850",1474826496)), 5012544693)
                local TeleportsWindow = Window:addPage((decode_string_v1("cb80b0cd76db164d7e",1088186443)), 5012544693)
                local AutoFarmSection = AutoFarmWindow:addSection((decode_string_v1("7120dc975556f508",2044655135)), 5012544693)
                local VisualsSection = VisualsWindow:addSection((decode_string_v1("217c14c525d7852b",1891172121)), 5012544693)

                local Camera = workspace.Camera
                local GUIService = game[(decode_string_v1("9e1d80bfc1eedab23024",1032061449))](game, (decode_string_v1("06bbd4d53d1d564fd983",289515966)))
                
                local function GetNearMobs()

                    local Mobs = {}
                    local HitBoxSize = Vector3.new(25, 15, 25)

                    if RootPart then

                        local MobParams = OverlapParams.new()
                        MobParams.FilterDescendantsInstances = MobsFolder:GetChildren()
                        MobParams.CollisionGroup = (decode_string_v1("a4abee954cb9d1",60833366))
                        MobParams.FilterType = Enum.RaycastFilterType.Whitelist

                        local FoundInBox = workspace:GetPartBoundsInBox(RootPart.CFrame, HitBoxSize, MobParams)

                        if FoundInBox ~= nil then
                            for _, Part in ipairs(FoundInBox) do
                                if Part:IsA((decode_string_v1("29b9ff274998d0a7",1203169055))) then
                                    if Part.Name == (decode_string_v1("0c9761557f2ab57f",1190213912)) then
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
                                Box = Drawing.new((decode_string_v1("7a2c266c0375",1152125971))),
                                ESPText = Drawing.new((decode_string_v1("fcb53331",1686866381)))
                            }
    
                            local Box =  getgenv().MOB_ESP_OBJECTS[Mob].Box
                            local ESPText =  getgenv().MOB_ESP_OBJECTS[Mob].ESPText
    
                            ESPText.Text = (decode_string_v1("",2107463818))
                            ESPText.Color = Color3.fromRGB(255, 255, 255);
                            ESPText.Size = 20.0
                            ESPText.Visible = false
                            ESPText.Outline = true
                            ESPText.Center = true
    
                            Box.Thickness = 2;
                            Box.Filled = false;
                            Box.Visible = false;
                            
                            getgenv().UpdateCache[Mob] = function()
                                local Collider = Mob:FindFirstChild((decode_string_v1("57fe07101eaeb8ee",1688678163)))

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
    
                                    ESPText.Text = string.format((decode_string_v1("b2ec688f4c1b2e121b33526adb75cc242c941cf7f8b13931",1041942381)), Mob.Name, tostring( math.floor( (MobPos - PlayerPosition).Magnitude ) ) )
    
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
    
                                            local CreatureHealthFolder = Mob:FindFirstChild((decode_string_v1("bf5df5bf733e2799715d00f0ec279675",13086057)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("9f2888b562a7",980361174)))
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
                            if typeof(V) == (decode_string_v1("39e1af8e8c18da838238c02293e6479400da2f",253580124)) then
                                V:Disconnect()
                                getgenv().MOB_ESP_CONNECTIONS[I] = nil
                            end
                        end
                    end

                    ESP_META.StartConnections = function()
                        ESP_META.EndConnections()

                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("f47764daf95e1890",309921882))] = MobsFolder.ChildAdded:Connect(function(Mob)
                            ESP_META.AddEsp(Mob)
                        end)
        
                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1("f4cd78221262fd075ca8",308360365))] = MobsFolder.ChildRemoved:Connect(function(Mob)
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
                
                getgenv()[(decode_string_v1("7c80c8a49ed143f02beb63",930240909))][(decode_string_v1("05a2249779cda6cd761a4d15bd1c9c99",460542666))] = function()
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

                getgenv().UpdateCache[(decode_string_v1("06fdbb881802426fd2ca",1984683152))] = function()
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
                
                VisualsSection:addSlider((decode_string_v1("90e494a8b51c18fd6ee6b9341cd9b37add23b2",895407727)), getgenv()[Settings_Name].MobESPRenderDistance, 250, 10000, function(NewValue)
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

                VisualsSection:addToggle((decode_string_v1("fcde3e98f10a63",364794130)), getgenv()[Settings_Name].MobESP, function(Bool)
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

                AutoFarmSection:addToggle((decode_string_v1("b5eb7d610cc5ba1fed52f77cf7ab15108a5ef2d6a5631a49a3209dbe8fadeb323950a0",500636151)), getgenv()[Settings_Name].AutoAttackMobs, function(Bool)
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
                                            local CreatureHealthFolder = Creature:FindFirstChild((decode_string_v1("70f9dcc7a221118f2830a68bf503e2ad",1663143163)))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1("0f872f7d8da2",745683647)))
                                                
                                                if CreatureHealth then
                                                    
                                                    if CreatureHealth.Value > 0 then
                                                        local CreaturePos = Creature:GetPivot();
    
                                                        --local v14 = AnimationModule:GetAnims().Defender["Attack" .. tostring(AttackIndex)];
                                                        if not ActionsModule:IsBusy() then
                                                            TotalHits = TotalHits + 1
    
                                                            --ActionsModule:FireSkillUsedSignal("Primary");
                                                            --ActionsModule:FireCooldown("Primary");
                                                            ActionsModule:SetBusy((decode_string_v1("92cee4f2ef",1926945852)));
                                                        
                                                            if Character then
                                                                PlayerPosition = Character.PrimaryPart.Position
                                                                PlayerLookVector = Character.PrimaryPart.CFrame.LookVector
                                                                RootPart = Character.PrimaryPart
                                                            end
    
                                                            RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
                                                            Camera.CFrame = CFrame.new(Camera.CFrame.p, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
    
                                                            CombatModule:AttackWithSkill((decode_string_v1("a34c50e51e2b5414",1000858347)) .. tostring(AttackIndex), PlayerPosition, CFrame.new(PlayerPosition, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z)).LookVector * 1.1 );
                                                            
                                                            AttackIndex = math.clamp(AttackIndex + 1, 1, 6)
    
                                                            if AttackIndex > 5 then
                                                                AttackIndex = 1
                                                            end

                                                            CreatureIndex = CreatureIndex + 1
    
                                                            task.wait(0.01)
                                                            ActionsModule:ReleaseBusy((decode_string_v1("3f7d416dd0",511452778)));
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
                    if A:IsA((decode_string_v1("f967505daf",449728496))) then
                        if tostring(A) == (decode_string_v1("e1f9df22e4",2033255656)) then
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
    
                AutoFarmSection:addToggle((decode_string_v1("e45a17de414e86c9",1068238632)), getgenv()[Settings_Name].AntiIdle, function(Bool)
                    getgenv()[Settings_Name].AntiIdle = Bool
                end)
    
                AutoFarmSection:addToggle((decode_string_v1("7e34bc3b80e1fc38e39965ecd80117aa04bda3553cac2d9b485d",82774815)), getgenv()[Settings_Name].AutoPickupCoins, function(Bool)
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
        
                if not getgenv()[(decode_string_v1("5555f7611f81a0902995",529417073))] then
                    getgenv()[(decode_string_v1("fe1b42b6f2d8f869a80b",1274475142))] = true
                    RunService.Heartbeat:Connect(function()
                        for _, Function in pairs(getgenv()[(decode_string_v1("dcee493dd285d83318ad48",1149867921))]) do
                            if type(Function) == (decode_string_v1("017bd05c706f49a3",1890372637)) then
                                pcall(Function)
                            end
                        end
                    end)
                end
        
                print((decode_string_v1("7c870fb8dfbe5baa1c1b233c658372b5f41dc61b6a",1988343292)))
                --
            end
        end    
    end
    
    WorldZeroInit()

    local _Players = game:GetService((decode_string_v1("07712a726214ee",1965415263)))
    local _Player = _Players.LocalPlayer
    
    local queue_on_teleport = type(syn) == (decode_string_v1("3c123103e6",1508963078)) and syn.queue_on_teleport or queue_on_teleport
    
    local RejoinCode = (decode_string_v1("7710ecb3d0e6e04bb1f787d4455c2b02266cf52c631182a584cc3138599146cbe94907a6b11cd07ac2d736cc5d6382e9c6b32be5d662df01c89e46b08a903ed0eaf0b996fad958a08c7187c740207062af1296232fdea74f0c75df02452da9aacd64f3fca760ac41905121f0975967ec007b4446c1e525b16e9c05edf3a210e7e10299e577dadfbc014a83e0e772474822673a95fda4ca7e84f97c94818f6c189b9feae7f92c6b70be2d63b863fb5bee1d80ccd31411a85481d80595378d50716ff691350ac45fe146e7b7b7ee922afd6698131e55d06e3e084ee854ed1072909de6c1f344be7fb14502c6dafb9c691f582bd94e2ebdc20655968cc968002145b1d1d4c0905a4289e1d9c3e00818582a24b74a27164d9bf80ac863747f8cda9fdbef850f588316c87f6cba5d204c6bb10ae39ffc0c988ac2f511554c838ed53cd3d81ca9254a52aa44142874b2ae852c53a190780ea2437da65fd735fe45981c1602b2974fa9677416a1abe5d8d495d65b6b42fb6cbc7246ec43d1643a9bdce3d5717837440dc63b2aeacb759ddabe32469d5b47de87493adae0488a702114bfa9700eaf54ea7ac3b8df72d7ebd9f06fa81eaa697fed53ae4661764bc73cfc438b7462ed835a5cbefd42281afd023e5dbc1a7ac1a3d6ec44a621a7f7008c3346d0add3d2c2442246878dc1b275dd0acd8ffa6c30eb218c26d35effd74fd0e97a2db3bd761ffc61dbbdec6bb211010865ff7039848d11a59e77b38ac15c42c3e1532f8d094613479c21d5d65543a53e6734f5915439e35d8462797fc8f32bc49357fef90f00d2fe84f7c6cd4cd96f3bcb7347dadbb4bb0c53e1fede8ede32bf19ca940b977f66d465b21fd46cc38b014a1058a9",1055932831))

    if not isfile((decode_string_v1("ef5776efb767ee264ad634b6d9869aa941a355",482618249))) then
        writefile((decode_string_v1("3b26f3ff2f382ec812bf345fb1bde9f35ebaca",1349229574)), tostring(RejoinCode))
    end
    
    queue_on_teleport((decode_string_v1("b74364de9d4261206e9ed05710739eac3dcf6a3125df91701a6c26d9f9d2158078cdab571a57b62298b756b1fc7e379fc1335d979e8b46393b51611e8fd6e3d0ee65e95a83d374552f4f0d27041fd53ac06dab8b6565a0abc2c9a42f6e0fbef5c9c2f5bbdc03f19f00dec131",948571893)))
end
            --DaHood. lua_compile_spot

			if getgenv()[(decode_string_v1("e8176a14a2d47b37452347c3860d26461f82acdd11",1065210724))] == true then
                do
    local Players = game[(decode_string_v1("8cf0c7f2830cbc6ae0a5",13613288))](game, (decode_string_v1("e79c1b8ce77718",71208662)))
    local Player = Players[(decode_string_v1("6310b6f4d49c01fc9070d3",114497414))]
    local Format, Split, GSUB, gmatch, match = string[(decode_string_v1("014a360ea363",1883610152))], string[(decode_string_v1("9946d47937",1482514379))], string[(decode_string_v1("685c1e19",961961011))], string[(decode_string_v1("d83f61fbba39",851209841))], string[(decode_string_v1("b47fbdd622",696876490))]

    Window = UILibrary.new((decode_string_v1("ac0a83b3cdd5f6c22cfe9bb50583676b6e4c5c661ee5",1323136676)), 5013109572)

    local VisualsWindow = Window:addPage((decode_string_v1("2d60634be2fb75",15615474)), 5012544693)
    local VisualsSelection = VisualsWindow:addSection((decode_string_v1("5879d7d8",2014122112)))

    local GameConfigFile = GetGameConfig(FixName(tostring((decode_string_v1("516a773b6512c3980d",1706533068)))) .. (decode_string_v1("7dbfa34455",226485980)))
    Settings_Name = (decode_string_v1("dad20bdce72bb0f13ff7ef871c3fee338dbc82c82dffb08d453d",1915144677))

    getgenv()[Settings_Name] = {
        Teamcheck = GameConfigFile.Teamcheck or false,
        Boxes = GameConfigFile.Boxes or false,
        Tracers = GameConfigFile.Tracers or false,
        Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
    }

    VisualsSelection:addToggle((decode_string_v1("bb437b2b50e8e08299d28e3c2e",1539594897)), getgenv()[Settings_Name].Teamcheck, function(Bool)
        getgenv()[Settings_Name].Teamcheck = Bool
        getgenv()[(decode_string_v1("48a32e9b1a2e30d80c",131238379))].SetTeamCheck(Bool)
    end)

    VisualsSelection:addToggle((decode_string_v1("cc7d47d0ffd9e34aeb",1152379704)), getgenv()[Settings_Name].Boxes, function(Bool)
        getgenv()[Settings_Name].Boxes = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("d1df229b1a4c0af63e",1363299890))].LoadBox(Plr)
                end
            end
            getgenv()[(decode_string_v1("1a95148ee6a6b8f203",750262546))].SetBoxVisibility(true)
        else
            getgenv()[(decode_string_v1("c68544f3519bb8592b",1105233640))].UnLoadType((decode_string_v1("084c14a45ff9be3268d1",376740418)))
            getgenv()[(decode_string_v1("ee7c4d7b5b7d678c17",1052543962))].SetBoxVisibility(false)
        end
    end)

    VisualsSelection:addToggle((decode_string_v1("b86951622b85116e35e236",280418703)), getgenv()[Settings_Name].Tracers, function(Bool)
        getgenv()[Settings_Name].Tracers = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1("944382abffb0502c92",146308890))].LoadTracers(Plr)
                end
            end
            getgenv()[(decode_string_v1("2477f84ab274b3b302",83994515))].SetTracersVisibility(true)
        else
            getgenv()[(decode_string_v1("d3187e6780e10da26b",1731970586))].UnLoadType((decode_string_v1("206c119ac944f78a95e4e0d6",286906899)))
            getgenv()[(decode_string_v1("adf120527a33f5d5d3",1447520370))].SetTracersVisibility(false)
        end
    end)

    local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color

    getgenv()[(decode_string_v1("8223ed848a3055f85d",2060503736))].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

    VisualsSelection:addColorPicker((decode_string_v1("7897fcd538f270435d",143021076)), Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
        local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)

        getgenv()[Settings_Name].Color.R = R
        getgenv()[Settings_Name].Color.G = G
        getgenv()[Settings_Name].Color.B = B

        getgenv()[(decode_string_v1("6a2a1f4ed4ddac7d2a",631049688))].UpdateColor(Color3.fromRGB(R, G, B))
    end)

    VisualsSelection:addButton((decode_string_v1("da8138cadc0860d106f5",1916386087)), function(Bool)
        getgenv()[(decode_string_v1("26f4f08a20761b4ee9",1327249911))].UnLoad()
    end)
end
			end

			if Window ~= nil and Settings_Name ~= nil then
				local MarketService = game:GetService((decode_string_v1("11c54bc9c19e44b7776d95c4294a06ec6e2d",1518837462)))
				SettingsPage = SettingsPage or Window:addPage((decode_string_v1("d6659dffd7a07038",1337630226)), 5012544693)
				SettingsSection = SettingsSection or SettingsPage:addSection((decode_string_v1("fec4af7be2",1206918198)), 5012544693)
				SettingsSection:addButton((decode_string_v1("28082d3bdaf6d943483f14",825028623)), function()
					local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
					if isSuccessful then
						if tostring(info.Creator.Name) == (decode_string_v1("1259a9570fc399f20558d27b73",1171023635)) then
							SaveGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1("a15cbe9b11",889183200)), getgenv()[Settings_Name])
                        elseif getgenv()[(decode_string_v1("e845654b98b08f2b22eff05e88f424776a1a16768b",1067895244))] == true then
							SaveGameConfig(FixName(tostring((decode_string_v1("51a33e488377727248",1684206587)))) .. (decode_string_v1("8599455332",813238726)), getgenv()[Settings_Name])
                        else
							SaveGameConfig(FixName(tostring(info.Name)) .. (decode_string_v1("b27a1e57d0",1456774217)), getgenv()[Settings_Name])
						end
					end
				end)
				SettingsSection:addKeybind((decode_string_v1("043205b56c6e49cdb2bfccb7e8f2",1381676325)), Enum.KeyCode.Home, function()
					Window:toggle()
				end, function()
				end)
			end
		else
			return sendError(serverData, clientData)
		end
	end
end, function(err)
	return warn(err .. (decode_string_v1("9d",749190816)) .. debug.traceback())
end)