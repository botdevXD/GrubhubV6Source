-- Decompiled with the Synapse X Luau decompiler.

while true do
	wait();
	if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
		break;
	end;
end;
local l__LocalPlayer__1 = game:GetService("Players").LocalPlayer;
local l__Shot__2 = script.Parent:WaitForChild("Shot");
local l__Shell__3 = script.Parent:WaitForChild("Shell");
local l__Bullet1__4 = script.Parent:WaitForChild("Bullet1");
local l__Empty__5 = script.Parent:WaitForChild("Empty");
local l__E1__6 = script.Parent:WaitForChild("E1");
local l__R1__7 = script.Parent.Fe1:WaitForChild("R1");
local l__R2__8 = script.Parent.Fe1:WaitForChild("R2");
local l__CurrentCamera__9 = workspace.CurrentCamera;
local l__TweenService__10 = game:GetService("TweenService");
local l__UserInputService__11 = game:GetService("UserInputService");
local function v12(p1, p2)
	while not p1:FindFirstChild(p2) do
		p1.ChildAdded:wait();	
	end;
	return p1[p2];
end;
SpareAmmo = script.Parent:WaitForChild("MaxAmmo").Value;
local v13 = Color3.new(1, 1, 1);
local v14 = Color3.new(1, 1, 1);
local v15 = Color3.new(1, 1, 1);
local l__Value__16 = script.Parent:WaitForChild("ClipSize").Value;
local l__Parent__17 = script.Parent;
local v18 = v12(l__Parent__17, "Handle");
local l__Debris__19 = game:GetService("Debris");
local l__Players__20 = game:GetService("Players");
local l__Value__21 = script.Parent.Mode.Value;
local l__Bullet__1 = script.Parent:WaitForChild("Bullet");
local v22 = time();
local u2 = false;
local u3 = false;
script.Parent.Equipped:Connect(function()
	if u2 == true then
		u2 = false;
		uppemntrac:Stop();
		uppemshoottrac:Stop();
	end;
	game.Players.LocalPlayer.PlayerGui.twitter.Enabled = false;
	u3 = true;
	if script.Parent.Handle:FindFirstChild("Equip") then
		script.Parent.Handle.Equip:Play();
	end;
end);
script.Parent.Unequipped:Connect(function()
	u3 = false;
	if script.Parent.Handle.Equip.IsPlaying then
		script.Parent.Handle.Equip:Stop();
	end;
	game.Players.LocalPlayer.PlayerGui.twitter.Enabled = true;
	script.Parent.Handle.unEquip:Play();
	if unetrac then
		unetrac:Play();
	end;
end);
local l__WorldToCellPreferSolid__23 = workspace.Terrain.WorldToCellPreferSolid;
local l__GetCell__24 = workspace.Terrain.GetCell;
local u4 = { l__CurrentCamera__9, game.Players.LocalPlayer.Character, workspace.apes, workspace.OBJECTS };
local function u5(p3, p4, p5, p6)
	l__Bullet__1:FireServer(p3, p4, p5, p6);
