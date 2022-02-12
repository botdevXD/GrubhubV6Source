local Time = os.time();

local function Convert_v1(Offset, Text)
    local Result = {}
    local length = #Text

    for StringIndex = 1, length do
        local char = Text["sub"](Text, StringIndex, StringIndex)
        local Byte = char["byte"](char)
        local MMath = (Byte + StringIndex + Offset + 3)
        local letter = string["char"](MMath)
        Result[StringIndex] = letter
    end
    return Result
end

local function UnConvert_v1(Offset, TextTable)
    local Result = ""
    for StringIndex, StringLetter in ipairs(TextTable) do
        local char = StringLetter["sub"](StringLetter, 1, 1)
        local Byte = char["byte"](char)
        local MMath = (Byte - StringIndex - Offset - 3)
        local letter = string["char"](MMath)
        Result = Result .. letter
    end
  
    return Result
end

function clamp(value, min, max)
    -- Custom math.clamp ~ 0x74 ~ _Ben
    local Value = value
    local ResetValue = false

    repeat
        if (Value < min) then
            if not ResetValue then
                ResetValue = true
                Value = 0
            end
        
            Value = Value + 1
        end
    until Value >= min

    repeat
        if (Value > max) then
            Value = Value - 1
        end
    until Value <= max

    return Value
end

local Offset = clamp(math.random(1, 100), 1, 60) + (tick() / 100)

local Encrypted = Convert_v1(Offset, "Ben is legit way too advanced for you kids.");
local Decrypted = UnConvert_v1(Offset, Encrypted)

local EncryptedString = ""

for _, Letter in ipairs(Encrypted) do
    EncryptedString = EncryptedString .. Letter
end

print("Encrypted:", EncryptedString)
print("Decrypted:", Decrypted)

print(string.format("Finished in %s seconds!", tostring(os.time() - Time)))