       
               do
                  local json = {}
                  local function kind_of(obj)
                    if typeof(obj) == 'CFrame' then return typeof(obj), obj end
                    if typeof(obj) == 'Vector3' then return typeof(obj), obj end
                    if typeof(obj) == 'Vector2' then return typeof(obj), obj end
                    if type(obj) ~= 'table' then return type(obj) end
                    local i = 1
                    for _ in pairs(obj) do
                     if obj[i] ~= nil then i = i + 1 else return 'table' end
                    end
                    if i == 1 then return 'table' else return 'array' end
                  end
                  
                  local function escape_str(s)
                    local in_char  = {'\\', '"', '/', '\b', '\f', '\n', '\r', '\t'}
                    local out_char = {'\\', '"', '/',  'b',  'f',  'n',  'r',  't'}
                    for i, c in ipairs(in_char) do
                     s = s:gsub(c, '\\' .. out_char[i])
                    end
                    return s
                  end
                  
                  -- Returns pos, did_find; there are two cases:
                  -- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
                  -- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
                  -- This throws an error if err_if_missing is true and the delim is not found.
                  local function skip_delim(str, pos, delim, err_if_missing)
                    pos = pos + #str:match('^%s*', pos)
                    if str:sub(pos, pos) ~= delim then
                     if err_if_missing then
                       error('Expected ' .. delim .. ' near position ' .. pos)
                     end
                     return pos, false
                    end
                    return pos + 1, true
                  end
                  
                  -- Expects the given pos to be the first character after the opening quote.
                  -- Returns val, pos; the returned pos is after the closing quote character.
                  local function parse_str_val(str, pos, val)
                    val = val or ''
                    local early_end_error = 'End of input found while parsing string.'
                    if pos > #str then error(early_end_error) end
                    local c = str:sub(pos, pos)
                    if c == '"'  then return val, pos + 1 end
                    if c ~= '\\' then return parse_str_val(str, pos + 1, val .. c) end
                    -- We must have a \ character.
                    local esc_map = {b = '\b', f = '\f', n = '\n', r = '\r', t = '\t'}
                    local nextc = str:sub(pos + 1, pos + 1)
                    if not nextc then error(early_end_error) end
                    return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
                  end
                  
                  -- Returns val, pos; the returned pos is after the number's final character.
                  local function parse_num_val(str, pos)
                    local num_str = str:match('^-?%d+%.?%d*[eE]?[+-]?%d*', pos)
                    local val = tonumber(num_str)
                    if not val then error('Error parsing number at position ' .. pos .. '.') end
                    return val, pos + #num_str
                  end
                  
                  
                  -- Public values and functions.
                  
                  function json.stringify(obj, as_key)
                    local s = {}  -- We'll build the string as an array of strings to be concatenated.
                    local kind, kind_objecto = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
                    if kind == 'array' then
                     if as_key then error('Can\'t encode array as key.') end
                     s[#s + 1] = '['
                     for i, val in ipairs(obj) do
                       if i > 1 then s[#s + 1] = ', ' end
                       s[#s + 1] = json.stringify(val)
                     end
                     s[#s + 1] = ']'
                    elseif kind == 'table' then
                     if as_key then error('Can\'t encode table as key.') end
                     s[#s + 1] = '{'
                     for k, v in pairs(obj) do
                       if #s > 1 then s[#s + 1] = ', ' end
                       s[#s + 1] = json.stringify(k, true)
                       s[#s + 1] = ':'
                       s[#s + 1] = json.stringify(v)
                     end
                     s[#s + 1] = '}'
                    elseif kind == 'string' then
                     return '"' .. escape_str(obj) .. '"'
                    elseif kind == 'CFrame' then
                     kind_objecto = {table_type = "CFrame", kind_objecto:components()}
                     if as_key then error('Can\'t encode table as key.') end
                     s[#s + 1] = '{'
                     for k, v in pairs(kind_objecto) do
                       if #s > 1 then s[#s + 1] = ', ' end
                       s[#s + 1] = json.stringify(k, true)
                       s[#s + 1] = ':'
                       s[#s + 1] = json.stringify(v)
                     end
                     s[#s + 1] = '}'
                  elseif kind == 'Vector3' then
                     kind_objecto = {table_type = "Vector3", kind_objecto.X, kind_objecto.Y, kind_objecto.Z}
                     if as_key then error('Can\'t encode table as key.') end
                     s[#s + 1] = '{'
                     for k, v in pairs(kind_objecto) do
                       if #s > 1 then s[#s + 1] = ', ' end
                       s[#s + 1] = json.stringify(k, true)
                       s[#s + 1] = ':'
                       s[#s + 1] = json.stringify(v)
                     end
                     s[#s + 1] = '}'
                  elseif kind == 'Vector2' then
                     kind_objecto = {table_type = "Vector2", kind_objecto.X, kind_objecto.Y}
                     if as_key then error('Can\'t encode table as key.') end
                     s[#s + 1] = '{'
                     for k, v in pairs(kind_objecto) do
                       if #s > 1 then s[#s + 1] = ', ' end
                       s[#s + 1] = json.stringify(k, true)
                       s[#s + 1] = ':'
                       s[#s + 1] = json.stringify(v)
                     end
                     s[#s + 1] = '}'
                    elseif kind == 'number' then
                     if as_key then return '"' .. tostring(obj) .. '"' end
                     return tostring(obj)
                    elseif kind == 'boolean' then
                     return tostring(obj)
                    elseif kind == 'nil' then
                     return 'null'
                    else
                     error('Unjsonifiable type: ' .. kind .. '.')
                    end
                    return table.concat(s)
                  end
                  
                  json.null = {}  -- This is a one-off table to represent the null value.
                  
                  function json.parse(str, pos, end_delim)
                    pos = pos or 1
                    if pos > #str then error('Reached unexpected end of input.') end
                    local pos = pos + #str:match('^%s*', pos)  -- Skip whitespace.
                    local first = str:sub(pos, pos)
                    if first == '{' then  -- Parse an object.
                     local obj, key, delim_found = {}, true, true
                     pos = pos + 1
                     while true do
                       key, pos = json.parse(str, pos, '}')
                       if key == nil then return obj, pos end
                       if not delim_found then error('Comma missing between object items.') end
                       pos = skip_delim(str, pos, ':', true)  -- true -> error if missing.
                       obj[key], pos = json.parse(str, pos)
                       pos, delim_found = skip_delim(str, pos, ',')
                     end
                    elseif first == '[' then  -- Parse an array.
                     local arr, val, delim_found = {}, true, true
                     pos = pos + 1
                     while true do
                       val, pos = json.parse(str, pos, ']')
                       if val == nil then return arr, pos end
                       if not delim_found then error('Comma missing between array items.') end
                       arr[#arr + 1] = val
                       pos, delim_found = skip_delim(str, pos, ',')
                     end
                    elseif first == '"' then  -- Parse a string.
                     return parse_str_val(str, pos + 1)
                    elseif first == '-' or first:match('%d') then  -- Parse a number.
                     return parse_num_val(str, pos)
                    elseif first == end_delim then  -- End of an object or array.
                     return nil, pos + 1
                    else  -- Parse true, false, or null.
                     local literals = {['true'] = true, ['false'] = false, ['null'] = json.null}
                     for lit_str, lit_val in pairs(literals) do
                       local lit_end = pos + #lit_str - 1
                       if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
                     end
                     local pos_info_str = 'position ' .. pos .. ': ' .. str:sub(pos, pos + 10)
                     error('Invalid json syntax starting at ' .. pos_info_str)
                    end
                  end
               
                  getgenv()["GRUBHUB_JSON"] = json
               end

               local HTTP_SERVICE_V1 = game:GetService("HttpService")  
               local function decode_string_v1(Offset, Table)
                  local Result = ""
         
                  for Index, Letter in ipairs(Table) do
                     local char = Letter
                     local Byte = char["byte"](char)
                     local MMath = (Byte - math.floor(Index / 100) - Offset - 3)
                     local letter = string["char"](MMath)
                     Result = Result .. letter
                  end
         
                  return Result
               end
            xpcall(function()
	do
		getgenv().Key = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["o", "W", "=", "N", ";", "M", "?", ">", "9", "t", "g", "z", "H", "u", "p", "I"]
]])));
		getgenv().DiscordWebhook = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["R", "o", "t", "q"]
]])));
		getgenv().WebhookEnabled = false;
		getgenv().GubVersion = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
[";", "4", "6"]
]])));

		local CLIENT_DEOBF_OFFSET = 3;
		local SERVER_DEOBF_OFFSET = 1;
		local StartTimer = os.time()
		local UILibrary = loadstring(game:HttpGet((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["n", "z", "z", "v", "y", "@", "5", "5", "x", "g", "}", "4", "m", "o", "z", "n", "{", "h", "{", "y", "k", "x", "i", "u", "t", "z", "k", "t", "z", "4", "i", "u", "s", "5", "H", "u", "~", "q", "o", "t", "m", "=", "=", "<", "5", "M", "x", "{", "h", "N", "{", "h", "5", "s", "g", "o", "t", "5", "s", "u", "j", "{", "r", "k", "y", "5", "\\", "k", "t", "", "^", "[", "O", "4", "r", "{", "g"]
]]))), true))()
		local library = loadstring(game:HttpGet((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["n", "z", "z", "v", "y", "@", "5", "5", "x", "g", "}", "4", "m", "o", "z", "n", "{", "h", "{", "y", "k", "x", "i", "u", "t", "z", "k", "t", "z", "4", "i", "u", "s", "5", "s", "u", "u", "t", "i", "u", "x", "k", "y", "5", "r", "o", "h", "5", "j", "=", ":", "<", "<", "9", "<", "9", ":", "?", "<", ";", "h", "k", "7", "?", "i", "?", "=", "8", "l", "7", "9", "=", "h", "i", "l", "<", ">", "9", "7", "?", ":", "9", "<", "8", "h", "k", "8", ">", "5", "t", "u", "z", "o", "l", "4", "r", "{", "g"]
]])))))()
		library:Notification((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "x", "{", "h", "N", "{", "h"]
]]))), (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["", "V", "r", "k", "g", "y", "k", "&", "}", "g", "o", "z", "&", "}", "n", "o", "r", "k", "&", "}", "k", "&", "v", "x", "u", "i", "k", "y", "y", "&", "z", "n", "k", "&", "h", "", "z", "k", "i", "u", "j", "k", "4", "4", "4", ""]
]]))), 10, Color3.fromRGB(255, 255, 255))

		if not isfolder((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "x", "{", "h", "n", "{", "h", "e", "|", "<", "e", "h", "o", "t"]
]])))) then
			makefolder((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "x", "{", "h", "n", "{", "h", "e", "|", "<", "e", "h", "o", "t"]
]]))))
		end

		for i, v in pairs(game:GetService((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "u", "x", "k", "M", "{", "o"]
]])))):GetDescendants()) do
			pcall(function()
				if v.Name == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "r", "u", "}"]
]]))) then
					v.Parent.Parent:Destroy()
				end
			end)
		end

		local function identify()
			local Executor = string.lower(identifyexecutor())
			local ExecutorTable = nil
			if string.find(Executor, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "", "t", "g", "v", "y", "k"]
]])))) then
				ExecutorTable = {
					(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["Y", "", "t", "g", "v", "y", "k"]
]]))),
					syn.request
				}
			end
			if string.find(Executor, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["q", "x", "t", "r"]
]])))) then
				ExecutorTable = {
					(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["Q", "x", "t", "r"]
]]))),
					request
				}
			end
			if string.find(Executor, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["l", "r", "{", "~"]
]])))) then
				ExecutorTable = {
					(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["L", "r", "{", "~", "{", "y"]
]]))),
					request
				}
			end
			if string.find(Executor, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "i", "x", "o", "v", "z"]
]])))) then
				ExecutorTable = {
					(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["Y", "i", "x", "o", "v", "z", "3", "]", "g", "x", "k"]
]]))),
					http.request
				}
			end
			if string.find(Executor, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "k", "t"]
]])))) then
				ExecutorTable = {
					(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["Y", "k", "t", "z", "o", "t", "k", "r"]
]]))),
					request
				}
			end
			if string.find(Executor, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["v", "x", "u"]
]])))) then
				ExecutorTable = {
					(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["V", "x", "u", "z", "u", "y", "s", "g", "y", "n", "k", "x"]
]]))),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["n", "{", "x", "z"]
]])))) then
				ExecutorTable = {
					(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["Y", "o", "x", "N", "{", "x", "z", "&", "\\", ";"]
]]))),
					http_request
				}
			end
			if string.find(Executor, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "x", "{", "h"]
]])))) then
				ExecutorTable = {
					(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "x", "{", "h", "N", "{", "h"]
]]))),
					httprequest
				}
			end
			if string.find(Executor, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["k", "r", "k", "i", "z", "x", "u", "t"]
]])))) then
				ExecutorTable = {
					(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "r", "k", "i", "z", "x", "u", "t"]
]]))),
					http_request
				}
			end
			if getgenv().WRD_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["P", "P", "Y", "v", "r", "u", "o", "z"]
]]))),
					http_request
				}
			end
			if getgenv().unlock_module ~= nil and getgenv().setscriptable ~= nil and getgenv().import ~= nil then
				ExecutorTable = {
					(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["Y", "i", "x", "o", "v", "z", "3", "]", "g", "x", "k", "3", "S", "g", "i"]
]]))),
					http_request
				}
			end
			if getgenv().OXYGEN_LOADED ~= nil then
				ExecutorTable = {
					(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["U", "~", "", "m", "k", "t", "&", "["]
]]))),
					http_request
				}
			end
			if ExecutorTable == nil then
				library:Notification((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "x", "{", "h", "N", "{", "h", "&", "K", "x", "x", "u", "x"]
]]))), (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "t", "y", "{", "v", "v", "u", "x", "z", "k", "j", "&", "K", "~", "v", "r", "u", "o", "z", "2", "&", "v", "r", "k", "g", "y", "k", "&", "i", "n", "k", "i", "q", "&", "u", "{", "x", "&", "y", "{", "v", "v", "u", "x", "z", "&", "r", "o", "y", "z", "&", "a", "K", "x", "x", "u", "x", "&", "I", "u", "j", "k", "&", ")", "?", "<", ":", "?", "<", "9", "K", "c"]
]]))), 10, Color3.fromRGB(255, 255, 255))
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
				library:Notification((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "x", "o", "z", "o", "i", "g", "r", "&", "K", "x", "x", "u", "x"]
]]))), (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["]", "k", "&", "i", "g", "s", "k", "&", "g", "i", "x", "u", "y", "y", "&", "g", "t", "&", "k", "x", "x", "u", "x", "&", "}", "n", "o", "r", "k", "&", "y", "k", "t", "j", "o", "t", "m", "&", "g", "&", "x", "k", "w", "{", "k", "y", "z", "&", "a", "K", "x", "x", "u", "x", "&", "I", "u", "j", "k", "&", ")", "?", "6", "<", ":", ">", "9", "G", "c"]
]]))), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["O", "t", "|", "g", "r", "o", "j", "&", "N", "]", "O", "J", "2", "&", "G", "x", "k", "&", "", "u", "{", "&", "{", "y", "o", "t", "m", "&", "g", "&", "y", "{", "v", "v", "u", "x", "z", "k", "j", "&", "k", "~", "v", "r", "u", "o", "z", "E"]
]]))) then
				library:Notification((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "x", "o", "z", "o", "i", "g", "r", "&", "K", "x", "x", "u", "x"]
]]))), (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["O", "t", "|", "g", "r", "o", "j", "&", "K", "~", "v", "r", "u", "o", "z", "&", "u", "x", "&", "O", "t", "|", "g", "r", "o", "j", "&", "V", "x", "u", "z", "u", "i", "g", "r", "&", "a", "K", "x", "x", "u", "x", "&", "I", "u", "j", "k", "&", ")", "?", "<", "6", "8", "<", "6", "H", "c"]
]]))), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["Q", "k", "", "&", "t", "u", "z", "&", "l", "u", "{", "t", "j", "&", "o", "t", "&", "J", "g", "z", "g", "h", "g", "y", "k"]
]]))) then
				library:Notification((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "x", "o", "z", "o", "i", "g", "r", "&", "K", "x", "x", "u", "x"]
]]))), (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["O", "t", "|", "g", "r", "o", "j", "&", "q", "k", "", "&", "V", "x", "u", "|", "o", "j", "k", "j", "2", "&", "u", "x", "&", "X", "k", "w", "{", "k", "y", "z", "&", "L", "g", "o", "r", "k", "j", "&", "a", "K", "x", "x", "u", "x", "&", "I", "u", "j", "k", "&", ")", "?", "=", ":", "?", "<", "9", "I", "c"]
]]))), 15, Color3.fromRGB(255, 255, 255))
			elseif serverData == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["_", "u", "{", "&", "g", "x", "k", "&", "H", "r", "g", "i", "q", "r", "o", "y", "z", "k", "j", "4"]
]]))) then
				library:Notification((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["H", "r", "g", "i", "q", "r", "o", "y", "z", "&", "T", "u", "z", "o", "i", "k"]
]]))), (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["_", "u", "{", "&", "n", "g", "|", "k", "&", "h", "k", "k", "t", "&", "S", "g", "t", "{", "g", "r", "r", "", "&", "H", "r", "g", "i", "q", "r", "o", "y", "z", "k", "j", "&", "h", "", "&", "g", "t", "&", "G", "j", "s", "o", "t", "&", "a", "K", "x", "x", "u", "x", "&", "I", "u", "j", "k", "&", ")", "6", "=", "9", "?", ">", ";", "8", "J", "c"]
]]))), 15, Color3.fromRGB(255, 255, 255))
			else
				library:Notification((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "x", "o", "z", "o", "i", "g", "r", "&", "K", "x", "x", "u", "x"]
]]))), (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["]", "k", "&", "i", "g", "s", "k", "&", "g", "i", "x", "u", "y", "y", "&", "g", "t", "&", "[", "t", "q", "t", "u", "}", "t", "&", "K", "x", "x", "u", "x", "2", "&", "V", "r", "k", "g", "y", "k", "&", "y", "k", "t", "j", "&", "g", "&", "j", "k", "|", "k", "r", "u", "v", "k", "x", "&", "z", "n", "k", "&", "z", "k", "~", "z", "&", "z", "n", "g", "z", "&", "o", "y", "&", "i", "u", "v", "o", "k", "j", "&", "z", "u", "&", "", "u", "{", "x", "&", "i", "r", "o", "v", "h", "u", "g", "x", "j", "4", "'", "b", "L", "y", "y", "v", "y", "'", "J", "v", "k", "l", "'", "*", "\\", "U", "R", "U", "7", "^", "U", "d"]
]]))), 15, Color3.fromRGB(255, 255, 255))
				setclipboard((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "x", "x", "u", "x", "@", "&", "Y", "u", "s", "k", "z", "n", "o", "t", "m", "&", "}", "k", "t", "z", "&", "}", "x", "u", "t", "m", "&", "j", "{", "x", "o", "t", "m", "&", "z", "n", "k", "&", "x", "k", "w", "{", "k", "y", "z", "&", "‚", "&", "I", "r", "o", "k", "t", "z", "&", "J", "g", "z", "g", "@", "&"]
]]))) .. clientData .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["&", "‚", "&", "K", "~", "v", "r", "u", "o", "z", "@", "&"]
]]))) .. exploit .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["&", "‚", "&", "Q", "k", "", "@", "&"]
]]))) .. Key .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["&", "‚", "&", "Y", "k", "x", "|", "k", "x", "&", "J", "g", "z", "g", "@", "&"]
]]))) .. serverData .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["&", "‚", "&", "R", "u", "g", "j", "o", "t", "m", "&", "Z", "o", "s", "k", "@", "&"]
]]))) .. tostring(newtime))
			end

			specialisedrequest({
				Url = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["n", "z", "z", "v", "@", "5", "5", "7", "8", "=", "4", "6", "4", "6", "4", "7", "@", "<", ":", "<", "9", "5", "x", "v", "i", "E", "|", "C", "7"]
]]))),
				Method = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["V", "U", "Y", "Z"]
]]))),
				Headers = {
					[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "u", "t", "z", "k", "t", "z", "3", "Z", "", "v", "k"]
]])))] = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["g", "v", "v", "r", "o", "i", "g", "z", "o", "u", "t", "5", "p", "y", "u", "t"]
]])));
					[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["U", "x", "o", "m", "o", "t"]
]])))] = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["n", "z", "z", "v", "y", "@", "5", "5", "j", "o", "y", "i", "u", "x", "j", "4", "i", "u", "s"]
]])));
				},
				Body = getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "X", "[", "H", "N", "[", "H", "e", "P", "Y", "U", "T"]
]])))].stringify({
					[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["i", "s", "j"]
]])))] = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["O", "T", "\\", "O", "Z", "K", "e", "H", "X", "U", "]", "Y", "K", "X"]
]])));
					[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["g", "x", "m", "y"]
]])))] = {
						[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["i", "u", "j", "k"]
]])))] = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["}", "^", "v", "~", "`", "H", "i", "V", "€", "q"]
]])))
					};
					[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["t", "u", "t", "i", "k"]
]])))] = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["7", "<", "8", "l", "i", "?", "g", "l", "3", "l", ";", "8", "?", "3", ":", "l", "h", "<", "3", ">", "8", ";", "<", "3", "8", ";", ":", "k", ";", "j", "g", ";", "i", ";", "g", "9"]
]])));
				})
			})
		end

		local random = Random.new()
		local letters = {(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["g"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["h"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["i"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["j"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["k"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["l"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["n"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["o"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["p"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["q"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["r"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["s"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["t"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["u"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["v"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["w"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["x"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["{"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["|"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["}"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["~"]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
[""]
]]))),(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["€"]
]])))}

		function getRandomLetter()
			return letters[random:NextInteger(1, #letters)]
		end
		local function FixName(GameName)
			return GameName:gsub((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["a", "+", "y", "+", "v", "+", "j", "+", "i", "+", "€", "c"]
]]))), (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]]))))
		end

		local function GetGameConfig(GameName)
			local Table = {}
			if isfolder((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "x", "{", "h", "n", "{", "h", "e", "|", "<", "e", "h", "o", "t"]
]])))) then
				if isfile((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "x", "{", "h", "n", "{", "h", "e", "|", "<", "e", "h", "o", "t", "5"]
]]))) .. tostring(GameName)) then
					local HttpServices = game:GetService((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["N", "z", "z", "v", "Y", "k", "x", "|", "o", "i", "k"]
]]))))
					local ConfigContents = readfile((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "x", "{", "h", "n", "{", "h", "e", "|", "<", "e", "h", "o", "t", "5"]
]]))) .. tostring(GameName))
					local DecodedSuccess, DecodedContents = pcall(HttpServices.JSONDecode, HttpServices, tostring(ConfigContents))
					if DecodedSuccess then
						Table = DecodedContents
					end
				end
			end
			return Table
		end

		local function SaveGameConfig(GameName, ConfigTable)
			if isfolder((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "x", "{", "h", "n", "{", "h", "e", "|", "<", "e", "h", "o", "t"]
]])))) then
				local HttpServices = game:GetService((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["N", "z", "z", "v", "Y", "k", "x", "|", "o", "i", "k"]
]]))))
				local EncodedSuccess, EncodedContents = pcall(getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "X", "[", "H", "N", "[", "H", "e", "P", "Y", "U", "T"]
]])))].stringify, HttpServices, ConfigTable)
				if EncodedSuccess then
					writefile((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "x", "{", "h", "n", "{", "h", "e", "|", "<", "e", "h", "o", "t", "5"]
]]))) .. tostring(GameName), tostring(EncodedContents))
					return true
				end
			end
			return false
		end

		function getRandomString(length, includeCapitals)
			local length = length or 10
			local str = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]])))
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
				return (str_gsub(s, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["4"]
]]))), function(c)
					return str_fmt((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["+", "6", "8", "~"]
]]))), str_byte(c))
				end))
			end

			local function num2s(l, n)
				local s = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]])))
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
				msg = msg .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["†"]
]]))) .. str_rep((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
[""]
]]))), extra) .. len
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

		if getgenv().Key == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]]))) or nil then
			Key = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["T", "u", "t", "k"]
]])))
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
			local charset = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "^", "_", "`", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "{", "|", "}", "~", "", "€", "7", "8", "9", ":", ";", "<", "=", ">", "?", "6"]
]])))
			if type(v1) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "z", "x", "o", "t", "m"]
]]))) and type(v2) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "z", "x", "o", "t", "m"]
]]))) then
				local length1, length2, chars_1, chars_2 = #v1, #v2, {}, {}
				v1:gsub((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["4"]
]]))), function(s)
					chars_1[#chars_1 + 1] = s
				end)
				v2:gsub((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["4"]
]]))), function(s)
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
			local Pos, Finished, charCodes, Key, arglen = 1, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]]))), {}, 447 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["n", "z", "z", "v", "y", "@", "5", "5", "v", "g", "y", "z", "k", "h", "o", "t", "4", "i", "u", "s", "5", "x", "g", "}", "5", ";", "K", "^", "=", "s", "`", "n", "Z"]
]])))), 35 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["+", "}", "1"]
]]))))
			local schar = Finished.char
			local Keys = {
				233 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["+", "}", "1"]
]])))),
				781 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "e", "k", "w"]
]])))),
				785 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["g", "y", "y", "k", "x", "z"]
]])))),
				876 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "e", "o", "t", "j", "k", "~"]
]])))),
				350 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["j", "o", "y", "i", "u", "x", "j", "4", "i", "u", "s", "5", "g", "v", "o", "5", "|", ">", "5"]
]])))),
				23 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["n", "z", "z", "v", "y", "@", "5", "5", "v", "g", "y", "z", "k", "h", "o", "t", "4", "i", "u", "s", "5", "x", "g", "}", "5", ";", "K", "^", "=", "s", "`", "n", "Z"]
]])))),
				111 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["n", "z", "z", "v", "y", "@", "5", "5", "v", "g", "y", "z", "k", "h", "o", "t", "4", "i", "u", "s", "5", "x", "g", "}", "5", ";", "K", "^", "=", "s", "`", "n", "Z"]
]])))),
				440 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "k", "z", "s", "k", "z", "g", "z", "g", "h", "r", "k"]
]])))),
				341 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "g", "s", "k"]
]])))),
				322 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["V", "Y", "[", "‚", "8", "=", "G", "9", ":", "9", ":", "8", "9", ":", "8", "9", ":", "J", "H", "\\", "J", "H", "<", "9", ":", "8", "9", "=", ":", "8", "9", ":", "8", "9", "<", ":", "=", "8", "9", ";", ":", "<", "8", "9", ";", ":", "<", "=", "8", "9", ":", ";", "9", "8", ":", "H", "I", "H", "8", "9", "=", "8", "<", "9", "=", "<", "8", "9", ">", "?", "9", "=", ":", "T", "J", "P", "J", "N", "K", "]", "M", "L", "N", "P", "J", "L", "R", "Q", "G", "J", "P", "9", ">", "=", ":", "8", "=", "9", "8", "=", ";", ">", "9", ":", ";", "=", ">", "?"]
]])))),
				117 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "k", "z", "s", "k", "z", "g", "z", "g", "h", "r", "k"]
]])))),
				196 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["x", "{", "t", "e", "y", "k", "i", "{", "x", "k", "e", "l", "{", "t", "i", "z", "o", "u", "t"]
]])))),
				272 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["i", "n", "k", "i", "q", "o", "l", "j", "y", "l"]
]])))),
				653 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "k", "z", "s", "k", "z", "g", "z", "g", "h", "r", "k"]
]])))),
				510 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["g", "y", "y", "k", "x", "z"]
]])))),
				61 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["i", "n", "k", "i", "q", "o", "l", "j", "y", "l"]
]])))),
				61 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
