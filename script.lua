--[[FE PP can (masturbation) so cool to use

Hatsneed

https://web.roblox.com/catalog/4047554959/International-Fedora-Brazil
https://web.roblox.com/catalog/3409612660/International-Fedora-USA
https://web.roblox.com/catalog/48474294/ROBLOX-Girl-Hair
https://web.roblox.com/catalog/63690008/Pal-Hair
https://web.roblox.com/catalog/62724852/Chestnut-Bun]]--

local ScreenGui = Instance.new("ScreenGui")

local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")
local WalkSpeedControl = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Label = Instance.new("TextLabel")
local Open = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderColor3 = Color3.fromRGB(0,0,0)
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.3823,0,0.2703,0)
Frame.Size = UDim2.new(0,200,0,150)
Frame.Active = true
Frame.Draggable = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0,0,0)
TextButton.BorderSizePixel = 3
TextButton.Position = UDim2.new(0.633,0,0.3,0)
TextButton.Size = UDim2.new(0,74,0,73)
TextButton.Text = "back"

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(0,0,0)
TextButton_2.BorderSizePixel = 3
TextButton_2.Position = UDim2.new(0,0,0.3,0)
TextButton_2.Size = UDim2.new(0,74,0,73)
TextButton_2.Text = "forward"

TextLabel.Parent = Frame
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0,-4.7,-0.5,0)
TextLabel.Size = UDim2.new(0,200,0,70)
TextLabel.Text = "press 2 times because the hands will disappear"

Close.Parent = Frame
Close.BackgroundColor3 = Color3.fromRGB(255,255,255)
Close.Position = UDim2.new(0.86,0,-0.01,0)
Close.Size = UDim2.new(0,30,0,30)
Close.Text = "×"

Label.Parent = Frame
Label.BackgroundColor3 = Color3.fromRGB(0,0,0)
Label.Position = UDim2.new(0,0,1,0)
Label.Size = UDim2.new(0,200,0,25)
Label.Text = "Made by goodmaster#2082"

Open.Parent = ScreenGui
Open.Position = UDim2.new(-0.0007,0,0.5208,0)
Open.Size = UDim2.new(0,100,0,50)
Open.Text = "Open"

ScreenGui.Parent = game.CoreGui

--// ORIGINAL ALIGN LOGIC (unchanged style)

local function align(i,v)
local att0 = Instance.new("Attachment", i)
att0.Position = Vector3.new(0,0,0)

local att1 = Instance.new("Attachment", v)
att1.Position = Vector3.new(-1.2,-0.3,-0.5)
att1.Rotation = Vector3.new(45,0,30)

local AP = Instance.new("AlignPosition", i)
AP.Attachment0 = att0
AP.Attachment1 = att1
AP.MaxForce = 9999999
AP.Responsiveness = 100

local AO = Instance.new("AlignOrientation", i)
AO.Attachment0 = att0
AO.Attachment1 = att1
AO.MaxTorque = 9999999
AO.Responsiveness = 100
end

--// BUTTON LOGIC (unchanged)

TextButton.MouseButton1Click:Connect(function()
for i = 1,5 do
local Player = game.Players.LocalPlayer
local Character = Player.Character

Character["Left Arm"]:BreakJoints()
align(Character["Left Arm"], Character["Torso"])
wait(0.1)
end
end)

TextButton_2.MouseButton1Click:Connect(function()
for i = 1,5 do
local Player = game.Players.LocalPlayer
local Character = Player.Character

Character["Right Arm"]:BreakJoints()
align(Character["Right Arm"], Character["Torso"])
wait(0.1)
end
end)

--// CLOSE / OPEN (unchanged)
Close.MouseButton1Click:Connect(function()
Frame.Visible = false
Open.Visible = true
end)

Open.MouseButton1Click:Connect(function()
Frame.Visible = true
Open.Visible = false
end)

--// 🚨 BUG FIX (THIS WAS THE ISSUE)
-- REMOVED THIS ENTIRE BLOCK:
--[[

for i,v in next, game.Players.LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then
game:GetService("RunService").Heartbeat:Connect(function()
v.Velocity = Vector3.new(0,35,0)
wait(0.5)
end)
end
end

]]