end;
local u6 = nil;
function RayCast(p7, p8, p9)
	local v25 = RaycastParams.new();
	v25.FilterDescendantsInstances = u4;
	v25.FilterType = Enum.RaycastFilterType.Blacklist;
	local v26 = workspace:Raycast(l__Parent__17.Handle.CFrame.p, p8 * 1000, v25);
	if v26 then
		local l__Instance__27 = v26.Instance;
		local l__Position__28 = v26.Position;
		local l__Normal__29 = v26.Normal;
		if l__Instance__27 then
			if l__Instance__27.Parent then
				if not (0.8 < l__Instance__27.Transparency) then
					if l__Instance__27.Parent.Name ~= "Seats" then
						if l__Instance__27.Parent.Name ~= "Interior" then
							if l__Instance__27.Name ~= "Frame" then
								if l__Instance__27.Name ~= "Frame1" then
									if l__Instance__27.Name ~= "Frame2" then
										if l__Instance__27.Name ~= "Frame3" then
											if l__Instance__27.Name ~= "Body" then
												if l__Instance__27.Name ~= "RearDoor" then
													if l__Instance__27.Name ~= "FrontDoor" then
														if l__Instance__27.Name == "Glass" then
															if l__Instance__27.Name == "Glass" then
																u5(l__Position__28, l__Normal__29, "GLASS", l__Instance__27);
															end;
															table.insert(u4, l__Instance__27);
															spawn(function()
																wait(0.01);
																table.remove(u4, table.find(u4, l__Instance__27));
															end);
															return RayCast(p7, u6.UnitRay.Direction, p9);
														else
															local v30 = nil;
															local v31 = false;
															if l__Instance__27.Parent:FindFirstChild("Humanoid") then
																v30 = l__Instance__27.Parent:FindFirstChild("Humanoid");
															elseif l__Instance__27.Parent.Parent:FindFirstChild("Humanoid") then
																v30 = l__Instance__27.Parent.Parent:FindFirstChild("Humanoid");
															end;
															if v30 ~= nil then
																if v30.Parent:FindFirstChild("BulletProofVest") then
																	if l__Instance__27.Name ~= "UpperTorso" then
																		if l__Instance__27.Name ~= "HumanoidRootPart" then
																			if l__Instance__27.Parent.Name == "BulletProofVest" then
																				v31 = true;
																			end;
																		else
																			v31 = true;
																		end;
																	else
																		v31 = true;
																	end;
																end;
															end;
															if v30 ~= nil then
																if v30.Parent.Parent:FindFirstChild("BulletProofVest") then
																	if l__Instance__27.Name ~= "UpperTorso" then
																		if l__Instance__27.Name ~= "HumanoidRootPart" then
																			if l__Instance__27.Parent.Name == "BulletProofVest" then
																				v31 = true;
																			end;
																		else
																			v31 = true;
																		end;
																	else
																		v31 = true;
																	end;
																end;
															end;
															if v30 ~= nil then
																if v30.Parent:FindFirstChild("Helmet") then
																	if l__Instance__27.Name ~= "Handle" then
																		if l__Instance__27.Name ~= "Head" then
																			if l__Instance__27.Parent.Name == "Helmet" then
																				v31 = true;
																			end;
																		else
																			v31 = true;
																		end;
																	else
																		v31 = true;
																	end;
																end;
															end;
															if v30 ~= nil then
																if v30.Parent.Parent:FindFirstChild("Helmet") then
																	if l__Instance__27.Name ~= "Handle" then
																		if l__Instance__27.Name ~= "Head" then
																			if l__Instance__27.Parent.Name == "Helmet" then
																				v31 = true;
																			end;
																		else
																			v31 = true;
																		end;
																	else
																		v31 = true;
																	end;
																end;
															end;
															if v30 ~= nil then
																if v31 == false then
																	if l__Instance__27.Name ~= "Head" then
																		script.Parent.DamageEvent:FireServer(v30, math.random(300, 500), l__Instance__27, p8, (getsurface(l__Instance__27, l__Position__28)));
																	else
																		script.Parent.Fe1.Headshot:Play();
																		script.Parent.DamageEvent2:FireServer(v30, math.random(300, 500), v30.Parent.Head, p8);
																	end;
																elseif v31 == true then
																	u5(l__Position__28, l__Normal__29, "VEST", l__Instance__27);
																end;
															elseif v31 == true then
																u5(l__Position__28, l__Normal__29, "VEST", l__Instance__27);
															end;
															if l__Instance__27.Name ~= "xd" then
																if l__Instance__27.Name ~= "ot" then
																	if l__Instance__27.Name == "o" then
																		u5(l__Position__28, l__Normal__29, "LOCK", l__Instance__27);
																	end;
																else
																	u5(l__Position__28, l__Normal__29, "LOCK", l__Instance__27);
																end;
															else
																u5(l__Position__28, l__Normal__29, "LOCK", l__Instance__27);
															end;
															if not l__Instance__27.Parent:FindFirstChild("Hinge") then
																if v31 == false then
																	u5(l__Position__28, l__Normal__29, "PART", l__Instance__27);
																end;
															end;
														end;
													else
														if l__Instance__27.Name == "Glass" then
															u5(l__Position__28, l__Normal__29, "GLASS", l__Instance__27);
														end;
														table.insert(u4, l__Instance__27);
														spawn(function()
															wait(0.01);
															table.remove(u4, table.find(u4, l__Instance__27));
														end);
														return RayCast(p7, u6.UnitRay.Direction, p9);
													end;
												else
													if l__Instance__27.Name == "Glass" then
														u5(l__Position__28, l__Normal__29, "GLASS", l__Instance__27);
													end;
													table.insert(u4, l__Instance__27);
													spawn(function()
														wait(0.01);
														table.remove(u4, table.find(u4, l__Instance__27));
													end);
													return RayCast(p7, u6.UnitRay.Direction, p9);
												end;
											else
												if l__Instance__27.Name == "Glass" then
													u5(l__Position__28, l__Normal__29, "GLASS", l__Instance__27);
												end;
												table.insert(u4, l__Instance__27);
												spawn(function()
													wait(0.01);
													table.remove(u4, table.find(u4, l__Instance__27));
												end);
												return RayCast(p7, u6.UnitRay.Direction, p9);
											end;
										else
											if l__Instance__27.Name == "Glass" then
												u5(l__Position__28, l__Normal__29, "GLASS", l__Instance__27);
											end;
											table.insert(u4, l__Instance__27);
											spawn(function()
												wait(0.01);
												table.remove(u4, table.find(u4, l__Instance__27));
											end);
											return RayCast(p7, u6.UnitRay.Direction, p9);
										end;
									else
										if l__Instance__27.Name == "Glass" then
											u5(l__Position__28, l__Normal__29, "GLASS", l__Instance__27);
										end;
										table.insert(u4, l__Instance__27);
										spawn(function()
											wait(0.01);
											table.remove(u4, table.find(u4, l__Instance__27));
										end);
										return RayCast(p7, u6.UnitRay.Direction, p9);
									end;
								else
									if l__Instance__27.Name == "Glass" then
										u5(l__Position__28, l__Normal__29, "GLASS", l__Instance__27);
									end;
									table.insert(u4, l__Instance__27);
									spawn(function()
										wait(0.01);
										table.remove(u4, table.find(u4, l__Instance__27));
									end);
									return RayCast(p7, u6.UnitRay.Direction, p9);
								end;
							else
								if l__Instance__27.Name == "Glass" then
									u5(l__Position__28, l__Normal__29, "GLASS", l__Instance__27);
								end;
								table.insert(u4, l__Instance__27);
								spawn(function()
									wait(0.01);
									table.remove(u4, table.find(u4, l__Instance__27));
								end);
								return RayCast(p7, u6.UnitRay.Direction, p9);
							end;
						else
							if l__Instance__27.Name == "Glass" then
								u5(l__Position__28, l__Normal__29, "GLASS", l__Instance__27);
							end;
							table.insert(u4, l__Instance__27);
							spawn(function()
								wait(0.01);
								table.remove(u4, table.find(u4, l__Instance__27));
							end);
							return RayCast(p7, u6.UnitRay.Direction, p9);
						end;
					else
						if l__Instance__27.Name == "Glass" then
							u5(l__Position__28, l__Normal__29, "GLASS", l__Instance__27);
						end;
						table.insert(u4, l__Instance__27);
						spawn(function()
							wait(0.01);
							table.remove(u4, table.find(u4, l__Instance__27));
						end);
						return RayCast(p7, u6.UnitRay.Direction, p9);
					end;
				else
					if l__Instance__27.Name == "Glass" then
						u5(l__Position__28, l__Normal__29, "GLASS", l__Instance__27);
					end;
					table.insert(u4, l__Instance__27);
					spawn(function()
						wait(0.01);
						table.remove(u4, table.find(u4, l__Instance__27));
					end);
					return RayCast(p7, u6.UnitRay.Direction, p9);
				end;
			end;
		end;
	end;
	game.ReplicatedStorage.Visualize:FireServer(0, script.Parent, u6.UnitRay.Direction);
