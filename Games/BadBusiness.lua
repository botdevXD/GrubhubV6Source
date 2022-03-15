xpcall(function()
    do
        if tostring(game.PlaceId) == "3233893879" then
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
            Settings_Name = "BAD_BUSINESS_SETTINGS_GRUBHUB"
    
            getgenv()[Settings_Name] = {
                Teamcheck = GameConfigFile.Teamcheck or false,
                Boxes = GameConfigFile.Boxes or false,
                Tracers = GameConfigFile.Tracers or false,
                Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
            }
    
            local RunService = game:GetService("RunService")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
    
            local Players = game:GetService("Players")
            local Player = Players.LocalPlayer
 --[[   
            xpcall(function()
                for _, V in ipairs(getgc(true)) do
                    if type(V) == "table" then
                        if rawget(V, "Recoil") then
                            if type(V.Recoil.Update) == "function" then
                                print("Hooked 1")
                                hookfunction(V.Recoil.Update, function()
                                    return Vector3.new(0, 0, 0)
                                end)
                            end
                        end
                        
                        if rawget(V, "Projectile") then
                            if rawget(V.Projectile, "Amount") then
                                print("Hooked 2")
                                rawset(V.Projectile, "FalloffPercent", 0)
                                rawset(V.Projectile, "FalloffEnd", 99999)
                                rawset(V.Projectile, "FalloffStart", 99999)
                            end
                        end
                        
                    end
                end
            end, function(err) return print(err) end)

            xpcall(function()
                for _, V in ipairs(getgc(true)) do
                    if type(V) == "table" then
                        if type(rawget(V, "Network")) == "table" then
                            if type(V.Network.Fire) == "function" then
                                local OLD_FIRE = nil
                                OLD_FIRE = hookfunction(V.Network.Fire, function(self, ...)
                                    local Args = {...}
                                    
                                    if tostring(Args[1]) == "Item_Paintball" or tostring(Args[2]) == "Shoot" then
                                        for Index, V in ipairs(workspace.Characters:GetChildren()) do
                                            Args[3] = V.PrimaryPart.Position
                                            OLD_FIRE(self, unpack(Args))
                                        end
                                    end
            
                                    if tostring(Args[1]) == "Projectiles" or tostring(Args[2]) == "Projectiles" then
                                        for Index = 1, 10 do
                                            OLD_FIRE(self, unpack(Args))
                                        end
                                    end
                                    
                                    return OLD_FIRE(self, unpack(Args))
                                end)
                            end
                        end
                    end
                end
            end, function(err)
                print(err)
            end)]]

            Window = UILibrary.new("GrubHub V6 ~ Bad Business", 5013109572)
    
            local Camera = workspace:WaitForChild("Camera", 5)
            local PlayerWindow = Window:addPage("Player", 5012544693)
            local PlayerSection = PlayerWindow:addSection("Other", 5012544693)
    
            local GunModsWindow = Window:addPage("Gun Mods", 5012544693)
            local GunModsFeatures = GunModsWindow:addSection("Mods", 5012544693)
    
            local VisualsWindow = Window:addPage("Visuals", 5012544693)
            local VisualsSelection = VisualsWindow:addSection("Options", 5012544693)
        
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
            print("Bad Business loaded!")
        end
    end
end, function(err) return warn(err) end)