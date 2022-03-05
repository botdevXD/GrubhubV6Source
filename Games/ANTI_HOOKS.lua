local RandomObject = Random.new()
local Key = RandomObject:NextNumber(1, 100000)

local oldrconsoleprint = nil
local oldrconsoleinfo = nil
local oldrconsolewarn = nil
local oldrconsoleerr = nil
local oldrconsoleclear = nil
local oldrconsolename = nil
local oldrconsoleinput = nil
local oldprintconsole = nil
local oldmessagebox = nil
local oldprint = nil
local oldwarn = nil
local olderror = nil
local oldsetclipboard = nil

if getgenv()["rconsoleprint"] ~= nil then
    oldrconsoleprint = hookfunction(getgenv()["rconsoleprint"], newcclosure(function(_Key, ...)
        if _Key ~= Key then while true do end return nil end
        return oldrconsoleprint(...)
    end))
end

if getgenv()["rconsoleinfo"] ~= nil then
    oldrconsoleinfo = hookfunction(getgenv()["rconsoleinfo"], newcclosure(function(_Key, ...)
        if _Key ~= Key then while true do end return nil end
        return oldrconsoleinfo(...)
    end))
end

if getgenv()["rconsolewarn"] ~= nil then
    oldrconsolewarn = hookfunction(getgenv()["rconsolewarn"], newcclosure(function(_Key, ...)
        if _Key ~= Key then while true do end return nil end
        return oldrconsolewarn(...)
    end))
end

if getgenv()["rconsoleerr"] ~= nil then
    oldrconsoleerr = hookfunction(getgenv()["rconsoleerr"], newcclosure(function(_Key, ...)
        if _Key ~= Key then while true do end return nil end
        return oldrconsoleerr(...)
    end))
end

if getgenv()["rconsoleclear"] ~= nil then
    oldrconsoleclear = hookfunction(getgenv()["rconsoleclear"], newcclosure(function(_Key, ...)
        if _Key ~= Key then while true do end return nil end
        return oldrconsoleclear(...)
    end))
end

if getgenv()["rconsolename"] ~= nil then
    oldrconsolename = hookfunction(getgenv()["rconsolename"], newcclosure(function(_Key, ...)
        if _Key ~= Key then while true do end return nil end
        return oldrconsolename(...)
    end))
end

if getgenv()["rconsoleinput"] ~= nil then
    oldrconsoleinput = hookfunction(getgenv()["rconsoleinput"], newcclosure(function(_Key, ...)
        if _Key ~= Key then while true do end return nil end
        return oldrconsoleinput(...)
    end))
end

if getgenv()["printconsole"] ~= nil then
    oldprintconsole = hookfunction(getgenv()["printconsole"], newcclosure(function(_Key, ...)
        if _Key ~= Key then while true do end return nil end
        return oldprintconsole(...)
    end))
end

if getgenv()["messagebox"] ~= nil then
    oldmessagebox = hookfunction(getgenv()["messagebox"], newcclosure(function(_Key, ...)
        if _Key ~= Key then while true do end return nil end
        return oldmessagebox(...)
    end))
end

if getgenv()["print"] ~= nil then
    oldprint = hookfunction(getgenv()["print"], newcclosure(function(_Key, ...)
        if _Key ~= Key then while true do end return nil end
        return oldprint(...)
    end))
end

if getgenv()["warn"] ~= nil then
    oldwarn = hookfunction(getgenv()["warn"], newcclosure(function(_Key, ...)
        if _Key ~= Key then while true do end return nil end
        return oldwarn(...)
    end))
end

if getgenv()["error"] ~= nil then
    olderror = hookfunction(getgenv()["error"], newcclosure(function(_Key, ...)
        if _Key ~= Key then while true do end return nil end
        return olderror(...)
    end))
end

if getgenv()["setclipboard"] ~= nil then
    oldsetclipboard = hookfunction(getgenv()["setclipboard"], newcclosure(function(_Key, ...)
        if _Key ~= Key then while true do end return nil end
        return oldsetclipboard(...)
    end))
end

local rconsoleprint = type(oldrconsoleprint) == "function" and function(...)
    return oldrconsoleprint(Key, ...)
end or rconsoleprint

local rconsoleinfo = type(oldrconsoleinfo) == "function" and function(...)
    return oldrconsoleinfo(Key, ...)
end or rconsoleinfo

local rconsolewarn = type(oldrconsolewarn) == "function" and function(...)
    return oldrconsolewarn(Key, ...)
end or rconsolewarn

local rconsoleerr = type(oldrconsoleerr) == "function" and function(...)
    return oldrconsoleerr(Key, ...)
end or rconsoleerr

local rconsoleclear = type(oldrconsoleclear) == "function" and function(...)
    return oldrconsoleclear(Key, ...)
end or rconsoleclear

local rconsolename = type(oldrconsolename) == "function" and function(...)
    return oldrconsolename(Key, ...)
end or rconsolename

local rconsoleinput = type(oldrconsoleinput) == "function" and function(...)
    return oldrconsoleinput(Key, ...)
end or rconsoleinput

local printconsole = type(oldprintconsole) == "function" and function(...)
    return oldprintconsole(Key, ...)
end or printconsole

local messagebox = type(oldmessagebox) == "function" and function(...)
    return oldmessagebox(Key, ...)
end or messagebox

local print = type(oldprint) == "function" and function(...)
    return oldprint(Key, ...)
end or print

local warn = type(oldwarn) == "function" and function(...)
    return oldwarn(Key, ...)
end or warn

local error = type(olderror) == "function" and function(...)
    return olderror(Key, ...)
end or error

local setclipboard = type(oldsetclipboard) == "function" and function(...)
    return oldsetclipboard(Key, ...)
end or setclipboard