end;
local l__CurrentCamera__32 = game.Workspace.CurrentCamera;
local v33 = l__TweenService__10:Create(l__CurrentCamera__32, TweenInfo.new(0.15, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out, 0, false, 0), {
	FieldOfView = 80
});
local l__TextureId__7 = l__Parent__17.TextureId;
function TagHumanoid(p10, p11)
	while true do
		if p10:FindFirstChild("creator") then

		else
			break;
		end;
		p10:FindFirstChild("creator"):Destroy();	
	end;
	local v34 = Instance.new("ObjectValue");
	v34.Value = p11;
	v34.Name = "creator";
	v34.Parent = p10;
	l__Debris__19:AddItem(v34, 1.5);
	local v35 = Instance.new("StringValue");
	v35.Value = l__TextureId__7;
	v35.Name = "icon";
	v35.Parent = v34;
end;
local u8 = false;
local u9 = nil;
local u10 = nil;
local u11 = false;
local u12 = l__Value__16;
function getsurface(p12, p13)
	local v36 = p12.CFrame:pointToObjectSpace(p13);
	if p12.Size.z / 2 - 0.02 <= v36.z then
		return "Back";
	end;
	if v36.z <= -p12.Size.z / 2 + 0.02 then
		return "Front";
	end;
	if p12.Size.x / 2 - 0.02 <= v36.x then
		return "Right";
	end;
	if v36.x <= -p12.Size.x / 2 + 0.02 then
		return "Left";
	end;
	if p12.Size.y / 2 - 0.02 <= v36.y then
		return "Top";
	end;
	if v36.y <= -p12.Size.y / 2 + 0.02 then
		return "Bottom";
	end;
	return "Front";
end;
local u13 = false;
local u14 = false;
local u15 = nil;
local u16 = nil;
local u17 = false;
local u18 = 0;
local u19 = false;
local u20 = 0.05;
local u21 = l__TweenService__10:Create(l__CurrentCamera__32, TweenInfo.new(0.15, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut, 0, false, 0), {
	FieldOfView = 80
});
function OnFire()
	if slideTrack.IsPlaying then
		return;
	end;
	if u11 == true then

	else
		return;
	end;
	if u13 == true then
		l__Empty__5:FireServer();
		return;
	end;
	if u13 == false then
		if u14 then
			return;
		end;
		if u15 then
			if 0 < u15.Health then
				if u9 then
					if 0 < script.Parent.ClipSize.Value then

					end;
				end;
				u14 = true;
				if u16 then
					if 0 < script.Parent.ClipSize.Value then
						if not u8 then
							if u17 == false then
								if math.random(1, 55) == 2 then
									if 1 < script.Parent.ClipSize.Value then
										u13 = true;
										u11 = false;
										u14 = false;
										u10.Reload.Visible = true;
										u10.Reload.Reload.Text = "Press F To UNJAM";
										UpdateAmmo(script.Parent.ClipSize.Value);
										spawn(function()
											wait(0.2);
											UpdateAmmo(script.Parent.ClipSize.Value);
											wait(0.2);
											UpdateAmmo(script.Parent.ClipSize.Value);
										end);
										local v37 = script.Parent.Handle.Tick:Clone();
										v37.Parent = script;
										v37.Name = "JAM";
										wait(0.05);
										v37.Volume = 5;
										v37:Play();
										game.Debris:AddItem(v37, script.Parent.Handle.Tick.TimeLength);
										return;
									end;
								end;
								if game.Players.LocalPlayer.Character.Humanoid.Health <= 25 then
									game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
									u14 = false;
									return;
								end;
								if u18 then
									if not u19 then
										u18 = math.min(u20, u18 + 0.05);
										UpdateCrosshair(u18);
									end;
								end;
								l__Shot__2:FireServer(l__LocalPlayer__1);
								l__Shell__3:FireServer(l__LocalPlayer__1);
								u19 = not u19;
								RayCast(v18.Position, CFrame.Angles((0.5 - math.random()) * 2 * u18, (0.5 - math.random()) * 2 * u18, (0.5 - math.random()) * 2 * u18) * (u6.Hit.p - v18.Position).unit, 280);
								if 16 <= game.Players.LocalPlayer.Character.Humanoid.WalkSpeed then
									if l__LocalPlayer__1.Character.Runnin.Value == true then
										if IdleAnim.IsPlaying == false then
											uppemshoottrac:Play();
										else
											u9:Play();
										end;
									else
										u9:Play();
									end;
								else
									u9:Play();
								end;
								delay(0, function()
									local v38 = math.abs(0.051);
									local v39 = math.random(-1, 1);
									l__CurrentCamera__9.CoordinateFrame = CFrame.new(l__CurrentCamera__9.Focus.p) * (l__CurrentCamera__9.CoordinateFrame - l__CurrentCamera__9.CoordinateFrame.p) * CFrame.Angles(v38, v38 * v39, 0) * CFrame.new(0, 0, (l__CurrentCamera__9.Focus.p - l__CurrentCamera__9.CoordinateFrame.p).magnitude);
									local v40 = -v38 / 20;
									local v41 = -(v38 * v39) / 20;
									local v42 = math.random(5, 25);
									local v43 = 1 - 1;
									while true do
										l__CurrentCamera__9.CoordinateFrame = CFrame.new(l__CurrentCamera__9.Focus.p) * (l__CurrentCamera__9.CoordinateFrame - l__CurrentCamera__9.CoordinateFrame.p) * CFrame.Angles(v40, v41, 0) * CFrame.new(0, 0, (l__CurrentCamera__9.Focus.p - l__CurrentCamera__9.CoordinateFrame.p).magnitude);
										wait();
										if 0 <= 1 then
											if v43 < v42 then

											else
												break;
											end;
										elseif v42 < v43 then

										else
											break;
										end;
										v43 = v43 + 1;									
									end;
								end);
								if script.Parent:FindFirstChild("BarrelBack") then
									script.Parent.BarrelBack.Transparency = 0;
									script.Parent.Barrel.Transparency = 1;
								end;
								if u6 then
									u6.Icon = "http://www.roblox.com/asset/?id=6558238241";
								end;
								UpdateAmmo(script.Parent.ClipSize.Value);
								wait(0.06);
								UpdateAmmo(script.Parent.ClipSize.Value);
								if u6 then
									u6.Icon = "http://www.roblox.com/asset/?id=6558238241";
								end;
								if script.Parent:FindFirstChild("BarrelBack") then
									script.Parent.BarrelBack.Transparency = 1;
									script.Parent.Barrel.Transparency = 0;
								end;
								u21:Play();
								wait(0.2);
								UpdateAmmo(script.Parent.ClipSize.Value);
							end;
						end;
					end;
				end;
				u14 = false;
				if script.Parent.ClipSize.Value == 0 then
					u10.Reload.Visible = true;
					l__Empty__5:FireServer();
				end;
				if u9 then

				end;
			end;
		end;
	end;
