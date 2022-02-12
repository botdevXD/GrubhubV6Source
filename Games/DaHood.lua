local UserInputService = game:GetService("UserInputService")
local VRService = game:GetService("VRService")

do
    if tostring(game.PlaceId) == "2788229376" then
        getgenv()["USE_GRUBHUB_UNIVERSAL"] = false
    
        --------------------------------------------------------------------------------------------

        getgenv().UpdateLoop = type(getgenv().UpdateLoop) == "boolean" and getgenv().UpdateLoop or false;
        getgenv().UpdateCache = type(getgenv().UpdateCache) == "table" and getgenv().UpdateCache or {};
        getgenv().GAME_CONNECTIONS = type(getgenv().GAME_CONNECTIONS) == "table" and getgenv().GAME_CONNECTIONS or {};
        getgenv().GAME_HOOKS = type(getgenv().GAME_HOOKS) == "table" and getgenv().GAME_HOOKS or {};

        for _, Signal in pairs(getgenv().GAME_CONNECTIONS) do
            if typeof(Signal) == "RBXScriptConnection" then
                Signal:Disconnect()
            end
        end

        table.clear(getgenv().GAME_CONNECTIONS)

        local GameConfigFile = GetGameConfig(FixName("DaHood") .. ".json")
        Settings_Name = "DA_HOOD_SETTINGS_GRUBHUB"

        getgenv()[Settings_Name] = {
            AntiIdle = GameConfigFile.AntiIdle or false,
            InstantStomp = GameConfigFile.InstantStomp or false,
            Fly = GameConfigFile.Fly or false,
            
            ESP_Color = GameConfigFile.ESP_Color or {R = 255, G = 255, B = 255},
            ESP_Teamcheck = GameConfigFile.ESP_Teamcheck or false,
            ESP_Boxes = GameConfigFile.ESP_Boxes or false,
            ESP_Tracers = GameConfigFile.ESP_Tracers or false,
            ESP_FOV = GameConfigFile.ESP_FOV or false
        }
        
        Window = UILibrary.new("GrubHub V6 ~ Da Hood", 5013109572)

        local VRService = game:GetService("VirtualUser")
        local PlayersService = game:GetService("Players")
        local TweenService = game:GetService("TweenService")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local UserInputService = game:GetService("UserInputService")
        local RunService = game:GetService("RunService")
        local Player = PlayersService.LocalPlayer
        local Character = nil
        local PlayerPosition = nil
        local PlayerLookVector = nil
        local RootPart = nil

        local MainGameEvent = ReplicatedStorage:WaitForChild("MainEvent", 5)
        local PlayerWindow = Window:addPage("Player", 5012544693)
        local AutoFarmWindow = Window:addPage("Auto Farm", 5012544693)
        local VisualsWindow = Window:addPage("Visuals", 5012544693)
        local TeleportsWindow = Window:addPage("Teleports", 5012544693)
        local AutoFarmSection = AutoFarmWindow:addSection("Features", 5012544693)
        local PlayerSection = PlayerWindow:addSection("Features", 5012544693)
        local PlayerTeleportSection = TeleportsWindow:addSection("Player Teleport", 5012544693)
        local VisualsSelection = VisualsWindow:addSection("Features", 5012544693)

        local TeleportTarget = nil

        local Camera = workspace.Camera
        local GUIService = game["GetService"](game, "GuiService")

        local PlayersDropDown, PlayersDropDownOptions = nil, nil

        local function TeleportBypass(NewCFrame)
            if typeof(NewCFrame) == "CFrame" then
                if RootPart ~= nil then
                    if Character ~= nil then
                        Character.PrimaryPart = RootPart
                        Character:SetPrimaryPartCFrame(NewCFrame)
                        return true
                    else
                        return warn("Character doesn't exist, 'TeleportBypass' <function>")
                    end
                else
                    return warn("Root part doesn't exist, 'TeleportBypass' <function>")
                end
            else
                return warn("Wrong type passed through 'TeleportBypass' <function>")
            end
        end

        local function RemoveSignal(SignalName)
            for SignalIndex, Signal in pairs(getgenv().GAME_CONNECTIONS) do
                if SignalIndex == SignalName then
                    if typeof(Signal) == "RBXScriptConnection" then
                        Signal:Disconnect()
                        getgenv().GAME_CONNECTIONS[SignalIndex] = nil
                    end
                end
            end
        end

        local function RemoveAntiCheat()
            if Character then
                for _, Object in ipairs(Character:GetChildren()) do
                    if Object:IsA("Script") then
                        local LocalScriptCheck = Object:FindFirstChild("LocalScript")
                        if LocalScriptCheck then
                            return Object:Destroy()
                        end
                    end
                end
            end
        end

        local function ModelCFrameSmooth(Model, CF)
            local CValue = Instance.new("CFrameValue", nil)
            CValue.Value = Model:GetPrimaryPartCFrame()

            CValue.Changed:Connect(function()
                if Model ~= nil then
                    if Model:IsA("Model") then
                        if Model.PrimaryPart ~= nil then
                            Model:SetPrimaryPartCFrame(CValue.Value)
                        end
                    end
                end
            end)

            local Tween = TweenService:Create(CValue, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                Value = CF
            })

            Tween:Play()

            task.spawn(function()
                Tween.Stopped:Wait()
                if CValue ~= nil then
                    CValue:Destroy()
                end
            end)
        end

        local IsFlying = false
        local function FlyBypass()
            local OldChar = Character
            
            if OldChar then
                local ModelCF = Character:GetPrimaryPartCFrame()
                local BodyPosition = Instance.new("BodyPosition", RootPart)
                BodyPosition.Position = Vector3.new(ModelCF.X, ModelCF.Y, ModelCF.Z)
                BodyPosition.MaxForce = Vector3.new(40000, 40000, 40000)

                IsFlying = true

                task.spawn(function() -- Threading yes sir!
                    local FlyData = {
                        W = false, -- Forward
                        S = false, -- Backward
                        A = false, -- Left
                        D = false  -- Right
                    }

                    getgenv().GAME_CONNECTIONS["FLY_INPUT_BEGAN"] = UserInputService.InputBegan:Connect(function(Input, Processing)
                        if not Processing then
                            if Input.KeyCode == Enum.KeyCode.W then
                                FlyData.W = true
                            elseif Input.KeyCode == Enum.KeyCode.S then
                                FlyData.S = true
                            elseif Input.KeyCode == Enum.KeyCode.A then
                                FlyData.A = true
                            elseif Input.KeyCode == Enum.KeyCode.D then
                                FlyData.D = true
                            end
                        end
                    end)

                    getgenv().GAME_CONNECTIONS["FLY_INPUT_ENDED"] = UserInputService.InputEnded:Connect(function(Input, Processing)
                        if Input.KeyCode == Enum.KeyCode.W then
                            FlyData.W = false
                        elseif Input.KeyCode == Enum.KeyCode.S then
                            FlyData.S = false
                        elseif Input.KeyCode == Enum.KeyCode.A then
                            FlyData.A = false
                        elseif Input.KeyCode == Enum.KeyCode.D then
                            FlyData.D = false
                        end
                    end)

                    while IsFlying and getgenv()[Settings_Name].Fly and OldChar ~= nil and RootPart ~= nil do

                        if RootPart then
                            if FlyData.W then
                                -- Da hood is a cunt
                                BodyPosition.Position = (RootPart.Position + Vector3.new(0, 0, 1)) * 10
                            elseif FlyData.S then
                                BodyPosition.Position = (RootPart.Position + Vector3.new(0, 0, -1)) * 10
                            elseif FlyData.A then
                                BodyPosition.Position = (RootPart.Position + -RootPart.CFrame.RightVector) * 10
                            elseif FlyData.D then
                                BodyPosition.Position = (RootPart.Position + RootPart.CFrame.RightVector) * 10
                            else
                            end
                        else
                            break
                        end

                        RunService.RenderStepped:Wait() -- Wait for the render engine to update every 60th of a second!
                    end

                    if BodyPosition ~= nil then
                        BodyPosition:Destroy()
                    end

                    RemoveSignal("FLY_INPUT_BEGAN")
                    RemoveSignal("FLY_INPUT_ENDED")
                end)
            end
        end

        local function FindPlayer(PlayerName)
            if type(PlayerName) == "string" then
                PlayerName = tostring(PlayerName):lower()

                for _, Target in ipairs(PlayersService:GetPlayers()) do
                    local TargetName = tostring(Target.Name):lower()

                    if TargetName:match(PlayerName) then
                        return Target
                    end
                end
            else
                return nil, warn("Wrong type passed through 'FindPlayer' <function>")
            end
            return nil
        end

        if getgenv().GAME_HOOKS.ANTI_CHEAT_BYPASS_1 == nil then
            getgenv().GAME_HOOKS.ANTI_CHEAT_BYPASS_1 = hookmetamethod(game, "__index", newcclosure(function(A, B)

                if tostring(A) == tostring(Player) then
                    if tostring(B) == "HumanoidRootPart" then
                        if RootPart ~= nil then
                            return RootPart
                        end
                    end
                end

                return getgenv().GAME_HOOKS.ANTI_CHEAT_BYPASS_1(A, B)
            end))

            getgenv().GAME_HOOKS.ANTI_CHEAT_BYPASS_2 = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
                local Method = getnamecallmethod()

                if Method == "FireServer" then
                    local FirstArg = unpack({...})

                    if type(tostring(FirstArg)) == "string" then
                        local LowerArg = tostring(FirstArg):lower()

                        if LowerArg:find("teleport") or LowerArg:find("checker") then
                            return true
                        end
                    end
                elseif Method == "FindFirstChild" then
                    local FirstArg = unpack({...})

                    if self == Character then
                        if tostring(FirstArg) == "HumanoidRootPart" then
                            if RootPart ~= nil then
                                return RootPart
                            end
                        end
                    end
                elseif Method == "WaitForChild" then
                    local FirstArg = unpack({...})

                    if self == Character then
                        if tostring(FirstArg) == "HumanoidRootPart" then
                            if RootPart ~= nil then
                                return RootPart
                            end
                        end
                    end
                end

                return getgenv().GAME_HOOKS.ANTI_CHEAT_BYPASS_2(self, ...)
            end))
        end

        getgenv()["UpdateCache"]["CharacterUpdater"] = function()
            Character = Player.Character

            if Character then
                local RootCheck = Character:FindFirstChild("HumanoidRootPart")

                if RootCheck ~= nil then
                    RootPart = RootCheck
                end

                RemoveAntiCheat()

                if RootPart then
                    PlayerPosition = RootPart.Position
                    PlayerLookVector = RootPart.CFrame.LookVector

                    Character.PrimaryPart = RootPart
                end

                if getgenv().GAME_HOOKS.Humanoid == nil then
                    local HumanoidNameCall = nil
                    local FoundHumanoid = Character:FindFirstChild("Humanoid")

                    if FoundHumanoid then

                        getgenv().GAME_HOOKS.Humanoid = FoundHumanoid

                        HumanoidNameCall = hookmetamethod(getgenv().GAME_HOOKS.Humanoid, "__namecall", newcclosure(function(self, ...)
                            local Method = getnamecallmethod()

                            if Method == "Play" then
                                if tostring(getfenv(2).script) == "Framework" then
                                    if tostring(self):lower() == "stomp" and getgenv()[Settings_Name].InstantStomp == true then
                                        print("Stomping")

                                        for I = 1, 3 do
                                            MainGameEvent:FireServer("Stomp")
                                        end

                                        return true
                                    end
                                end
                            end

                            return HumanoidNameCall(self, ...)
                        end))

                    end
                end
            end
        end

        task.spawn(function()
            getgenv().GAME_CONNECTIONS["AntiIdle"] = Player.Idled:connect(function()
                if getgenv()[Settings_Name].AntiIdle == true then
                    VRService:Button2Down(Vector2.new(0, 0), CFrame.new(math.random(1, 10), math.random(1, 10), math.random(1, 10)) )
                    task.wait(.2)
                    VRService:Button2Up(Vector2.new(0, 0), CFrame.new(math.random(1, 10), math.random(1, 10), math.random(1, 10)) )
                end
            end)
        end)

        PlayerSection:addToggle("Fly", getgenv()[Settings_Name].Fly, function(Bool)
            getgenv()[Settings_Name].Fly = Bool

            if Bool then
                FlyBypass()
            else
                IsFlying = false
            end
        end)

        PlayerSection:addToggle("Instant Stomp", getgenv()[Settings_Name].InstantStomp, function(Bool)
            getgenv()[Settings_Name].InstantStomp = Bool
        end)

        AutoFarmSection:addToggle("Anti Afk", getgenv()[Settings_Name].AntiIdle, function(Bool)
            getgenv()[Settings_Name].AntiIdle = Bool
        end)

        PlayersDropDown, PlayersDropDownOptions = PlayerTeleportSection:addDropdown("Not Selected!", PlayersService:GetPlayers(), function(TargettedPlayer)
            TeleportTarget = FindPlayer(tostring(TargettedPlayer))

            if TeleportTarget ~= Player and TeleportTarget ~= nil then
                local TargetCharacter = TeleportTarget.Character

                if TargetCharacter then
                    local TargetRoot = TargetCharacter.PrimaryPart

                    if TargetRoot then
                        TeleportBypass(CFrame.new(TargetRoot.Position))
                    end
                end
            else
                TeleportTarget = nil
            end
        end, true)
        --[===[
        ESP_Color = GameConfigFile.ESP_Color or {R = 255, G = 255, B = 255},
        ESP_Teamcheck = GameConfigFile.ESP_Teamcheck or false,
        ESP_Boxes = GameConfigFile.ESP_Boxes or false,
        ESP_Tracers = GameConfigFile.ESP_Tracers or false,
        ESP_FOV = GameConfigFile.ESP_FOV or false
        ]===]

        VisualsSelection:addToggle("FOV Circle", getgenv()[Settings_Name].ESP_FOV, function(Bool)
            getgenv()[Settings_Name].ESP_FOV = Bool
        end)

        VisualsSelection:addToggle("ESP Boxes", getgenv()[Settings_Name].ESP_Boxes, function(Bool)
            getgenv()[Settings_Name].ESP_Boxes = Bool

            if Bool then
                for _, Plr in ipairs(PlayersService:GetPlayers()) do
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

        VisualsSelection:addToggle("ESP Tracers", getgenv()[Settings_Name].ESP_Tracers, function(Bool)
            getgenv()[Settings_Name].ESP_Tracers = Bool

            if Bool then
                for _, Plr in ipairs(PlayersService:GetPlayers()) do
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

        local ESP_COLOR_LOCAL = getgenv()[Settings_Name].ESP_Color

        getgenv()["ESP_CACHE"].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

        VisualsSelection:addColorPicker("ESP Color", Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
            local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)
            
            getgenv()[Settings_Name].ESP_Color.R = R
            getgenv()[Settings_Name].ESP_Color.G = G
            getgenv()[Settings_Name].ESP_Color.B = B
            
            getgenv()["ESP_CACHE"].UpdateColor(Color3.fromRGB(R, G, B))
        end)

        VisualsSelection:addButton("Unload ESP", function(Bool)
            getgenv()["ESP_CACHE"].UnLoad()
        end)

        getgenv().GAME_CONNECTIONS["PlayerAdded"] = PlayersService.PlayerAdded:Connect(function(PlayerJoined)
            PlayersDropDownOptions(PlayersService:GetPlayers())
        end)

        getgenv().GAME_CONNECTIONS["PlayeRemoving"] = PlayersService.PlayerRemoving:Connect(function(PlayerLeft)
            PlayersDropDownOptions(PlayersService:GetPlayers())
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

        print("Da Hood loaded up!")
        --
    end
end