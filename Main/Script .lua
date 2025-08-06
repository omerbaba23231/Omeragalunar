-- Omeraga TPS Script v1

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local CloseButton = Instance.new("TextButton")
local ReachButton = Instance.new("TextButton")
local LevelButton = Instance.new("TextButton")
local DragButton = Instance.new("TextButton")

ScreenGui.Name = "OmeragaGui"
ScreenGui.Parent = game.CoreGui

Frame.Name = "MainFrame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.Position = UDim2.new(0.3, 0, 0.3, 0)
Frame.Size = UDim2.new(0, 250, 0, 200)
Frame.Active = true
Frame.Draggable = true

CloseButton.Name = "CloseButton"
CloseButton.Parent = Frame
CloseButton.BackgroundColor3 = Color3.fromRGB(80, 0, 0)
CloseButton.Size = UDim2.new(0, 40, 0, 25)
CloseButton.Position = UDim2.new(1, -45, 0, 5)
CloseButton.Text = "X"
CloseButton.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)

ReachButton.Name = "ReachButton"
ReachButton.Parent = Frame
ReachButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ReachButton.Position = UDim2.new(0.1, 0, 0.3, 0)
ReachButton.Size = UDim2.new(0, 200, 0, 30)
ReachButton.Text = "Reach 30"
ReachButton.MouseButton1Click:Connect(function()
	for _,v in pairs(getgc(true)) do
		if typeof(v) == "table" and rawget(v, "Reach") then
			v.Reach = 30
		end
	end
end)

LevelButton.Name = "LevelButton"
LevelButton.Parent = Frame
LevelButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
LevelButton.Position = UDim2.new(0.1, 0, 0.5, 0)
LevelButton.Size = UDim2.new(0, 200, 0, 30)
LevelButton.Text = "Level Up"
LevelButton.MouseButton1Click:Connect(function()
	for _,v in pairs(getgc(true)) do
		if typeof(v) == "table" and rawget(v, "Level") then
			v.Level = v.Level + 1
		end
	end
end)

DragButton.Name = "DragButton"
DragButton.Parent = Frame
DragButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
DragButton.Position = UDim2.new(0.1, 0