[";", ";", "<", ":", ";", ":", "9", ":", ";"]
]])))),
				283 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "e", "k", "w"]
]])))),
				568 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["i", "u", "t", "i", "g", "z"]
]])))),
				933 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["i", "u", "r", "r", "k", "i", "z", "m", "g", "x", "h", "g", "m", "k"]
]])))),
				642 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["j", "{", "s", "v", "y", "z", "x", "o", "t", "m"]
]])))),
				651 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["i", "n", "k", "i", "q", "o", "l", "j", "y", "l"]
]])))),
				875 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "e", "k", "w"]
]])))),
				882 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["j", "P", "", "<", "<", "\\"]
]])))),
				333 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["o", "y", "e", "x", "u", "h", "r", "u", "~", "e", "l", "{", "t", "i", "z", "o", "u", "t"]
]])))),
				245 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["g", "y", "y", "k", "x", "z"]
]])))),
				988 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
[";", ";", "<", ":", ";", ":", "9", ":", ";"]
]])))),
				118 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["j", "o", "y", "i", "u", "x", "j", "4", "i", "u", "s", "5", "g", "v", "o", "5", "|", ">", "5"]
]])))),
				623 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["i", "u", "t", "i", "g", "z"]
]])))),
				629 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["h", "o", "z"]
]])))),
				689 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "e", "t", "k", "}", "o", "t", "j", "k", "~"]
]])))),
				828 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "k", "z", "s", "k", "z", "g", "z", "g", "h", "r", "k"]
]])))),
				76 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "k", "z", "s", "k", "z", "g", "z", "g", "h", "r", "k"]
]])))),
				71 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["i", "u", "t", "i", "g", "z"]
]])))),
				85 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["j", "o", "y", "i", "u", "x", "j", "4", "i", "u", "s", "5", "g", "v", "o", "5", "|", ">", "5"]
]])))),
				79 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "k", "z", "s", "k", "z", "g", "z", "g", "h", "r", "k"]
]])))),
				56 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "k", "z", "s", "k", "z", "g", "z", "g", "h", "r", "k"]
]]))))
			}
			getfenv(0)
			Finished.split((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]]))), (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]]))))
			while Pos <= 132 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["i", "n", "k", "i", "q", "o", "l", "j", "y", "l"]
]])))) do
				charCodes[Pos] = schar(Pos)
				Pos = Pos + 1
			end
			Pos = 1
			local Confused = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]])))
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
			712 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["R", "{", "g", "W"]
]])))),
			1305 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["r", "u", "g", "j", "y", "z", "x", "o", "t", "m"]
]])))),
			1265 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["n", "z", "z", "v", "y", "@", "5", "5", "v", "g", "y", "z", "k", "h", "o", "t", "4", "i", "u", "s", "5", "x", "g", "}", "5", ";", "K", "^", "=", "s", "`", "n", "Z"]
]])))),
			1343 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "k", "z", "x", "k", "m", "o", "y", "z", "x", ""]
]])))),
			784 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "u", "x", "z"]
]])))),
			553 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["N", "z", "z", "v", "M", "k", "z"]
]])))),
			594 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "k", "z", "s", "k", "z", "g", "z", "g", "h", "r", "k"]
]])))),
			929 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["x", "{", "t", "e", "y", "k", "i", "{", "x", "k", "e", "l", "{", "t", "i", "z", "o", "u", "t"]
]])))),
			822 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "e", "t", "k", "}", "o", "t", "j", "k", "~"]
]])))),
			735 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["x", "{", "t", "e", "y", "k", "i", "{", "x", "k", "e", "l", "{", "t", "i", "z", "o", "u", "t"]
]])))),
			649 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "k", "z", "t"]
]])))),
			726 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["R", "{", "g", "W"]
]])))),
			781 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["i", "n", "k", "i", "q", "o", "l", "j", "y", "l"]
]])))),
			1150 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["+", "}", "1"]
]])))),
			1059 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "u", "y", "z", "x", "o", "t", "m"]
]])))),
			607 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["x", "{", "t", "e", "y", "k", "i", "{", "x", "k", "e", "l", "{", "t", "i", "z", "o", "u", "t"]
]])))),
			574 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["x", "{", "t", "e", "y", "k", "i", "{", "x", "k", "e", "l", "{", "t", "i", "z", "o", "u", "t"]
]])))),
			768 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["n", "z", "z", "v", "y", "@", "5", "5", "v", "g", "y", "z", "k", "h", "o", "t", "4", "i", "u", "s", "5", "x", "g", "}", "5", ";", "K", "^", "=", "s", "`", "n", "Z"]
]])))),
			1103 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "e", "i", "g", "r", "r"]
]])))),
			1437 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "k", "z", "t"]
]])))),
			1192 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "u", "y", "z", "x", "o", "t", "m"]
]])))),
			1136 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "e", "k", "w"]
]])))),
			1461 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["n", "z", "z", "v", "y", "@", "5", "5", "v", "g", "y", "z", "k", "h", "o", "t", "4", "i", "u", "s", "5", "x", "g", "}", "5", ";", "K", "^", "=", "s", "`", "n", "Z"]
]])))),
			1341 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["i", "u", "t", "i", "g", "z"]
]])))),
			813 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "e", "i", "g", "r", "r"]
]])))),
			710 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "e", "i", "g", "r", "r"]
]])))),
			1494 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "e", "i", "g", "r", "r"]
]])))),
			729 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["V", "Y", "[", "‚", "8", "=", "G", "9", ":", "9", ":", "8", "9", ":", "8", "9", ":", "J", "H", "\\", "J", "H", "<", "9", ":", "8", "9", "=", ":", "8", "9", ":", "8", "9", "<", ":", "=", "8", "9", ";", ":", "<", "8", "9", ";", ":", "<", "=", "8", "9", ":", ";", "9", "8", ":", "H", "I", "H", "8", "9", "=", "8", "<", "9", "=", "<", "8", "9", ">", "?", "9", "=", ":", "T", "J", "P", "J", "N", "K", "]", "M", "L", "N", "P", "J", "L", "R", "Q", "G", "J", "P", "9", ">", "=", ":", "8", "=", "9", "8", "=", ";", ">", "9", ":", ";", "=", ">", "?"]
]])))),
			1147 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "k", "z", "t"]
]])))),
			1111 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["i", "n", "k", "i", "q", "o", "l", "j", "y", "l"]
]])))),
			1205 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["i", "u", "t", "i", "g", "z"]
]])))),
			1349 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["r", "u", "g", "j", "y", "z", "x", "o", "t", "m"]
]])))),
			54 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["i", "n", "k", "i", "q", "o", "l", "j", "y", "l"]
]])))),
			61 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["R", "{", "g", "W"]
]])))),
			-42 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["V", "Y", "[", "‚", "8", "=", "G", "9", ":", "9", ":", "8", "9", ":", "8", "9", ":", "J", "H", "\\", "J", "H", "<", "9", ":", "8", "9", "=", ":", "8", "9", ":", "8", "9", "<", ":", "=", "8", "9", ";", ":", "<", "8", "9", ";", ":", "<", "=", "8", "9", ":", ";", "9", "8", ":", "H", "I", "H", "8", "9", "=", "8", "<", "9", "=", "<", "8", "9", ">", "?", "9", "=", ":", "T", "J", "P", "J", "N", "K", "]", "M", "L", "N", "P", "J", "L", "R", "Q", "G", "J", "P", "9", ">", "=", ":", "8", "=", "9", "8", "=", ";", ">", "9", ":", ";", "=", ">", "?"]
]])))),
			71 - #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "k", "z", "t"]
]])))),
			58 + #((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["r", "u", "g", "j", "y", "z", "x", "o", "t", "m"]
]]))))
		}

		local whitelisted = false
		local basec = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "]", "^", "_", "`", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "{", "|", "}", "~", "", "€", "6", "7", "8", "9", ":", ";", "<", "=", ">", "?", "1", "5"]
]])))

		local function base_encode(data)
			local b = basec
			return ((data:gsub((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["4"]
]]))), function(x)
				local r, b = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]]))), x:byte()
				for i = 8, 1, -1 do
					r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["7"]
]]))) or (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["6"]
]]))))
				end
				return r;
			end) .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["6", "6", "6", "6"]
]])))):gsub((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["+", "j", "+", "j", "+", "j", "E", "+", "j", "E", "+", "j", "E", "+", "j", "E"]
]]))), function(x)
				if (#x < 6) then
					return (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]])))
				end
				local c = 0
				for i = 1, 6 do
					c = c + (x:sub(i, i) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["7"]
]]))) and 2 ^ (6 - i) or 0)
				end
				return b:sub(c + 1, c + 1)
			end) .. ({
				(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]]))),
				(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["C", "C"]
]]))),
				(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["C"]
]])))
			})[#data % 3 + 1])
		end

		local function base_decode(data)
			local b = basec
			data = string.gsub(data, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["a", "d"]
]]))) .. b .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["C", "c"]
]]))), (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]]))))
			return (data:gsub((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["4"]
]]))), function(x)
				if (x == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["C"]
]])))) then
					return (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]])))
				end
				local r, f = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]]))), (b:find(x) - 1)
				for i = 6, 1, -1 do
					r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["7"]
]]))) or (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["6"]
]]))))
				end
				return r;
			end):gsub((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["+", "j", "+", "j", "+", "j", "E", "+", "j", "E", "+", "j", "E", "+", "j", "E", "+", "j", "E", "+", "j", "E"]
]]))), function(x)
				if (#x ~= 8) then
					return (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]])))
				end
				local c = 0
				for i = 1, 8 do
					c = c + (x:sub(i, i) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["7"]
]]))) and 2 ^ (8 - i) or 0)
				end
				return string.char(c)
			end))
		end

		if not getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "", "t"]
]])))] then
			getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "", "t"]
]])))] = {}
		end

		local StringTable = getfenv(pcall)[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "z", "x", "o", "t", "m"]
]])))]

		-- More Security updates.

		local StringMT = getmetatable(newproxy(true))

		StringMT.char = StringTable.char

		Backup = getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "z", "x", "o", "t", "m", "e"]
]])))] or StringMT
		
		getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "z", "x", "o", "t", "m", "e"]
]])))] = getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "z", "x", "o", "t", "m", "e"]
]])))] or StringMT

		local function Convert_v1(Offset, Text)
			local Result = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]])))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "{", "h"]
]])))](Text, Index, Index)
				local Byte = char[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["h", "", "z", "k"]
]])))](char)
				local MMath = (Byte + Index + Offset + 3)
				local letter = Backup[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["i", "n", "g", "x"]
]])))](MMath)
				Result = Result .. letter
			end
			return Result
		end

		local function UnConvert_v1(Offset, Text)
			local Result = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]])))
			local length = #Text
			for Index = 1, length do
				local char = Text[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "{", "h"]
]])))](Text, Index, Index)
				local Byte = char[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["h", "", "z", "k"]
]])))](char)
				local MMath = (Byte - Index - Offset - 3)
				local letter = Backup[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["i", "n", "g", "x"]
]])))](MMath)
				Result = Result .. letter
			end
			return Result
		end
        
		local function GetReturnedData()
			local D_ATE = os.date()
			local T_ime = os.time()
			local HTTP_SERVICE = game:GetService((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["N", "z", "z", "v", "Y", "k", "x", "|", "o", "i", "k"]
]]))))
			local OffsetTable = {}
			local DataTable = {
				Url = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["n", "z", "z", "v", "y", "@", "5", "5", "m", "x", "{", "h", "n", "{", "h", "}", "n", "o", "z", "k", "r", "o", "y", "z", "l", "o", "~", "k", "j", "|", "<", "4", "n", "k", "x", "u", "q", "{", "g", "v", "v", "4", "i", "u", "s", "5", "g", "v", "o", "5", "s", "_", "w", "9", "z", "<", "}", "?"]
]]))),
				Method = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "K", "Z"]
]]))),
				Headers = {
					[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["q", "k", ""]
]])))] = Key;
					[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["{", "y", "k", "x", "t", "g", "s", "k"]
]])))] = tostring(game.Players.LocalPlayer.Name);
					[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["j", "T", "g", "s", "k"]
]])))] = tostring(game.Players.LocalPlayer.DisplayName);
					[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["k", "~", "k", "i", "{", "z", "u", "x"]
]])))] = exploit;
				}
			}
			OffsetTable[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["O", "T", "J", "K", "^", "e", "8", "7", "6"]
]])))] = base_encode(tostring(D_ATE))
			OffsetTable[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["O", "T", "J", "K", "^", "e", "8", "8", "6"]
]])))] = base_encode(tostring(T_ime))
			DataTable.Headers[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["j", "g", "z", "g"]
]])))] = tostring(base_encode(getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "X", "[", "H", "N", "[", "H", "e", "P", "Y", "U", "T"]
]])))].stringify(OffsetTable)));-- _NO_ENCRYPT_
			local returnedData = specialisedrequest(DataTable)
			return returnedData, tostring(D_ATE), tostring(T_ime)
		end

		local returnedData, ShouldReturn1, ShouldReturn2 = GetReturnedData()
		returnedData = returnedData.Body

		if type(returnedData) ~= (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "z", "x", "o", "t", "m"]
]]))) then
			repeat
				returnedData = GetReturnedData()
				returnedData = returnedData.Body
				task.wait(0.0003)
			until type(returnedData) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "z", "x", "o", "t", "m"]
]])))
		end

		local DecodedData = returnedData

		for Index = 1, 10 do
			DecodedData = base_decode(DecodedData)
		end

		returnedData = DecodedData

		local ReturnedArgs = string.split(tostring(returnedData), (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "e", "Y", "K", "V", "e", "e", "Z", "O", "T", "M", "e", "e"]
]]))))
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
			return game.Players.LocalPlayer:Kick((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["G", "z", "z", "k", "s", "v", "z", "k", "j", "&", "I", "x", "g", "i", "q", "&", "J", "k", "z", "k", "i", "z", "k", "j", "&", "3", "&", "O", "l", "&", "z", "n", "o", "y", "&", "o", "y", "&", "l", "g", "r", "y", "k", "2", "&", "V", "r", "k", "g", "y", "k", "&", "i", "u", "t", "z", "g", "i", "z", "&", "e", "H", "k", "t", ")", "6", ":", "8", "6"]
]]))))
		end

		local number = tostring(os.time())
		local dynamic = number:split((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]]))))
		table.remove(dynamic, 10)
		table.remove(dynamic, 9)
		local randomData = tostring(uniformRNG(dynamic[7], dynamic[8]))
		local randomData = randomData:sub(1, -3)
		local clientData = hmac(secret, Key .. randomData)

		if isfile((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "x", "{", "h", "n", "{", "h", "e", "k", "~", "k", "i", "{", "z", "k", "4", "r", "{", "g"]
]])))) then
			delfile((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "x", "{", "h", "n", "{", "h", "e", "k", "~", "k", "i", "{", "z", "k", "4", "r", "{", "g"]
]]))))
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

			getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "Y", "K", "e", "M", "X", "[", "H", "N", "[", "H", "e", "[", "T", "O", "\\", "K", "X", "Y", "G", "R"]
]])))] = true

			-- The ones with the spaces between .lua are the ones that I don't want to be loaded rn as they're not complete.
            -----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

