xpcall(function()
    local v1 = {}
    local ButtonData = {}
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
    
    local Colors = {
        
    }

    local IconData = {
        Blacklisted = {["rbxassetid://2037427845"] = true},
        Whitelisted = {["rbxassetid://2132263837"] = true}
    }

    for _, V in ipairs(workspace:GetDescendants()) do
        if tostring(V) == "Done" and V.ClassName == "ImageButton" then
            table.insert(ButtonData, {
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
    
    for I, V in pairs(getgc(true)) do
        if type(V) == "table" then
            if rawget(V, "GetJobModule") then
                v1 = V
                break
            end
        end
    end
    
    getgenv().SelectionFunction = getgenv().SelectionFunction or nil
    
    function GoToWork(p5)
    	local v7 = v1:GetJobModule(p5);

    	if v7 then

            local Root = v1.Modules.CharacterHandler:GetRoot()
            local Mirror = nil
            local MirrorT = nil

            local color = nil
            local HairC = nil

            function bruh(OBJ_Value)
                pcall(function()
                    if OBJ_Value ~= nil then
                        local HDDummy = Mirror.Parent:WaitForChild("HairdresserDummy", 5)
                        local HDDummyHair = HDDummy:WaitForChild("Hair", 5)
                        local ChatPop = OBJ_Value.Head:WaitForChild("ChatBubble", 5)
                        for _, V in ipairs(ChatPop.Body.IconFrame[" "]:GetChildren()) do
                            if V:isA("ImageLabel") then
                                if V.Name == "Icon" then
                                    if IconData.Blacklisted[tostring(V.Image)] == nil then
                                        if IconData.Whitelisted[tostring(V.Image)] == nil then
                                            local hasHData = HairStyleData[tostring(V.Image)]
                                            if hasHData ~= nil then
                                                repeat
                                                    local Fixed = tostring(HDDummyHair.Mesh.MeshId)
                                                    
                                                    if not tostring(Fixed):find(tostring(hasHData)) then
                                                        MirrorT.NextStyleFunction()
                                                    else
                                                        break
                                                    end
                                                    task.wait(.05)
                                                until tostring(Fixed):find(tostring(hasHData))
                                            else
                                                MirrorT.DoneFunction()
                                            end
                                        else
                                            -- colour
                                            color = V.ImageColor3
                                            local R, G, B = math.floor(color.R * 255), math.floor(color.G * 255), math.floor(color.B * 255)
                                            color = Color3.fromRGB(R, G, B)
                                        end
                                    end
                                end
                            end
                        end
                        if color ~= nil then
                            repeat
                                if HDDummyHair.Color ~= color then
                                    MirrorT.NextColorFunction()
                                end
                                task.wait(.05)
                            until HDDummyHair.Color == color
                        end
                        task.wait(.1)
                        MirrorT.DoneFunction()
                    end
                end)
            end

            if not Mirror and Root then
		        --v1:GoToWork(p5)
                repeat
                    for _, VV in ipairs(ButtonData) do
                        if (Root.Position - VV.Mirror.Position).Magnitude <= 11.5 then
                            Mirror = VV.Mirror
                            MirrorT = VV
                            break
                        end
                    end
                    task.wait(0.1)
                until Mirror ~= nil and MirrorT ~= nil
                Root.Anchored = false

                bruh(MirrorT.Station.Occupied.Value)

                MirrorT.Station.Occupied.Changed:Connect(function(OBJ_Value)
                    bruh(OBJ_Value)
                end)
            end

		    wait(1)
            
            if Mirror and MirrorT and Root then
                
    			for FuncIdx, Func in ipairs(debug.getprotos(v7.StartShift)) do
    			    for ConstantIdx, Constant in ipairs(debug.getconstants(Func)) do
    			        if tostring(Constant) == "JobCompleted" then
    			        end
    			    end
    			end
    			
    		end
			
    	end
    end;
    
    GoToWork("StylezHairdresser")
end, function(err)
   return warn(err .. "\n" .. debug.traceback())
end)