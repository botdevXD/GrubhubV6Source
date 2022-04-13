-----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

--[===[
    local Plr = game.Players.LocalPlayer
getgenv()["CHARACTER_DRAWN_OBJECTS"] = getgenv()["CHARACTER_DRAWN_OBJECTS"] or {}
if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] == nil then
	local Camera = workspace.Camera
	getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] = Drawing.new("Line")
	getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"].Visible = false
	getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"].Thickness = 2;


	game:GetService("RunService").RenderStepped:Connect(function()
		local LinePos, LineVisible = Camera:WorldToScreenPoint(workspace.fff.Position);
		local BarrelPos, BarrelVisible = Camera:WorldToScreenPoint(game.Players.LocalPlayer.Character["M4-(30)"].barrelpos1.Position)
		
		local Line = getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"]
		Line.To = Vector2.new(BarrelPos.X, BarrelPos.Y + 35)
		Line.From = Vector2.new(LinePos.X, LinePos.Y + 35);
		Line.Visible = true
	end)
end
]===]


local ErrorHandlerTing = function(err)
    return warn(err)
end

getgenv().ESP_TESTING = false
do
    local Camera = workspace:WaitForChild("Camera", 5)
    local Players = game["GetService"](game, "Players")
    local GUIService = game["GetService"](game, "GuiService")
    local LPlayer = Players["LocalPlayer"]
    local Mouse = LPlayer:GetMouse()
    
    getgenv()["UpdateLoop"] = type(getgenv()["UpdateLoop"]) == "boolean" and getgenv()["UpdateLoop"] or false;
    getgenv()["UpdateCache"] = type(getgenv()["UpdateCache"]) == "table" and getgenv()["UpdateCache"] or {};
    getgenv()["ESP_CACHE"] = type(getgenv()["ESP_CACHE"]) == "table" and getgenv()["ESP_CACHE"] or {};
    getgenv()["DRAWED_OBJECTS"] = type(getgenv()["DRAWED_OBJECTS"]) == "table" and getgenv()["DRAWED_OBJECTS"] or {};
    getgenv()["CHARACTER_DRAWN_OBJECTS"] = type(getgenv()["CHARACTER_DRAWN_OBJECTS"]) == "table" and getgenv()["CHARACTER_DRAWN_OBJECTS"] or {};

    local PartNames = {
        [292439477] = {Root = "Torso", Torso = "Torso", Head = "Head"},
        [3233893879] = {Root = "Chest", Torso = "Chest", Head = "Head"},
        [3837841034] = {Root = "torso", Torso = "torso", Head = "head"}
    }
    
    local CustomCharacterCache = {}
    local CustomTeamCache = {}

    if PartNames[game.PlaceId] ~= nil then
        getgenv()["CUSTOM_FUNCTIONS_GC"] = type(getgenv()["CUSTOM_FUNCTIONS_GC"]) == "table" and getgenv()["CUSTOM_FUNCTIONS_GC"] or {}

        for _, V in pairs(getgc(true)) do
            local GBPCheck = type(V) == "table" and rawget(V, "getbodyparts") and V or nil
            local GetCharCheck = type(V) == "table" and rawget(V, "GetCharacter") and V or nil
            local BadBussinessTeamCheck = type(V) == "table" and rawget(V, "GetPlayerTeam") and V or nil

            if GBPCheck then
                getgenv()["CUSTOM_FUNCTIONS_GC"]["getbodyparts"] = getgenv()["CUSTOM_FUNCTIONS_GC"]["getbodyparts"] or GBPCheck.getbodyparts
            end

            if GetCharCheck then
                getgenv()["CUSTOM_FUNCTIONS_GC"]["GetCharacter"] = getgenv()["CUSTOM_FUNCTIONS_GC"]["GetCharacter"] or GetCharCheck
            end

            if BadBussinessTeamCheck then
                getgenv()["CUSTOM_FUNCTIONS_GC"]["GetPlayerTeam"] = getgenv()["CUSTOM_FUNCTIONS_GC"]["GetPlayerTeam"] or BadBussinessTeamCheck
            end
        end
    end

    local function GetPlrTeam(Plr)
        if typeof(Plr) == "Instance" then
            if game.PlaceId == 3233893879 then
                -- Phantom forces
                if getgenv()["CUSTOM_FUNCTIONS_GC"]["GetPlayerTeam"] ~= nil then
                    return getgenv()["CUSTOM_FUNCTIONS_GC"]["GetPlayerTeam"]:GetPlayerTeam(Plr)
                else
                    return Plr.Team
                end
            elseif game.PlaceId == 3837841034 then
                -- Deadline
                if CustomTeamCache ~= nil then
                    if type(CustomTeamCache) == "table" then
                        if CustomTeamCache[Plr.Name] ~= nil then
                            if type(CustomTeamCache[Plr.Name]) == "table" then
                                return CustomTeamCache[Plr.Name].team
                            end
                        end
                    end
                end
                return nil
            else
                return Plr.Team
            end
        end
    end

    local function GetChar_Ez(Plr)
        if CustomCharacterCache[Plr] ~= nil then
            return CustomCharacterCache[Plr].Char
        end

        if typeof(Plr) == "Instance" then
            if not PartNames[game.PlaceId] then
                if Plr:IsA("Model") then
                    return Plr
                else
                    return Plr.Character
                end
            elseif game.PlaceId == 3233893879 then
                -- Bad business moment

                if type(getgenv()["CUSTOM_FUNCTIONS_GC"]["GetCharacter"]) == "table" then
                    local PlrParts = getgenv()["CUSTOM_FUNCTIONS_GC"]["GetCharacter"]:GetCharacter(Plr)
                    if PlrParts ~= nil then
                        return PlrParts.Body
                    end
                end
            elseif game.PlaceId == 3837841034 then
                -- Deadline moment
                return nil
            elseif game.PlaceId == 292439477 then
                -- Phantom Forces moment

                if type(getgenv()["CUSTOM_FUNCTIONS_GC"]["getbodyparts"]) == "function" then
                    local PlrParts = getgenv()["CUSTOM_FUNCTIONS_GC"]["getbodyparts"](Plr)
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

    getgenv()["ESP_CACHE"].SETTINGS = {
        BOXES_ENABLED = false,
        TRACERS_ENABLED = false,
        TEAM_CHECK = false,
        AIMBOT_ENABLED = false,
        NAME_TAG = false,
        HealthCheck = false,
        AIMBOT_TEAM_CHECK_ENABLED = false,
        AimDistance = 150,
        ESP_COLOR = Color3.fromRGB(255, 255, 255)
    }

    getgenv()["ESP_CACHE"].Connect = function()
        getgenv()["ESP_CACHE"].UnLoad = function()
            table.clear(CustomCharacterCache)
            for CacheName, CachedItem in pairs(getgenv()["CHARACTER_DRAWN_OBJECTS"]) do
                pcall(function()
                    CachedItem:Remove()
                    getgenv()["CHARACTER_DRAWN_OBJECTS"][CacheName] = nil
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()["UpdateCache"]) do
                if tostring(CacheName):find("_ESP_") then
                    getgenv()["UpdateCache"][CacheName] = nil
                end
            end
        end

        getgenv()["ESP_CACHE"].UpdateTeamData = function(Data)
            CustomTeamCache = Data
        end

        getgenv()["ESP_CACHE"].AddCharacter = function(Player, Data)
            CustomCharacterCache[Player] = Data
        end

        getgenv()["ESP_CACHE"].GetCharacter = function(Player) return GetChar_Ez(Player) end
        getgenv()["ESP_CACHE"].GetTeam = function(Player) return GetPlrTeam(Player) end
        getgenv()["ESP_CACHE"].GetCustomCharacterPartNames = function() return PartNames[game.PlaceId] end
        
        getgenv()["ESP_CACHE"].UnLoadType = function(TypeString, FullString)
            FullString = FullString or false

            for CacheName, CachedItem in pairs(getgenv()["CHARACTER_DRAWN_OBJECTS"]) do
                pcall(function()
                    if type(FullString) == "string" then
                        if tostring(CacheName):find(tostring(TypeString)) then
                            CachedItem:Remove()
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][CacheName] = nil
                        end
                    else
                        if tostring(CacheName) == tostring(FullString) then
                            CachedItem:Remove()
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][CacheName] = nil
                        end
                    end
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()["UpdateCache"]) do
                pcall(function()
                    if type(FullString) == "string" then
                        if tostring(CacheName):find(tostring(TypeString)) then
                            getgenv()["UpdateCache"][CacheName] = nil
                        end
                    else
                        if tostring(CacheName) == tostring(FullString) then
                            getgenv()["UpdateCache"][CacheName] = nil
                        end
                    end
                end)
            end
        end
        
        getgenv()["ESP_CACHE"].UnLoad()

        getgenv()["ESP_CACHE"].DrawLine = function()
        end
        
        getgenv()["ESP_CACHE"].HasESPBox = function(Object)
            return getgenv()["CHARACTER_DRAWN_OBJECTS"][tostring(Object) .. "_ESP_BOXES"]
        end

        getgenv()["ESP_CACHE"].HasESPTracers = function(Object)
            return getgenv()["UpdateCache"][tostring(Object) .. "_ESP_TRACERS"]
        end

        getgenv()["ESP_CACHE"].UpdateColor = function(Color)
            getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR = typeof(Color) == "Color3" and Color or Color3.fromRGB(255, 255, 255)
        end

        getgenv()["ESP_CACHE"].SetNameTag = function(Bool)
            getgenv()["ESP_CACHE"].SETTINGS.NAME_TAG = type(Bool) == "boolean" and Bool or false
        end

        getgenv()["ESP_CACHE"].SetTeamCheck = function(Bool)
            getgenv()["ESP_CACHE"].SETTINGS.TEAM_CHECK = type(Bool) == "boolean" and Bool or false
        end
        
        getgenv()["ESP_CACHE"].SetBoxVisibility = function(Bool)
            getgenv()["ESP_CACHE"].SETTINGS.BOXES_ENABLED = type(Bool) == "boolean" and Bool or false
        end

        getgenv()["ESP_CACHE"].SetTracersVisibility = function(Bool)
            getgenv()["ESP_CACHE"].SETTINGS.TRACERS_ENABLED = type(Bool) == "boolean" and Bool or false
        end

        getgenv()["ESP_CACHE"].LoadTracers = function(Plr)
            if getgenv()["UpdateCache"][Plr.Name .. "_ESP_TRACERS"] == nil then
                local function Create()
                    if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] == nil then
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] = Drawing.new("Line")
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"].Visible = false
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"].Thickness = 2;
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                    end
                end

                local function Remove(bool)
                    if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] then
                        if bool == true then
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"]:Remove()
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] = nil
                            return nil
                        end
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"].Visible = false
                    end
                end

                Create()

                getgenv()["UpdateCache"][Plr.Name .. "_ESP_TRACERS"] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar ~= nil then
                            if PlrChar.Parent == nil then
                                PlrChar = nil
                            end
                        end

                        if PlrChar then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == "table" and PartNames[game.PlaceId].Root or "HumanoidRootPart")
                            local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == "table" and PartNames[game.PlaceId].Head or "Head")
                            
                            if RootCheck and Plrhead then

                                local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                                local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                                
                                if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()["ESP_CACHE"].SETTINGS.TEAM_CHECK then
                                    Remove()
                                else
                                    if Visible then
                                        if getgenv()["ESP_CACHE"].SETTINGS.TRACERS_ENABLED == true then
                                            Create()

                                            local Line = getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"]
                                            Line.To = Vector2.new(LinePos.X, LinePos.Y)
                                            Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                                            Line.Color = typeof(getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR) == "Color3" and getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                        
                                            Line.Visible = true
                                        else
                                            getgenv()["UpdateCache"][Plr.Name .. "_ESP_TRACERS"] = nil -- auto erase player from updation cache
                                            
                                            Remove()
                                        end
                                    else
                                        Remove()
                                    end
                                end

                            end
                        else
                            Remove()
                        end
                    else
                        getgenv()["UpdateCache"][Plr.Name .. "_ESP_TRACERS"] = nil -- auto erase player from updation cache

                        Remove(true)
                    end
                end
            end
        end

        getgenv()["ESP_CACHE"].LoadBox = function(Plr)
            if getgenv()["UpdateCache"][Plr.Name .. "_ESP_BOXES"] == nil then

                local function Create()
                    if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"] == nil then
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"] = Drawing.new("Square");
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"].Thickness = 2;
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"].Filled = false;
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"].Visible = false;
                    end
                end

                local function Remove(bool)
                    if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"] then
                        if bool == true then
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"]:Remove()
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"] = nil
                            return nil
                        end
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"].Visible = false;
                    end
                end

                Create()

                getgenv()["UpdateCache"][Plr.Name .. "_ESP_BOXES"] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar ~= nil then
                            if PlrChar.Parent == nil then
                                PlrChar = nil
                            end
                        end

                        if PlrChar then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == "table" and PartNames[game.PlaceId].Root or "HumanoidRootPart")
                            
                            if RootCheck then
                                local Inset = GUIService:GetGuiInset();
                                
                                local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                                if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()["ESP_CACHE"].SETTINGS.TEAM_CHECK then
                                    Remove()
                                else
                                    if Visible then
                                        if getgenv()["ESP_CACHE"].SETTINGS.BOXES_ENABLED == true then
                                            Create()

                                            local Box = getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"]
                                            Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                                            Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                                            Box.Color = typeof(getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR) == "Color3" and getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                        
                                            Box.Visible = true
                                        else
                                            getgenv()["UpdateCache"][Plr.Name .. "_ESP_BOXES"] = nil -- auto erase player from updation cache

                                            Remove()
                                        end
                                    else
                                        Remove()
                                    end
                                end

                            end
                        else
                            Remove()
                        end
                    else
                        getgenv()["UpdateCache"][Plr.Name .. "_ESP_BOXES"] = nil -- auto erase player from updation cache

                        Remove(true)
                    end
                end
            end
        end

        getgenv()["ESP_CACHE"].LoadNameTag = function(Plr)
            if getgenv()["UpdateCache"][Plr.Name .. "_ESP_NAME_TAG"] == nil then

                local function Create()
                    if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"] == nil then
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"] = Drawing.new("Text");
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"].Size = 16;
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"].Text = tostring(Plr);
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"].Center = true;
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"].Outline = false;
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"].Visible = false;
                    end
                end

                local function Remove(bool)
                    if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"] then
                        if bool == true then
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"]:Remove()
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"] = nil
                            return nil
                        end
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"].Visible = false;
                    end
                end

                Create()

                getgenv()["UpdateCache"][Plr.Name .. "_ESP_NAME_TAG"] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar ~= nil then
                            if PlrChar.Parent == nil then
                                PlrChar = nil
                            end
                        end

                        if PlrChar then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == "table" and PartNames[game.PlaceId].Root or "HumanoidRootPart")
                            
                            if RootCheck then
                                local Pos, Visible = Camera:WorldToViewportPoint(RootCheck.Position)
                                local Pos_screen, Visible_ = Camera:WorldToScreenPoint(RootCheck.Position)

                                if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()["ESP_CACHE"].SETTINGS.TEAM_CHECK then
                                    Remove()
                                else
                                    if Visible then
                                        if getgenv()["ESP_CACHE"].SETTINGS.NAME_TAG == true then
                                            Create()

                                            local _NameTag = getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_NAME_TAG"]
                                            _NameTag.Position = Vector2.new(Pos.X, (Pos.Y + (5408 / Pos_screen.Y) / 2) - 25);
                                            _NameTag.Color = typeof(getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR) == "Color3" and getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                            
                                            _NameTag.Visible = true
                                        else
                                            getgenv()["UpdateCache"][Plr.Name .. "_ESP_NAME_TAG"] = nil -- auto erase player from updation cache

                                            Remove()
                                        end
                                    else
                                        Remove()
                                    end
                                end

                            end
                        else
                            Remove()
                        end
                    else
                        getgenv()["UpdateCache"][Plr.Name .. "_ESP_NAME_TAG"] = nil -- auto erase player from updation cache

                        Remove(true)
                    end
                end
            end
        end

        getgenv()["ESP_CACHE"].LoadFov = function()
        end

        if getgenv().ESP_TESTING == true then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= LPlayer then
                    getgenv()["ESP_CACHE"].LoadBox(Plr)
                    getgenv()["ESP_CACHE"].LoadTracers(Plr)
                end
            end
        end

        if getgenv()["ESP_CACHE"].RemovedAndAdded == nil then
            getgenv()["ESP_CACHE"].RemovedAndAdded = true

            Players.PlayerAdded:Connect(function(Plr)
                if getgenv()["ESP_CACHE"].SETTINGS.BOXES_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()["ESP_CACHE"].LoadBox(Plr)
                end

                if getgenv()["ESP_CACHE"].SETTINGS.TRACERS_ENABLED == true or getgenv().ESP_TESTING == true then
                    getgenv()["ESP_CACHE"].LoadTracers(Plr)
                end

                if getgenv()["ESP_CACHE"].SETTINGS.NAME_TAG == true or getgenv().ESP_TESTING == true then
                    getgenv()["ESP_CACHE"].LoadNameTag(Plr)
                end
            end)
        end
    end
    
    getgenv()["ESP_CACHE"].Connect()

    getgenv()["ESP_CACHE"].Aimbot = function()
        local Proxy = newproxy(true);
        local MetaTable = getmetatable(Proxy);

        local function GetNearPlayer(TargetPart)
            local OldDistance = math.huge
            local Target = nil
            local Attacker = nil
            local PartNames = getgenv()["ESP_CACHE"].GetCustomCharacterPartNames()

            for _, GamePlayer in ipairs(Players:GetPlayers()) do
                if GamePlayer ~= LPlayer then
                    local GameCharacter = getgenv()["ESP_CACHE"].GetCharacter(GamePlayer)
                    local LocalCharacter = getgenv()["ESP_CACHE"].GetCharacter(LPlayer)
                    local GameTeam = getgenv()["ESP_CACHE"].GetTeam(GamePlayer)
                    local LocalTeam = getgenv()["ESP_CACHE"].GetTeam(LPlayer)
                    local TeamCheck = tostring(GameTeam) == tostring(LocalTeam) and getgenv()["ESP_CACHE"].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
                    local HealthCheck = false

                    if GameCharacter and LocalCharacter and not TeamCheck then
                        local GameRoot = GameCharacter:FindFirstChild(type(PartNames) == "table" and PartNames[TargetPart or "Root"] or tostring(TargetPart or "HumanoidRootPart"))
                        local LocalRoot = LocalCharacter:FindFirstChild(type(PartNames) == "table" and PartNames[TargetPart or "Root"] or tostring(TargetPart or "HumanoidRootPart"))
                        local GameHumanoid = GameCharacter:FindFirstChild("Humanoid")

                        if GameHumanoid then
                            if getgenv()["ESP_CACHE"].SETTINGS.HealthCheck == true then
                                if GameHumanoid.Health <= 0 then
                                    HealthCheck = true
                                end
                            end
                        end

                        if GameRoot and LocalRoot and not HealthCheck then
                            local Distance = math.abs((LocalRoot.Position - GameRoot.Position).Magnitude)
                            
                            if (Distance <= getgenv()["ESP_CACHE"].SETTINGS.AimDistance) and (Distance < OldDistance) then
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

        getgenv()["UpdateCache"].AimBot = nil

        MetaTable.Start = function()
            getgenv()["UpdateCache"].AimBot = nil
            if getgenv()["UpdateCache"].AimBot == nil then
                getgenv()["UpdateCache"].AimBot = function()
                    local Target, Attacker = GetNearPlayer("Head")

                    print(Target and Attacker)

                    if Target and Attacker then
                        local TARGETPOS, TARGET_VISIBLE = Camera:WorldToScreenPoint(Target.Position)

                        if TARGET_VISIBLE then
                            local Smoothness = 10
                            TARGETPOS -= Camera:WorldToScreenPoint(Mouse.Hit.p)

                            mousemoverel(TARGETPOS.X / Smoothness, TARGETPOS.Y / Smoothness)
                        end
                    end
                end
            end
        end 

        MetaTable.End = function()
            getgenv()["UpdateCache"].AimBot = nil
        end

        MetaTable.TeamCheck = function(Bool)
            getgenv()["ESP_CACHE"].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
        end

        MetaTable.Health = function(Val)
            getgenv()["ESP_CACHE"].SETTINGS.HealthCheck = Val
        end

        MetaTable.Distance = function(Val)
            getgenv()["ESP_CACHE"].SETTINGS.AimDistance = Val
        end

        return MetaTable
    end

    if getgenv().ESP_TESTING == true then
        getgenv()["ESP_CACHE"].SetTracersVisibility(true)
        getgenv()["ESP_CACHE"].SetBoxVisibility(true)
        getgenv()["ESP_CACHE"].SetTeamCheck(false)
        getgenv()["ESP_CACHE"].UpdateColor(Color3.fromRGB(79, 22, 201))
    end

    if not getgenv()["UpdateLoop"] then
        getgenv()["UpdateLoop"] = true
        local RunService = game["GetService"](game, "RunService")

        RunService.RenderStepped:Connect(function(_Delta)
            for _, Function in pairs(getgenv()["UpdateCache"]) do
                if type(Function) == "function" then
                    xpcall(Function, ErrorHandlerTing, _Delta)
                end
            end
        end)

    end
end