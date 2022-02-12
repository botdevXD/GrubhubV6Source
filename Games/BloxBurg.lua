do
    xpcall(function()
        if tostring(game.PlaceId) == "185655149" then
            getgenv()["USE_GRUBHUB_UNIVERSAL"] = false
            getgenv()["UpdateLoop"] = type(getgenv()["UpdateLoop"]) == "boolean" and getgenv()["UpdateLoop"] or false;
            getgenv()["UpdateCache"] = type(getgenv()["UpdateCache"]) == "table" and getgenv()["UpdateCache"] or {};
            getgenv()["GAME_HOOKS_CACHE"] = type(getgenv()["GAME_HOOKS_CACHE"]) == "table" and getgenv()["GAME_HOOKS_CACHE"] or {};
            getgenv()["GAME_MODULES_CACHE"] = type(getgenv()["GAME_MODULES_CACHE"]) == "table" and getgenv()["GAME_MODULES_CACHE"] or {};
            getgenv()["JOB_CONNECTIONS"] = type(getgenv()["JOB_CONNECTIONS"]) == "table" and getgenv()["JOB_CONNECTIONS"] or {};
            getgenv()["JOB_CACHED_DATA"] = type(getgenv()["JOB_CACHED_DATA"]) == "table" and getgenv()["JOB_CACHED_DATA"] or {};

            Settings_Name = "BLOXBURG_SETTINGS"

            getgenv()[Settings_Name] = {
                Hairdresser_autofarm = false,
                HAIR_DRESSER_COLOR = nil,
                HAIR_DRESSER_TABLE = nil,
                HAIR_DRESSER_MIRROR = nil
            }

            local HairStyleData = {
                -- old
                ["rbxassetid://2134922793"] = 13332444, ["rbxassetid://2134786243"] = 16627529,
                ["rbxassetid://2134786004"] = 82186393, ["rbxassetid://2134785788"] = 26400959,
                ["rbxassetid://2134785492"] = 19999424, ["rbxassetid://2134785137"] = 19999424,
                ["rbxassetid://2134784893"] = 13070796, ["rbxassetid://2134784708"] = 31309506,
                ["rbxassetid://2134784523"] = 74878559, ["rbxassetid://2134784337"] = 47963332,
                ["rbxassetid://2134784122"] = 11412443,
        
                -- new
                ["rbxassetid://2134922767"] = 13332444, ["rbxassetid://2134786236"] = 16627529,
                ["rbxassetid://2134785997"] = 82186393, ["rbxassetid://2134785777"] = 26400959,
                ["rbxassetid://2134785130"] = 19999424, ["rbxassetid://2134784889"] = 13070796,
                ["rbxassetid://2134784698"] = 31309506, ["rbxassetid://2134784513"] = 74878559,
                ["rbxassetid://2134784330"] = 47963332, ["rbxassetid://2134784092"] = 11412443
            }

            local HairStylesIconData = {
                Blacklisted = {["rbxassetid://2037427845"] = true},
                Whitelisted = {["rbxassetid://2132263837"] = true}
            }

            local function GetHairDresserData()
                table.clear(getgenv()["JOB_CACHED_DATA"])
                for _, V in ipairs(workspace:GetDescendants()) do
                    if tostring(V) == "Done" and V.ClassName == "ImageButton" then
                        table.insert(getgenv()["JOB_CACHED_DATA"], {
                            Mirror = V.Parent.Parent.Parent,
                            Station = V.Parent.Parent.Parent.Parent,
                            StyleFrame = V.Parent.Style,
                            ColorFrame = V.Parent.Color,
                            DoneFunction = getconnections(V.Activated)[1].Function,
                            NextColorFunction = getconnections(V.Parent:FindFirstChild("Color").Next.Activated)[1].Function,
                            NextStyleFunction = getconnections(V.Parent:FindFirstChild("Style").Next.Activated)[1].Function
                        })
                    end
                end
            end
            GetHairDresserData()

            local ReplicatedStorage = game["GetService"](game, "ReplicatedStorage")
            local RunService = game["GetService"](game, "RunService")
            local Players = game["GetService"](game, "Players")
            local Player = Players["LocalPlayer"]
            local PlayerGui = Players["LocalPlayer"]["PlayerGui"]
            local WorkLable = PlayerGui:FindFirstChild("WorkLabel", true)
            local Format, Split, GSUB, gmatch, match = string["format"], string["split"], string["gsub"], string["gmatch"], string["match"]

            Window = UILibrary.new("GrubHub V6 ~ Bloxburg", 5013109572)

            local AutoFarmWindow = Window:addPage("Auto Farm", 5012544693)
            local AutoFarmSection = AutoFarmWindow:addSection("Features")

            for _, Key in pairs(getgc(true)) do
                local JobModule = type(Key) == "table" and rawget(Key, "GetJobModule") and Key or nil
                local ModuleTable = type(Key) == "table" and rawget(Key, "ClientStats") and Key or nil
                if JobModule then
                    getgenv()["GAME_MODULES_CACHE"]["JOB_MODULE"] = getgenv()["GAME_MODULES_CACHE"]["JOB_MODULE"] or JobModule
                end

                if ModuleTable then
                    if type(ModuleTable.ClientStats) == "table" then
                        getgenv()["GAME_MODULES_CACHE"]["STAT_MODULE"] = getgenv()["GAME_MODULES_CACHE"]["STAT_MODULE"] or ModuleTable
                    end
                end
            end

            local function DisconnectJobs()
                for _, Connection in ipairs(getgenv()["JOB_CONNECTIONS"]) do
                    if typeof(Connection) == "RBXScriptConnection" then
                        Connection:Disconnect()
                    end
                end

                table.clear(getgenv()["JOB_CONNECTIONS"])
            end
            DisconnectJobs()

            local function CompleteHair_Dresser_Task(OBJ_Value)
                pcall(function()
                    task.spawn(function()
                        if OBJ_Value ~= nil then
                            if not getgenv()[Settings_Name].HAIR_DRESSER_MIRROR then return nil end
                            if getgenv()[Settings_Name].HAIR_DRESSER_MIRROR.Parent == nil then return nil end
                            local HDDummy = getgenv()[Settings_Name].HAIR_DRESSER_MIRROR.Parent:WaitForChild("HairdresserDummy", 5)
                            local HDDummyHair = HDDummy:WaitForChild("Hair", 5)
                            if not HDDummyHair then return nil end
                            local ChatPop = OBJ_Value.Head:WaitForChild("ChatBubble", 5)
                            if not ChatPop then return nil end
                            local IconFrameHolder = ChatPop.Body.IconFrame:WaitForChild(" ", 5)
                            if not IconFrameHolder then return nil end
                            
                            for _, V in ipairs(IconFrameHolder:GetChildren()) do
                                if not getgenv()[Settings_Name].Hairdresser_autofarm then
                                    break
                                end

                                if V:isA("ImageLabel") then
                                    if V.Name == "Icon" then
                                        if HairStylesIconData.Blacklisted[tostring(V.Image)] == nil then
                                            if HairStylesIconData.Whitelisted[tostring(V.Image)] == nil then
                                                local hasHData = HairStyleData[tostring(V.Image)]
                                                if hasHData ~= nil then

                                                    repeat
                                                        local Fixed = tostring(HDDummyHair.Mesh.MeshId)
                                                        
                                                        if not tostring(Fixed):find(tostring(hasHData)) and getgenv()[Settings_Name].Hairdresser_autofarm == true then
                                                            getgenv()[Settings_Name].HAIR_DRESSER_TABLE.NextStyleFunction()
                                                        else
                                                            break
                                                        end
                                                        task.wait(.05)
                                                    until tostring(Fixed):find(tostring(hasHData))
                                                else
                                                    getgenv()[Settings_Name].HAIR_DRESSER_TABLE.DoneFunction()
                                                end
                                            else
                                                -- colour
                                                getgenv()[Settings_Name].HAIR_DRESSER_COLOR = V.ImageColor3
                                                local ColorVal = getgenv()[Settings_Name].HAIR_DRESSER_COLOR
                                                local R, G, B = math.floor(ColorVal.R * 255), math.floor(ColorVal.G * 255), math.floor(ColorVal.B * 255)
                                                getgenv()[Settings_Name].HAIR_DRESSER_COLOR = Color3.fromRGB(R, G, B)
                                            end
                                        end
                                    end
                                end
                            end
                            if getgenv()[Settings_Name].Hairdresser_autofarm == true then
                                if getgenv()[Settings_Name].HAIR_DRESSER_COLOR ~= nil then
                                    repeat
                                        if HDDummyHair.Color ~= getgenv()[Settings_Name].HAIR_DRESSER_COLOR and getgenv()[Settings_Name].Hairdresser_autofarm == true then
                                            getgenv()[Settings_Name].HAIR_DRESSER_TABLE.NextColorFunction()
                                        end
                                        task.wait(.05)
                                    until HDDummyHair.Color == getgenv()[Settings_Name].HAIR_DRESSER_COLOR
                                end
                                task.wait(.1)
                                getgenv()[Settings_Name].HAIR_DRESSER_TABLE.DoneFunction()
                            end
                        end
                    end)
                end)
            end
            
            local STR_IDX = 0

            getgenv()["UpdateCache"]["HairDresser"] = function()
                if getgenv()[Settings_Name].Hairdresser_autofarm == true then
                    if getgenv()["GAME_MODULES_CACHE"]["JOB_MODULE"] ~= nil then
                        if getgenv()["GAME_MODULES_CACHE"]["JOB_MODULE"].IsWorking() then
                            if #getgenv()["JOB_CONNECTIONS"] <= 0 then
                                if WorkLable ~= nil then
                                    if WorkLable.Text == "Hairdresser" then
                                        DisconnectJobs()

                                        STR_IDX += 1
                                        print(STR_IDX)

                                        local Root = getgenv()["GAME_MODULES_CACHE"]["JOB_MODULE"].Modules.CharacterHandler:GetRoot()
                                        table.insert(getgenv()["JOB_CONNECTIONS"], true) -- Stops it from being spammed

                                        GetHairDresserData()
                                        task.wait(.2)

                                        getgenv()[Settings_Name].HAIR_DRESSER_MIRROR = nil
                                        getgenv()[Settings_Name].HAIR_DRESSER_TABLE = nil
                                        getgenv()[Settings_Name].HAIR_DRESSER_COLOR = nil

                                        if not getgenv()[Settings_Name].HAIR_DRESSER_MIRROR and Root then
                                            repeat
                                                for _, VV in pairs(getgenv()["JOB_CACHED_DATA"]) do
                                                    if (Root.Position - VV.Mirror.Position).Magnitude <= 11.5 then
                                                        getgenv()[Settings_Name].HAIR_DRESSER_MIRROR = VV.Mirror
                                                        getgenv()[Settings_Name].HAIR_DRESSER_TABLE = VV
                                                        break
                                                    end
                                                end
                                                task.wait(0.1)
                                            until getgenv()[Settings_Name].HAIR_DRESSER_MIRROR ~= nil and getgenv()[Settings_Name].HAIR_DRESSER_TABLE ~= nil

                                            if getgenv()[Settings_Name].Hairdresser_autofarm == true then
                                                CompleteHair_Dresser_Task(getgenv()[Settings_Name].HAIR_DRESSER_TABLE.Station.Occupied.Value)
                                                table.insert(getgenv()["JOB_CONNECTIONS"], getgenv()[Settings_Name].HAIR_DRESSER_TABLE.Station.Occupied.Changed:Connect(function(OBJ_Value)
                                                    CompleteHair_Dresser_Task(OBJ_Value)
                                                end))
                                            end
                                        end

                                    else
                                        DisconnectJobs()
                                    end
                                else
                                    WorkLable = PlayerGui:FindFirstChild("WorkLabel", true)
                                    DisconnectJobs()
                                end
                            end
                        else
                            DisconnectJobs()
                        end
                    end
                end
            end

            AutoFarmSection:addToggle("Hairdresser auto farm", false, function(Bool)
                DisconnectJobs()
                getgenv()[Settings_Name].Hairdresser_autofarm = Bool
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
        end
    end, function(err)
        return warn(err .. "\n" .. debug.traceback())
    end)
end