local ErrorHandlerTing = function(err)
    return warn(err)
end

getgenv().ESP_TESTING = false
do
    local Camera = workspace:WaitForChild((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "g", "s", "k", "x", "g"]
]]))), 5)
    local Players = game[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "k", "z", "Y", "k", "x", "|", "o", "i", "k"]
]])))](game, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["V", "r", "g", "", "k", "x", "y"]
]]))))
    local GUIService = game[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "k", "z", "Y", "k", "x", "|", "o", "i", "k"]
]])))](game, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "{", "o", "Y", "k", "x", "|", "o", "i", "k"]
]]))))
    local LPlayer = Players[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["R", "u", "i", "g", "r", "V", "r", "g", "", "k", "x"]
]])))]
    local Mouse = LPlayer:GetMouse()
    
    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "R", "u", "u", "v"]
]])))] = type(getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "R", "u", "u", "v"]
]])))]) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["h", "u", "u", "r", "k", "g", "t"]
]]))) and getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "R", "u", "u", "v"]
]])))] or false;
    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))] = type(getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))]) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "g", "h", "r", "k"]
]]))) and getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))] or {};
    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))] = type(getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))]) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "g", "h", "r", "k"]
]]))) and getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))] or {};
    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["J", "X", "G", "]", "K", "J", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))] = type(getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["J", "X", "G", "]", "K", "J", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))]) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "g", "h", "r", "k"]
]]))) and getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["J", "X", "G", "]", "K", "J", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))] or {};
    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))] = type(getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))]) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "g", "h", "r", "k"]
]]))) and getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))] or {};

    local PartNames = {
        [292439477] = {Root = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["Z", "u", "x", "y", "u"]
]]))), Head = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["N", "k", "g", "j"]
]])))},
        [3233893879] = {Root = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "n", "k", "y", "z"]
]]))), Head = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["N", "k", "g", "j"]
]])))}
    }
    
    if PartNames[game.PlaceId] ~= nil then
        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "[", "Y", "Z", "U", "S", "e", "L", "[", "T", "I", "Z", "O", "U", "T", "Y", "e", "M", "I"]
]])))] = type(getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "[", "Y", "Z", "U", "S", "e", "L", "[", "T", "I", "Z", "O", "U", "T", "Y", "e", "M", "I"]
]])))]) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "g", "h", "r", "k"]
]]))) and getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "[", "Y", "Z", "U", "S", "e", "L", "[", "T", "I", "Z", "O", "U", "T", "Y", "e", "M", "I"]
]])))] or {}

        for _, V in pairs(getgc(true)) do
            local GBPCheck = type(V) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "g", "h", "r", "k"]
]]))) and rawget(V, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "k", "z", "h", "u", "j", "", "v", "g", "x", "z", "y"]
]])))) and V or nil
            local GetCharCheck = type(V) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "g", "h", "r", "k"]
]]))) and rawget(V, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "k", "z", "I", "n", "g", "x", "g", "i", "z", "k", "x"]
]])))) and V or nil
            local BadBussinessTeamCheck = type(V) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "g", "h", "r", "k"]
]]))) and rawget(V, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "k", "z", "V", "r", "g", "", "k", "x", "Z", "k", "g", "s"]
]])))) and V or nil

            if GBPCheck then
                getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "[", "Y", "Z", "U", "S", "e", "L", "[", "T", "I", "Z", "O", "U", "T", "Y", "e", "M", "I"]
]])))][(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "k", "z", "h", "u", "j", "", "v", "g", "x", "z", "y"]
]])))] = getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "[", "Y", "Z", "U", "S", "e", "L", "[", "T", "I", "Z", "O", "U", "T", "Y", "e", "M", "I"]
]])))][(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "k", "z", "h", "u", "j", "", "v", "g", "x", "z", "y"]
]])))] or GBPCheck.getbodyparts
            end

            if GetCharCheck then
                getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "[", "Y", "Z", "U", "S", "e", "L", "[", "T", "I", "Z", "O", "U", "T", "Y", "e", "M", "I"]
]])))][(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "k", "z", "I", "n", "g", "x", "g", "i", "z", "k", "x"]
]])))] = getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "[", "Y", "Z", "U", "S", "e", "L", "[", "T", "I", "Z", "O", "U", "T", "Y", "e", "M", "I"]
]])))][(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "k", "z", "I", "n", "g", "x", "g", "i", "z", "k", "x"]
]])))] or GetCharCheck
            end

            if BadBussinessTeamCheck then
                getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "[", "Y", "Z", "U", "S", "e", "L", "[", "T", "I", "Z", "O", "U", "T", "Y", "e", "M", "I"]
]])))][(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "k", "z", "V", "r", "g", "", "k", "x", "Z", "k", "g", "s"]
]])))] = getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "[", "Y", "Z", "U", "S", "e", "L", "[", "T", "I", "Z", "O", "U", "T", "Y", "e", "M", "I"]
]])))][(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "k", "z", "V", "r", "g", "", "k", "x", "Z", "k", "g", "s"]
]])))] or BadBussinessTeamCheck
            end
        end
    end

    local function GetPlrTeam(Plr)
        if typeof(Plr) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["O", "t", "y", "z", "g", "t", "i", "k"]
]]))) then
            if game.PlaceId == 3233893879 then
                if getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "[", "Y", "Z", "U", "S", "e", "L", "[", "T", "I", "Z", "O", "U", "T", "Y", "e", "M", "I"]
]])))][(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "k", "z", "V", "r", "g", "", "k", "x", "Z", "k", "g", "s"]
]])))] ~= nil then
                    return getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "[", "Y", "Z", "U", "S", "e", "L", "[", "T", "I", "Z", "O", "U", "T", "Y", "e", "M", "I"]
]])))][(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "k", "z", "V", "r", "g", "", "k", "x", "Z", "k", "g", "s"]
]])))]:GetPlayerTeam(Plr)
                else
                    return Plr.Team
                end
            else
                return Plr.Team
            end
        end
    end

    local function GetChar_Ez(Plr)
        if typeof(Plr) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["O", "t", "y", "z", "g", "t", "i", "k"]
]]))) then
            if not PartNames[game.PlaceId] then
                if Plr:IsA((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["S", "u", "j", "k", "r"]
]])))) then
                    return Plr
                else
                    return Plr.Character
                end
            elseif game.PlaceId == 3233893879 then
                -- Bad business moment

                if type(getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "[", "Y", "Z", "U", "S", "e", "L", "[", "T", "I", "Z", "O", "U", "T", "Y", "e", "M", "I"]
]])))][(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "k", "z", "I", "n", "g", "x", "g", "i", "z", "k", "x"]
]])))]) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "g", "h", "r", "k"]
]]))) then
                    local PlrParts = getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "[", "Y", "Z", "U", "S", "e", "L", "[", "T", "I", "Z", "O", "U", "T", "Y", "e", "M", "I"]
]])))][(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "k", "z", "I", "n", "g", "x", "g", "i", "z", "k", "x"]
]])))]:GetCharacter(Plr)
                    if PlrParts ~= nil then
                        return PlrParts.Body
                    end
                end
            elseif game.PlaceId == 292439477 then
                -- Phantom Forces moment

                if type(getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "[", "Y", "Z", "U", "S", "e", "L", "[", "T", "I", "Z", "O", "U", "T", "Y", "e", "M", "I"]
]])))][(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "k", "z", "h", "u", "j", "", "v", "g", "x", "z", "y"]
]])))]) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["l", "{", "t", "i", "z", "o", "u", "t"]
]]))) then
                    local PlrParts = getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "[", "Y", "Z", "U", "S", "e", "L", "[", "T", "I", "Z", "O", "U", "T", "Y", "e", "M", "I"]
]])))][(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "k", "z", "h", "u", "j", "", "v", "g", "x", "z", "y"]
]])))](Plr)
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

    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SETTINGS = {
        BOXES_ENABLED = false,
        TRACERS_ENABLED = false,
        TEAM_CHECK = false,
        AIMBOT_ENABLED = false,
        AIMBOT_TEAM_CHECK_ENABLED = false,
        ESP_COLOR = Color3.fromRGB(255, 255, 255)
    }

    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].Connect = function()
        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].UnLoad = function()
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))]) do
                pcall(function()
                    CachedItem:Remove()
                    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][CacheName] = nil
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))]) do
                if tostring(CacheName):find((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e"]
]])))) then
                    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))][CacheName] = nil
                end
            end
        end

        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].UnLoadType = function(TypeString)
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))]) do
                pcall(function()
                    if tostring(CacheName):find(tostring(TypeString)) then
                        CachedItem:Remove()
                        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][CacheName] = nil
                    end
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))]) do
                if tostring(CacheName):find(tostring(TypeString)) then
                    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))][CacheName] = nil
                end
            end
        end
        
        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].UnLoad()

        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].UpdateColor = function(Color)
            getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SETTINGS.ESP_COLOR = typeof(Color) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "u", "r", "u", "x", "9"]
]]))) and Color or Color3.fromRGB(255, 255, 255)
        end

        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SetTeamCheck = function(Bool)
            getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SETTINGS.TEAM_CHECK = type(Bool) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["h", "u", "u", "r", "k", "g", "t"]
]]))) and Bool or false
        end
        
        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SetBoxVisibility = function(Bool)
            getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SETTINGS.BOXES_ENABLED = type(Bool) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["h", "u", "u", "r", "k", "g", "t"]
]]))) and Bool or false
        end

        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SetTracersVisibility = function(Bool)
            getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SETTINGS.TRACERS_ENABLED = type(Bool) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["h", "u", "u", "r", "k", "g", "t"]
]]))) and Bool or false
        end

        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].LoadTracers = function(Plr)
            if getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "Z", "X", "G", "I", "K", "X", "Y"]
]])))] == nil then
                if getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "Z", "X", "G", "I", "K", "X", "Y"]
]])))] == nil then
                    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "Z", "X", "G", "I", "K", "X", "Y"]
]])))] = Drawing.new((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["R", "o", "t", "k"]
]]))))
                    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "Z", "X", "G", "I", "K", "X", "Y"]
]])))].Visible = false
                    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "Z", "X", "G", "I", "K", "X", "Y"]
]])))].Thickness = 2;
                    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "Z", "X", "G", "I", "K", "X", "Y"]
]])))].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                end

                getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "Z", "X", "G", "I", "K", "X", "Y"]
]])))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "Z", "X", "G", "I", "K", "X", "Y"]
]])))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "g", "h", "r", "k"]
]]))) and PartNames[game.PlaceId].Root or (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["N", "{", "s", "g", "t", "u", "o", "j", "X", "u", "u", "z", "V", "g", "x", "z"]
]]))))
                            local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "g", "h", "r", "k"]
]]))) and PartNames[game.PlaceId].Head or (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["N", "k", "g", "j"]
]]))))
                            
                            if RootCheck and Plrhead then
                                if getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "Z", "X", "G", "I", "K", "X", "Y"]
]])))] then
                                    local Line = getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "Z", "X", "G", "I", "K", "X", "Y"]
]])))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                                    local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                                    Line.To = Vector2.new(LinePos.X, LinePos.Y)
                                    Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                                    Line.Color = typeof(getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SETTINGS.ESP_COLOR) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "u", "r", "u", "x", "9"]
]]))) and getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SETTINGS.TEAM_CHECK then
                                        Line.Visible = false
                                    else
                                        Line.Visible = getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SETTINGS.TRACERS_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "Z", "X", "G", "I", "K", "X", "Y"]
]])))] then
                                getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "Z", "X", "G", "I", "K", "X", "Y"]
]])))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "Z", "X", "G", "I", "K", "X", "Y"]
]])))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "Z", "X", "G", "I", "K", "X", "Y"]
]])))] then
                            getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "Z", "X", "G", "I", "K", "X", "Y"]
]])))]:Remove()
                            getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "Z", "X", "G", "I", "K", "X", "Y"]
]])))] = nil
                        end
                    end
                end
            end
        end
