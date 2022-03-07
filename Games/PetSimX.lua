do
    if tostring(game.PlaceId) == "6284583030" then
        getgenv()["USE_GRUBHUB_UNIVERSAL"] = false
        
        --------------------------------------------------------------------------------------------

        getgenv().UpdateLoop = type(getgenv().UpdateLoop) == "boolean" and getgenv().UpdateLoop or false;
        getgenv().UpdateCache = type(getgenv().UpdateCache) == "table" and getgenv().UpdateCache or {};

        local GameConfigFile = GetGameConfig(tostring(game.PlaceId) .. ".json")
        Settings_Name = "PET_SIM_X_SETTINGS_GRUBHUB"

        getgenv()[Settings_Name] = {
            AutoFarm = GameConfigFile.AutoFarm or false,
            IgnoreCoins = GameConfigFile.IgnoreCoins or false,
            IgnoreChests = GameConfigFile.IgnoreChests or false,
            IgnoreDiamonds = GameConfigFile.IgnoreDiamonds or false,
            CollectLootBags = GameConfigFile.CollectLootBags or false,
            InstantCollect = GameConfigFile.InstantCollect or false
        }

        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local GameFramework = ReplicatedStorage:WaitForChild("Framework", 5)
        local GameLibary = GameFramework:WaitForChild("Library", 5)
        local GameLibarySuccess, GameLibaryContents = pcall(require, GameLibary)
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local PlayerScripts = Player:WaitForChild("PlayerScripts", 5)
        local GameScripts_V1 = PlayerScripts:WaitForChild("Scripts", 5)
        local GameScripts_V2 = GameScripts_V1:WaitForChild("Game", 5)
        local OrbsClient = GameScripts_V2:WaitForChild("Orbs", 5)

        Window = UILibrary.new("GrubHub V6 ~ Pet Simulator X", 5013109572)

        local Camera = workspace:WaitForChild("Camera", 5)
        local PlayerWindow = Window:addPage("Player", 5012544693)
        local PlayerSection = PlayerWindow:addSection("Other", 5012544693)

        local AutoFarmWindow = Window:addPage("Auto Farm", 5012544693)
        local AutoFarmSection = AutoFarmWindow:addSection("Farming", 5012544693)

        local __VARIABLES = workspace:WaitForChild("__VARIABLES", 5)
        local __THINGS = workspace:WaitForChild("__THINGS", 5)
        local GameNetwork = nil
        local GameData = nil
        
        for _, GameGC in pairs(getgc(true)) do
            if type(GameGC) == "table" then
                if rawget(GameGC, "Network") then
                    GameNetwork = GameGC.Network
                end
                
                if rawget(GameGC, "Save") then
                    if type(GameGC.Save) == "table" then
                        if rawget(GameGC.Save, "Get") then
                            GameData = GameGC.Save
                        end
                    end
                end
            end
        end

        if not GameLibarySuccess then return Player:Kick("Failed to get game libary, contact a developer!") end
        if GameNetwork == nil then return Player:Kick("Failed to get game network, contact a developer!") end
        if GameData == nil then return Player:Kick("Failed to get game data, contact a developer!") end

        local PetSimSDK = {}

        do
            local OrbEnv = nil
            local ChestMeshIDs = (function()
                local Data = {}
                local CoinAssets = ReplicatedStorage:FindFirstChild("CoinAssets", true)

                if CoinAssets then
                    for _, ChestAsset in ipairs(CoinAssets:GetDescendants()) do
                        if ChestAsset:IsA("MeshPart") then
                            if tostring(ChestAsset):lower():find("chest") then
                                table.insert(Data, tostring(ChestAsset.MeshId))
                            end
                        end
                    end
                end

                return Data
            end)()

            PetSimSDK.Blacklisted = {}
            PetSimSDK.Types = {
                Coin = "Coin",
                Orb = "Orb",
                Lootbag = "LootBag",
                Diamond = "Diamond",
                Chest = "Chest"
            }

            PetSimSDK.GetAllPets = function()
                local Pets = {}

                if GameData then
                    local PlayerData = GameData.Get()

                    if type(PlayerData) == "table" then
                        if type(PlayerData.Pets) == "table" then
                            for _, V in ipairs(PlayerData.Pets) do
                                if V.nk ~= nil then
                                    table.insert(Pets, {
                                        PetName = V.nk,
                                        PetEquipped = V.e,
                                        PetID = V.uid,
                                        PetPowers = V.powers or {}
                                    })
                                end
                            end
                        end
                    end
                end
                return Pets
            end

            PetSimSDK.GetEquippedPets = function()
                local Pets = {}
                local PetResults = PetSimSDK.GetAllPets()
                for _, PetData in ipairs(type(PetResults) == "table" and PetResults or {}) do
                    if type(PetData) == "table" then
                        if PetData.PetEquipped == true then
                            table.insert(Pets, PetData)
                        end
                    end
                end
                return Pets
            end

            PetSimSDK.GetCoins = function()
                return __THINGS and __THINGS:FindFirstChild("Coins") and __THINGS.Coins:GetChildren() or {}
            end

            PetSimSDK.CollectCoin = function(Coin, UseAllPets)
                if GameNetwork ~= nil then
                    local EquippedPets = PetSimSDK.GetEquippedPets()
                    
                    if #EquippedPets > 0 then
                        local Pets = UseAllPets == true and (function()
                            local PetIDs = {}
        
                            for _, PetData in ipairs(EquippedPets) do
                                table.insert(PetIDs, PetData.PetID)
                            end

                            return PetIDs
                        end)() or {[1] = EquippedPets[1].PetID}
        
                        if #Pets > 0 then
                            
                            for PetIndex, PetId in ipairs(Pets) do
                                local JoinCallResult = GameNetwork.Invoke("Join Coin", Coin.Name, {PetId});

                                GameNetwork.Fire("Change Pet Target", PetId, "Coin", Coin:GetAttribute("ID"));
                                GameNetwork.Fire("Farm Coin", Coin.Name, PetId);
                            end
                        end
                    end
                end
            end

            PetSimSDK.GetOrbs = function()
                return __THINGS and __THINGS:FindFirstChild("Orbs") and __THINGS.Orbs:GetChildren() or {}
            end

            PetSimSDK.IsOrb = function(Object)
                local Check1 = typeof(Object) == "Instance" and true or false
                local Check2 = Check1 == true and Object:FindFirstChild("Orb") and true or false
                return Check2
            end

            PetSimSDK.CollectOrb = function(Orb)
                if PetSimSDK.IsOrb(Orb) and GameNetwork ~= nil then
                    if OrbsClient then
                        if OrbsClient:IsA("LocalScript") then
                            if OrbEnv == nil then
                                local OrbScriptEnvSuccess, OrbScriptEnv = pcall(getsenv, OrbsClient)
                                if OrbScriptEnvSuccess then
                                    OrbEnv = OrbScriptEnv
                                end
                            end

                            if OrbEnv ~= nil then
                                return OrbEnv.Collect(Orb)
                            end
                        end
                    end
                end
            end

            PetSimSDK.GetLootBags = function()
                return __THINGS and __THINGS:FindFirstChild("Lootbags") and __THINGS.Lootbags:GetChildren() or {}
            end

            PetSimSDK.IsLootBag = function(Object)
                local Check1 = typeof(Object) == "Instance" and true or false
                local Check2 = Check1 == true and Object:IsA("MeshPart") and tostring(Object.MeshId) == "rbxassetid://7205419138" and true or false
                local Check3 = Check1 == true and Object:IsA("MeshPart") and tostring(Object.MeshId) == "rbxassetid://8159969008" and true or false
                return Check2 or Check3
            end

            PetSimSDK.CollectLootBag = function(LootBag)
                if PetSimSDK.IsLootBag(LootBag) and GameNetwork ~= nil then
                    GameNetwork.Fire("Collect Lootbag", LootBag:GetAttribute("ID"), LootBag.CFrame.p);
                    LootBag:Destroy()
                end
            end

            PetSimSDK.IsDiamond = function(Object)
                local Check1 = typeof(Object) == "Instance" and true or false
                local Check2 = Check1 == true and Object:FindFirstChild("Coin") and true or false
                local Check3 = Check2 == true and Object.Coin:IsA("MeshPart") and tostring(Object.Coin.MeshId) == "rbxassetid://7041620873" and true or false
                local Check4 = Check2 == true and Object.Coin:IsA("MeshPart") and tostring(Object.Coin.MeshId) == "rbxassetid://7041621431" and true or false

                if Check3 == true then return true end
                if Check4 == true then return true end

                return false
            end

            PetSimSDK.IsChest = function(Object)
                local Check1 = typeof(Object) == "Instance" and true or false
                local Check2 = Check1 == true and Object:FindFirstChild("Coin") and true or false
                local Check3 = Check2 == true and Object.Coin:IsA("MeshPart") and table.find(ChestMeshIDs, tostring(Object.Coin.MeshId)) ~= nil and true or false
                return Check3
            end

            PetSimSDK.IsCoin = function(Object)
                local Check1 = typeof(Object) == "Instance" and true or false
                local Check2 = Check1 == true and Object:FindFirstChild("Coin") and true or false
                
                return Check2 == true and PetSimSDK.IsChest(Object) == false and PetSimSDK.IsDiamond(Object) == false and true or false
            end

            PetSimSDK.GetType = function(Object)
                local Type1 = PetSimSDK.IsCoin(Object) == true and PetSimSDK.Types.Coin or "NONE"
                local Type2 = PetSimSDK.IsOrb(Object) == true and PetSimSDK.Types.Orb or Type1
                local Type3 = PetSimSDK.IsLootBag(Object) == true and PetSimSDK.Types.Lootbag or Type2
                local Type4 = PetSimSDK.IsDiamond(Object) == true and PetSimSDK.Types.Diamond or Type3
                local Type5 = PetSimSDK.IsChest(Object) == true and PetSimSDK.Types.Chest or Type4
                return Type5
            end

            PetSimSDK.IsBlacklisted = function(Type)
                return table.find(PetSimSDK.Blacklisted, Type) ~= nil and true or false
            end

            PetSimSDK.RedeemFreeGifts = function()
                if GameLibarySuccess and GameNetwork ~= nil then
                    for I, V in pairs(GameLibaryContents.Directory.FreeGifts) do
                        task.spawn(function()
                            GameNetwork.Invoke("Redeem Free Gift", I);
                        end)
                    end
                end
            end

        end

        PlayerSection:addButton("Redeem free gifts", PetSimSDK.RedeemFreeGifts)

        AutoFarmSection:addToggle("Auto Farm", getgenv()[Settings_Name].AutoFarm, function(Bool)
            getgenv()[Settings_Name].AutoFarm = Bool

            local OldFarmObject = nil

            task.spawn(function()
                while getgenv()[Settings_Name].AutoFarm == true do
                    if Player.Character == nil then
                        task.wait(1 / 10000)
                        continue
                    end

                    local Root = Player.Character:FindFirstChild("HumanoidRootPart")
                    local Equipped = PetSimSDK.GetEquippedPets()

                    if #Equipped > 0 then
                        local CanProceed = OldFarmObject == nil and true or false
                        CanProceed = OldFarmObject ~= nil and OldFarmObject.Parent == nil and true or CanProceed

                        if CanProceed then
                            local Coins = PetSimSDK.GetCoins()
                            
                            if #Coins > 0 then
                                for _, Coin in ipairs(Coins) do
                                    if PetSimSDK.IsCoin(Coin) or PetSimSDK.IsChest(Coin) or PetSimSDK.IsDiamond(Coin) then
                                        if (Coin.Coin.Position - (Root ~= nil and Root.Position or Camera.CFrame.p)).Magnitude <= 150 then
                                            
                                            if not PetSimSDK.IsBlacklisted(PetSimSDK.GetType(Coin)) then
                                                PetSimSDK.CollectCoin(Coin, true)
                                                break
                                            end

                                        end
                                    end
                                end
                            end
                        end
                    end

                    task.wait(1 / 10000)
                end
            end)
        end)

        AutoFarmSection:addToggle("Ignore Coins", getgenv()[Settings_Name].IgnoreCoins, function(Bool)
            getgenv()[Settings_Name].IgnoreCoins = Bool

            local BlacklistIndex = table.find(PetSimSDK.Blacklisted, PetSimSDK.Types.Coin)

            if Bool then
                table.insert(PetSimSDK.Blacklisted, PetSimSDK.Types.Coin)
            else
                table.remove(PetSimSDK.Blacklisted, BlacklistIndex)
            end
        end)

        AutoFarmSection:addToggle("Ignore Chests", getgenv()[Settings_Name].IgnoreChests, function(Bool)
            getgenv()[Settings_Name].IgnoreChests = Bool

            local BlacklistIndex = table.find(PetSimSDK.Blacklisted, PetSimSDK.Types.Chest)

            if Bool then
                table.insert(PetSimSDK.Blacklisted, PetSimSDK.Types.Chest)
            else
                table.remove(PetSimSDK.Blacklisted, BlacklistIndex)
            end
        end)

        AutoFarmSection:addToggle("Ignore Diamonds", getgenv()[Settings_Name].IgnoreDiamonds, function(Bool)
            getgenv()[Settings_Name].IgnoreDiamonds = Bool

            local BlacklistIndex = table.find(PetSimSDK.Blacklisted, PetSimSDK.Types.Diamond)

            if Bool then
                table.insert(PetSimSDK.Blacklisted, PetSimSDK.Types.Diamond)
            else
                table.remove(PetSimSDK.Blacklisted, BlacklistIndex)
            end
        end)

        AutoFarmSection:addToggle("Instant Collect", getgenv()[Settings_Name].InstantCollect, function(Bool)
            getgenv()[Settings_Name].InstantCollect = Bool

            task.spawn(function()
                while getgenv()[Settings_Name].InstantCollect == true do

                    if Player.Character == nil then
                        task.wait(1 / 10000)
                        continue
                    end

                    local Orbs = PetSimSDK.GetOrbs()

                    if #Orbs > 0 then
                        for _, Orb in ipairs(Orbs) do
                            print(PetSimSDK.GetType(Orb))
                            PetSimSDK.CollectOrb(Orb)
                        end
                    end
                    
                    task.wait(1 / 10000)
                end
            end)
        end)

        AutoFarmSection:addToggle("Collect Lootbags", getgenv()[Settings_Name].CollectLootBags, function(Bool)
            getgenv()[Settings_Name].CollectLootBags = Bool

            task.spawn(function()
                while getgenv()[Settings_Name].CollectLootBags == true do

                    if Player.Character == nil then
                        task.wait(1 / 10000)
                        continue
                    end

                    local Lootbags = PetSimSDK.GetLootBags()

                    if #Lootbags > 0 then
                        for _, LootBag in ipairs(Lootbags) do
                            if (LootBag.Position - (Root ~= nil and Root.Position or Camera.CFrame.p)).Magnitude <= 150 then
                                PetSimSDK.CollectLootBag(LootBag)
                            end
                        end
                    end
                    
                    task.wait(1 / 10000)
                end
            end)
        end)

        print("Pet Simulator X loaded!")
    end
end