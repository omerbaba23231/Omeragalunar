local sg = Instance.new("ScreenGui", game.CoreGui)
local f = Instance.new("Frame", sg) f.Size = UDim2.new(0,300,0,150) f.Position = UDim2.new(0.5,-150,0.5,-75)
local btn = Instance.new("TextButton", f) btn.Size = UDim2.new(0.5,0,0,50) btn.Text = "Reach Aç"
local min = Instance.new("TextButton", f) min.Position = UDim2.new(0.5,0,0,0) min.Size = UDim2.new(0.5,0,0,50) min.Text = "Gizle"
local open = true local reachON = false

btn.MouseButton1Click:Connect(function()
	reachON = not reachON
	btn.Text = reachON and "Reach Kapalı" or "Reach Aç"
end)

min.MouseButton1Click:Connect(function()
	open = not open
	for _,v in pairs(f:GetChildren()) do if v:IsA("TextButton") then v.Visible = open end end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if not reachON then return end
	for _,v in pairs(game.Players:GetPlayers()) do
		if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
			local mag = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
			if mag < 30 then
				firetouchinterest(v.Character.HumanoidRootPart, game.Players.LocalPlayer.Character["RightHand"], 0)
				firetouchinterest(v.Character.HumanoidRootPart, game.Players.LocalPlayer.Character["RightHand"], 1)
			end
		end
	end
end)
