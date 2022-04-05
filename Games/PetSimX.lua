do
    if tostring(game.PlaceId) == "6284583030" then
        getgenv()["USE_GRUBHUB_UNIVERSAL"] = false
        getgenv()["grubhub_loaded"] = true
        
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
        Settings_Name = "PET_SIM_X_SETTINGS_GRUBHUB"

        getgenv()[Settings_Name] = {
            AutoFarm = GameConfigFile.AutoFarm or false,
            IgnoreCoins = GameConfigFile.IgnoreCoins or false,
            IgnoreChests = GameConfigFile.IgnoreChests or false,
            IgnoreDiamonds = GameConfigFile.IgnoreDiamonds or false,
            CollectLootBags = GameConfigFile.CollectLootBags or false,
            InstantCollect = GameConfigFile.InstantCollect or false,
            AutoHatch = GameConfigFile.AutoHatch or false,
            ChosenEgg = GameConfigFile.ChosenEgg or "Choose A Egg",
        }

        local RunService = game:GetService("RunService")
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
        local AutoFarmHatchingSection = AutoFarmWindow:addSection("Hatching", 5012544693)

        local TeleportsWindow = Window:addPage("Teleports", 5012544693)
        local WorldsTeleportSection = TeleportsWindow:addSection("Worlds", 5012544693)
        local AreasTeleportSection = TeleportsWindow:addSection("Areas", 5012544693)

        local __VARIABLES = workspace:FindFirstChild("__VARIABLES")
        local __THINGS = workspace:FindFirstChild("__THINGS")
        local __MAP = workspace:FindFirstChild("__MAP")
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

        local PlrWalk = Player ~= nil and Player.Character ~= nil and Player.Character:FindFirstChild("Humanoid") and Player.Character.Humanoid.WalkSpeed or 0
        local PlrJumpPower = Player ~= nil and Player.Character ~= nil and Player.Character:FindFirstChild("Humanoid") and Player.Character.Humanoid.JumpPower or 0
        local PetSimSDK = {}

        do
            local TeleportsData = {
                Worlds = {},
                Areas = {}
            }
            local OldOwnFunction = nil
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

            local Teleports = (function()
                for I, V in pairs(GameLibaryContents.Directory.Areas) do
                    if V.world ~= nil and V.world ~= "" then
                        if not TeleportsData.Worlds[tostring(V.world)] then
                            TeleportsData.Worlds[tostring(V.world)] = tostring(V.world)
                        end

                        if not TeleportsData.Areas[tostring(I)] then
                            TeleportsData.Areas[tostring(I)] = tostring(V.world)
                        end
                    end
                end
                
                return TeleportsData
            end)()

            function GetCoinCache()
                local CoinData = __THINGS and __THINGS:FindFirstChild("Coins") and __THINGS.Coins:GetChildren() or {}

                for _, Object in ipairs(CoinData) do
                    PetSimSDK.GetType(Object)
                end

                return CoinData
            end

            PetSimSDK.CoinsCache = {}
            
            PetSimSDK.CoinCacheTime = 999999 -- will be reset to os.time once executed!
            PetSimSDK.EquippedPetsTime = 999999 -- will be reset to os.time once executed!
            PetSimSDK.ItemTypeCache = {}
            PetSimSDK.EquippedPets = {}
            PetSimSDK.Blacklisted = {}
            PetSimSDK.Types = {
                Coin = "Coin",
                Orb = "Orb",
                Lootbag = "LootBag",
                Diamond = "Diamond",
                Chest = "Chest"
            }

            PetSimSDK.FreeGamepasses = function()
                if GameLibarySuccess then
                    if OldOwnFunction == nil then
                        OldOwnFunction = hookfunction(GameLibaryContents.Gamepasses.Owns, function(...)
                            return true
                        end)
                    end
                end
            end

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
                return type(PetSimSDK.CoinsCache) == "table" and PetSimSDK.CoinsCache or {}
            end

            PetSimSDK.CollectCoin = function(Coin, UseAllPets)
                local EquippedPets = PetSimSDK.EquippedPets

                if GameNetwork ~= nil then
                    if #EquippedPets > 0 then
                        local Pets = UseAllPets == true and (function()
                            local PetIDs = {}
        
                            for _, PetData in ipairs(EquippedPets) do
                                table.insert(PetIDs, PetData.PetID)
                            end

                            return PetIDs
                        end)() or {[1] = EquippedPets[1].PetID}
        
                        if #Pets > 0 then
                            local JoinCallResult = GameNetwork.Invoke("Join Coin", Coin.Name, Pets);

                            for PetIndex, PetId in ipairs(Pets) do
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
                if PetSimSDK.ItemTypeCache[Object] then
                    return PetSimSDK.ItemTypeCache[Object] == PetSimSDK.Types.Orb and true or false
                end

                local Check1 = typeof(Object) == "Instance" and true or false
                local Check2 = Check1 == true and Object:FindFirstChild("Orb") and true or false

                if Check2 == true then
                    PetSimSDK.ItemTypeCache[Object] = PetSimSDK.Types.Orb
                end

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
                if PetSimSDK.ItemTypeCache[Object] then
                    return PetSimSDK.ItemTypeCache[Object] == PetSimSDK.Types.Lootbag and true or false
                end

                local Check1 = typeof(Object) == "Instance" and true or false
                local Check2 = Check1 == true and Object:IsA("MeshPart") and tostring(Object.MeshId) == "rbxassetid://7205419138" and true or false
                local Check3 = Check1 == true and Object:IsA("MeshPart") and tostring(Object.MeshId) == "rbxassetid://8159964896" and true or false
                local Check4 = Check1 == true and Object:IsA("MeshPart") and tostring(Object.MeshId) == "rbxassetid://8159969008" and true or false

                if Check2 or Check3 or Check4 then
                    PetSimSDK.ItemTypeCache[Object] = PetSimSDK.Types.Lootbag
                end

                return Check2 or Check3 or Check4
            end

            PetSimSDK.CollectLootBag = function(LootBag)
                if PetSimSDK.IsLootBag(LootBag) and GameNetwork ~= nil then
                    GameNetwork.Fire("Collect Lootbag", LootBag:GetAttribute("ID"), LootBag.CFrame.p);
                    LootBag:Destroy()
                end
            end

            PetSimSDK.IsDiamond = function(Object)
                if PetSimSDK.ItemTypeCache[Object] then
                    return PetSimSDK.ItemTypeCache[Object] == PetSimSDK.Types.Diamond and true or false
                end

                local Check1 = typeof(Object) == "Instance" and true or false
                local Check2 = Check1 == true and Object:FindFirstChild("Coin") and true or false
                local Check3 = Check2 == true and Object.Coin:IsA("MeshPart") and tostring(Object.Coin.MeshId) == "rbxassetid://7041620873" and true or false
                local Check4 = Check2 == true and Object.Coin:IsA("MeshPart") and tostring(Object.Coin.MeshId) == "rbxassetid://7041621431" and true or false

                if Check3 or Check4 then
                    PetSimSDK.ItemTypeCache[Object] = PetSimSDK.Types.Diamond
                end

                if Check3 == true then return true end
                if Check4 == true then return true end

                return false
            end

            PetSimSDK.IsChest = function(Object)
                if PetSimSDK.ItemTypeCache[Object] then
                    return PetSimSDK.ItemTypeCache[Object] == PetSimSDK.Types.Chest and true or false
                end
                
                local Check1 = typeof(Object) == "Instance" and true or false
                local Check2 = Check1 == true and Object:FindFirstChild("Coin") and true or false
                local Check3 = Check2 == true and Object.Coin:IsA("MeshPart") and table.find(ChestMeshIDs, tostring(Object.Coin.MeshId)) ~= nil and true or false
                  
                if Check3 then
                    PetSimSDK.ItemTypeCache[Object] = PetSimSDK.Types.Chest
                end

                return Check3
            end

            PetSimSDK.IsCoin = function(Object)
                if PetSimSDK.ItemTypeCache[Object] then
                    return PetSimSDK.ItemTypeCache[Object] == PetSimSDK.Types.Coin and true or false
                end

                local Check1 = typeof(Object) == "Instance" and true or false
                local Check2 = Check1 == true and Object:FindFirstChild("Coin") and true or false
                
                if Check2 == true and PetSimSDK.IsChest(Object) == false and PetSimSDK.IsDiamond(Object) == false then
                    PetSimSDK.ItemTypeCache[Object] = PetSimSDK.Types.Coin
                end

                return Check2 == true and PetSimSDK.IsChest(Object) == false and PetSimSDK.IsDiamond(Object) == false and true or false
            end

            PetSimSDK.GetType = function(Object)
                if PetSimSDK.IsCoin(Object) == true then return PetSimSDK.Types.Coin end
                if PetSimSDK.IsOrb(Object) == true then return PetSimSDK.Types.Orb end
                if PetSimSDK.IsLootBag(Object) == true then return PetSimSDK.Types.Lootbag end
                if PetSimSDK.IsDiamond(Object) == true then return PetSimSDK.Types.Diamond end
                if PetSimSDK.IsChest(Object) == true then return PetSimSDK.Types.Chest end
                return nil
            end

            PetSimSDK.IsBlacklisted = function(Type)
                return PetSimSDK.Blacklisted[Type] ~= nil and true or false
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

            PetSimSDK.GetAllEggs = function()
                local Data = {}
                if GameLibarySuccess then
                    for I, _ in pairs(GameLibaryContents.Directory.Eggs) do
                        table.insert(Data, tostring(I))
                    end
                end
                return Data
            end

            PetSimSDK.GetTeleportsRaw = function()
                return Teleports
            end

            PetSimSDK.GetMapTeleports = function()
                return __MAP and __MAP:FindFirstChild("Teleports") and __MAP.Teleports or "NONE"
            end

            PetSimSDK.GetCoinsFolder = function()
                return __THINGS and __THINGS:FindFirstChild("Coins") and __THINGS.Coins
            end

            PetSimSDK.GetOrbsFolder = function()
                return __THINGS and __THINGS:FindFirstChild("Orbs") and __THINGS.Orbs
            end

            PetSimSDK.GetLootbagsFolder = function()
                return __THINGS and __THINGS:FindFirstChild("Lootbags") and __THINGS.Lootbags
            end

            PetSimSDK.MapLoader = function(AreaName) -- Map Loader hook
                if AreaName == "Trading Plaza" then
                    AreaName = "Spawn"
                end
                
                GameNetwork.Fire("Request World", AreaName)

                while not Player.PlayerGui:FindFirstChild("__MAP") do
                    GameLibaryContents.RenderStepped();
                end

                Player.Character.HumanoidRootPart.Anchored = true

                if __MAP then
                    __MAP:Destroy();
                end

                PetSimSDK.GetCoinsFolder():ClearAllChildren()
                PetSimSDK.GetOrbsFolder():ClearAllChildren()
                PetSimSDK.GetLootbagsFolder():ClearAllChildren()

                local NewMapFolder = Player.PlayerGui:WaitForChild("__MAP", 5)
                local NewMap = NewMapFolder:WaitForChild("MAP", 5)

                if NewMap then
                    local WorldData = GameLibaryContents.Directory.Worlds[AreaName];

                    if not WorldData then return warn("World data not found!") end
                    
                    if NewMap:FindFirstChild("Spawns") then
                        NewMap.Spawns:Destroy()
                    end

                    local MapDebris = GameLibaryContents.Debris:FindFirstChild("__MAPDEBRIS");
                    if not MapDebris then
                        MapDebris = Instance.new("Folder")
                        MapDebris.Name = "__MAPDEBRIS"
                        MapDebris.Parent = u1.Debris
                    else
                        MapDebris:ClearAllChildren();
                    end

                    NewMap.Name = "__MAP"
                    NewMap.Parent = workspace
                end
            end

            PetSimSDK.Teleport = function(Place, TeleportType)
                if GameLibarySuccess and Player.Character then
                    task.spawn(function()
                        local RawData = PetSimSDK.GetTeleportsRaw()
                        local TP_DATA = RawData.Worlds[tostring(Place)] or RawData.Areas[tostring(Place)]

                       pcall(function()
                            --PetSimSDK.MapLoader(TP_DATA)
                            GameLibaryContents.WorldCmds.Load(TP_DATA);
                        end)

                        if TeleportType == "Area" then
                            local TeleportsFolder = PetSimSDK.GetMapTeleports()
                            local TeleportCheck = TeleportsFolder ~= "NONE" and typeof(TeleportsFolder) == "Instance" and TeleportsFolder:FindFirstChild(tostring(Place)) or nil

                            repeat
                                TeleportsFolder = PetSimSDK.GetMapTeleports()
                                TeleportCheck = TeleportsFolder ~= "NONE" and typeof(TeleportsFolder) == "Instance" and TeleportsFolder:FindFirstChild(tostring(Place)) or nil
                                task.wait(1 / 10000)
                            until TeleportCheck ~= nil and TeleportCheck ~= "NONE"

                            if TeleportCheck ~= nil then
                                if Player.Character then
                                    local Humanoid = Player.Character:FindFirstChild("Humanoid")

                                    if Humanoid then
                                        Player.Character:SetPrimaryPartCFrame(TeleportCheck.CFrame + Vector3.new(0, Humanoid.HipHeight + 1, 0));
                                    end
                                end
                            end
                        end
                    end)
                end
            end

        end
        
        getgenv()["UpdateCache"].PlayerController = function()
            if Player then
                if Player.Character then
                    local Humanoid = Player.Character:FindFirstChild("Humanoid")

                    if Humanoid then
                        Humanoid.WalkSpeed = PlrWalk
                        Humanoid.JumpPower = PlrJumpPower
                    end

                    if PetSimSDK.EquippedPetsTime == 999999 or (os.time() - PetSimSDK.EquippedPetsTime) >= 1 then
                        PetSimSDK.EquippedPetsTime = os.time()
                        PetSimSDK.EquippedPets = PetSimSDK.GetEquippedPets()
                    end
                end
            end

            __VARIABLES = workspace:FindFirstChild("__VARIABLES")
            __THINGS = workspace:FindFirstChild("__THINGS")
            __MAP = workspace:FindFirstChild("__MAP")

            if PetSimSDK.CoinCacheTime == 999999 or (os.time() - PetSimSDK.CoinCacheTime) >= 2 then
                PetSimSDK.CoinCacheTime = os.time()

                PetSimSDK.CoinsCache = GetCoinCache()

                for Index, Value in pairs(PetSimSDK.ItemTypeCache) do
                    if typeof(Index) == "Instance" then
                        if Index.Parent == nil then
                            PetSimSDK.ItemTypeCache[Index] = nil
                        end
                    else
                        PetSimSDK.ItemTypeCache[Index] = nil
                    end
                end
            end
        end

        PlayerSection:addSlider("Walkspeed", PlrWalk, 0, 100, function(NewValue)
            PlrWalk = NewValue
        end)

        PlayerSection:addSlider("JumpPower", PlrJumpPower, 0, 100, function(NewValue)
            PlrJumpPower = NewValue
        end)

        PlayerSection:addButton("Redeem free gifts", PetSimSDK.RedeemFreeGifts)
        PlayerSection:addButton("Get all gamepasses", PetSimSDK.FreeGamepasses)

        AutoFarmSection:addToggle("Auto Farm", getgenv()[Settings_Name].AutoFarm, function(Bool)
            getgenv()[Settings_Name].AutoFarm = Bool

            local OldFarmObject = nil

            task.spawn(function()
                while getgenv()[Settings_Name].AutoFarm == true do
                    if Player.Character == nil then
                        task.wait(1 / 50)
                        continue
                    end

                    local Root = Player.Character:FindFirstChild("HumanoidRootPart")

                    if #PetSimSDK.EquippedPets > 0 then
                        local CanProceed = true--OldFarmObject == nil and true or false
                        --CanProceed = OldFarmObject ~= nil and OldFarmObject.Parent == nil and true or CanProceed

                        if CanProceed then
                            local Coins = PetSimSDK.GetCoins()

                            if #Coins > 0 then
                                for _, Coin in ipairs(Coins) do
                                    if Coin ~= nil then
                                        if Coin:FindFirstChild("Coin") then
                                            if (Coin.Coin.Position - (Root ~= nil and Root.Position or Camera.CFrame.p)).Magnitude <= 150 then
                                                local CoinType = PetSimSDK.GetType(Coin)

                                                if CoinType ~= nil then
                                                    if PetSimSDK.IsBlacklisted(tostring(CoinType)) == false then

                                                        PetSimSDK.CollectCoin(Coin, true)
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end

                    task.wait(1 / 50)
                end
            end)
        end)

        AutoFarmSection:addToggle("Ignore Coins", getgenv()[Settings_Name].IgnoreCoins, function(Bool)
            getgenv()[Settings_Name].IgnoreCoins = Bool

            if Bool then
                PetSimSDK.Blacklisted[PetSimSDK.Types.Coin] = true
            else
                PetSimSDK.Blacklisted[PetSimSDK.Types.Coin] = nil
            end
        end)

        AutoFarmSection:addToggle("Ignore Chests", getgenv()[Settings_Name].IgnoreChests, function(Bool)
            getgenv()[Settings_Name].IgnoreChests = Bool

            if Bool then
                PetSimSDK.Blacklisted[PetSimSDK.Types.Chest] = true
            else
                PetSimSDK.Blacklisted[PetSimSDK.Types.Chest] = nil
            end

        end)

        AutoFarmSection:addToggle("Ignore Diamonds", getgenv()[Settings_Name].IgnoreDiamonds, function(Bool)
            getgenv()[Settings_Name].IgnoreDiamonds = Bool
            
            if Bool then
                PetSimSDK.Blacklisted[PetSimSDK.Types.Diamond] = true
            else
                PetSimSDK.Blacklisted[PetSimSDK.Types.Diamond] = nil
            end
        end)

        AutoFarmSection:addToggle("Instant Collect", getgenv()[Settings_Name].InstantCollect, function(Bool)
            getgenv()[Settings_Name].InstantCollect = Bool

            task.spawn(function()
                while getgenv()[Settings_Name].InstantCollect == true do

                    if Player.Character == nil then
                        task.wait(1 / 250)
                        continue
                    end

                    local Orbs = PetSimSDK.GetOrbs()

                    if #Orbs > 0 then
                        for _, Orb in ipairs(Orbs) do
                            PetSimSDK.CollectOrb(Orb)
                        end
                    end
                    
                    task.wait(1 / 250)
                end
            end)
        end)

        AutoFarmSection:addToggle("Collect Lootbags", getgenv()[Settings_Name].CollectLootBags, function(Bool)
            getgenv()[Settings_Name].CollectLootBags = Bool

            task.spawn(function()
                while getgenv()[Settings_Name].CollectLootBags == true do

                    if Player.Character == nil then
                        task.wait(1 / 250)
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
                    
                    task.wait(1 / 250)
                end
            end)
        end)


        local AllEggs = PetSimSDK.GetAllEggs()

        AutoFarmHatchingSection:addToggle("Auto Hatch", getgenv()[Settings_Name].AutoHatch, function(Bool)
            getgenv()[Settings_Name].AutoHatch = Bool

            task.spawn(function()
                while getgenv()[Settings_Name].AutoHatch == true and GameNetwork ~= nil do

                    if table.find(AllEggs, tostring(getgenv()[Settings_Name].ChosenEgg)) then
                        GameNetwork.Invoke("Buy Egg", getgenv()[Settings_Name].ChosenEgg, false)
                    end

                    task.wait(1 / 100)
                end
            end)

        end)
        
        AutoFarmHatchingSection:addDropdown(getgenv()[Settings_Name].ChosenEgg, AllEggs, function(Chosen)
            if table.find(AllEggs, tostring(Chosen)) then
                getgenv()[Settings_Name].ChosenEgg = tostring(Chosen)
            end
        end, true)

        local RawTeleportData = PetSimSDK.GetTeleportsRaw()

        for WorldName, WorldPlace in pairs(RawTeleportData.Worlds) do
            WorldsTeleportSection:addButton(tostring(WorldName), function()
                PetSimSDK.Teleport(tostring(WorldName), "World")
            end)
        end

        for AreaName, AreaWorld in pairs(RawTeleportData.Areas) do
            AreasTeleportSection:addButton(tostring(AreaName), function()
                PetSimSDK.Teleport(tostring(AreaName), "Area")
            end)
        end

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
        print("Pet Simulator X loaded!")
    end
end