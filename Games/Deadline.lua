xpcall(function()
    do
        if tostring(game.PlaceId) == "3837841034" then
            getgenv()["grubhub_loaded"] = false

            local DebugMode = false
            local rconsolename = rconsolename or rconsolesettitle
            local rconsolecreate = rconsolecreate or rconsolename
            local consoleclear = consoleclear or rconsoleclear
            
            if DebugMode then
                consoleclear()
                rconsolecreate("Deadline debug console!")
                rconsolename("Deadline debug console!")
            end
    
            local OldConsolePrint = rconsoleprint
     
            getgenv().rconsoleprint = function(...)
                if DebugMode then
                    return OldConsolePrint(...)
                end
                return nil
            end
    
            local consoleprint = getgenv().rconsoleprint

            getgenv()["USE_GRUBHUB_UNIVERSAL"] = false

            --------------------------------------------------------------------------------------------

            getgenv().UpdateLoop = type(getgenv().UpdateLoop) == "boolean" and getgenv().UpdateLoop or false;
            getgenv().UpdateCache = type(getgenv().UpdateCache) == "table" and getgenv().UpdateCache or {};
            getgenv().GameConnections = type(getgenv().GameConnections) == "table" and getgenv().GameConnections or {};
            getgenv().OLD_GAME_FUNCTIONS = type(getgenv().OLD_GAME_FUNCTIONS) == "table" and getgenv().OLD_GAME_FUNCTIONS or {};
    
            if type(getgenv().GameConnections) == "table" then
                for IndexName, Signal in pairs(getgenv().GameConnections) do
                    if typeof(Signal) == "RBXScriptConnection" then
                        Signal:Disconnect()
                    end
                end
                table.clear(getgenv().GameConnections)
            end
            
            local GameConfigFile = GetGameConfig(tostring(game.PlaceId) .. ".json")
            Settings_Name = "DEAD_LINE_FPS_SETTINGS_GRUBHUB"

            getgenv()[Settings_Name] = {
                AntiRecoil = GameConfigFile.AntiRecoil or false,
                FastGunReload = GameConfigFile.FastGunReload or false,
                GunFireRateEnabled = GameConfigFile.GunFireRateEnabled or false,
                GunFireRate = GameConfigFile.GunFireRate or 1000,
                Teamcheck = GameConfigFile.Teamcheck or false,
                Boxes = GameConfigFile.Boxes or false,
                NoGunBob = GameConfigFile.NoGunBob or false,
                NoCamBob = GameConfigFile.NoCamBob or false,
                SlientFootSteps = GameConfigFile.SlientFootSteps or false,

                NoReloadSound = GameConfigFile.NoReloadSound or false, -- New
                NoAimSound = GameConfigFile.NoAimSound or false, -- New
                NoGunFireSound = GameConfigFile.NoGunFireSound or false, -- New
                SilentAim = GameConfigFile.SilentAim or false, -- New
                BarrelTracers = GameConfigFile.BarrelTracers or false, -- New
                SilentAimDistance = GameConfigFile.SilentAimDistance or 250, -- New

                Tracers = GameConfigFile.Tracers or false,
                FPS_COUNTER = GameConfigFile.FPS_COUNTER or false,
                CameraFOV = GameConfigFile.CameraFOV or 78,
                Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
            }

            local Camera = workspace:FindFirstChild("Camera")
            getgenv().DeadlineEmitData = getgenv().DeadlineEmitData or {}
            getgenv().DeadlineGunData = getgenv().DeadlineGunData or {}
            getgenv().DeadlineGunFireData = getgenv().DeadlineGunFireData or {}
            getgenv().DeadlineCharacters = getgenv().DeadlineCharacters or {}
            getgenv().DeadlineMatchData = getgenv().DeadlineMatchData or {}

            local SoundData = {
                ["ads"] = {type = "aim"},
                ["ads_out"] = {type = "aim"},
                ["auto"] = {type = "shoot"},
                ["semi"] = {type = "shoot"},
                ["tail"] = {type = "shoot"}
            }
            local RunService = game:GetService("RunService")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
    
            local DataFolder = ReplicatedStorage:WaitForChild("data", 5)
            local ItemsFolder = DataFolder:WaitForChild("items", 5)
            local FrameworkFolder = ReplicatedStorage:WaitForChild("framework", 5)
            local FrameworkControllerFolder = FrameworkFolder:WaitForChild("controller", 5)
            local FrameworkWeaponModule_Success, FrameworkWeaponModule = pcall(require, FrameworkControllerFolder:WaitForChild("rifle", 5))
            local MainControllerModule_Success, MainControllerModule = pcall(require, FrameworkFolder:WaitForChild("MainController", 5))

            local Players = game:GetService("Players")
            local Player = Players.LocalPlayer

            Window = UILibrary.new("GrubHub V6 ~ Deadline", 5013109572)
    
            local Camera = workspace:WaitForChild("Camera", 5)
            local PlayerWindow = Window:addPage("Player", 5012544693)
            local PlayerSection = PlayerWindow:addSection("Other", 5012544693)
    
            local GunModsWindow = Window:addPage("Gun Mods", 5012544693)
            local GunModsFeatures = GunModsWindow:addSection("Mods", 5012544693)
    
            local VisualsWindow = Window:addPage("Visuals", 5012544693)
            local VisualsSelection = VisualsWindow:addSection("Options", 5012544693)
            
            local function Custom_play_sound(GunPlaySound, ...)
                local SoundType = unpack({...})
                local _SoundData = type(SoundData[tostring(SoundType)]) == "table" and SoundData[tostring(SoundType)].type or nil

                if getgenv()[Settings_Name].NoAimSound == true and _SoundData == "aim" then
                    consoleprint("Prevented aim and aimout gun sound!\n")
                    return nil
                end

                return GunPlaySound(...)
            end

            local function CustomReloadFunction(OldReloadFunction, ...)

                local Args = {...}
                local WeaponStats = Args[1]
                if getgenv()[Settings_Name].FastGunReload == true then
                    if type(WeaponStats) == "table" then
                        if type(WeaponStats.properties) == "table" then
                            if type(WeaponStats.properties.generalData) == "table" then
                                if type(WeaponStats.properties.generalData.name) == "string" then
                                    if type(WeaponStats.properties.animations) == "table" then
                                        if WeaponStats.properties.animations.grenade_safety_lever_name == nil then
                                            consoleprint("Not a grenade\n")

                                            if not WeaponStats.equipped then
                                                consoleprint("weapon not equipped!\n")
                                                return nil
                                            end

                                            if WeaponStats.equipped_data.reloading then
                                                consoleprint("weapon already reloading!\n")
                                                return nil
                                            end

                                            local ReloadData = WeaponStats.network_events.reload_weapon()
                                            local ReloadData_V1 = ReloadData.data[1]
                                            local ReloadData_V2 = ReloadData.data[2]
                                            
                                            WeaponStats.equipped_data.reloading = false;
                                            WeaponStats.equipped_data.round_chambered = true;
                                            WeaponStats.equipped_data.bolt_pulling = false;

                                            WeaponStats.setAmmo(WeaponStats.weapon_index, true, false, ReloadData_V1 and { ReloadData_V1, ReloadData_V2 });
                                            consoleprint("weapon reloaded!\n")
                                            return nil
                                        end
                                    end
                                end
                            end
                        end
                    end
                end

                return OldReloadFunction(unpack(Args))
            end

            local function GetNearPlayer()
                local OldDistance = math.huge
                local Target = nil
                local Attacker = nil
                local PartNames = getgenv()["ESP_CACHE"].GetCustomCharacterPartNames()

                for _, GamePlayer in ipairs(Players:GetPlayers()) do
                    if GamePlayer ~= Player then
                        local GameCharacter = getgenv()["ESP_CACHE"].GetCharacter(GamePlayer)
                        local LocalCharacter = getgenv()["ESP_CACHE"].GetCharacter(Player)
                        local GameTeam = getgenv()["ESP_CACHE"].GetTeam(GamePlayer)
                        local LocalTeam = getgenv()["ESP_CACHE"].GetTeam(Player)

                        if GameCharacter and LocalCharacter and tostring(GameTeam) ~= tostring(LocalTeam) then
                            local GameRoot = GameCharacter:FindFirstChild(type(PartNames) == "table" and PartNames.Root or "HumanoidRootPart")
                            local LocalRoot = LocalCharacter:FindFirstChild(type(PartNames) == "table" and PartNames.Root or "HumanoidRootPart")

                            if GameRoot and LocalRoot then
                                local Distance = math.abs((LocalRoot.Position - GameRoot.Position).Magnitude)
                                
                                if (Distance <= getgenv()[Settings_Name].SilentAimDistance) and (Distance < OldDistance) then
                                    OldDistance = Distance
                                    Target = GameRoot
                                    Attacker = LocalRoot
                                end
                            end
                        end
                    end
                end

                return Target, Attacker
            end

            if getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"] ~= nil then
                getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"]:Remove()
                getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"] = nil
            end

            for _, GC_OBJECT in pairs(getgc(true)) do

                if type(GC_OBJECT) == "table" then
                    local RenderFunction = rawget(GC_OBJECT, "render")
                    local MarkerAdd = rawget(GC_OBJECT, "character")
                    local GunBob = rawget(GC_OBJECT, "get_cycle_bobbing")
                    local CameraBob = rawget(GC_OBJECT, "get_bob")
                    local CharacterFootStep = rawget(GC_OBJECT, "footstep")
                    local GunPlaySound = rawget(GC_OBJECT, "play_sound")

                    if type(RenderFunction) == "function" and getgenv().OLD_GAME_FUNCTIONS["leaderboard_hook"] == nil then
                        if tostring(debug.getinfo(RenderFunction).source):lower():find("leaderboard") and islclosure(RenderFunction) then
                            local OldLeaderboardHook = RenderFunction
                            getgenv().OLD_GAME_FUNCTIONS["leaderboard_hook"] = OldLeaderboardHook
                            rawset(GC_OBJECT, "render", function(...)
                                local RenderData = unpack({...})
                                getgenv().DeadlineMatchData = type(RenderData) == "table" and type(RenderData.state) == "table" and type(RenderData.state.match_data) == "table" and RenderData.state.match_data or getgenv().DeadlineMatchData

                                consoleprint("Updating match data\n")

                                getgenv()["ESP_CACHE"].UpdateTeamData(getgenv().DeadlineMatchData)

                                return OldLeaderboardHook(...)
                            end)
                        end
                    end

                    if type(GunPlaySound) == "function" then
                        if tostring(debug.getinfo(GunPlaySound).source):lower():find("misc_util") and islclosure(GunPlaySound) then
                            getgenv().OLD_GAME_FUNCTIONS["play_sound_hook_gc"] = getgenv().OLD_GAME_FUNCTIONS["play_sound_hook_gc"] or GunPlaySound
                            
                            rawset(GC_OBJECT, "play_sound", function(...)
                                return Custom_play_sound(getgenv().OLD_GAME_FUNCTIONS["play_sound_hook_gc"], ...)
                            end)
                        end
                    end

                    if type(CharacterFootStep) == "function" then
                        local OldCharacterFootstep = GC_OBJECT.footstep
                        getgenv().OLD_GAME_FUNCTIONS["character_footstep_gc"] = getgenv().OLD_GAME_FUNCTIONS["character_footstep_gc"] or OldCharacterFootstep

                        rawset(GC_OBJECT, "footstep", function(...)
                            if getgenv()[Settings_Name].SlientFootSteps == true then
                                return nil
                            end
                            return getgenv().OLD_GAME_FUNCTIONS["character_footstep_gc"](...)
                        end)
                    end

                    if GunBob then
                        local OldGunBobHook = GC_OBJECT.get_cycle_bobbing
                        getgenv().OLD_GAME_FUNCTIONS["get_cycle_bobbing_gc"] = getgenv().OLD_GAME_FUNCTIONS["get_cycle_bobbing_gc"] or OldGunBobHook

                        rawset(GC_OBJECT, "get_cycle_bobbing", function(...)
                            return getgenv()[Settings_Name].NoGunBob == true and 0 or getgenv().OLD_GAME_FUNCTIONS["get_cycle_bobbing_gc"](...)
                        end)
                    end

                    if CameraBob then
                        local OldCameraBobHook = GC_OBJECT.get_bob
                        getgenv().OLD_GAME_FUNCTIONS["get_bob_gc"] = getgenv().OLD_GAME_FUNCTIONS["get_bob_gc"] or OldCameraBobHook

                        rawset(GC_OBJECT, "get_bob", function(...)
                            return getgenv()[Settings_Name].NoCamBob == true and 0 or getgenv().OLD_GAME_FUNCTIONS["get_bob_gc"](...)
                        end)
                    end

                    if MarkerAdd then
                        if type(GC_OBJECT) == "table" then
                            if GC_OBJECT.player ~= nil then

                                pcall(function()
                                    getgenv().DeadlineCharacters[GC_OBJECT.player] = {
                                        Char = GC_OBJECT.character
                                    }

                                    if getgenv().DeadlineCharacters[GC_OBJECT.player] ~= nil then

                                        consoleprint("Adding character to ESP List, Player: " .. tostring(GC_OBJECT.player) .. "\n")

                                        getgenv()["ESP_CACHE"].AddCharacter(GC_OBJECT.player, getgenv().DeadlineCharacters[GC_OBJECT.player])
                                    end
                                end)

                            end
                        end
                    end
                end

            end
            
            for _, Object in ipairs(ItemsFolder:GetDescendants()) do
                if Object:IsA("ModuleScript") then
                    if tostring(Object) == "properties" then
                        local properties_success, properties = pcall(require, Object)

                        if properties_success then
                            if type(properties) == "table" then
                                if type(properties.firing) == "table" then
                                    getgenv().DeadlineGunData[properties.generalData.name] = getgenv().DeadlineGunData[properties.generalData.name] or {
                                        rpm = properties.firing.rpm or 0
                                    }
                                end
                            end
                        end
                    end
                end
            end

            local CastModule = require(ReplicatedStorage:WaitForChild("module", 5):WaitForChild("caster", 5));

            local OldCastFire = CastModule.fire
            getgenv().OLD_GAME_FUNCTIONS["cast_fire_module"] = getgenv().OLD_GAME_FUNCTIONS["cast_fire_module"] or OldCastFire

            rawset(CastModule, "fire", function(...)
                local Args = {...}
                if tostring(getfenv(2).script):lower():find("rifle") then
                    if getgenv()[Settings_Name].SilentAim == true then
                        consoleprint("Silent aim function started!\n")
                        
                        local Target, Attacker = GetNearPlayer()
                        
                        
                        if Target ~= nil and Attacker ~= nil then
                            consoleprint("Silent aim target found!\n")
                            
                            Args[3] = CFrame.new(Attacker.Position, Target.Position).LookVector
                        end

                        consoleprint("Silent aim function ended!\n")
                    end
                end
                return getgenv().OLD_GAME_FUNCTIONS["cast_fire_module"](unpack(Args))
            end)

            local MiscModule = require(FrameworkFolder:WaitForChild("component", 5):WaitForChild("misc_util", 5));

            local OldAppendHook = MiscModule.append
            getgenv().OLD_GAME_FUNCTIONS["misc_append_module"] = getgenv().OLD_GAME_FUNCTIONS["misc_append_module"] or OldAppendHook

            rawset(MiscModule, "append", function(DataTable)
                local AppendedData = getgenv().OLD_GAME_FUNCTIONS["misc_append_module"](DataTable)

                if type(DataTable) == "table" then
                    local OldCycleBob = DataTable.get_cycle_bobbing
                    DataTable.get_cycle_bobbing = function(...)
                        return getgenv()[Settings_Name].NoGunBob == true and 0 or OldCycleBob(...)
                    end

                    local CharacterFootstep = DataTable.footstep

                    DataTable.footstep = function(...)
                        if getgenv()[Settings_Name].SlientFootSteps == true then
                            return nil
                        end
                        return CharacterFootstep(...)
                    end
                    
                    local GunPlaySound = DataTable.play_sound

                    DataTable.play_sound = function(...)
                        return Custom_play_sound(GunPlaySound, ...)
                    end

                    local OldGetBob = DataTable.get_bob
                    DataTable.get_bob = function(...)
                        return getgenv()[Settings_Name].NoCamBob == true and 0 or OldGetBob(...)
                    end
                end
                
                return AppendedData
            end)

            -- Fix below
            local FootPlantModule = require(game.ReplicatedStorage.framework.core.Footplant)
            local OldFootPrint = FootPlantModule.Footplant.new
            getgenv().OLD_GAME_FUNCTIONS["footplant_new_module"] = getgenv().OLD_GAME_FUNCTIONS["footplant_new_module"] or OldFootPrint

            FootPlantModule.Footplant.new = function(...)
                local _Character, _PlayerData = unpack({...})

                if _Character ~= nil then
                    if type(_PlayerData) == "table" then
                        if _PlayerData.player ~= nil then
                            if getgenv()["ESP_CACHE"] ~= nil then
                                if getgenv()["ESP_CACHE"].AddCharacter ~= nil then
                                    consoleprint("Adding character to ESP List, Player: " .. tostring(_PlayerData.player) .. "\n")

                                    getgenv().DeadlineCharacters[_PlayerData.player] = {
                                        Char = _Character
                                    }

                                    if getgenv().DeadlineCharacters[_PlayerData.player] ~= nil then
                                        getgenv()["ESP_CACHE"].AddCharacter(_PlayerData.player, getgenv().DeadlineCharacters[_PlayerData.player])
                                    end
                                end
                            end
                        end
                    end
                end

                return getgenv().OLD_GAME_FUNCTIONS["footplant_new_module"](...)
            end

            if MainControllerModule_Success then
                if type(MainControllerModule) == "table" then
                    local FrameworkRender = rawget(MainControllerModule.MainController, "render_stepped")

                    getgenv().OLD_GAME_FUNCTIONS["framework_render"] = getgenv().OLD_GAME_FUNCTIONS["framework_render"] or FrameworkRender

                    rawset(MainControllerModule.MainController, "render_stepped", function(...)
                        local Args = {...}
                        
                        if getgenv()[Settings_Name].BarrelTracers == true then
                            local PlayerData = Args[1]

                            if type(PlayerData) == "table" then
                                if type(PlayerData.equipped_data) == "table" then
                                    if PlayerData.receiver ~= nil then
                                        if PlayerData.receiver.barrel ~= nil then

                                            if getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"] ~= nil then
                                                local Line = getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"]
                                                local Target, Attacker = GetNearPlayer()
                                
                                                if Target ~= nil and Attacker ~= nil then
                                                    local LinePos, LineVisible = Camera:WorldToScreenPoint(Target.Position);
                                                    local BarrelPos, BarrelVisible = Camera:WorldToScreenPoint(PlayerData.receiver.barrel.WorldPosition)
                                                    
                                                    Line.To = Vector2.new(BarrelPos.X, BarrelPos.Y + 35)
                                                    Line.From = Vector2.new(LinePos.X, LinePos.Y + 35);
                                                    Line.Visible = LineVisible
                                                else
                                                    Line.Visible = false
                                                end
                                            end

                                        end
                                    end
                                end
                            end
                        end

                        return getgenv().OLD_GAME_FUNCTIONS["framework_render"](unpack(Args))
                    end)
                end
            end

            if FrameworkWeaponModule_Success then
                if type(FrameworkWeaponModule) == "table" then
                    if type(FrameworkWeaponModule.getRecoil) == "function" then
                        local OldReloadWeapon = rawget(FrameworkWeaponModule, "reload")
                        local OldFireWeapon = rawget(FrameworkWeaponModule, "fire")
                        local RecoilFunctionHook = rawget(FrameworkWeaponModule, "getRecoil")

                        getgenv().OLD_GAME_FUNCTIONS["weapon_reload"] = getgenv().OLD_GAME_FUNCTIONS["weapon_reload"] or OldReloadWeapon
                        getgenv().OLD_GAME_FUNCTIONS["weapon_fire"] = getgenv().OLD_GAME_FUNCTIONS["weapon_fire"] or OldFireWeapon
                        getgenv().OLD_GAME_FUNCTIONS["weapon_getrecoil"] = getgenv().OLD_GAME_FUNCTIONS["weapon_getrecoil"] or RecoilFunctionHook

                        rawset(FrameworkWeaponModule, "getRecoil", function(...)

                            if getgenv()[Settings_Name].AntiRecoil == true then
                                return Vector3.new(0, 0, 0)
                            end

                            return getgenv().OLD_GAME_FUNCTIONS["weapon_getrecoil"](...)
                        end)
                        
                        rawset(FrameworkWeaponModule, "reload", function(...)
                            consoleprint("Weapon reloading\n")

                            return CustomReloadFunction(getgenv().OLD_GAME_FUNCTIONS["weapon_reload"], ...)
                        end)
                        
                        rawset(FrameworkWeaponModule, "fire", function(...)
                            consoleprint("Weapon fired\n")
                            local Args = {...}
                            local WeaponStats = Args[1]

                            if type(WeaponStats) == "table" then
                                if type(WeaponStats.properties) == "table" then
                                    if type(WeaponStats.properties.firing) == "table" then
                                        if type(WeaponStats.properties.generalData) == "table" then
                                            if type(WeaponStats.properties.generalData.name) == "string" then
                                                if type(WeaponStats.properties.firing.rpm) == "number" then
                                                    consoleprint("Modded weapon fire rate, old fire rate: " .. tostring(getgenv().DeadlineGunData[WeaponStats.properties.generalData.name].rpm) .. "\n")

                                                    if type(WeaponStats.network_events) == "table" then
                                                        if type(WeaponStats.network_events.fire) == "function" then
                                                            getgenv().DeadlineGunFireData["gun_fire_network"] = getgenv().DeadlineGunFireData["gun_fire_network"] or WeaponStats.network_events.fire

                                                            rawset(WeaponStats.network_events, "fire", function(...)
                                                                local Args = {...}
                                                                
                                                                if getgenv()[Settings_Name].SilentAim == true then
                                                                    local Target, Attacker = GetNearPlayer()
                            
                                                                    if Target ~= nil and Attacker ~= nil then                                                                    
                                                                        Args[2] = CFrame.new(Attacker.Position, Target.Position).LookVector
                                                                    end
                                                                end

                                                                return getgenv().DeadlineGunFireData["gun_fire_network"](unpack(Args))
                                                            end)
                                                        end
                                                    end

                                                    if type(WeaponStats.equipped_data) == "table" then
                                                        if type(WeaponStats.equipped_data.gunshot_emitter) == "table" then
                                                            if type(WeaponStats.equipped_data.gunshot_emitter.start_kind) == "function" then
                                                                getgenv().DeadlineEmitData[WeaponStats.properties.generalData.name] = getgenv().DeadlineEmitData[WeaponStats.properties.generalData.name] or WeaponStats.equipped_data.gunshot_emitter.start_kind

                                                                rawset(WeaponStats.equipped_data.gunshot_emitter, "start_kind", function(...)
                                                                    local _self, SoundType = unpack({...})
                                                                    local _SoundData = type(SoundData[tostring(SoundType)]) == "table" and SoundData[tostring(SoundType)].type or nil

                                                                    if getgenv()[Settings_Name].NoGunFireSound == true and _SoundData == "shoot" then
                                                                        consoleprint("Prevented gun fire sound!\n")
                                                                        return nil
                                                                    end

                                                                    return getgenv().DeadlineEmitData[WeaponStats.properties.generalData.name](...)
                                                                end)
                                                            end
                                                        end
                                                    end

                                                    local WeaponFireRate = getgenv()[Settings_Name].GunFireRateEnabled == true and getgenv()[Settings_Name].GunFireRate or getgenv().DeadlineGunData[WeaponStats.properties.generalData.name].rpm

                                                    WeaponStats.properties.firing.rpm = WeaponFireRate

                                                    Args[1] = WeaponStats
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            return getgenv().OLD_GAME_FUNCTIONS["weapon_fire"](unpack(Args))
                        end)

                        GunModsFeatures:addToggle("Fast reload", getgenv()[Settings_Name].FastGunReload, function(Bool)
                            getgenv()[Settings_Name].FastGunReload = Bool
                        end)

                        GunModsFeatures:addToggle("Silent Aim (shoots near by enemys)", getgenv()[Settings_Name].SilentAim, function(Bool)
                            getgenv()[Settings_Name].SilentAim = Bool
                        end)

                        GunModsFeatures:addSlider("Silent Aim Distance", getgenv()[Settings_Name].SilentAimDistance, 0, 10000, function(NewValue)
                            getgenv()[Settings_Name].SilentAimDistance = NewValue
                        end)

                        GunModsFeatures:addToggle("No Recoil", getgenv()[Settings_Name].AntiRecoil, function(Bool)
                            getgenv()[Settings_Name].AntiRecoil = Bool
                        end)

                        GunModsFeatures:addToggle("Anti-Gun-Fire-Sound (prevents gun fire noise!)", getgenv()[Settings_Name].NoGunFireSound, function(Bool)
                            getgenv()[Settings_Name].NoGunFireSound = Bool
                        end)

                        GunModsFeatures:addToggle("Anti-Aim-Sound (prevents aim noise!)", getgenv()[Settings_Name].NoAimSound, function(Bool)
                            getgenv()[Settings_Name].NoAimSound = Bool
                        end)

                        GunModsFeatures:addToggle("Custom fire-rate (turn on for mod to work!)", getgenv()[Settings_Name].GunFireRateEnabled, function(Bool)
                            getgenv()[Settings_Name].GunFireRateEnabled = Bool
                        end)

                        GunModsFeatures:addSlider("Custom fire-rate", getgenv()[Settings_Name].GunFireRate, 1000, 10000, function(NewValue)
                            getgenv()[Settings_Name].GunFireRate = NewValue
                        end)

                    end
                end
            end

            PlayerSection:addToggle("Slient Foot steps", getgenv()[Settings_Name].SlientFootSteps, function(Bool)
                getgenv()[Settings_Name].SlientFootSteps = Bool
            end)

            PlayerSection:addToggle("No gun bob", getgenv()[Settings_Name].NoGunBob, function(Bool)
                getgenv()[Settings_Name].NoGunBob = Bool
            end)

            PlayerSection:addToggle("No camera bob", getgenv()[Settings_Name].NoCamBob, function(Bool)
                getgenv()[Settings_Name].NoCamBob = Bool
            end)

            if getgenv().fps_counter_text ~= nil then
                getgenv().fps_counter_text:Remove()
                getgenv().fps_counter_text = nil
            end

            if getgenv()["UpdateCache"].fps_counter_updater ~= nil then
                getgenv()["UpdateCache"].fps_counter_updater = nil
            end

            VisualsSelection:addToggle("FPS Counter", getgenv()[Settings_Name].FPS_COUNTER, function(Bool)
                getgenv()[Settings_Name].FPS_COUNTER = Bool

                if Bool == true then
                    if getgenv().fps_counter_text ~= nil then
                        getgenv().fps_counter_text:Remove()
                        getgenv().fps_counter_text = nil
                    end
                    
                    if Camera and getgenv().fps_counter_text == nil then
                        getgenv().fps_counter_text = Drawing.new("Text")
                        getgenv().fps_counter_text.Size = 35
                        getgenv().fps_counter_text.Color = Color3.fromRGB(255, 255, 255)
                        getgenv().fps_counter_text.Center = false
                        getgenv().fps_counter_text.Outline = true
                        getgenv().fps_counter_text.OutlineColor = Color3.fromRGB(0, 0, 0)
                        getgenv().fps_counter_text.Position = Vector2.new((Camera.ViewportSize.X / 250), (Camera.ViewportSize.Y / 1.025) + (-getgenv().fps_counter_text.TextBounds.Y / 2))
                        getgenv().fps_counter_text.Text = "LOADING..."
                        getgenv().fps_counter_text.Visible = true
                    end

                    getgenv()["UpdateCache"].fps_counter_updater = function(_Delta)
                        if type(_Delta) == "number" then                    
                            if getgenv().fps_counter_text ~= nil then
                                local TextLabel = getgenv().fps_counter_text
                                local FPS = math.floor((1 / _Delta + 0.5))
                                
                                TextLabel.Position = Vector2.new((Camera.ViewportSize.X / 250), (Camera.ViewportSize.Y / 1.025) + (-TextLabel.TextBounds.Y / 2))
                                TextLabel.Text = tostring(FPS)  
                            end
                        end
                    end
                else
                    if getgenv().fps_counter_text ~= nil then
                        getgenv().fps_counter_text:Remove()
                        getgenv().fps_counter_text = nil
                    end

                    if getgenv()["UpdateCache"].fps_counter_updater ~= nil then
                        getgenv()["UpdateCache"].fps_counter_updater = nil
                    end
                end

            end)

            VisualsSelection:addToggle("Barrel Tracer (Draws a line to the nearest target)", getgenv()[Settings_Name].BarrelTracers, function(Bool)
                getgenv()[Settings_Name].BarrelTracers = Bool

                if Bool then
                    if getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"] == nil then
                        getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"] = Drawing.new("Line")
                        getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"].Visible = false
                        getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"].Thickness = 2;
                    end
                else
                    if getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"] ~= nil then
                        getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"]:Remove()
                        getgenv()["CHARACTER_DRAWN_OBJECTS"]["_ESP_BARREL_TRACERS"] = nil
                    end
                end
            end)

            VisualsSelection:addToggle("ESP Teamcheck", getgenv()[Settings_Name].Teamcheck, function(Bool)
                getgenv()[Settings_Name].Teamcheck = Bool
                getgenv()["ESP_CACHE"].SetTeamCheck(Bool)
            end)
        
            VisualsSelection:addToggle("ESP Boxes", getgenv()[Settings_Name].Boxes, function(Bool)
                getgenv()[Settings_Name].Boxes = Bool
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
        
            VisualsSelection:addToggle("ESP Tracers", getgenv()[Settings_Name].Tracers, function(Bool)
                getgenv()[Settings_Name].Tracers = Bool
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
        
            local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color
        
            getgenv()["ESP_CACHE"].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))
        
            VisualsSelection:addColorPicker("ESP Color", Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
                local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)
        
                getgenv()[Settings_Name].Color.R = R
                getgenv()[Settings_Name].Color.G = G
                getgenv()[Settings_Name].Color.B = B
        
                getgenv()["ESP_CACHE"].UpdateColor(Color3.fromRGB(R, G, B))
            end)
        
            VisualsSelection:addButton("Unload ESP", function(Bool)
                getgenv()["ESP_CACHE"].UnLoad()
            end)

            if not getgenv()["UpdateLoop"] then
                getgenv()["UpdateLoop"] = true
                
                RunService.RenderStepped:Connect(function(_Delta)
                    for _, Function in pairs(getgenv()["UpdateCache"]) do
                        if type(Function) == "function" then
                            pcall(Function, _Delta)
                        end
                    end
                end)
            end

            Window:SelectPage(Window.pages[1], true)
            print("Deadline loaded!")
        end
    end
end, function(err) return warn(err) end)