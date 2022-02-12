local DiamondsFolder = workspace:WaitForChild("CollectibleDiamonds", 5)

if getgenv().BODY_POS == nil then
	getgenv().BODY_POS = Instance.new("BodyPosition", game.Players.LocalPlayer.Character.HumanoidRootPart)
	
end

while true do
	if DiamondsFolder then
		for I,V in ipairs(DiamondsFolder:GetChildren()) do
			if V:IsA("BasePart") then
				if V.Transparency > 0 then
					getgenv().BODY_POS = Instance.new("BodyPosition", game.Players.LocalPlayer.Character.HumanoidRootPart)
					getgenv().BODY_POS.MaxForce = Vector3.new(9e9, 9e9, 9e9)
					getgenv().BODY_POS.Position = Vector3.new(0, 0, 0)
					getgenv().BODY_POS.P = 0
					game.Players.LocalPlayer.Character.Humanoid.Sit = false
					game.Players.LocalPlayer.Character.Humanoid.Jump = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = V.CFrame
					game.Players.LocalPlayer.Character.Humanoid.Sit = false
					game.Players.LocalPlayer.Character.Humanoid.Jump = true
					getgenv().BODY_POS.P = 1250
					getgenv().BODY_POS.Position = Vector3.new(V.Size.X, V.Size.Y, V.Size.Z)
					getgenv().BODY_POS:Destroy()
					task.wait(0.01)
				end
			end
		end
	end
	task.wait(1 / 100)
end