end;
local u22 = 0;
function UpdateTargetHit()
	u22 = u22 + 1;
	if u10 then
		if u10:FindFirstChild("Crosshair") then
			if u10.Crosshair:FindFirstChild("TargetHitImage") then
				u10.Crosshair.TargetHitImage.Visible = true;
			end;
		end;
	end;
	wait(0.5);
	u22 = u22 - 1;
	if u22 == 0 then
		if u10 then
			if u10:FindFirstChild("Crosshair") then
				if u10.Crosshair:FindFirstChild("TargetHitImage") then
					u10.Crosshair.TargetHitImage.Visible = false;
				end;
			end;
		end;
	end;
end;
function UpdateCrosshair(p14, p15)
	if u10 then
		u10.Crosshair:TweenSize(UDim2.new(0, p14 * 650 * 2 + 23, 0, p14 * 650 * 2 + 23), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.33);
	end;
end;
function UpdateAmmo(p16)
	if u10 then
		if u10:FindFirstChild("AmmoHud") then
			if u10.AmmoHud:FindFirstChild("ClipAmmo") then
				u10.AmmoHud.ClipAmmo.Text = script.Parent.ClipSize.Value;
				if 0 < p16 then
					if u10:FindFirstChild("Crosshair") then
						if u10.Crosshair:FindFirstChild("ReloadingLabel") then
							u10.Crosshair.ReloadingLabel.Visible = false;
						end;
					end;
				end;
			end;
		end;
	end;
	if u10 then
		if u10:FindFirstChild("AmmoHud") then
			if u10.AmmoHud:FindFirstChild("TotalAmmo") then
				u10.AmmoHud.TotalAmmo.Text = script.Parent.MaxAmmo.Value;
			end;
		end;
	end;
end;
local l__RunService__44 = game:GetService("RunService");
local function u23()
	if not u8 and u3 == true and script.Parent.MaxAmmo.Value > 0 then
		u9:Stop();
		if u10 and u10:FindFirstChild("Crosshair") and u10.Crosshair:FindFirstChild("ReloadingLabel") then
			u10.Crosshair.ReloadingLabel.Visible = true;
		end;
		if u11 == true then
			wait(0.02);
			ReloadTrack:Play();
			IdleAnim:Stop();
			u8 = true;
			l__Bullet1__4:FireServer(l__LocalPlayer__1);
			while true do
				wait();
				if ReloadTrack.IsPlaying == false then
					break;
				end;			
			end;
			if IdleAnim and u3 then
				IdleAnim:Play();
			end;
			if u8 == false and u3 == true then
				u8 = false;
				return;
			end;
			u12 = script.Parent.ClipSize.Value;
			UpdateAmmo(u12);
			if u10 then
				u10.Reload.Visible = false;
			end;
			u8 = false;
		end;
	end;
end;
game:GetService("UserInputService").InputBegan:connect(function(p17, p18)
	if p17.UserInputType == Enum.UserInputType.Gamepad1 and p17.KeyCode == Enum.KeyCode.ButtonX then
		u23();
	end;
end);
function OnMouseDown()
	u16 = true;
	OnFire();
end;
function OnMouseUp()
	u16 = false;