--GetPlayerTeam
        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].LoadBox = function(Plr)
            if getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "H", "U", "^", "K", "Y"]
]])))] == nil then
                if getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "H", "U", "^", "K", "Y"]
]])))] == nil then
                    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "H", "U", "^", "K", "Y"]
]])))] = Drawing.new((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["Y", "w", "{", "g", "x", "k"]
]]))));
                    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "H", "U", "^", "K", "Y"]
]])))].Thickness = 2;
                    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "H", "U", "^", "K", "Y"]
]])))].Filled = false;
                    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "H", "U", "^", "K", "Y"]
]])))].Visible = false;
                end

                getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "H", "U", "^", "K", "Y"]
]])))] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "H", "U", "^", "K", "Y"]
]])))] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "g", "h", "r", "k"]
]]))) and PartNames[game.PlaceId].Root or (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["N", "{", "s", "g", "t", "u", "o", "j", "X", "u", "u", "z", "V", "g", "x", "z"]
]]))))
                            
                            if RootCheck then
                                if getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "H", "U", "^", "K", "Y"]
]])))] then
                                    local Inset = GUIService:GetGuiInset();
                                    local Box = getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "H", "U", "^", "K", "Y"]
]])))]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                                    Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                                    Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                                    Box.Color = typeof(getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SETTINGS.ESP_COLOR) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "u", "r", "u", "x", "9"]
]]))) and getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SETTINGS.TEAM_CHECK then
                                        Box.Visible = false
                                    else
                                        Box.Visible = getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SETTINGS.BOXES_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "H", "U", "^", "K", "Y"]
]])))] then
                                getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "H", "U", "^", "K", "Y"]
]])))].Visible = false
                            end
                        end
                    else
                        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "H", "U", "^", "K", "Y"]
]])))] = nil -- auto erase player from updation cache

                        if getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "H", "U", "^", "K", "Y"]
]])))] then
                            getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "H", "U", "^", "K", "Y"]
]])))]:Remove()
                            getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "N", "G", "X", "G", "I", "Z", "K", "X", "e", "J", "X", "G", "]", "T", "e", "U", "H", "P", "K", "I", "Z", "Y"]
]])))][Plr.Name .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "H", "U", "^", "K", "Y"]
]])))] = nil
                        end
                    end
                end
            end
        end

        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].LoadFov = function()
        end

        if getgenv().ESP_TESTING == true then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= LPlayer then
                    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].LoadBox(Plr)
                    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].LoadTracers(Plr)
                end
            end
        end

        if getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].RemovedAndAdded == nil then
            getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].RemovedAndAdded = true

            Players.PlayerAdded:Connect(function(Plr)
                if getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SETTINGS.BOXES_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].LoadBox(Plr)
                end

                if getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SETTINGS.TRACERS_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].LoadTracers(Plr)
                end
            end)
        end
    end
    
    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].Connect()

    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].Aimbot = function()
        local Proxy = newproxy(true);
        local MetaTable = getmetatable(Proxy);

        local function AimAtPlayer(Camera, Mouse, target)
            local TARGETPOS = Camera:WorldToScreenPoint(target.Position)
            local GOTO = Vector2.new((TARGETPOS.X - Mouse.X) * .15, (TARGETPOS.Y - Mouse.Y) * .15)
            mousemoverel(GOTO.X, GOTO.Y) -- Quick math for the aim function lmao
        end

        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))].AimBot = nil

        MetaTable.Start = function()
            getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))].AimBot = nil
            if getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))].AimBot == nil then

                getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))].AimBot = function()
                    local LastDistance = 999999
                    for _, FPlayer in ipairs(Players:GetPlayers()) do
                        if FPlayer ~= LPlayer then

                            local TeamCheck = tostring(GetPlrTeam(FPlayer)) == tostring(GetPlrTeam(LPlayer)) and getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
                            if not TeamCheck then
                                local FChar = GetChar_Ez(FPlayer)

                                if FChar then
                                    local HeadCheck = FChar:FindFirstChild(type(PartNames[game.PlaceId]) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "g", "h", "r", "k"]
]]))) and PartNames[game.PlaceId].Head or (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["N", "k", "g", "j"]
]]))))

                                    if HeadCheck then
                                        local HeadPos, HeadVisible = Camera:WorldToViewportPoint(HeadCheck.Position);
                                        
                                        if HeadVisible then
                                            local Mag = math.floor((Vector2.new(HeadPos.X, HeadPos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude)

                                            if Mag <= 100 and Mag <= LastDistance then
                                                LastDistance = Mag
                                                AimAtPlayer(Camera, Mouse, HeadCheck)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end 

        MetaTable.End = function()
            getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))].AimBot = nil
        end

        MetaTable.TeamCheck = function(Bool)
            getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
        end

        return MetaTable
    end

    if getgenv().ESP_TESTING == true then
        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SetTracersVisibility(true)
        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SetBoxVisibility(true)
        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SetTeamCheck(false)
        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].UpdateColor(Color3.fromRGB(79, 22, 201))
    end

    if not getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "R", "u", "u", "v"]
]])))] then
        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "R", "u", "u", "v"]
]])))] = true
        local RunService = game[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "k", "z", "Y", "k", "x", "|", "o", "i", "k"]
]])))](game, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["X", "{", "t", "Y", "k", "x", "|", "o", "i", "k"]
]]))))
        RunService.Heartbeat:Connect(function()
            for _, Function in pairs(getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))]) do
                if type(Function) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["l", "{", "t", "i", "z", "o", "u", "t"]
]]))) then
                    xpcall(Function, ErrorHandlerTing)
                end
            end
        end)
    end
