do
    if tostring(game.PlaceId) == "292439477" then
        getgenv()["USE_GRUBHUB_UNIVERSAL"] = false
        getgenv()["UpdateLoop"] = type(getgenv()["UpdateLoop"]) == "boolean" and getgenv()["UpdateLoop"] or false;
        getgenv()["UpdateCache"] = type(getgenv()["UpdateCache"]) == "table" and getgenv()["UpdateCache"] or {};
        getgenv()["GunModulesCache"] = type(getgenv()["GunModulesCache"]) == "table" and getgenv()["GunModulesCache"] or {};
        getgenv()["FUNCTION_BACKUPS"] = type(getgenv()["FUNCTION_BACKUPS"]) == "table" and getgenv()["FUNCTION_BACKUPS"] or {};
        getgenv()["GAME_HOOKS_CACHE"] = type(getgenv()["GAME_HOOKS_CACHE"]) == "table" and getgenv()["GAME_HOOKS_CACHE"] or {};
        getgenv()["DRAWED_OBJECTS"] = type(getgenv()["DRAWED_OBJECTS"]) == "table" and getgenv()["DRAWED_OBJECTS"] or {};
        
        Settings_Name = "PF_SETTINGS_GRUBHUB"

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

        local AimbotMT = getgenv()["ESP_CACHE"].Aimbot()

        local Camera = workspace:WaitForChild("Camera", 5)
        local SpotTable = {}

        local ReplicatedStorage = game["GetService"](game, "ReplicatedStorage")
        local GunModules = ReplicatedStorage:WaitForChild("GunModules", 5)
        local RunService = game["GetService"](game, "RunService")
        local Players = game["GetService"](game, "Players")
        local Player = Players["LocalPlayer"]
        local PlrMouse = Player:GetMouse()
        local Format, Split, GSUB, gmatch, match = string["format"], string["split"], string["gsub"], string["gmatch"], string["match"]

        Window = UILibrary.new("GrubHub V6 ~ Phantom Forces", 5013109572)

        local PlayerWindow = Window:addPage("Player", 5012544693)
        local PlayerSection = PlayerWindow:addSection("Main")

        local CombatWindow = Window:addPage("Combat", 5012544693)
        local CombatSelection = CombatWindow:addSection("Main")

        local VisualsWindow = Window:addPage("Visuals", 5012544693)
        local VisualsSelection = VisualsWindow:addSection("Main")

        local RecoilTable = {
            {"camkickmin", Vector3.new(0, 0, 0)},
            {"camkickmax", Vector3.new(0, 0, 0)},
            {"aimcamkickmin", Vector3.new(0, 0, 0)},
            {"aimcamkickmax", Vector3.new(0, 0, 0)},
            {"aimtranskickmin", Vector3.new(0, 0, 0)},
            {"aimtranskickmax", Vector3.new(0, 0, 0)},
            {"transkickmin", Vector3.new(0, 0, 0)},
            {"transkickmax", Vector3.new(0, 0, 0)},
            {"rotkickmin", Vector3.new(0, 0, 0)},
            {"rotkickmax", Vector3.new(0, 0, 0)},
            {"aimrotkickmin", Vector3.new(0, 0, 0)},
            {"aimrotkickmax", Vector3.new(0, 0, 0)},
            {"hipfirespread", 0},
            {"hipfirestability", 0},
        }

        for _, Module in ipairs(GunModules:GetChildren()) do -- Cache the modules so we don't fuck memory up
            if not getgenv()["GunModulesCache"][tostring(Module)] then
                local BlankTable = {}
                local Success, Contents = pcall(require, Module)
                if Success then
                    if rawget(Contents.animations, "reload") then
                        if Contents.animations.reload.IS_RELOAD_ANIMATION == nil then
                            Contents.animations.reload.IS_RELOAD_ANIMATION = true
                        end
                    end

                    if rawget(Contents.animations, "tacticalreload") then
                        if Contents.animations.tacticalreload.IS_RELOAD_ANIMATION == nil then
                            Contents.animations.tacticalreload.IS_RELOAD_ANIMATION = true
                        end
                    end

                    if rawget(Contents.animations, "extendedtacticalreload") then
                        if Contents.animations.extendedtacticalreload.IS_RELOAD_ANIMATION == nil then
                            Contents.animations.extendedtacticalreload.IS_RELOAD_ANIMATION = true
                        end
                    end

                    if rawget(Contents.animations, "extendedreload") then
                        if Contents.animations.extendedreload.IS_RELOAD_ANIMATION == nil then
                            Contents.animations.extendedreload.IS_RELOAD_ANIMATION = true
                        end
                    end

                    for Index, Key in pairs(Contents) do
                        BlankTable[tostring(Index) .. "_GH"] = Key -- Replicating that same table so we have a quick access table to restore everything!
                    end
                    
                    getgenv()["GunModulesCache"][tostring(Module)] = BlankTable
                end
            end
        end

        for _, Key in pairs(getgc(true)) do
            local SendCheck = type(Key) == "table" and rawget(Key, "send") and Key or nil
            local SetBaseWalkCheck = type(Key) == "table" and rawget(Key, "setbasewalkspeed") and Key or nil
            local JMPCheck = type(Key) == "table" and rawget(Key, "jump") and Key or nil
            local AnimationPlayerCheck = type(Key) == "table" and rawget(Key, "player") and Key or nil
            local CharBodyCheck = type(Key) == "table" and rawget(Key, "getbodyparts") and Key or nil
            
            if AnimationPlayerCheck then
                if type(AnimationPlayerCheck.player) == "function" then
                    if tostring(debug.getinfo(AnimationPlayerCheck.player).source):lower():find(".animation") then
                        if getgenv()["GAME_HOOKS_CACHE"]["player"] == nil then
                            getgenv()["GAME_HOOKS_CACHE"]["player"] = true
        
                            getgenv()["FUNCTION_BACKUPS"]["player"] = hookfunction(AnimationPlayerCheck.player, function(...)
                                local args = {...}
                                if getgenv()[Settings_Name].INSTANT_RELOAD == true then
                                    if type(args[2]) == "table" then
                                        if args[2].IS_RELOAD_ANIMATION == true then
                                            return function()end
                                        end
                                    end
                                end
                                return getgenv()["FUNCTION_BACKUPS"]["player"](unpack(args))
                            end)
                        end
        
                        getgenv()["GAME_HOOKS_CACHE"]["player"] = getgenv()["GAME_HOOKS_CACHE"]["player"] or AnimationPlayerCheck
                    end
                end
            end

            if CharBodyCheck then
                if type(CharBodyCheck.getbodyparts) == "function" then
                    getgenv()["FUNCTION_BACKUPS"]["getbodyparts"] = getgenv()["FUNCTION_BACKUPS"]["getbodyparts"] or CharBodyCheck.getbodyparts
                end
            end

            if SendCheck then
                if getgenv()["GAME_HOOKS_CACHE"]["Send"] == nil then
                    getgenv()["GAME_HOOKS_CACHE"]["Send"] = true
                    getgenv()["GAME_HOOKS_CACHE"]["FireNetwork"] = function(...)
                        return Key:send(...)
                    end

                    getgenv()["FUNCTION_BACKUPS"]["Send"] = hookfunction(Key.send, function(self, ...)
                        local args = {...}
                        if args[1] == "falldamage" and getgenv()[Settings_Name].NO_FALL_DAMAGE == true then
                            return true
                        end
                        return getgenv()["FUNCTION_BACKUPS"]["Send"](self, unpack(args))
                    end)
                end
            end

            if SetBaseWalkCheck then
                if getgenv()["GAME_HOOKS_CACHE"]["SetWalkSpeed"] == nil then
                    getgenv()["GAME_HOOKS_CACHE"]["SetWalkSpeed"] = true

                    getgenv()["FUNCTION_BACKUPS"]["SetWalkSpeed"] = hookfunction(Key.setbasewalkspeed, function(self, ...)
                        local args = {...}
                        return getgenv()["FUNCTION_BACKUPS"]["SetWalkSpeed"](self, type(getgenv()[Settings_Name].WALKSPEED) == "number" and getgenv()[Settings_Name].WALKSPEED > 0 and getgenv()[Settings_Name].WALKSPEED or unpack(args))
                    end)
                end

                getgenv()["GAME_HOOKS_CACHE"]["SetWalkSpeed"] = getgenv()["GAME_HOOKS_CACHE"]["SetWalkSpeed"] or SetBaseWalkCheck
            end

            if JMPCheck then
                if getgenv()["GAME_HOOKS_CACHE"]["JUMP"] == nil then
                    getgenv()["GAME_HOOKS_CACHE"]["JUMP"] = true

                    getgenv()["FUNCTION_BACKUPS"]["JUMP"] = hookfunction(Key.jump, function(self, ...)
                        local args = {...}
                        return getgenv()["FUNCTION_BACKUPS"]["JUMP"](self, type(getgenv()[Settings_Name].JUMPPOWER) == "number" and getgenv()[Settings_Name].JUMPPOWER > 0 and getgenv()[Settings_Name].JUMPPOWER or unpack(args))
                    end)
                end

                getgenv()["GAME_HOOKS_CACHE"]["GameLogic_1"] = getgenv()["GAME_HOOKS_CACHE"]["GameLogic_1"] or JMPCheck
            end
        end
        
        local function GetHumanoid()
            return debug.getupvalue(getgenv()["GAME_HOOKS_CACHE"]["GameLogic_1"].jump, 10)
        end

        local function ClearDrawings()
            for _, V in pairs(getgenv()["DRAWED_OBJECTS"]) do
                pcall(function()
                    V:Remove()
                end)
            end
            
            table.clear(getgenv()["DRAWED_OBJECTS"])
        end

        local function ResetWeapons()
            for _, Module in ipairs(GunModules:GetChildren()) do
                local Success, Contents = pcall(require, Module)
                if Success then
                    if getgenv()["GunModulesCache"][tostring(Module)] then
                        for NewInex, NewKey in pairs(getgenv()["GunModulesCache"][tostring(Module)]) do
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
                        if getgenv()["GunModulesCache"][tostring(Module)] then
                            if rawget(Contents, ValueName) then
                                rawset(Contents, ValueName, UseOld == true and rawget(getgenv()["GunModulesCache"][tostring(Module)], ValueName .. "_GH") or NewValue)
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
                        if getgenv()["GunModulesCache"][tostring(Module)] then
                            local GunFireRate = rawget(Contents, "firerate")
                            if type(GunFireRate) == "number" then
                                rawset(Contents, "firerate", UseOld == true and rawget(getgenv()["GunModulesCache"][tostring(Module)], "firerate" .. "_GH") or NewValue)
                            elseif type(GunFireRate) == "table" then
                                if not UseOld then
                                    GunFireRate = {unpack(GunFireRate)}
                                    for Index, Key in pairs(GunFireRate) do
                                        if type(Key) == "number" then
                                            GunFireRate[Index] = NewValue
                                        end
                                    end

                                    Contents.firerate = GunFireRate
                                else
                                    rawset(Contents, "firerate", rawget(getgenv()["GunModulesCache"][tostring(Module)], "firerate" .. "_GH"))
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
                getgenv()["DRAWED_OBJECTS"]["FOV_CIRCLE"] = Drawing.new("Circle")
                getgenv()["DRAWED_OBJECTS"]["FOV_CIRCLE"].Thickness = 3
                getgenv()["DRAWED_OBJECTS"]["FOV_CIRCLE"].NumSides = 90
                getgenv()["DRAWED_OBJECTS"]["FOV_CIRCLE"].Filled = false
                getgenv()["DRAWED_OBJECTS"]["FOV_CIRCLE"].Visible = false

                getgenv()["UpdateCache"]["FOV_CIRCLE"] = function()
                    if getgenv()[Settings_Name].FOV_ENABLED == true then
                        if getgenv()["DRAWED_OBJECTS"]["FOV_CIRCLE"] ~= nil then
                            getgenv()["DRAWED_OBJECTS"]["FOV_CIRCLE"].Visible = type(getgenv()[Settings_Name].FOV_ENABLED) == "boolean" and getgenv()[Settings_Name].FOV_ENABLED or false
                            getgenv()["DRAWED_OBJECTS"]["FOV_CIRCLE"].Radius = 90
                            getgenv()["DRAWED_OBJECTS"]["FOV_CIRCLE"].Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
                            getgenv()["DRAWED_OBJECTS"]["FOV_CIRCLE"].Color = getgenv()[Settings_Name].ESP_COLOR or Color3.fromRGB(255, 255, 255)
                        end
                    else
                        if getgenv()["DRAWED_OBJECTS"]["FOV_CIRCLE"] ~= nil then
                            getgenv()["DRAWED_OBJECTS"]["FOV_CIRCLE"].Visible = false
                        end
                    end
                end

            end)
        end

        PlayerSection:addSlider("WalkSpeed Boost", 0, 0, 100, function(Value)
            getgenv()[Settings_Name].WALKSPEED = tonumber(Value)
        end)

        PlayerSection:addSlider("JumpPower Boost", 0, 0, 100, function(Value)
            getgenv()[Settings_Name].JUMPPOWER = tonumber(Value)
        end)

        PlayerSection:addToggle("No fall damage", false, function(Bool)
            getgenv()[Settings_Name].NO_FALL_DAMAGE = Bool
        end)

        PlayerSection:addKeybind("Toggle Keybind", Enum.KeyCode.Delete, function()
            Window:toggle()
        end, function()end)
        
        CombatSelection:addToggle("Instant Reload", false, function(Bool)
            getgenv()[Settings_Name].INSTANT_RELOAD = Bool
        end)

        CombatSelection:addSlider("FireRate amount", 100, 100, 10000, function(Value)
            getgenv()[Settings_Name].FIRERATE_SPEED = Value

            if getgenv()[Settings_Name].FIRERATE_ENABLED == true then
                SetFireRate(Value, false)
            end
        end)

        CombatSelection:addToggle("FireRate enabler", false, function(Bool)
            getgenv()[Settings_Name].FIRERATE_ENABLED = Bool
            if Bool then
                SetFireRate(getgenv()[Settings_Name].FIRERATE_SPEED, false)
            else
                SetFireRate(nil, true)
            end
        end)

        CombatSelection:addToggle("Aimbot", false, function(Bool)
            if Bool then
                AimbotMT.Start()
            else
                AimbotMT.End()
            end
        end)

        CombatSelection:addToggle("Aimbot Teamcheck", false, function(Bool)
            AimbotMT.TeamCheck(Bool)
        end)

        CombatSelection:addToggle("No Recoil", false, function(Bool)
            if Bool then
                for KeyName, KeyValue in ipairs(RecoilTable) do
                    if type(KeyValue) == "table" then
                        SetWeaponValue(KeyValue[1], KeyValue[2], false)
                    end
                end
            else
                for KeyName, KeyValue in ipairs(RecoilTable) do
                    if type(KeyValue) == "table" then
                        SetWeaponValue(KeyValue[1], nil, true)
                    end
                end
            end
        end)
        
        CombatSelection:addToggle("Spot all players", false, function(Bool)
            getgenv()[Settings_Name].SPOT_ALL_PLAYERS = Bool
            
            if Bool then
                task.spawn(function()
                    while getgenv()[Settings_Name].SPOT_ALL_PLAYERS == true do
                        for _, Object in ipairs(Players:GetPlayers()) do
                            table.insert(SpotTable, Object)
                        end
                        
                        getgenv()["GAME_HOOKS_CACHE"]["FireNetwork"]("spotplayers", SpotTable)

                        table.clear(SpotTable)
                        task.wait(0.1)
                    end
                end)
            end
        end)

        VisualsSelection:addToggle("FOV Circle", false, function(Bool)
            getgenv()[Settings_Name].FOV_ENABLED = Bool
        end)

        VisualsSelection:addToggle("ESP Teamcheck", false, function(Bool)
            getgenv()["ESP_CACHE"].SetTeamCheck(Bool)
        end)

        VisualsSelection:addToggle("ESP Boxes", false, function(Bool)
            if Bool then
                for _, Plr in ipairs(Players:GetPlayers()) do
                    if Plr ~= Player then
                        getgenv()["ESP_CACHE"].LoadBox(Plr)
                    end
                end
                getgenv()["ESP_CACHE"].SetBoxVisibility(true)
            else
                getgenv()["ESP_CACHE"].UnLoadType("_ESP_BOXES")
                getgenv()["ESP_CACHE"].SetBoxVisibility(false)
            end
        end)

        VisualsSelection:addToggle("ESP Tracers", false, function(Bool)
            if Bool then
                for _, Plr in ipairs(Players:GetPlayers()) do
                    if Plr ~= Player then
                        getgenv()["ESP_CACHE"].LoadTracers(Plr)
                    end
                end
                getgenv()["ESP_CACHE"].SetTracersVisibility(true)
            else
                getgenv()["ESP_CACHE"].UnLoadType("_ESP_TRACERS")
                getgenv()["ESP_CACHE"].SetTracersVisibility(false)
            end
        end)

        VisualsSelection:addColorPicker("ESP Color", getgenv()[Settings_Name].ESP_COLOR, function(newcolor)
            local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)
            getgenv()[Settings_Name].ESP_COLOR = Color3.fromRGB(R, G, B)
            getgenv()["ESP_CACHE"].UpdateColor(getgenv()[Settings_Name].ESP_COLOR)
        end)

        VisualsSelection:addButton("Unload ESP", function(Bool)
            getgenv()["ESP_CACHE"].UnLoad()
        end)

        if not getgenv()["UpdateLoop"] then
            getgenv()["UpdateLoop"] = true
            RunService.Heartbeat:Connect(function()
                for _, Function in pairs(getgenv()["UpdateCache"]) do
                    if type(Function) == "function" then
                        pcall(Function)
                    end
                end
            end)
        end

        StartEsp()

        Window:SelectPage(Window.pages[1], true)
    end
end