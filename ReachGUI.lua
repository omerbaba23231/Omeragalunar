local p=game.Players.LocalPlayer
local rs=game:GetService("RunService")
local gui=Instance.new("ScreenGui",game:GetService("CoreGui"))
gui.ResetOnSpawn=false
local f=Instance.new("Frame",gui)
f.Size=UDim2.new(0,280,0,160)
f.Position=UDim2.new(0.1,0,0.2,0)
f.BackgroundColor3=Color3.new(0,0,0)
f.Active=true f.Draggable=true
local b=Instance.new("TextButton",f)
b.Size=UDim2.new(0.9,0,0.4,0)
b.Position=UDim2.new(0.05,0,0.3,0)
b.Text="Reach: KAPALI"
b.BackgroundColor3=Color3.new(0.1,0.1,0.1)
b.TextColor3=Color3.new(1,1,1)
b.TextScaled=true
local c=Instance.new("TextButton",f)
c.Size=UDim2.new(0.15,0,0.2,0)
c.Position=UDim2.new(0.85,0,0,0)
c.Text="X"
c.BackgroundColor3=Color3.new(0.3,0,0)
c.TextColor3=Color3.new(1,1,1)
c.TextScaled=true
local m=Instance.new("TextButton",f)
m.Size=UDim2.new(0.15,0,0.2,0)
m.Position=UDim2.new(0.7,0,0,0)
m.Text="-"
m.BackgroundColor3=Color3.new(0.2,0.2,0.2)
m.TextColor3=Color3.new(1,1,1)
m.TextScaled=true
local on,min=false,false
b.MouseButton1Click:Connect(function()
on=not on b.Text="Reach: "..(on and "AÇIK"or "KAPALI")end)
c.MouseButton1Click:Connect(function()gui:Destroy()end)
m.MouseButton1Click:Connect(function()
min=not min b.Visible=not min m.Text=min and"+"or"-"end)
rs.RenderStepped:Connect(function()
if not on then return end
local ch=p.Character or p.CharacterAdded:Wait()
local hrp=ch:FindFirstChild("HumanoidRootPart")
local ball=workspace:FindFirstChild("Ball")
if hrp and ball and(hrp.Position-ball.Position).Magnitude<=30 then
ball.C