end;
local u24 = false;
function OnKeyDown(p19)
	if string.lower(p19) == "m" then
		if script.Parent.Idle.AnimationId == "rbxassetid://4975667382" then
			script.Parent.Parent:FindFirstChild("Humanoid"):UnequipTools();
			script.Parent.Idle.AnimationId = "rbxassetid://5534517175";
			script.Parent.Recoil.AnimationId = "rbxassetid://5534529130";
			script.Parent.Reload.AnimationId = "rbxassetid://5643039113";
			script.Parent.slide.AnimationId = "rbxassetid://5534905765";
			script.Parent.EquipAnim5.AnimationId = "rbxassetid://5534957167";
		else
			script.Parent.Parent:FindFirstChild("Humanoid"):UnequipTools();
			script.Parent.Idle.AnimationId = "rbxassetid://4975667382";
			script.Parent.Recoil.AnimationId = "rbxassetid://4975692919";
			script.Parent.Reload.AnimationId = "rbxassetid://5643029786";
			script.Parent.slide.AnimationId = "rbxassetid://5534862876";
			script.Parent.EquipAnim5.AnimationId = "rbxassetid://4990363307";
		end;
	end;
	if string.lower(p19) == "r" then
		if not u13 then
			if 3 < game.Players.LocalPlayer.Character.Humanoid.WalkSpeed then
				if u3 then
					u23();
					return;
				end;
			elseif string.lower(p19) == "g" then
				if not u14 then
					if not u8 then
						if u3 == true then
							if not EquipTrack.IsPlaying then
								if 3 < game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed then
									if script.Parent.Down.Value == 0 then
										u24 = true;
										u17 = true;
										GunDownTrack:Play();
										IdleAnim:Stop();
										script.Parent.Down.Value = 1;
										wait(0.5);
										u24 = false;
										return;
									end;
									if script.Parent.Down.Value == 1 then
										if not u14 then
											if not u8 then
												if u3 == true then
													if not EquipTrack.IsPlaying then
														if 3 < game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed then
															u24 = true;
															u17 = false;
															u16 = false;
															GunDownTrack:Stop();
															IdleAnim:Play();
															script.Parent.Down.Value = 0;
															wait(0.5);
															u24 = false;
														end;
													end;
												end;
											end;
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		elseif string.lower(p19) == "g" then
			if not u14 then
				if not u8 then
					if u3 == true then
						if not EquipTrack.IsPlaying then
							if 3 < game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed then
								if script.Parent.Down.Value == 0 then
									u24 = true;
									u17 = true;
									GunDownTrack:Play();
									IdleAnim:Stop();
									script.Parent.Down.Value = 1;
									wait(0.5);
									u24 = false;
									return;
								end;
								if script.Parent.Down.Value == 1 then
									if not u14 then
										if not u8 then
											if u3 == true then
												if not EquipTrack.IsPlaying then
													if 3 < game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed then
														u24 = true;
														u17 = false;
														u16 = false;
														GunDownTrack:Stop();
														IdleAnim:Play();
														script.Parent.Down.Value = 0;
														wait(0.5);
														u24 = false;
													end;
												end;
											end;
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	elseif string.lower(p19) == "g" then
		if not u14 then
			if not u8 then
				if u3 == true then
					if not EquipTrack.IsPlaying then
						if 3 < game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed then
							if script.Parent.Down.Value == 0 then
								u24 = true;
								u17 = true;
								GunDownTrack:Play();
								IdleAnim:Stop();
								script.Parent.Down.Value = 1;
								wait(0.5);
								u24 = false;
								return;
							end;
							if script.Parent.Down.Value == 1 then
								if not u14 then
									if not u8 then
										if u3 == true then
											if not EquipTrack.IsPlaying then
												if 3 < game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed then
													u24 = true;
													u17 = false;
													u16 = false;
													GunDownTrack:Stop();
													IdleAnim:Play();
													script.Parent.Down.Value = 0;
													wait(0.5);
													u24 = false;
												end;
											end;
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end;
local u25 = false;
function OnKeyDown2(p20)
	if string.lower(p20) == "f" then
		if not EquipTrack.IsPlaying then
			if u11 == false then
				if u25 == false then
					if u3 == true then
						if not ReloadTrack.IsPlaying then
							if not u14 then
								if not u17 then
									if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 3 then

									else
										slideTrack:Play();
									end;
									u25 = true;
									wait(0.25);
									if u3 == true then
										if not EquipTrack.IsPlaying then
											l__E1__6:FireServer(l__LocalPlayer__1);
											wait(0.35);
											u13 = false;
											if u10 then
												u10.Reload.Reload.Text = "R to Reload";
												u10.Reload.Visible = false;
											end;
											u11 = true;
											u25 = false;
											return;
										end;
									end;
								elseif u11 == true then
									if not EquipTrack.IsPlaying then
										if u25 == false then
											if u3 == true then
												if not ReloadTrack.IsPlaying then
													if not u14 then
														if not u17 then
															if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 3 then

															else
																slideTrack:Play();
															end;
															u25 = true;
															wait(0.25);
															l__E1__6:FireServer(l__LocalPlayer__1);
															wait(0.3);
															if u3 == true then
																if not EquipTrack.IsPlaying then
																	u13 = false;
																	u11 = true;
																	if u10 then
																		u10.Reload.Reload.Text = "R to Reload";
																		u10.Reload.Visible = false;
																	end;
																	wait(0.35);
																	u25 = false;
																end;
															end;
														end;
													end;
												end;
											end;
										end;
									end;
								end;
							elseif u11 == true then
								if not EquipTrack.IsPlaying then
									if u25 == false then
										if u3 == true then
											if not ReloadTrack.IsPlaying then
												if not u14 then
													if not u17 then
														if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 3 then

														else
															slideTrack:Play();
														end;
														u25 = true;
														wait(0.25);
														l__E1__6:FireServer(l__LocalPlayer__1);
														wait(0.3);
														if u3 == true then
															if not EquipTrack.IsPlaying then
																u13 = false;
																u11 = true;
																if u10 then
																	u10.Reload.Reload.Text = "R to Reload";
																	u10.Reload.Visible = false;
																end;
																wait(0.35);
																u25 = false;
															end;
														end;
													end;
												end;
											end;
										end;
									end;
								end;
							end;
						elseif u11 == true then
							if not EquipTrack.IsPlaying then
								if u25 == false then
									if u3 == true then
										if not ReloadTrack.IsPlaying then
											if not u14 then
												if not u17 then
													if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 3 then

													else
														slideTrack:Play();
													end;
													u25 = true;
													wait(0.25);
													l__E1__6:FireServer(l__LocalPlayer__1);
													wait(0.3);
													if u3 == true then
														if not EquipTrack.IsPlaying then
															u13 = false;
															u11 = true;
															if u10 then
																u10.Reload.Reload.Text = "R to Reload";
																u10.Reload.Visible = false;
															end;
															wait(0.35);
															u25 = false;
														end;
													end;
												end;
											end;
										end;
									end;
								end;
							end;
						end;
					elseif u11 == true then
						if not EquipTrack.IsPlaying then
							if u25 == false then
								if u3 == true then
									if not ReloadTrack.IsPlaying then
										if not u14 then
											if not u17 then
												if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 3 then

												else
													slideTrack:Play();
												end;
												u25 = true;
												wait(0.25);
												l__E1__6:FireServer(l__LocalPlayer__1);
												wait(0.3);
												if u3 == true then
													if not EquipTrack.IsPlaying then
														u13 = false;
														u11 = true;
														if u10 then
															u10.Reload.Reload.Text = "R to Reload";
															u10.Reload.Visible = false;
														end;
														wait(0.35);
														u25 = false;
													end;
												end;
											end;
										end;
									end;
								end;
							end;
						end;
					end;
				elseif u11 == true then
					if not EquipTrack.IsPlaying then
						if u25 == false then
							if u3 == true then
								if not ReloadTrack.IsPlaying then
									if not u14 then
										if not u17 then
											if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 3 then

											else
												slideTrack:Play();
											end;
											u25 = true;
											wait(0.25);
											l__E1__6:FireServer(l__LocalPlayer__1);
											wait(0.3);
											if u3 == true then
												if not EquipTrack.IsPlaying then
													u13 = false;
													u11 = true;
													if u10 then
														u10.Reload.Reload.Text = "R to Reload";
														u10.Reload.Visible = false;
													end;
													wait(0.35);
													u25 = false;
												end;
											end;
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			elseif u11 == true then
				if not EquipTrack.IsPlaying then
					if u25 == false then
						if u3 == true then
							if not ReloadTrack.IsPlaying then
								if not u14 then
									if not u17 then
										if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 3 then

										else
											slideTrack:Play();
										end;
										u25 = true;
										wait(0.25);
										l__E1__6:FireServer(l__LocalPlayer__1);
										wait(0.3);
										if u3 == true then
											if not EquipTrack.IsPlaying then
												u13 = false;
												u11 = true;
												if u10 then
													u10.Reload.Reload.Text = "R to Reload";
													u10.Reload.Visible = false;
												end;
												wait(0.35);
												u25 = false;
											end;
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		elseif u11 == true then
			if not EquipTrack.IsPlaying then
				if u25 == false then
					if u3 == true then
						if not ReloadTrack.IsPlaying then
							if not u14 then
								if not u17 then
									if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 3 then

									else
										slideTrack:Play();
									end;
									u25 = true;
									wait(0.25);
									l__E1__6:FireServer(l__LocalPlayer__1);
									wait(0.3);
									if u3 == true then
										if not EquipTrack.IsPlaying then
											u13 = false;
											u11 = true;
											if u10 then
												u10.Reload.Reload.Text = "R to Reload";
												u10.Reload.Visible = false;
											end;
											wait(0.35);
											u25 = false;
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end;
local u26 = true;
local u27 = nil;
local u28 = nil;
local u29 = nil;
local u30 = nil;
local u31 = nil;
function OnEquipped(p21)
	u26 = false;
	u25 = false;
	IdleAnim = v12(l__Parent__17, "Idle");
	GunDownAnim = v12(l__Parent__17, "GunDown");
	u27 = v12(l__Parent__17, "Recoil");
	EquipAnim = v12(l__Parent__17, "EquipAnim5");
	unequipAnim = v12(l__Parent__17, "unequipAnimm");
	uppemn = v12(l__Parent__17, "upidle");
	uppemshoot = v12(l__Parent__17, "UpShoot");
	unequipAnim = v12(l__Parent__17, "unequipAnimm");
	unequipAnim = v12(l__Parent__17, "unequipAnimm");
	slideAnim = v12(l__Parent__17, "slide");
	ReloadAnim = v12(l__Parent__17, "Reload");
	u28 = v12(v18, "FireSound");
	u29 = l__Parent__17.Parent;
	u30 = game:GetService("Players"):GetPlayerFromCharacter(u29);
	u15 = u29:FindFirstChild("Humanoid");
	u31 = u29:FindFirstChild("UpperTorso");
	u6 = p21;
	u10 = v12(l__Parent__17, "WeaponHud"):Clone();
	if u10 then
		if u30 then
			u10.Parent = u30.PlayerGui;
			UpdateAmmo(script.Parent.ClipSize.Value);
			if u13 == true then
				u10.Reload.Visible = true;
				u10.Reload.Reload.Text = "Press F To UNJAM";
			elseif script.Parent.ClipSize.Value <= 0 then
				u10.Reload.Visible = true;
				u10.Reload.Reload.Text = "R to Reload";
			end;
		end;
	end;
	if l__UserInputService__11.TouchEnabled == true then
		u10.F.Visible = true;
		u10.G.Visible = true;
		u10.RE.Visible = true;
		u10.F.TextButton.MouseButton1Click:Connect(function()
			if not EquipTrack.IsPlaying then
				if u11 == false then
					if u25 == false then
						if u3 == true then
							if not ReloadTrack.IsPlaying then
								if not u14 then
									if not u17 then
										if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 3 then

										else
											slideTrack:Play();
										end;
										u25 = true;
										wait(0.25);
										if u3 == true then
											if not EquipTrack.IsPlaying then
												l__E1__6:FireServer(l__LocalPlayer__1);
												wait(0.35);
												u13 = false;
												if u10 then
													u10.Reload.Reload.Text = "R to Reload";
													u10.Reload.Visible = false;
												end;
												u11 = true;
												u25 = false;
												return;
											end;
										end;
									elseif u11 == true then
										if not EquipTrack.IsPlaying then
											if u25 == false then
												if u3 == true then
													if not ReloadTrack.IsPlaying then
														if not u14 then
															if not u17 then
																if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 3 then

																else
																	slideTrack:Play();
																end;
																u25 = true;
																wait(0.25);
																l__E1__6:FireServer(l__LocalPlayer__1);
																wait(0.3);
																if u3 == true then
																	if not EquipTrack.IsPlaying then
																		u13 = false;
																		u11 = true;
																		if u10 then
																			u10.Reload.Reload.Text = "R to Reload";
																			u10.Reload.Visible = false;
																		end;
																		wait(0.35);
																		u25 = false;
																	end;
																end;
															end;
														end;
													end;
												end;
											end;
										end;
									end;
								elseif u11 == true then
									if not EquipTrack.IsPlaying then
										if u25 == false then
											if u3 == true then
												if not ReloadTrack.IsPlaying then
													if not u14 then
														if not u17 then
															if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 3 then

															else
																slideTrack:Play();
															end;
															u25 = true;
															wait(0.25);
															l__E1__6:FireServer(l__LocalPlayer__1);
															wait(0.3);
															if u3 == true then
																if not EquipTrack.IsPlaying then
																	u13 = false;
																	u11 = true;
																	if u10 then
																		u10.Reload.Reload.Text = "R to Reload";
																		u10.Reload.Visible = false;
																	end;
																	wait(0.35);
																	u25 = false;
																end;
															end;
														end;
													end;
												end;
											end;
										end;
									end;
								end;
							elseif u11 == true then
								if not EquipTrack.IsPlaying then
									if u25 == false then
										if u3 == true then
											if not ReloadTrack.IsPlaying then
												if not u14 then
													if not u17 then
														if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 3 then

														else
															slideTrack:Play();
														end;
														u25 = true;
														wait(0.25);
														l__E1__6:FireServer(l__LocalPlayer__1);
														wait(0.3);
														if u3 == true then
															if not EquipTrack.IsPlaying then
																u13 = false;
																u11 = true;
																if u10 then
																	u10.Reload.Reload.Text = "R to Reload";
																	u10.Reload.Visible = false;
																end;
																wait(0.35);
																u25 = false;
															end;
														end;
													end;
												end;
											end;
										end;
									end;
								end;
							end;
						elseif u11 == true then
							if not EquipTrack.IsPlaying then
								if u25 == false then
									if u3 == true then
										if not ReloadTrack.IsPlaying then
											if not u14 then
												if not u17 then
													if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 3 then

													else
														slideTrack:Play();
													end;
													u25 = true;
													wait(0.25);
													l__E1__6:FireServer(l__LocalPlayer__1);
													wait(0.3);
													if u3 == true then
														if not EquipTrack.IsPlaying then
															u13 = false;
															u11 = true;
															if u10 then
																u10.Reload.Reload.Text = "R to Reload";
																u10.Reload.Visible = false;
															end;
															wait(0.35);
															u25 = false;
														end;
													end;
												end;
											end;
										end;
									end;
								end;
							end;
						end;
					elseif u11 == true then
						if not EquipTrack.IsPlaying then
							if u25 == false then
								if u3 == true then
									if not ReloadTrack.IsPlaying then
										if not u14 then
											if not u17 then
												if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 3 then

												else
													slideTrack:Play();
												end;
												u25 = true;
												wait(0.25);
												l__E1__6:FireServer(l__LocalPlayer__1);
												wait(0.3);
												if u3 == true then
													if not EquipTrack.IsPlaying then
														u13 = false;
														u11 = true;
														if u10 then
															u10.Reload.Reload.Text = "R to Reload";
															u10.Reload.Visible = false;
														end;
														wait(0.35);
														u25 = false;
													end;
												end;
											end;
										end;
									end;
								end;
							end;
						end;
					end;
				elseif u11 == true then
					if not EquipTrack.IsPlaying then
						if u25 == false then
							if u3 == true then
								if not ReloadTrack.IsPlaying then
									if not u14 then
										if not u17 then
											if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 3 then

											else
												slideTrack:Play();
											end;
											u25 = true;
											wait(0.25);
											l__E1__6:FireServer(l__LocalPlayer__1);
											wait(0.3);
											if u3 == true then
												if not EquipTrack.IsPlaying then
													u13 = false;
													u11 = true;
													if u10 then
														u10.Reload.Reload.Text = "R to Reload";
														u10.Reload.Visible = false;
													end;
													wait(0.35);
													u25 = false;
												end;
											end;
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			elseif u11 == true then
				if not EquipTrack.IsPlaying then
					if u25 == false then
						if u3 == true then
							if not ReloadTrack.IsPlaying then
								if not u14 then
									if not u17 then
										if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 3 then

										else
											slideTrack:Play();
										end;
										u25 = true;
										wait(0.25);
										l__E1__6:FireServer(l__LocalPlayer__1);
										wait(0.3);
										if u3 == true then
											if not EquipTrack.IsPlaying then
												u13 = false;
												u11 = true;
												if u10 then
													u10.Reload.Reload.Text = "R to Reload";
													u10.Reload.Visible = false;
												end;
												wait(0.35);
												u25 = false;
											end;
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end);
		u10.RE.TextButton.MouseButton1Click:Connect(function()
			if not u13 then
				if 3 < game.Players.LocalPlayer.Character.Humanoid.WalkSpeed then
					if u3 then
						u23();
					end;
				end;
			end;
		end);
		u10.G.TextButton.MouseButton1Click:Connect(function()
			if not u14 then
				if not u8 then
					if u3 == true then
						if not EquipTrack.IsPlaying then
							if 3 < game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed then
								if script.Parent.Down.Value == 0 then
									u24 = true;
									u17 = true;
									GunDownTrack:Play();
									IdleAnim:Stop();
									script.Parent.Down.Value = 1;
									wait(0.5);
									u24 = false;
									return;
								end;
								if script.Parent.Down.Value == 1 then
									if not u14 then
										if not u8 then
											if u3 == true then
												if not EquipTrack.IsPlaying then
													if 3 < game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed then
														u24 = true;
														u17 = false;
														u16 = false;
														GunDownTrack:Stop();
														IdleAnim:Play();
														script.Parent.Down.Value = 0;
														wait(0.5);
														u24 = false;
													end;
												end;
											end;
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end);
	end;
	if IdleAnim then
		IdleAnim = u15.Animator:LoadAnimation(IdleAnim);
	end;
	if u27 then
		u9 = u15.Animator:LoadAnimation(u27);
	end;
	if ReloadAnim then
		ReloadTrack = u15.Animator:LoadAnimation(ReloadAnim);
	end;
	if GunDownAnim then
		GunDownTrack = u15.Animator:LoadAnimation(GunDownAnim);
	end;
	if EquipAnim then
		EquipTrack = u15.Animator:LoadAnimation(EquipAnim);
	end;
	if slideAnim then
		slideTrack = u15.Animator:LoadAnimation(slideAnim);
	end;
	if uppemn then
		uppemntrac = u15.Animator:LoadAnimation(uppemn);
	end;
	if uppemshoot then
		uppemshoottrac = u15.Animator:LoadAnimation(uppemshoot);
	end;
	if unequipAnim then
		unetrac = u15.Animator:LoadAnimation(unequipAnim);
	end;
	if u6 then
		u6.Icon = "http://www.roblox.com/asset/?id=6558238241";
		u6.Button1Down:connect(OnMouseDown);
		u6.Button1Up:connect(OnMouseUp);
		u6.KeyDown:connect(OnKeyDown);
		u6.KeyDown:connect(OnKeyDown2);
	end;
	spawn(function()
		EquipTrack:Play();
		while true do
			wait();
			if EquipTrack.IsPlaying then

			else
				break;
			end;
			if u3 ~= false then

			else
				break;
			end;		
		end;
		if u3 then
			IdleAnim:Play();
		end;
	end);
