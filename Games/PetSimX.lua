do
    if tostring(game.PlaceId) == "6284583030" then
        getgenv()["USE_GRUBHUB_UNIVERSAL"] = false
        
        --------------------------------------------------------------------------------------------

        getgenv().UpdateLoop = type(getgenv().UpdateLoop) == "boolean" and getgenv().UpdateLoop or false;
        getgenv().UpdateCache = type(getgenv().UpdateCache) == "table" and getgenv().UpdateCache or {};

        Settings_Name = "PET_SIM_X_SETTINGS_GRUBHUB"

        getgenv()[Settings_Name] = {}

        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer

        Window = UILibrary.new("GrubHub V6 ~ Pet Simulator X", 5013109572)

        local PlayerWindow = Window:addPage("Player", 5012544693)
        local AutoFarmWindow = Window:addPage("Auto Farm", 5012544693)
        local AutoFarmSection = AutoFarmWindow:addSection("Farming", 5012544693)

        local PetSimSDK = {
            
        }

        print("Pet Simulator X loaded!")
    end
end