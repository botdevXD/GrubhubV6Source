do
    if tostring(game.PlaceId) == "6897226634" then
        getgenv()["USE_GRUBHUB_UNIVERSAL"] = false
        
        --------------------------------------------------------------------------------------------

        getgenv().UpdateLoop = type(getgenv().UpdateLoop) == "boolean" and getgenv().UpdateLoop or false;
        getgenv().UpdateCache = type(getgenv().UpdateCache) == "table" and getgenv().UpdateCache or {};

        local Timber_ContextActionService = game:GetService("ContextActionService")
        local Timber_PathFindingService = game:GetService("PathfindingService")
        local Timber_PhysicsService = game:GetService("PhysicsService")
        local Timber_Players = game:GetService("Players")
        local Timber_Player = Timber_Players.LocalPlayer
        local Timber_Axe_HookedWait = false
        local Timber_Axe_Swinging = false
        
        Window = UILibrary.new("GrubHub V6 ~ Timber", 5013109572)
        
        local VarTable = {
            Bools = {
                InstantSwing = false,
                AutoCutTrees = false,
                CuttingTreeDown = false,
                MovedToPosition = false
            },
            Tables = {
                Trees = {}
            },
            Signals = {
                MoveToFinishedSig = nil
            }
        }

        --------------------------------------------------------------------------------------------
        -- Function base
        
        local function GetPlot()
            local PlotsFolder = workspace:FindFirstChild("Plots")
            if PlotsFolder then
                for _, V in ipairs(PlotsFolder:GetChildren()) do
                    if V:FindFirstChild("Owner") then
                        if tostring(V.Owner.Value) == tostring(Timber_Player) then
                            return V
                        end
                    end
                end
            end
            return nil
        end
        
        local function RobloxInput(InoutBool)
            if InoutBool then
                Timber_ContextActionService:BindAction("freezeMovement",function() return Enum.ContextActionResult.Sink end, false, unpack(Enum.PlayerActions:GetEnumItems()))
            else
                Timber_ContextActionService:UnbindAction("freezeMovement")
            end
        end
        
        local function GetTree(TModel)
            if TModel ~= nil then
                for Index, Value in ipairs(VarTable.Tables.Trees) do
                    if type(Value) == "table" then
                        if Value.TreeModel == TModel then
                            return Index, Value
                        end
                    end
                end
            end
            return nil, nil
        end
        
        local function CollectTrees()
            local Plot = GetPlot()
            repeat task.wait(.15) Plot = GetPlot() until Plot ~= nil
        
            local function AddTree(OBJ)
                if tostring(OBJ):lower():find("tree_") then
                    local Timber_TreePath = Timber_PathFindingService:CreatePath()
                    table.insert(VarTable.Tables.Trees, {
                        TreeModel = OBJ,
                        TreeLand = OBJ.Parent,
                        TreePath = Timber_TreePath
                    })

                    pcall(function()
                        for _, TOBJ in ipairs(OBJ:GetDescendants()) do
                            if TOBJ:IsA("BasePart") then
                                TOBJ.CanCollide = false
                            end
                        end
                    end)
                end
            end

            if Plot then
                for _, V in ipairs(Plot:GetChildren()) do
                    if V:IsA("Model") then
                        for _, V in ipairs(V:GetChildren()) do
                            AddTree(V)
                        end
                    end
                end
        
                Plot.DescendantAdded:Connect(function(Child)
                    if Child:IsA("Model") then
                        AddTree(Child)
                    end
                end)
        
                Plot.DescendantRemoving:Connect(function(Child)
                    if Child:IsA("Model") then
                        if tostring(Child):lower():find("tree_") then
                            local TreeIndex, TreeTable = GetTree(Child)
                            if TreeIndex ~= nil then
                                table.remove(VarTable.Tables.Trees, TreeIndex)
                            end
                        end
                    end
                end)
            end
        end

        local function DisconnectMoveTo()
            if VarTable.Signals.MoveToFinishedSig ~= nil then
                if type(VarTable.Signals.MoveToFinishedSig) == "userdata" then
                    if VarTable.Signals.MoveToFinishedSig.Disconnect ~= nil then
                        VarTable.Bools.MovedToPosition = false
                        VarTable.Signals.MoveToFinishedSig:Disconnect()
                        VarTable.Signals.MoveToFinishedSig = nil
                    end
                end
            end
        end
        
        CollectTrees()

        local PlayerWindow = Window:addPage("Player", 5012544693)
        local AutoFarmWindow = Window:addPage("Auto Farm", 5012544693)
        local TeleportsWindow = Window:addPage("Teleports", 5012544693)
        local AxeSection = AutoFarmWindow:addSection("Axe", 5012544693)

        AxeSection:addToggle("Auto Sell", false, function(Bool)
            VarTable.Bools.AutoCutTrees = Bool
        end)

        AxeSection:addToggle("Chop All Trees", false, function(Bool)
            VarTable.Bools.AutoCutTrees = Bool
            if Bool then
                RobloxInput(true)
                task.spawn(function()
                    while VarTable.Bools.AutoCutTrees do
                        local Timber_Character = Timber_Player.Character
                        if Timber_Character then
                            local Humanoid = Timber_Character:WaitForChild("Humanoid", 60)
                            if #VarTable.Tables.Trees > 0 and not VarTable.Bools.CuttingTreeDown then
                                VarTable.Bools.CuttingTreeDown = true
                                for TreeIndex, TreeTable in ipairs(VarTable.Tables.Trees) do
                                    if not VarTable.Bools.AutoCutTrees then break; end
                                    if TreeTable.TreeModel ~= nil then
                                        local TreePos = TreeTable.TreeModel.MeshPart.CFrame.p
                                        local NewPos = Vector3.new(TreePos.X - 3.5, TreePos.Y, TreePos.Z)
        
                                        TreeTable.TreePath = Timber_PathFindingService:CreatePath()
                                        TreeTable.TreePath:ComputeAsync(Timber_Character.HumanoidRootPart.Position, NewPos)
        
                                        VarTable.Signals.MoveToFinishedSig = Humanoid.MoveToFinished:connect(function()
                                            VarTable.Bools.MovedToPosition = true
                                        end)

                                        for _, NewPoint in pairs(TreeTable.TreePath:GetWaypoints()) do
                                            VarTable.Bools.MovedToPosition = false
                                            Humanoid:MoveTo(NewPoint.Position)
                                            repeat task.wait(0.0003) until VarTable.Bools.MovedToPosition == true
                                        end
                                        DisconnectMoveTo()
                                        
                                        Timber_Character.HumanoidRootPart.CFrame = CFrame.new(Timber_Character.HumanoidRootPart.CFrame.p, TreeTable.TreeModel.Base.CFrame.p)
                                        repeat
                                            firetouchinterest(Timber_Player.Character.Axe.Hitbox, TreeTable.TreeModel.Base, 1)
                                            game.ReplicatedStorage.Communication.Remotes.HitTree:FireServer(Timber_Player.Plot.Value, tostring(TreeTable.TreeLand), tonumber(string.split(tostring(TreeTable.TreeModel), "_")[2]));
                                            task.wait(0.5)
                                        until GetTree(TreeTable.TreeModel) == nil
                                    end
                                end
                                VarTable.Bools.CuttingTreeDown = false
                            end
                        end
                        task.wait(0.0003)
                    end
                    RobloxInput(false)
                    DisconnectMoveTo()
                end)
            end
        end)

        print("Timber loaded up!")
    end
end