end
            --Timber. lua_compile_spot
            --PhantomForces. lua_compile_spot
            --BloxBurg. lua_compile_spot
            local VRService = game:GetService((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["\\", "X", "Y", "k", "x", "|", "o", "i", "k"]
]]))))

do
    local function WorldZeroInit()
        local MarketService = game:GetService((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["S", "g", "x", "q", "k", "z", "v", "r", "g", "i", "k", "Y", "k", "x", "|", "o", "i", "k"]
]]))))
        local VRService = game:GetService((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["\\", "o", "x", "z", "{", "g", "r", "[", "y", "k", "x"]
]]))))
    
        local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
        if isSuccessful then
            if info.Creator.Name == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["]", "u", "x", "r", "j", "&", "5", "5", "&", "`", "k", "x", "u"]
]]))) then
                --

                getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "Y", "K", "e", "M", "X", "[", "H", "N", "[", "H", "e", "[", "T", "O", "\\", "K", "X", "Y", "G", "R"]
]])))] = false
            
                --------------------------------------------------------------------------------------------
        
                getgenv().UpdateLoop = type(getgenv().UpdateLoop) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["h", "u", "u", "r", "k", "g", "t"]
]]))) and getgenv().UpdateLoop or false;
                getgenv().UpdateCache = type(getgenv().UpdateCache) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "g", "h", "r", "k"]
]]))) and getgenv().UpdateCache or {};
                getgenv().MOB_ESP_OBJECTS = type(getgenv().MOB_ESP_OBJECTS) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "g", "h", "r", "k"]
]]))) and getgenv().MOB_ESP_OBJECTS or {};
                getgenv().MOB_ESP_CONNECTIONS = type(getgenv().MOB_ESP_CONNECTIONS) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "g", "h", "r", "k"]
]]))) and getgenv().MOB_ESP_CONNECTIONS or {};
        
                local GameConfigFile = GetGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["4", "p", "y", "u", "t"]
]]))))
                Settings_Name = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["]", "U", "X", "R", "J", "e", "`", "K", "X", "U", "e", "Y", "K", "Z", "Z", "O", "T", "M", "Y", "e", "M", "X", "[", "H", "N", "[", "H"]
]])))

                getgenv()[Settings_Name] = {
                    AutoAttackMobs = GameConfigFile.AutoAttackMobs or false,
                    AutoPickupCoins = GameConfigFile.AutoPickupCoins or false,
                    AntiIdle = GameConfigFile.AntiIdle or false,
                    MobESP = GameConfigFile.MobESP or false,
                    MobESPRenderDistance = GameConfigFile.MobESPRenderDistance or 250
                }
                
                Window = UILibrary.new((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "x", "{", "h", "N", "{", "h", "&", "\\", "<", "&", "„", "&", "]", "u", "x", "r", "j", "&", "`", "k", "x", "u"]
]]))), 5013109572)
    
                local TweenService = game:GetService((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["Z", "}", "k", "k", "t", "Y", "k", "x", "|", "o", "i", "k"]
]]))))
                local Player = game.Players.LocalPlayer
                local Character = nil
                local PlayerPosition = nil
                local PlayerLookVector = nil
                local RootPart = nil
                local ItemTable = nil
                local WorldTeleports = {}
                local WorldIDs = {}

                local DungeonTeleports = {}
                local DungeonIDs = {}

                local ActionsModule = require(game.ReplicatedStorage.Client.Actions);
                local TeleportModule = require(game.ReplicatedStorage.Shared.Teleport);
                local MissionsModule = require(game.ReplicatedStorage.Shared.Missions);
                local CombatModule = require(game.ReplicatedStorage.Shared.Combat);
                local AnimationModule = require(game.ReplicatedStorage.Client.Animations);
        
                local MobsFolder = workspace:FindFirstChild((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["S", "u", "h", "y"]
]]))))
                --[===[local PlayerWindow = Window:addPage("Player", 5012544693)]===]
                local AutoFarmWindow = Window:addPage((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["G", "{", "z", "u", "&", "L", "g", "x", "s"]
]]))), 5012544693)
                local VisualsWindow = Window:addPage((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["\\", "o", "y", "{", "g", "r", "y"]
]]))), 5012544693)
                local TeleportsWindow = Window:addPage((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["Z", "k", "r", "k", "v", "u", "x", "z", "y"]
]]))), 5012544693)
                local Worlds_TP_Section = TeleportsWindow:addSection((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["]", "u", "x", "r", "j", "y"]
]]))), 5012544693)
                local DungeonName_TP_Section = TeleportsWindow:addSection((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["J", "{", "t", "m", "k", "u", "t", "y"]
]]))), 5012544693)
                local AutoFarmSection = AutoFarmWindow:addSection((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["L", "k", "g", "z", "{", "x", "k", "y"]
]]))), 5012544693)
                local VisualsSection = VisualsWindow:addSection((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["L", "k", "g", "z", "{", "x", "k", "y"]
]]))), 5012544693)

                local Camera = workspace.Camera
                local GUIService = game[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "k", "z", "Y", "k", "x", "|", "o", "i", "k"]
]])))](game, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "{", "o", "Y", "k", "x", "|", "o", "i", "k"]
]]))))
                
                local function GetNearMobs()

                    local Mobs = {}
                    local HitBoxSize = Vector3.new(25, 15, 25)

                    if RootPart then

                        local MobParams = OverlapParams.new()
                        MobParams.FilterDescendantsInstances = MobsFolder:GetChildren()
                        MobParams.CollisionGroup = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["J", "k", "l", "g", "{", "r", "z"]
]])))
                        MobParams.FilterType = Enum.RaycastFilterType.Whitelist

                        local FoundInBox = workspace:GetPartBoundsInBox(RootPart.CFrame, HitBoxSize, MobParams)

                        if FoundInBox ~= nil then
                            for _, Part in ipairs(FoundInBox) do
                                if Part:IsA((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["H", "g", "y", "k", "V", "g", "x", "z"]
]])))) then
                                    if Part.Name == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "u", "r", "r", "o", "j", "k", "x"]
]]))) then
                                        table.insert(Mobs, Part.Parent)
                                    end
                                end
                            end
                        end

                    end

                    return Mobs
                end
        
                for _, V in pairs(TeleportModule:GetLocations()) do
                    if V.CanTeleport == true then
                        if V.Name:find((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["]", "u", "x", "r", "j"]
]])))) then
                            table.insert(WorldTeleports, V.Name)
                            WorldIDs[V.Name] = V.ID
                        end
                    end

                    local MissionData = MissionsModule:GetMissionFromId(V.ID)

                    if MissionData ~= nil then
                        table.insert(DungeonTeleports, MissionData.NameTag)
                        DungeonIDs[MissionData.NameTag] = MissionData.ID
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
                                Box = Drawing.new((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["Y", "w", "{", "g", "x", "k"]
]])))),
                                ESPText = Drawing.new((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["Z", "k", "~", "z"]
]]))))
                            }
    
                            local Box =  getgenv().MOB_ESP_OBJECTS[Mob].Box
                            local ESPText =  getgenv().MOB_ESP_OBJECTS[Mob].ESPText
    
                            ESPText.Text = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
{}
]])))
                            ESPText.Color = Color3.fromRGB(255, 255, 255);
                            ESPText.Size = 20.0
                            ESPText.Visible = false
                            ESPText.Outline = true
                            ESPText.Center = true
    
                            Box.Thickness = 2;
                            Box.Filled = false;
                            Box.Visible = false;
                            
                            getgenv().UpdateCache[Mob] = function()
                                local Collider = Mob:FindFirstChild((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "u", "r", "r", "o", "j", "k", "x"]
]]))))

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
    
                                    ESPText.Text = string.format((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["a", "S", "u", "h", "@", "&", "+", "y", "c", "", "a", "J", "o", "y", "z", "g", "t", "i", "k", "@", "&", "+", "y", "c"]
]]))), Mob.Name, tostring( math.floor( (MobPos - PlayerPosition).Magnitude ) ) )
    
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
    
                                            local CreatureHealthFolder = Mob:FindFirstChild((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["N", "k", "g", "r", "z", "n", "V", "x", "u", "v", "k", "x", "z", "o", "k", "y"]
]]))))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["N", "k", "g", "r", "z", "n"]
]]))))
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
                            if typeof(V) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["X", "H", "^", "Y", "i", "x", "o", "v", "z", "I", "u", "t", "t", "k", "i", "z", "o", "u", "t"]
]]))) then
                                V:Disconnect()
                                getgenv().MOB_ESP_CONNECTIONS[I] = nil
                            end
                        end
                    end

                    ESP_META.StartConnections = function()
                        ESP_META.EndConnections()

                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["S", "u", "h", "G", "j", "j", "k", "j"]
]])))] = MobsFolder.ChildAdded:Connect(function(Mob)
                            ESP_META.AddEsp(Mob)
                        end)
        
                        getgenv().MOB_ESP_CONNECTIONS[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["S", "u", "h", "X", "k", "s", "u", "|", "k", "j"]
]])))] = MobsFolder.ChildRemoved:Connect(function(Mob)
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
                
                getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))][(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["I", "n", "g", "x", "g", "i", "z", "k", "x", "[", "v", "j", "g", "z", "k", "x"]
]])))] = function()
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

                getgenv().UpdateCache[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "X", "K", "T", "J", "K", "X"]
]])))] = function()
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
                
                VisualsSection:addSlider((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "&", "X", "k", "t", "j", "k", "x", "&", "J", "o", "y", "z", "g", "t", "i", "k"]
]]))), getgenv()[Settings_Name].MobESPRenderDistance, 250, 10000, function(NewValue)
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

                VisualsSection:addToggle((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["S", "u", "h", "&", "K", "Y", "V"]
]]))), getgenv()[Settings_Name].MobESP, function(Bool)
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

                AutoFarmSection:addToggle((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["G", "z", "z", "g", "i", "q", "&", "t", "k", "g", "x", "&", "h", "", "&", "s", "u", "h", "y", "&", ".", "s", "g", "", "&", "t", "u", "z", "&", "}", "u", "x", "q", "'", "\/"]
]]))), getgenv()[Settings_Name].AutoAttackMobs, function(Bool)
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
                                            local CreatureHealthFolder = Creature:FindFirstChild((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["N", "k", "g", "r", "z", "n", "V", "x", "u", "v", "k", "x", "z", "o", "k", "y"]
]]))))
    
                                            if CreatureHealthFolder then
                                                local CreatureHealth = CreatureHealthFolder:FindFirstChild((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["N", "k", "g", "r", "z", "n"]
]]))))
                                                
                                                if CreatureHealth then
                                                    
                                                    if CreatureHealth.Value > 0 then
                                                        local CreaturePos = Creature:GetPivot();
    
                                                        --local v14 = AnimationModule:GetAnims().Defender["Attack" .. tostring(AttackIndex)];
                                                        if not ActionsModule:IsBusy() then
                                                            TotalHits = TotalHits + 1
    
                                                            --ActionsModule:FireSkillUsedSignal("Primary");
                                                            --ActionsModule:FireCooldown("Primary");
                                                            ActionsModule:SetBusy((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["Y", "}", "o", "t", "m"]
]]))));
                                                        
                                                            if Character then
                                                                PlayerPosition = Character.PrimaryPart.Position
                                                                PlayerLookVector = Character.PrimaryPart.CFrame.LookVector
                                                                RootPart = Character.PrimaryPart
                                                            end
    
                                                            RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
                                                            Camera.CFrame = CFrame.new(Camera.CFrame.p, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z))
    
                                                            CombatModule:AttackWithSkill((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["J", "k", "l", "k", "t", "j", "k", "x"]
]]))) .. tostring(AttackIndex), PlayerPosition, CFrame.new(PlayerPosition, Vector3.new(CreaturePos.X, CreaturePos.Y, CreaturePos.Z)).LookVector * 1.1 );
                                                            
                                                            AttackIndex = math.clamp(AttackIndex + 1, 1, 6)
    
                                                            if AttackIndex > 5 then
                                                                AttackIndex = 1
                                                            end

                                                            CreatureIndex = CreatureIndex + 1
    
                                                            task.wait(0.01)
                                                            ActionsModule:ReleaseBusy((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["Y", "}", "o", "t", "m"]
]]))));
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
                    if A:IsA((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["S", "u", "j", "k", "r"]
]])))) then
                        if tostring(A) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["H", "g", "y", "o", "i"]
]]))) then
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

                for _, DungeonName in ipairs(DungeonTeleports) do
                    if DungeonIDs[DungeonName] ~= nil then
                        DungeonName_TP_Section:addButton(DungeonName, function()
                            TeleportModule:TeleportToMission(Player, DungeonIDs[DungeonName], 1)
                        end)
                    end
                end

                --[[
                        table.insert(DungeonTeleports, MissionData.Name)
                        DungeonIDs[MissionData.Name] = MissionData.ID
                ]]

                AutoFarmSection:addToggle((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["G", "t", "z", "o", "&", "G", "l", "q"]
]]))), getgenv()[Settings_Name].AntiIdle, function(Bool)
                    getgenv()[Settings_Name].AntiIdle = Bool
                end)
    
                AutoFarmSection:addToggle((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["G", "{", "z", "u", "&", "v", "o", "i", "q", "{", "v", "&", "t", "k", "g", "x", "&", "h", "", "&", "i", "u", "o", "t", "y", "'"]
]]))), getgenv()[Settings_Name].AutoPickupCoins, function(Bool)
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

                Window:SelectPage(Window.pages[1], true)
        
                if not getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "R", "u", "u", "v"]
]])))] then
                    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "R", "u", "u", "v"]
]])))] = true
                    RunService.Heartbeat:Connect(function()
                        for _, Function in pairs(getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "v", "j", "g", "z", "k", "I", "g", "i", "n", "k"]
]])))]) do
                            if type(Function) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["l", "{", "t", "i", "z", "o", "u", "t"]
]]))) then
                                pcall(Function)
                            end
                        end
                    end)
                end
        
                print((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["]", "u", "x", "r", "j", "&", "`", "k", "x", "u", "&", "r", "u", "g", "j", "k", "j", "&", "{", "v", "'"]
]]))))
                --
            end
        end    
    end
    
    WorldZeroInit()

    local _Players = game:GetService((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["V", "r", "g", "", "k", "x", "y"]
]]))))
    local _Player = _Players.LocalPlayer
    
    local queue_on_teleport = type(syn) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["z", "g", "h", "r", "k"]
]]))) and syn.queue_on_teleport or queue_on_teleport
    
    local RejoinCode = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["&", "&", "&", "&", "&", "&", "&", "&", "r", "u", "i", "g", "r", "&", "S", "g", "x", "q", "k", "z", "Y", "k", "x", "|", "o", "i", "k", "&", "C", "&", "m", "g", "s", "k", "@", "M", "k", "z", "Y", "k", "x", "|", "o", "i", "k", ".", "(", "S", "g", "x", "q", "k", "z", "v", "r", "g", "i", "k", "Y", "k", "x", "|", "o", "i", "k", "(", "\/", "", "&", "&", "&", "&", "&", "&", "&", "&", "r", "u", "i", "g", "r", "&", "\\", "X", "Y", "k", "x", "|", "o", "i", "k", "&", "C", "&", "m", "g", "s", "k", "@", "N", "l", "{", "Z", "l", "y", "}", "p", "j", "l", "\/", ")", "]", "p", "y", "{", "|", "h", "s", "\\", "z", "l", "y", ")", "0", "", "'", "'", "'", "'", "", "'", "'", "'", "'", "'", "'", "'", "'", "s", "v", "j", "h", "s", "'", "p", "z", "Z", "|", "j", "j", "l", "z", "z", "m", "|", "s", "3", "'", "p", "u", "m", "v", "'", "D", "'", "w", "j", "h", "s", "s", "\/", "T", "h", "y", "r", "l", "{", "Z", "l", "y", "}", "p", "j", "l", "5", "N", "l", "{", "W", "y", "v", "k", "|", "j", "{", "P", "u", "m", "v", "4", "(", "U", "i", "z", "s", "m", "|", "[", "m", "z", "~", "q", "k", "m", "4", "(", "o", "i", "u", "m", "6", "X", "t", "i", "k", "m", "Q", "l", "1", "", "(", "(", "(", "(", "(", "(", "(", "(", "q", "n", "(", "q", "{", "[", "}", "k", "k", "m", "{", "{", "n", "}", "t", "(", "|", "p", "m", "v", "", "(", "(", "(", "(", "(", "(", "(", "(", "(", "(", "(", "(", "q", "n", "(", "q", "v", "n", "w", "6", "K", "z", "m", "i", "|", "w", "z", "6", "V", "i", "u", "m", "(", "E", "E", "(", "*", "_", "w", "z", "u", "m", ")", "8", "8", ")", "c", "n", "{", "x", "+", ")", "}", "q", "n", "w", "", ")", ")", ")", ")", ")", ")", ")", ")", ")", ")", ")", ")", ")", ")", ")", ")", "{", "n", "y", "n", "j", "}", ")", "}", "j", "|", "t", "7", "€", "j", "r", "}", "1", "2", ")", "~", "w", "}", "r", "u", ")", "p", "j", "v", "n", "C", "R", "|", "U", "x", "j", "m", "n", "m", "1", "2", ")", "j", "w", "m", ")", "p", "j", "v", "n", "7", "Y", "u", "j", "‚", "n", "{", "|", "7", "U", "x", "l", "j", "u", "Y", "u", "j", "‚", "o", "|", "*", "ˆ", "G", "*", "x", "s", "v", "*", "k", "x", "n", "*", "q", "k", "w", "o", "8", "Z", "v", "k", "ƒ", "o", "|", "}", "8", "V", "y", "m", "k", "v", "Z", "v", "k", "ƒ", "o", "|", "8", "M", "r", "k", "|", "k", "m", "~", "o", "|", "*", "ˆ", "G", "*", "x", "s", "v", "", "*", "*", "*", "*", "*", "*", "*", "*", "*", "*", "*", "*", "*", "*", "*", "*", "~", "k", "}", "u", "8", "n", "o", "v", "k", "ƒ", "2", "?", "6", "*", "p", "", "x", "m", "~", "s", "y", "x", "2", "3", "", "*", "*", "*", "+", "+", "+", "+", "+", "+", "+", "+", "+", "+", "+", "+", "+", "+", "+", "+", "+", "w", "z", "l", "o", "q", "t", "w", "p", "3", "-", "R", "}", "€", "m", "s", "€", "m", ":", "R", "}", "€", "m", "s", "€", "m", "a", "A", "^", "z", "€", "}", "n", "p", ":", "N", "z", "x", "{", "t", "w", "p", "o", "^", "n", "}", "t", "{", "", "9", "w", "€", "l", "-", "4", "3", "4", "", "+", "+", "+", "+", "+", "+", "+", "+", "+", "+", "+", "+", "+", "+", "+", "+", "p", "y", "o", "4", "", "+", "+", "+", "+", "+", ",", ",", ",", ",", ",", ",", ",", "q", "z", "p", "", ",", ",", ",", ",", ",", ",", ",", ",", "q", "z", "p", "", ",", ",", ",", ","]
]])))

    if not isfile((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "x", "{", "h", "n", "{", "h", "e", "k", "~", "k", "i", "{", "z", "k", "4", "r", "{", "g"]
]])))) then
        writefile((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "x", "{", "h", "n", "{", "h", "e", "k", "~", "k", "i", "{", "z", "k", "4", "r", "{", "g"]
]]))), tostring(RejoinCode))
    end
    
    queue_on_teleport((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["&", "&", "&", "&", "&", "&", "&", "&", "o", "l", "&", "o", "y", "l", "o", "r", "k", ".", "(", "m", "x", "{", "h", "n", "{", "h", "e", "k", "~", "k", "i", "{", "z", "k", "4", "r", "{", "g", "(", "\/", "&", "z", "n", "k", "t", "", "&", "&", "&", "&", "&", "&", "&", "&", "&", "&", "&", "&", "r", "u", "g", "j", "l", "o", "r", "k", ".", "(", "m", "x", "{", "h", "n", "{", "h", "e", "k", "~", "k", "i", "{", "z", "k", "4", "r", "{", "g", "(", "\/", ".", "\/", "", "&", "&", "&", "&", "&", "&", "&", "'", "l", "u", "k", "", "'", "'", "'", "'"]
]]))))
end
            --DaHood. lua_compile_spot

			if getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "Y", "K", "e", "M", "X", "[", "H", "N", "[", "H", "e", "[", "T", "O", "\\", "K", "X", "Y", "G", "R"]
]])))] == true then
                do
    local Players = game[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "k", "z", "Y", "k", "x", "|", "o", "i", "k"]
]])))](game, (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["V", "r", "g", "", "k", "x", "y"]
]]))))
    local Player = Players[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["R", "u", "i", "g", "r", "V", "r", "g", "", "k", "x"]
]])))]
    local Format, Split, GSUB, gmatch, match = string[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["l", "u", "x", "s", "g", "z"]
]])))], string[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["y", "v", "r", "o", "z"]
]])))], string[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "y", "{", "h"]
]])))], string[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["m", "s", "g", "z", "i", "n"]
]])))], string[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["s", "g", "z", "i", "n"]
]])))]

    Window = UILibrary.new((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["M", "x", "{", "h", "N", "{", "h", "&", "\\", "<", "&", "„", "&", "[", "t", "o", "|", "k", "x", "y", "g", "r"]
]]))), 5013109572)

    local VisualsWindow = Window:addPage((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["\\", "o", "y", "{", "g", "r", "y"]
]]))), 5012544693)
    local VisualsSelection = VisualsWindow:addSection((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["S", "g", "o", "t"]
]]))))

    local GameConfigFile = GetGameConfig(FixName(tostring((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "t", "o", "|", "k", "x", "y", "g", "r"]
]]))))) .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["4", "p", "y", "u", "t"]
]]))))
    Settings_Name = (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "T", "O", "\\", "K", "X", "Y", "G", "R", "e", "M", "X", "[", "H", "N", "[", "H", "e", "Y", "K", "Z", "Z", "O", "T", "M", "Y"]
]])))

    getgenv()[Settings_Name] = {
        Teamcheck = GameConfigFile.Teamcheck or false,
        Boxes = GameConfigFile.Boxes or false,
        Tracers = GameConfigFile.Tracers or false,
        Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
    }

    VisualsSelection:addToggle((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "&", "Z", "k", "g", "s", "i", "n", "k", "i", "q"]
]]))), getgenv()[Settings_Name].Teamcheck, function(Bool)
        getgenv()[Settings_Name].Teamcheck = Bool
        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SetTeamCheck(Bool)
    end)

    VisualsSelection:addToggle((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "&", "H", "u", "~", "k", "y"]
]]))), getgenv()[Settings_Name].Boxes, function(Bool)
        getgenv()[Settings_Name].Boxes = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].LoadBox(Plr)
                end
            end
            getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SetBoxVisibility(true)
        else
            getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].UnLoadType((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "H", "U", "^", "K", "Y"]
]]))))
            getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SetBoxVisibility(false)
        end
    end)

    VisualsSelection:addToggle((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "&", "Z", "x", "g", "i", "k", "x", "y"]
]]))), getgenv()[Settings_Name].Tracers, function(Bool)
        getgenv()[Settings_Name].Tracers = Bool
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].LoadTracers(Plr)
                end
            end
            getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SetTracersVisibility(true)
        else
            getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].UnLoadType((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["e", "K", "Y", "V", "e", "Z", "X", "G", "I", "K", "X", "Y"]
]]))))
            getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].SetTracersVisibility(false)
        end
    end)

    local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color

    getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

    VisualsSelection:addColorPicker((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "&", "I", "u", "r", "u", "x"]
]]))), Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
        local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)

        getgenv()[Settings_Name].Color.R = R
        getgenv()[Settings_Name].Color.G = G
        getgenv()[Settings_Name].Color.B = B

        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].UpdateColor(Color3.fromRGB(R, G, B))
    end)

    VisualsSelection:addButton((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "t", "r", "u", "g", "j", "&", "K", "Y", "V"]
]]))), function(Bool)
        getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["K", "Y", "V", "e", "I", "G", "I", "N", "K"]
]])))].UnLoad()
    end)
