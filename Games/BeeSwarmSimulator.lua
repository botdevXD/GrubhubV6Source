do
    if tostring(game.PlaceId) == "1537690962" then
        getgenv()["USE_GRUBHUB_UNIVERSAL"] = false
        getgenv()["UpdateLoop"] = type(getgenv()["UpdateLoop"]) == "boolean" and getgenv()["UpdateLoop"] or false;
        getgenv()["UpdateCache"] = type(getgenv()["UpdateCache"]) == "table" and getgenv()["UpdateCache"] or {};
        getgenv()["DRAWED_OBJECTS"] = type(getgenv()["DRAWED_OBJECTS"]) == "table" and getgenv()["DRAWED_OBJECTS"] or {};
        Settings_Name = "BSS_SETTINGS_GRUBHUB"

        local promoCodesEvent = game:GetService("ReplicatedStorage").Events.PromoCodeEvent

        getgenv()[Settings_Name] = {
            PollenAutoFarm = false,
            AutoTPToSprouts = false,
            ESP_COLOR = Color3.fromRGB(255, 255, 255)
        }

        function startPollenFarm()
            local player = game:GetService("Players").LocalPlayer
            local playerHumRP = player.Character.HumanoidRootPart

            function tp(...)
                local tic_k = os.time();
                local params = {...};
                local cframe = CFrame.new(params[1],params[2],params[3]);
                local tween,err = pcall(function()
                    local info = TweenInfo.new(1,Enum.EasingStyle.Linear);
                    local tween = game:GetService("TweenService"):Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],info,{CFrame=cframe});
                    tween:Play();
                    tween.Completed:Wait()
                end)
                if not tween then return err end
            end

            while getgenv()[Settings_Name].PollenAutoFarm == true do

                tp(-63.12186050415, 4.7453193664551, 217.46656799316)
                
                while tostring(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.MeterHUD.PollenMeter.Bar.FillBar.BackgroundColor3) ~= "0.968627, 0, 0.0901961" do
                    game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name].Scooper.ClickEvent:FireServer(9999)
                    wait(0.1)
                end
                
                if tostring(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.MeterHUD.PollenMeter.Bar.FillBar.BackgroundColor3) == "0.968627, 0, 0.0901961" then
                    for i,v in pairs(game:GetService("Workspace").HivePlatforms:GetDescendants()) do
                        if v:IsA("TextLabel") and v.Name == "TextLabel" and v.Text == game:GetService("Players").LocalPlayer.Name and v.Parent.Name == "SurfaceGui" then
                            playerHumRP.CFrame = v.Parent.Parent.CFrame + Vector3.new(0, 1, 0)
                            wait(3)
                            game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
                            
                            local waitingForHoney = true
                            
                            game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.MeterHUD.HoneyMeter.Bar.TextLabel:GetPropertyChangedSignal("Text"):Connect(function()
                                waitingForHoney = false
                            end)
                            
                            while waitingForHoney == true do
                            wait() 
                            end
                        end
                    end
                end

            end
        end

        function redeemAllCodes()
            promoCodesEvent:FireServer("38217")
            promoCodesEvent:FireServer("Bopmaster")
            promoCodesEvent:FireServer("Buzz")
            promoCodesEvent:FireServer("Cog")
            promoCodesEvent:FireServer("Connoisseur")
            promoCodesEvent:FireServer("Crawlers")
            promoCodesEvent:FireServer("Nectar")
            promoCodesEvent:FireServer("Roof")
            promoCodesEvent:FireServer("Wax")
            promoCodesEvent:FireServer("Wink")
            promoCodesEvent:FireServer("ClubBean")
            promoCodesEvent:FireServer("SecretProfileCode")
            promoCodesEvent:FireServer("WikiHonor")
            promoCodesEvent:FireServer("WikiAwardClock")
            promoCodesEvent:FireServer("GumdropsForScience")
            promoCodesEvent:FireServer("Sure")
            promoCodesEvent:FireServer("BloxyCelebration")
            promoCodesEvent:FireServer("ClubConverters")
            promoCodesEvent:FireServer("ClubBasket")
            promoCodesEvent:FireServer("Marshmallow")
            promoCodesEvent:FireServer("500Mil")
            promoCodesEvent:FireServer("Discord100k")
            promoCodesEvent:FireServer("BeeDay2019")
            promoCodesEvent:FireServer("TornadoGlitch")
            promoCodesEvent:FireServer("RebootCloud")
            promoCodesEvent:FireServer("Tornado")
            promoCodesEvent:FireServer("ClubCloud")
            promoCodesEvent:FireServer("Gumaden10T")
            promoCodesEvent:FireServer("Beesmasbegins")
            promoCodesEvent:FireServer("BeesBuzz123")
            promoCodesEvent:FireServer("JollyJelly")
            promoCodesEvent:FireServer("FestiveFrogs")
            promoCodesEvent:FireServer("BANNED")
            promoCodesEvent:FireServer("Mocito100T")
            promoCodesEvent:FireServer("RedMarket")
            promoCodesEvent:FireServer("5mMembers")
            promoCodesEvent:FireServer("Cubly")
            promoCodesEvent:FireServer("Buoyant")
            promoCodesEvent:FireServer("BigBag")
            promoCodesEvent:FireServer("Teespring")
            promoCodesEvent:FireServer("BeesBuzz123")
            promoCodesEvent:FireServer("Discord100k")
            promoCodesEvent:FireServer("ClubConverters")
            promoCodesEvent:FireServer("500mil")
            promoCodesEvent:FireServer("Marshmallow")
        end

        Window = UILibrary.new("GrubHub V6 ~ Bee Swarm Simulator", 5013109572)

        local FarmingWindow = Window:addPage("Farming", 5012544693)
        local FarmingSection = FarmingWindow:addSection("Farming")

        local VisualsWindow = Window:addPage("Visuals", 5012544693)
        local VisualsSelection = VisualsWindow:addSection("Visuals")

        local CodesWindow = Window:addPage("Codes", 5012544693)
        local CodesSection = CodesWindow:addSection("Codes")

        FarmingSection:addToggle("Auto Farm Pollen", false, function(Bool)
            if Bool then
                getgenv()[Settings_Name].PollenAutoFarm = true
                startPollenFarm();
            else
                getgenv()[Settings_Name].PollenAutoFarm = false
            end
        end)

        FarmingSection:addToggle("Auto Teleport To Sprouts", false, function(Bool)
            if Bool then
                getgenv()[Settings_Name].AutoTPToSprouts = true
                game:GetService("Workspace").Particles.Folder2.ChildAdded:Connect(function(ch)
                    if string.find(ch.Name, "Sprout") and getgenv()[Settings_Name].AutoTPToSprouts == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(ch.CFrame.Position + Vector3.new(0, 35, 0))
                    end
                end)
            else
                getgenv()[Settings_Name].AutoTPToSprouts = false
            end
        end)

        CodesSection:addButton("Redeem All Codes", function(Bool)
            redeemAllCodes();
        end)

        VisualsSelection:addToggle("ESP Boxes", false, function(Bool)
            if Bool then
                for _, Plr in ipairs(game:GetService("Players"):GetPlayers()) do
                    if Plr ~= game:GetService("Players").LocalPlayer then
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
                for _, Plr in ipairs(game:GetService("Players"):GetPlayers()) do
                    if Plr ~= game:GetService("Players").LocalPlayer then
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

        Window:SelectPage(Window.pages[1], true)
    end
end