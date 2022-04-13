xpcall(function()
    do
        if tostring(game.PlaceId) == "4779613061" then
            getgenv()["grubhub_loaded"] = false

            local DebugMode = true
            local rconsolename = rconsolename or rconsolesettitle
            local rconsolecreate = rconsolecreate or rconsolename
            local consoleclear = consoleclear or rconsoleclear
            
            if DebugMode then
                consoleclear()
                rconsolecreate("South London 2 debug console!")
                rconsolename("South London 2 debug console!")
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
            getgenv().GAME_GARBAGE_COLLECTED = type(getgenv().GAME_GARBAGE_COLLECTED) == "boolean" and getgenv().GAME_GARBAGE_COLLECTED or false;
    
            if type(getgenv().GameConnections) == "table" then
                for IndexName, Signal in pairs(getgenv().GameConnections) do
                    if typeof(Signal) == "RBXScriptConnection" then
                        Signal:Disconnect()
                    end
                end
                table.clear(getgenv().GameConnections)
            end
            
            local GameConfigFile = GetGameConfig(tostring(game.PlaceId) .. ".json")
            Settings_Name = "SOUTH_LONDON_2_SETTINGS_GRUBHUB"

            getgenv()[Settings_Name] = {
                Teamcheck = GameConfigFile.Teamcheck or false,
                Boxes = GameConfigFile.Boxes or false,
                ESP_NAMETAGS = GameConfigFile.ESP_NAMETAGS or false,
                Tracers = GameConfigFile.Tracers or false,
                FPS_COUNTER = GameConfigFile.FPS_COUNTER or false,
                CameraFOV = GameConfigFile.CameraFOV or 78,
                Color = GameConfigFile.Color or {R = 255, G = 255, B = 255},

                BulletAlwaysHit = GameConfigFile.BulletAlwaysHit or false,
                InstantKill = GameConfigFile.InstantKill or false,
                AimBot = GameConfigFile.AimBot or false,
                AimBotTeamcheck = GameConfigFile.AimBotTeamcheck or false,
                AimbotHealth = GameConfigFile.AimbotHealth or false,
                AimDistance = GameConfigFile.AimDistance or 250
            }

            local Camera = workspace:FindFirstChild("Camera")

            local RunService = game:GetService("RunService")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")

            local Players = game:GetService("Players")
            local Player = Players.LocalPlayer
            local Mouse = Player:GetMouse()

            Window = UILibrary.new("GrubHub V6 ~ South London 2", 5013109572)
    
            local Camera = workspace:WaitForChild("Camera", 5)
            local PlayerWindow = Window:addPage("Player", 5012544693)
            local PlayerSection = PlayerWindow:addSection("Other", 5012544693)
    
            local MiscWindow = Window:addPage("Misc", 5012544693)
            local MiscSection = MiscWindow:addSection("Main")

            local VisualsWindow = Window:addPage("Visuals", 5012544693)
            local VisualsSelection = VisualsWindow:addSection("Options", 5012544693)

            if getgenv().fps_counter_text ~= nil then
                getgenv().fps_counter_text:Remove()
                getgenv().fps_counter_text = nil
            end

            if getgenv()["UpdateCache"].fps_counter_updater ~= nil then
                getgenv()["UpdateCache"].fps_counter_updater = nil
            end

            local Aimbot_MT = getgenv()["ESP_CACHE"].Aimbot()

            if getgenv().OLD_GAME_FUNCTIONS["GAME_NAMECALL"] == nil then
                local OldNameCall = nil

                OldNameCall = hookmetamethod(game, "__namecall", function(self, ...)
                    local Method = getnamecallmethod()

                    if Method == "FireServer" then
                        if getgenv()[Settings_Name].InstantKill == true then
                            if tostring(self) == "DamageEvent2" then
                                for I = 1, 5 do
                                    OldNameCall(self, ...)
                                end
                                return nil
                            elseif tostring(self) == "DamageEvent" then
                                for I = 1, 10 do
                                    OldNameCall(self, ...)
                                end
                                return nil
                            end
                        end
                    end
                    return OldNameCall(self, ...)
                end)

                getgenv().OLD_GAME_FUNCTIONS["GAME_NAMECALL"] = OldNameCall
            end

            if Aimbot_MT then

                MiscSection:addToggle("Bullet Always Hit", getgenv()[Settings_Name].BulletAlwaysHit, function(Bool)
                    getgenv()[Settings_Name].BulletAlwaysHit = Bool
                end)

                MiscSection:addToggle("Gun Instant Kill", getgenv()[Settings_Name].InstantKill, function(Bool)
                    getgenv()[Settings_Name].InstantKill = Bool
                end)

                MiscSection:addToggle("Aimbot", getgenv()[Settings_Name].AimBot, function(Bool)
                    getgenv()[Settings_Name].AimBot = Bool
                    
                    if Bool then
                        Aimbot_MT.Start()
                    else
                        Aimbot_MT.End()
                    end
                end)
    
                MiscSection:addToggle("Aimbot Teamcheck", getgenv()[Settings_Name].AimBotTeamcheck, function(Bool)
                    getgenv()[Settings_Name].AimBotTeamcheck = Bool
                    
                    Aimbot_MT.TeamCheck(Bool)
                end)
    
                Aimbot_MT.Distance(getgenv()[Settings_Name].AimDistance)
                Aimbot_MT.Health(getgenv()[Settings_Name].AimbotHealth)
    
                MiscSection:addToggle("Aimbot Health Check", getgenv()[Settings_Name].AimbotHealth, function(Bool)
                    getgenv()[Settings_Name].AimbotHealth = Bool
                    Aimbot_MT.Health(Bool)
                end)
    
                MiscSection:addSlider("Aimbot Distance", getgenv()[Settings_Name].AimDistance, 0, 10000, function(NewValue)
                    getgenv()[Settings_Name].AimDistance = NewValue
                    Aimbot_MT.Distance(NewValue)
                end)
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

            VisualsSelection:addToggle("ESP Teamcheck", getgenv()[Settings_Name].Teamcheck, function(Bool)
                getgenv()[Settings_Name].Teamcheck = Bool
                getgenv()["ESP_CACHE"].SetTeamCheck(Bool)
            end)

            VisualsSelection:addToggle("ESP NameTags", getgenv()[Settings_Name].ESP_NAMETAGS, function(Bool)
                getgenv()[Settings_Name].ESP_NAMETAGS = Bool

                if Bool then
                    for _, Plr in ipairs(Players:GetPlayers()) do
                        if Plr ~= Player then
                            getgenv()["ESP_CACHE"].LoadNameTag(Plr)
                        end
                    end
                    getgenv()["ESP_CACHE"].SetNameTag(true)
                else
                    getgenv()["ESP_CACHE"].UnLoadType("_ESP_NAME_TAG")
                    getgenv()["ESP_CACHE"].SetNameTag(false)
                end
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
            print("South Lodnon 2 loaded!")
        end
    end
end, function(err) return warn(err) end)