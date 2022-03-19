xpcall(function()
    do
        if tostring(game.PlaceId) == "3837841034" then
            getgenv()["USE_GRUBHUB_UNIVERSAL"] = false
            
            --------------------------------------------------------------------------------------------
    
            getgenv().UpdateLoop = type(getgenv().UpdateLoop) == "boolean" and getgenv().UpdateLoop or false;
            getgenv().UpdateCache = type(getgenv().UpdateCache) == "table" and getgenv().UpdateCache or {};
            getgenv().GameConnections = type(getgenv().GameConnections) == "table" and getgenv().GameConnections or {};
    
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
                Teamcheck = GameConfigFile.Teamcheck or false,
                Boxes = GameConfigFile.Boxes or false,
                NoGunBob = GameConfigFile.NoGunBob or false,
                NoCamBob = GameConfigFile.NoCamBob or false,
                Tracers = GameConfigFile.Tracers or false,
                Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
            }

            local GunModuleCache = {}
            local DeadlineGunData = {}
            local DeadlineCharacters = {}
            local DeadlineMatchData = {}
            local RunService = game:GetService("RunService")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
    
            local DataFolder = ReplicatedStorage:WaitForChild("data", 5)
            local ItemsFolder = DataFolder:WaitForChild("items", 5)
            local FrameworkFolder = ReplicatedStorage:WaitForChild("framework", 5)
            local FrameworkControllerFolder = FrameworkFolder:WaitForChild("controller", 5)
            local FrameworkWeaponModule_Success, FrameworkWeaponModule = pcall(require, FrameworkControllerFolder:WaitForChild("rifle", 5))

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
            
            for _, GC_OBJECT in pairs(getgc(true)) do

                if type(GC_OBJECT) == "function" then
                    if islclosure(GC_OBJECT) then
                        if debug.getinfo(GC_OBJECT).name == "render" then
                            if tostring(debug.getinfo(GC_OBJECT).source):find("Leaderboard") then
                                local LeaderBoardHook = nil
                                LeaderBoardHook = hookfunction(GC_OBJECT, function(RenderData)
                                    DeadlineMatchData = type(RenderData) == "table" and type(RenderData.state) == "table" and type(RenderData.state.match_data) == "table" and RenderData.state.match_data or DeadlineMatchData
                                    
                                    getgenv()["ESP_CACHE"].UpdateTeamData(DeadlineMatchData)
                                    return LeaderBoardHook(RenderData)
                                end)
                            end
                        end
                    end
                end

                if type(GC_OBJECT) == "table" then
                    local MarkerAdd = rawget(GC_OBJECT, "character")
                    local GunBob = rawget(GC_OBJECT, "get_cycle_bobbing")
                    local CameraBob = rawget(GC_OBJECT, "get_bob")

                    if GunBob then
                        local OldGunBobHook = GC_OBJECT.get_cycle_bobbing

                        rawset(GC_OBJECT, "get_cycle_bobbing", function(...)
                            return getgenv()[Settings_Name].NoGunBob == true and 0 or OldGunBobHook(...)
                        end)
                    end

                    if CameraBob then
                        local OldCameraBobHook = GC_OBJECT.get_bob

                        rawset(GC_OBJECT, "get_bob", function(...)
                            return getgenv()[Settings_Name].NoCamBob == true and 0 or OldCameraBobHook(...)
                        end)
                    end

                    if MarkerAdd then
                        if type(GC_OBJECT) == "table" then
                            if GC_OBJECT.player ~= nil then

                                pcall(function()
                                    DeadlineCharacters[GC_OBJECT.player] = {
                                        Char = GC_OBJECT.character
                                    }
                                    getgenv()["ESP_CACHE"].AddCharacter(GC_OBJECT.player, DeadlineCharacters[GC_OBJECT.player])
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
                                    DeadlineGunData[properties.generalData.name] = {
                                        rpm = properties.firing.rpm or 0
                                    }
                                end
                            end
                        end
                    end
                end
            end

            --[===[
            function SetWeaponValue(Data, NewValue)
                function RecursiveUpdate(Table)
                    if type(Table) == "table" then
                        for Index, Value in pairs(Table) do
                            if tostring(Index) == tostring(Data) then
                                rawset(Table, Data, NewValue)
                            else
                                if type(Value) == "table" then
                                    RecursiveUpdate(Value)
                                end
                            end
                        end
                    end
                end

                for Index, Key in pairs(GunModuleCache) do
                    RecursiveUpdate(Key)
                end
            end
            ]===]

            local MiscModule = require(game.ReplicatedStorage.framework.component.misc_util);

            local OldAppendHook = MiscModule.append
            MiscModule.append = function(DataTable)
                local AppendedData = OldAppendHook(DataTable)

                if type(DataTable) == "table" then
                    local OldCycleBob = DataTable.get_cycle_bobbing
                    DataTable.get_cycle_bobbing = function(...)
                        return getgenv()[Settings_Name].NoGunBob == true and 0 or OldCycleBob(...)
                    end

                    local OldGetBob = DataTable.get_bob
                    DataTable.get_bob = function(...)
                        return getgenv()[Settings_Name].NoCamBob == true and 0 or OldGetBob(...)
                    end
                end
                
                return AppendedData
            end

            local OldFootPrint = nil

            OldFootPrint = hookfunction(require(game.ReplicatedStorage.framework.core.Footplant).Footplant.new, function(Character, PlayerTable)

                pcall(function()
                    if PlayerTable ~= nil then
                        if PlayerTable.player ~= nil then
                            DeadlineCharacters[PlayerTable.player] = {
                                Char = Character
                            }
                            getgenv()["ESP_CACHE"].AddCharacter(PlayerTable.player, DeadlineCharacters[PlayerTable.player])
                        end
                    end
                end)

                return OldFootPrint(Character, PlayerTable)
            end)

            if FrameworkWeaponModule_Success then
                if type(FrameworkWeaponModule) == "table" then
                    if type(FrameworkWeaponModule.getRecoil) == "function" then
                        local RecoilFunctionHook = nil

                        RecoilFunctionHook = hookfunction(FrameworkWeaponModule.getRecoil, function(...)

                            if getgenv()[Settings_Name].AntiRecoil == true then
                                return Vector3.new(0, 0, 0)
                            end

                            return RecoilFunctionHook(...)
                        end)

                        GunModsFeatures:addToggle("No Recoil", getgenv()[Settings_Name].AntiRecoil, function(Bool)
                            getgenv()[Settings_Name].AntiRecoil = Bool
                        end)
                    end
                end
            end

            PlayerSection:addToggle("No gun bob", getgenv()[Settings_Name].NoGunBob, function(Bool)
                getgenv()[Settings_Name].NoGunBob = Bool
            end)

            PlayerSection:addToggle("No camera bob", getgenv()[Settings_Name].NoCamBob, function(Bool)
                getgenv()[Settings_Name].NoCamBob = Bool
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
                RunService.Heartbeat:Connect(function()
                    for _, Function in pairs(getgenv()["UpdateCache"]) do
                        if type(Function) == "function" then
                            pcall(Function)
                        end
                    end
                end)
            end
    
            Window:SelectPage(Window.pages[1], true)
            print("Deadline loaded!")
        end
    end
end, function(err) return warn(err) end)


--[===[
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local DumpScript = ""

getgenv().ScriptsToDump = {
    {
        Script = Player.PlayerGui.lobby.source.Lobby,
        RemoteNames = {
            "Deployment_Client"
        }
    },
    {
        Script = Player.PlayerGui.leaderboard._votekick,
        RemoteNames = {
            "LeaderBoardClient",
            "VoteKick_Ended",
            "VoteKick_Input"
        }
    }
}
getgenv().ScriptsDumpedCache = getgenv().ScriptsDumpedCache or {}

local Whitelisted = {
    'GetNamespace',
    '-'
}

for ScriptIndex, ScriptTable in ipairs(getgenv().ScriptsToDump) do
    local Decomp = getgenv().ScriptsDumpedCache[ScriptTable.Script] or decompile(ScriptTable.Script)
    getgenv().ScriptsDumpedCache[ScriptTable.Script] = getgenv().ScriptsDumpedCache[ScriptTable.Script] or tostring(Decomp)
    local RemoteNameIndex = 1
    for I, V in ipairs(tostring(Decomp):split("\n")) do
        if V:find('"') then
            for _, WhitelistedString in ipairs(Whitelisted) do
                if tostring(V):find(tostring(WhitelistedString)) then
                    if ScriptTable.RemoteNames[RemoteNameIndex] ~= nil then
                        local VarName = V:split(" ")[2]
                        local FixedVersion = ""
                        local FixedName = false
                        if VarName ~= nil then
                            local Start, End = V:find(VarName)
                            if Start and End then
                                local BlacklistedPositions = {}
                                
                                for MiddlePos = Start + 1, End - 1 do
                                    BlacklistedPositions[MiddlePos] = true
                                end
    
                                for StringIndex = 1, #V do
                                    if StringIndex ~= Start and StringIndex ~= End and BlacklistedPositions[StringIndex] == nil then
                                        FixedVersion = FixedVersion .. V:sub(StringIndex, StringIndex)
                                    else
                                        if not FixedName then
                                            FixedName = true
                                            FixedVersion = FixedVersion .. ScriptTable.RemoteNames[RemoteNameIndex]
                                        end
                                    end
                                end
                                
                                DumpScript = DumpScript .. FixedVersion .. "\n"
                                
                                RemoteNameIndex = RemoteNameIndex + 1
                            end
                        end
                    end
                end
            end
        end
    end
end

print("------")
print("\n".. DumpScript)

writefile("deadline_dump.lua", tostring(DumpScript))
]===]


--[===[

local l__ReplicatedStorage__3 = game:GetService("ReplicatedStorage");
local l__RunService__4 = game:GetService("RunService");

local TS = {
    import = function(src, service, ...)
        local Args = {...}
        local Found = service
        
        for Index = 1, #Args do
            if Found then
                local FoundObjecto = Found:FindFirstChild(Args[Index])
                
                if FoundObjecto then
                    Found = FoundObjecto
                end
            end
        end
        
        if Found then
            if typeof(Found) == "Instance" then
                if Found:IsA("ModuleScript") then
                    local Success, Contents = pcall(require, Found)
                    return Contents
                end
            end
        end
        
        return nil
    end
}

local RemoteService = TS.import(script, game:GetService("ReplicatedStorage"), "module", "remotes").default;
TS.import(script, game:GetService("ReplicatedStorage"), "loader").wait_for_game_loaded();
local Client = RemoteService.Client:GetNamespace("e1ed00dd-b2d3-40f7-8458-baa1b9c7fa7c"):Get("57d45a37-770a-4675-b41b-d0be17cfd85c");

print(v19.instance)


-- Decompiled with the Synapse X Luau decompiler.

local v1 = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"));
local v2 = v1.import(script, v1.getModule(script, "@rbxts", "services"));
local l__ReplicatedStorage__3 = v2.ReplicatedStorage;
local l__RunService__4 = v2.RunService;
local l__Gui_Core__5 = v1.import(script, game:GetService("ReplicatedStorage"), "gui", "lobby", "source", "Gui_Core").Gui_Core;
local l__Gui_Deploy__6 = v1.import(script, game:GetService("ReplicatedStorage"), "gui", "lobby", "source", "component", "Deploy").Gui_Deploy;
local l__Gui_Loadout__7 = v1.import(script, game:GetService("ReplicatedStorage"), "gui", "lobby", "source", "component", "Loadout").Gui_Loadout;
local l__Gui_Settings__8 = v1.import(script, game:GetService("ReplicatedStorage"), "gui", "lobby", "source", "component", "Settings").Gui_Settings;
local l__Gui_Menu__9 = v1.import(script, game:GetService("ReplicatedStorage"), "gui", "lobby", "source", "component", "Menu").Gui_Menu;
local l__Gui_Donations__10 = v1.import(script, game:GetService("ReplicatedStorage"), "gui", "lobby", "source", "component", "Donate").Gui_Donations;
local l__Gui_Shop__11 = v1.import(script, game:GetService("ReplicatedStorage"), "gui", "lobby", "source", "component", "Shop").Gui_Shop;
local l__uiState__12 = v1.import(script, game:GetService("ReplicatedStorage"), "gui", "lobby", "source", "Gui_Types").uiState;
local l__Gui_Builder__13 = v1.import(script, game:GetService("ReplicatedStorage"), "gui", "lobby", "source", "component", "Builder").Gui_Builder;
local l__default__14 = v1.import(script, game:GetService("ReplicatedStorage"), "module", "remotes").default;
local l__Gui_Spectate__15 = v1.import(script, game:GetService("ReplicatedStorage"), "gui", "lobby", "source", "component", "Spectate").Gui_Spectate;
local l__shared_state__16 = v1.import(script, game:GetService("ReplicatedStorage"), "module", "shared_state").shared_state;
local v17 = v1.import(script, game:GetService("ReplicatedStorage"), "module", "ost_manager");
local l__ost_manager_set_ost__18 = v17.ost_manager_set_ost;
v1.import(script, game:GetService("ReplicatedStorage"), "loader").wait_for_game_loaded();
local v19 = l__default__14.Client:GetNamespace("e1ed00dd-b2d3-40f7-8458-baa1b9c7fa7c"):Get("57d45a37-770a-4675-b41b-d0be17cfd85c");
local v20 = script.Parent;
if v20 ~= nil then
	v20 = v20.Parent;
end;
local v21 = l__Gui_Core__5.new(v20);
v2.Workspace.Camera.FieldOfView = 40;
v20.mask.Visible = true;
v20.mask.BackgroundTransparency = 0;
v21:init({ l__Gui_Menu__9.new(v21), l__Gui_Deploy__6.new(v21), l__Gui_Settings__8.new(v21), l__Gui_Loadout__7.new(v21), l__Gui_Donations__10.new(v21), l__Gui_Builder__13.new(v21), l__Gui_Shop__11.new(v21), l__Gui_Spectate__15.new(v21) });
if l__shared_state__16.channel == "release" then
	v21:state_change(l__uiState__12.Menu);
else
	v21:state_change(l__uiState__12.Deploy);
end;
l__RunService__4.RenderStepped:Connect(function(p1)
	if not v20.Enabled then
		return nil;
	end;
	v21:update(p1);
end);
l__RunService__4.Heartbeat:Connect(function(p2)
	if not v20.Enabled then
		return nil;
	end;
	v21:heartbeat(p2);
end);
local l__ost_manager_play_ost__1 = v17.ost_manager_play_ost;
v19:Connect(function()
	v21.ui.Enabled = false;
	l__ost_manager_play_ost__1("round_start", false);
	v21:state_change(l__uiState__12.Deploy);
end);
if not l__ReplicatedStorage__3.data.settings.other.disable_menu_music.Value then
	l__ost_manager_play_ost__1("menu", true);
end;
if l__ReplicatedStorage__3.data.settings.other.head_for_the_source.Value then
	l__ost_manager_set_ost__18(1);
	return;
end;
l__ost_manager_set_ost__18(0);


]===]