-----------------------------------------------
-- Made by 0x74_Dev / _Ben#6969 / Mr.Grubhub --
-----------------------------------------------

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
        [292439477] = {Root = "Torso", Head = "Head"},
        [3233893879] = {Root = "Chest", Head = "Head"}
    }
    
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
                if getgenv()["CUSTOM_FUNCTIONS_GC"]["GetPlayerTeam"] ~= nil then
                    return getgenv()["CUSTOM_FUNCTIONS_GC"]["GetPlayerTeam"]:GetPlayerTeam(Plr)
                else
                    return Plr.Team
                end
            else
                return Plr.Team
            end
        end
    end

    local function GetChar_Ez(Plr)
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
        AIMBOT_TEAM_CHECK_ENABLED = false,
        ESP_COLOR = Color3.fromRGB(255, 255, 255)
    }

    getgenv()["ESP_CACHE"].Connect = function()
        getgenv()["ESP_CACHE"].UnLoad = function()
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

        getgenv()["ESP_CACHE"].UnLoadType = function(TypeString)
            for CacheName, CachedItem in pairs(getgenv()["CHARACTER_DRAWN_OBJECTS"]) do
                pcall(function()
                    if tostring(CacheName):find(tostring(TypeString)) then
                        CachedItem:Remove()
                        getgenv()["CHARACTER_DRAWN_OBJECTS"][CacheName] = nil
                    end
                end)
            end
    
            for CacheName, CachedItem in pairs(getgenv()["UpdateCache"]) do
                if tostring(CacheName):find(tostring(TypeString)) then
                    getgenv()["UpdateCache"][CacheName] = nil
                end
            end
        end
        
        getgenv()["ESP_CACHE"].UnLoad()

        getgenv()["ESP_CACHE"].UpdateColor = function(Color)
            getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR = typeof(Color) == "Color3" and Color or Color3.fromRGB(255, 255, 255)
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
                if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] == nil then
                    getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] = Drawing.new("Line")
                    getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"].Visible = false
                    getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"].Thickness = 2;
                    getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                end

                getgenv()["UpdateCache"][Plr.Name .. "_ESP_TRACERS"] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == "table" and PartNames[game.PlaceId].Root or "HumanoidRootPart")
                            local Plrhead = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == "table" and PartNames[game.PlaceId].Head or "Head")
                            
                            if RootCheck and Plrhead then
                                if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] then
                                    local Line = getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)
                                    local LinePos, LineVisible = Camera:WorldToViewportPoint(Plrhead.Position);
                                    Line.To = Vector2.new(LinePos.X, LinePos.Y)
                                    Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
                                    Line.Color = typeof(getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR) == "Color3" and getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()["ESP_CACHE"].SETTINGS.TEAM_CHECK then
                                        Line.Visible = false
                                    else
                                        Line.Visible = getgenv()["ESP_CACHE"].SETTINGS.TRACERS_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] then
                                getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"].Visible = false
                            end
                        end
                    else
                        getgenv()["UpdateCache"][Plr.Name .. "_ESP_TRACERS"] = nil -- auto erase player from updation cache

                        if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] then
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"]:Remove()
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_TRACERS"] = nil
                        end
                    end
                end
            end
        end
--GetPlayerTeam
        getgenv()["ESP_CACHE"].LoadBox = function(Plr)
            if getgenv()["UpdateCache"][Plr.Name .. "_ESP_BOXES"] == nil then
                if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"] == nil then
                    getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"] = Drawing.new("Square");
                    getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"].Thickness = 2;
                    getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"].Filled = false;
                    getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"].Visible = false;
                end

                getgenv()["UpdateCache"][Plr.Name .. "_ESP_BOXES"] = function()
                    if Players:FindFirstChild(tostring(Plr)) ~= nil then
                        local PlrChar = GetChar_Ez(Plr)

                        if PlrChar and getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"] ~= nil then
                            local RootCheck = PlrChar:FindFirstChild(type(PartNames[game.PlaceId]) == "table" and PartNames[game.PlaceId].Root or "HumanoidRootPart")
                            
                            if RootCheck then
                                if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"] then
                                    local Inset = GUIService:GetGuiInset();
                                    local Box = getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"]
                                    local Pos, Visible = Camera:WorldToScreenPoint(RootCheck.Position);
                                    local PosSize = Vector3.new(Pos.X, 0, Pos.Z)

                                    Box.Size = Vector2.new(2704 / PosSize.Z, 5408 / PosSize.Z);
                                    Box.Position = Vector2.new(Pos.X - Box.Size.X / 2, Pos.Y + Inset.Y - Box.Size.Y / 2);
                                    Box.Color = typeof(getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR) == "Color3" and getgenv()["ESP_CACHE"].SETTINGS.ESP_COLOR or Color3.fromRGB(255, 255, 255)
                                
                                    if tostring(GetPlrTeam(Plr)) == tostring(GetPlrTeam(LPlayer)) and getgenv()["ESP_CACHE"].SETTINGS.TEAM_CHECK then
                                        Box.Visible = false
                                    else
                                        Box.Visible = getgenv()["ESP_CACHE"].SETTINGS.BOXES_ENABLED == true and Visible or false
                                    end
                                end
                            end
                        else
                            if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"] then
                                getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"].Visible = false
                            end
                        end
                    else
                        getgenv()["UpdateCache"][Plr.Name .. "_ESP_BOXES"] = nil -- auto erase player from updation cache

                        if getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"] then
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"]:Remove()
                            getgenv()["CHARACTER_DRAWN_OBJECTS"][Plr.Name .. "_ESP_BOXES"] = nil
                        end
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
            end)
        end
    end
    
    getgenv()["ESP_CACHE"].Connect()

    getgenv()["ESP_CACHE"].Aimbot = function()
        local Proxy = newproxy(true);
        local MetaTable = getmetatable(Proxy);

        local function AimAtPlayer(Camera, Mouse, target)
            local TARGETPOS = Camera:WorldToScreenPoint(target.Position)
            local GOTO = Vector2.new((TARGETPOS.X - Mouse.X) * .15, (TARGETPOS.Y - Mouse.Y) * .15)
            mousemoverel(GOTO.X, GOTO.Y) -- Quick math for the aim function lmao
        end

        getgenv()["UpdateCache"].AimBot = nil

        MetaTable.Start = function()
            getgenv()["UpdateCache"].AimBot = nil
            if getgenv()["UpdateCache"].AimBot == nil then

                getgenv()["UpdateCache"].AimBot = function()
                    local LastDistance = 999999
                    for _, FPlayer in ipairs(Players:GetPlayers()) do
                        if FPlayer ~= LPlayer then

                            local TeamCheck = tostring(GetPlrTeam(FPlayer)) == tostring(GetPlrTeam(LPlayer)) and getgenv()["ESP_CACHE"].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED == true and true or false
                            if not TeamCheck then
                                local FChar = GetChar_Ez(FPlayer)

                                if FChar then
                                    local HeadCheck = FChar:FindFirstChild(type(PartNames[game.PlaceId]) == "table" and PartNames[game.PlaceId].Head or "Head")

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
            getgenv()["UpdateCache"].AimBot = nil
        end

        MetaTable.TeamCheck = function(Bool)
            getgenv()["ESP_CACHE"].SETTINGS.AIMBOT_TEAM_CHECK_ENABLED = Bool
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
        RunService.Heartbeat:Connect(function()
            for _, Function in pairs(getgenv()["UpdateCache"]) do
                if type(Function) == "function" then
                    xpcall(Function, ErrorHandlerTing)
                end
            end
        end)
    end
end