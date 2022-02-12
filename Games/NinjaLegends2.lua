do
    if tostring(game.PlaceId) == "5977280685" then
        getgenv()["USE_GRUBHUB_UNIVERSAL"] = false
        
        --------------------------------------------------------------------------------------------

        getgenv().UpdateLoop = type(getgenv().UpdateLoop) == "boolean" and getgenv().UpdateLoop or false;
        getgenv().UpdateCache = type(getgenv().UpdateCache) == "table" and getgenv().UpdateCache or {};

        Settings_Name = "NINJA_SWING_2_SETTINGS_GRUBHUB"

        getgenv()[Settings_Name] = {
            AUTO_SWING = false,
            AUTO_SWING_MS = 0,
            AUTO_SWORD_PURCHASE = false
        }

        local NinjaLegends_Players = game:GetService("Players")
        local NinjaLegends_Player = NinjaLegends_Players.LocalPlayer
        local NinjaLegends_PlayerGui = NinjaLegends_Player:WaitForChild("PlayerGui", 5)
        local NinjaLegends_ReplicatedStorage = game:GetService("ReplicatedStorage")
        local NinjaLegends_Weapons = NinjaLegends_ReplicatedStorage:WaitForChild("Weapons", 5)
        local Weapons = {}

        local Events = {
            AttackEvent = NinjaLegends_Player:WaitForChild("saberEvent", 5)
        }

        local UI_ELEMENTS = {
            SwordMenu = nil
        }

        for _, O_B_J in ipairs(NinjaLegends_Weapons:GetDescendants()) do
            if O_B_J:IsA("Tool") then
                table.insert(Weapons, O_B_J)
            end
        end

        Window = UILibrary.new("GrubHub V6 ~ Ninja Legends", 5013109572)

        local PlayerWindow = Window:addPage("Player", 5012544693)
        local AutoFarmWindow = Window:addPage("Auto Farm", 5012544693)
        local AutoFarmSection = AutoFarmWindow:addSection("Farming", 5012544693)

        --[===[
            AutoFarmSection:addToggle("Auto Sell", false, function(Bool)
            end)
        ]===]

        AutoFarmSection:addToggle("Auto Sword Purchase", false, function(Bool)
            getgenv()[Settings_Name].AUTO_SWORD_PURCHASE = Bool

            if Bool then
                task.spawn(function()
                    while getgenv()[Settings_Name].AUTO_SWORD_PURCHASE == true do
                        for _, ToolName in ipairs(Weapons) do
                            Events.AttackEvent:FireServer("buyBlade", ToolName)
                        end
                        task.wait(0.001)
                    end
                end)
            end
        end)

        AutoFarmSection:addSlider("Swing rate (MS)", 1, 1, 1000, function(Value)
            getgenv()[Settings_Name].AUTO_SWING_MS = Value
        end)

        AutoFarmSection:addToggle("Auto Swing", false, function(Bool)
            getgenv()[Settings_Name].AUTO_SWING = Bool

            if Bool then
                task.spawn(function()
                    while getgenv()[Settings_Name].AUTO_SWING == true do
                        local Time = getgenv()[Settings_Name].AUTO_SWING_MS ~= 1 and getgenv()[Settings_Name].AUTO_SWING_MS or 1

                        Events.AttackEvent:FireServer("swingBlade")
                        
                        task.wait(0.001 * Time) -- MS
                    end
                end)
            end
        end)

        print("Ninja Legends 2 loaded up!")
    end
end