--[===[
do
    if tostring(game.PlaceId) == "537413528" then
        getgenv()["USE_GRUBHUB_UNIVERSAL"] = false

        local PlotData = {};
        local HttpService = game:GetService("HttpService")
        local FileName = "ExportedPlot"
        for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("StringValue") then
                if v.Name == "Tag" then
                    if v.Parent then
                       if v.Value == game:GetService("Players").LocalPlayer.Name then
                           local BlockName = v.Parent.Name
                           local BlockPart = v.Parent:FindFirstChild("PPart")
                           local BlockPosition = BlockPart.Position
                           local BlockBrickColor = BlockPart.BrickColor
                           local BlockColor3Value = BlockBrickColor.Color
                           
                           local dataToSave = {
                                Name = BlockName,
                                Orientation = {
                                    X = BlockPart.Orientation.X,
                                    Y = BlockPart.Orientation.Y,
                                    Z = BlockPart.Orientation.Z
                                },
                                Position = {
                                    X = BlockPosition.X,
                                    Y = BlockPosition.Y,
                                    Z = BlockPosition.Z
                                },
                                Color = {
                                    R = math.floor(BlockColor3Value.r * 255),
                                    G = math.floor(BlockColor3Value.g * 255),
                                    B = math.floor(BlockColor3Value.b * 255)
                                }
                            }
                           
                           table.insert(PlotData, dataToSave)
                       end
                    end
                end
            end
        end
        local PlotDataJSON = HttpService:JSONEncode(PlotData)
        writefile(FileName .. ".json", PlotDataJSON)
    end
end
]]
--[===[
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerData = Player:WaitForChild("Data", 5)
local ohString1 = "WoodBlock"
local BlockID = PlayerData:FindFirstChild(tostring(ohString1))

if BlockID then
    local ohNumber2 = tonumber(BlockID.Value)
    local ohInstance3 = workspace["Really blueZone"]
    local ohCFrame4 = CFrame.new(16, 6.10000038, -89, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    local ohBoolean5 = true
    local ohNumber6 = 2
    local ohCFrame7 = CFrame.new(310.83432, -11.899992, 305.493195, 0, 0, -1, 0, 1, 0, 1, 0, 0)

    game:GetService("Players").LocalPlayer.Backpack.BuildingTool.RF:InvokeServer(ohString1, ohNumber2, ohInstance3, ohCFrame4, ohBoolean5, ohNumber6, ohCFrame7)
end
]===]

local HttpService = game:GetService("HttpService")
local FileToReadFrom = "ExportedPlot.json"

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerData = Player:WaitForChild("Data", 5)

if isfile(FileToReadFrom) then
    local fileInfo = readfile(FileToReadFrom)
   
    local decodedInfo = HttpService:JSONDecode(fileInfo)
   
    for i,v in pairs(decodedInfo) do
        local dataName = v.Name
        local BlockID = PlayerData:FindFirstChild(tostring(dataName))
        
        if BlockID then
            --pcall(function()
                local X = v.Position.X
                local Y = v.Position.Y
                local Z = v.Position.Z
                
                local OrientationX = v.Orientation.X
                local OrientationY = v.Orientation.Y
                local OrientationZ = v.Orientation.Z
                
                local R = v.Color.R
                local G = v.Color.G
                local B = v.Color.B
                
                local dataColor = Color3.new(R, G, B)
                local zoneToPlace = game:GetService("Workspace")["Really redZone"]
                local dataPosition = Vector3.new((X - zoneToPlace.Position.X), (Y - zoneToPlace.Position.Y), (Z - zoneToPlace.Position.Z) * 2)
                
                dataPosition = zoneToPlace.Position + dataPosition
                
                dataPosition = CFrame.new(dataPosition)
                
                dataPosition = dataPosition * CFrame.Angles(math.rad(OrientationX), math.rad(OrientationY), math.rad(OrientationZ))
                
                local clonedBlock = game:GetService("ReplicatedStorage"):WaitForChild("BuildingParts"):WaitForChild(dataName)
                clonedBlock = clonedBlock:Clone()
                
                clonedBlock.PrimaryPart.Anchored = true
                clonedBlock.Parent = Workspace.TESTING_BLOCKS
                
                clonedBlock.Name = "BEN_TESTING_BLOCK"
                
                clonedBlock:SetPrimaryPartCFrame(dataPosition)
                
                print("-----------------")
                print(dataName)
                
--[===[
    local BuildRemote = Player.Backpack.BuildingTool.RF
    BuildRemote:InvokeServer(
        dataName,
        tonumber(BlockID.Value),
        nil,
        dataPosition,
        true,
        2,
        clonedBlock.PrimaryPart.CFrame
    )
]===]
                
                task.delay(1, function()
                    clonedBlock:Destroy()
                end)
            --end)
        end
    end
end