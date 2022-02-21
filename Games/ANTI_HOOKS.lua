do
    local RandomObject = Random.new()
    local Key = RandomObject:NextNumber(1, 100000)
    local OldPrint = nil
    local OldWarn = nil
    local OldError = nil
    OldPrint = hookfunction(getgenv().print, newcclosure(function(PrintKey, ...)
        if PrintKey ~= Key then while true do end end
        return OldPrint(...)
    end))
    OldWarn = hookfunction(getgenv().warn, newcclosure(function(WarnKey, ...)
        if WarnKey ~= Key then while true do end end
        return OldWarn(...)
    end))
    OldError = hookfunction(getgenv().error, newcclosure(function(ErrorKey, ...)
        if ErrorKey ~= Key then while true do end end
        return OldError(...)
    end))
    local PrintBackup = print
    local WarnBackup = warn
    local ErrorBackup = error
    local print = function(...)
        PrintBackup(Key, ...)
    end
    local warn = function(...)
        WarnBackup(Key, ...)
    end
    local error = function(...)
        ErrorBackup(Key, ...)
    end
end