end
			end

			if Window ~= nil and Settings_Name ~= nil then
				local MarketService = game:GetService((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["S", "g", "x", "q", "k", "z", "v", "r", "g", "i", "k", "Y", "k", "x", "|", "o", "i", "k"]
]]))))
				SettingsPage = SettingsPage or Window:addPage((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["Y", "k", "z", "z", "o", "t", "m", "y"]
]]))), 5012544693)
				SettingsSection = SettingsSection or SettingsPage:addSection((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["U", "z", "n", "k", "x"]
]]))), 5012544693)
				SettingsSection:addButton((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["Y", "g", "|", "k", "&", "I", "u", "t", "l", "o", "m"]
]]))), function()
					local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
					if isSuccessful then
						if tostring(info.Creator.Name) == (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["]", "u", "x", "r", "j", "&", "5", "5", "&", "`", "k", "x", "u"]
]]))) then
							SaveGameConfig(FixName(tostring(info.Creator.Name)) .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["4", "p", "y", "u", "t"]
]]))), getgenv()[Settings_Name])
                        elseif getgenv()[(decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "Y", "K", "e", "M", "X", "[", "H", "N", "[", "H", "e", "[", "T", "O", "\\", "K", "X", "Y", "G", "R"]
]])))] == true then
							SaveGameConfig(FixName(tostring((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["[", "t", "o", "|", "k", "x", "y", "g", "r"]
]]))))) .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["4", "p", "y", "u", "t"]
]]))), getgenv()[Settings_Name])
                        else
							SaveGameConfig(FixName(tostring(info.Name)) .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["4", "p", "y", "u", "t"]
]]))), getgenv()[Settings_Name])
						end
					end
				end)
				SettingsSection:addKeybind((decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
["Z", "u", "m", "m", "r", "k", "&", "Q", "k", "", "h", "o", "t", "j"]
]]))), Enum.KeyCode.Home, function()
					Window:toggle()
				end, function()
				end)
			end
		else
			return sendError(serverData, clientData)
		end
	end
end, function(err)
	return warn(err .. (decode_string_v1(3, getgenv()['GRUBHUB_JSON'].parse([[
[""]
]]))) .. debug.traceback())
end)