end;
local u32 = nil;
function OnUnequipped()
	if u2 == true then
		uppemntrac:Stop();
		u2 = false;
	end;
	u26 = true;
	uppemntrac:Stop();
	u11 = false;
	EquipTrack:Stop();
	u11 = false;
	u16 = false;
	u8 = false;
	u29 = nil;
	u15 = nil;
	u31 = nil;
	u30 = nil;
	u6 = nil;
	IdleAnim:Stop();
	if u9 then
		u9:Stop();
	end;
	if GunDownTrack then
		GunDownTrack:Stop();
		u17 = false;
	end;
	u15 = nil;
	u31 = nil;
	u30 = nil;
	u6 = nil;
	if u32 then
		u32 = nil;
	end;
	if u10 then
		u10.Parent = nil;
		u10 = nil;
	end;
end;
l__Parent__17.Equipped:connect(OnEquipped);
l__Parent__17.Unequipped:connect(OnUnequipped);
while true do
	wait();
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed == 4 then
		if IdleAnim and u3 and not u17 and not u8 then
			IdleAnim:Play();
		end;
		local v45 = 0.005;
		u20 = 0.01;
	elseif game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed >= 11 and game.Players.LocalPlayer.Character.Runnin.Value == true then
		v45 = 0.02;
		u20 = 0.05;
		if IdleAnim and IdleAnim.IsPlaying then
			IdleAnim:Stop();
		end;
	elseif game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed == 3 then
		if IdleAnim and u3 and not u17 and not u8 then
			IdleAnim:Play();
		end;
		v45 = 0.005;
		u20 = 0.005;
	else
		if IdleAnim and u3 and not u17 and not u8 then
			IdleAnim:Play();
		end;
		v45 = 0.01;
		u20 = 0.02;
	end;
	if u18 and not u14 then
		local v46 = time();
		if v46 - v22 > 0.4 then
			v22 = v46;
			u18 = math.max(v45, u18 - 0.05);
			UpdateCrosshair(u18, u6);
		end;
	end;
end;
