-- ================================================
-- REX PHILLY GODMODE - FULLY STANDALONE CUSTOM SCRIPT
-- Your own script - No external loadstrings
-- Fancy dark ImGui style
-- ================================================

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local TweenService = game:GetService("TweenService")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "RexPhillyGodMode"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Main Frame (modern dark look)
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 460, 0, 580)
mainFrame.Position = UDim2.new(0.5, -230, 0.5, -290)
mainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 24)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- Title Bar
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 60)
titleBar.BackgroundColor3 = Color3.fromRGB(0, 140, 255)
titleBar.BorderSizePixel = 0
titleBar.Parent = mainFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 1, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "🔥 REX PHILLY GODMODE 🔥"
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.TextScaled = true
titleLabel.Font = Enum.Font.GothamBlack
titleLabel.Parent = titleBar

-- Status
local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(0.95, 0, 0, 40)
statusLabel.Position = UDim2.new(0.025, 0, 0.12, 0)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = "Status: Ready | Add your own money gen loops here"
statusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
statusLabel.TextScaled = true
statusLabel.Font = Enum.Font.Gotham
statusLabel.Parent = mainFrame

-- Money Gen Section
local moneyToggle = Instance.new("TextButton")
moneyToggle.Size = UDim2.new(0.9, 0, 0, 55)
moneyToggle.Position = UDim2.new(0.05, 0, 0.22, 0)
moneyToggle.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
moneyToggle.Text = "ENABLE MONEY GEN (Custom - Add loop)"
moneyToggle.TextColor3 = Color3.new(1,1,1)
moneyToggle.TextScaled = true
moneyToggle.Font = Enum.Font.GothamBold
moneyToggle.Parent = mainFrame

moneyToggle.MouseButton1Click:Connect(function()
    -- PUT YOUR MONEY GEN LOOP HERE
    print("Money Gen button clicked - Add your real money printing code")
    statusLabel.Text = "Money Gen: Activated (custom loop needed)"
end)

-- Auto House Rob Section
local houseToggle = Instance.new("TextButton")
houseToggle.Size = UDim2.new(0.9, 0, 0, 55)
houseToggle.Position = UDim2.new(0.05, 0, 0.35, 0)
houseToggle.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
houseToggle.Text = "AUTO ROB HOUSES + INSTANT INTERACT"
houseToggle.TextColor3 = Color3.new(1,1,1)
houseToggle.TextScaled = true
houseToggle.Font = Enum.Font.GothamBold
houseToggle.Parent = mainFrame

houseToggle.MouseButton1Click:Connect(function()
    print("House Rob button clicked - Add your real auto rob + proximity prompt loop")
    statusLabel.Text = "Auto House Rob: Activated (custom code needed)"
end)

-- Close button
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 40, 0, 40)
closeBtn.Position = UDim2.new(1, -45, 0, 10)
closeBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.new(1,1,1)
closeBtn.TextScaled = true
closeBtn.Parent = titleBar

closeBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

print("✅ Rex Philly GodMode - Your own standalone script loaded")
print("Add real exploits/loops inside the button functions")
