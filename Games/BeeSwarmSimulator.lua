do
    if tostring(game.PlaceId) == "1537690962" then
        getgenv()["USE_GRUBHUB_UNIVERSAL"] = false
        Settings_Name = "BSS_SETTINGS_GRUBHUB"

        local promoCodesEvent = game:GetService("ReplicatedStorage").Events.promoCodesCodeEvent

        getgenv()[Settings_Name] = {
            PollenAutoFarm = false,
            AutoTPToSprouts = false
        }

        function startPollenFarm()
            local player = game:GetService("Players").LocalPlayer
            local playerHumRP = player.Character.HumanoidRootPart

            function tp(...)
                local tic_k = tick();
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

        local CodesWindow = Window:addPage("Codes", 5012544693)
        local CodesSection = CodesWindow:addSection("Codes")

        CodesSection:addButton("Redeem All Codes", function(Bool)
            redeemAllCodes();
        end)
    end
end