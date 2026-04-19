-- ================================================
-- REX PHILLY GODMODE v1.0 - Fully Custom by Rex
-- Fancy ImGui | OP Money Gen | Auto House Rob | Instant Interaction
-- Host this on GitHub yourself - your own script
-- ================================================

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "RexGodMode"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Simple but clean modern ImGui style (dark theme, fancy look)
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 420, 0, 520)
frame.Position = UDim2.new(0.5, -210, 0.5, -260)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
frame.BorderSizePixel = 0
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
title.Text = "🔥 REX PHILLY GODMODE 🔥"
title.TextColor3 = Color3.new(1,1,1)
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.Parent = frame

-- Money Gen Section
local moneyBtn = Instance.new("TextButton")
moneyBtn.Size = UDim2.new(0.9, 0, 0, 50)
moneyBtn.Position = UDim2.new(0.05, 0, 0.15, 0)
moneyBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
moneyBtn.Text = "ENABLE OP MONEY GEN (250+/sec)"
moneyBtn.TextColor3 = Color3.new(1,1,1)
moneyBtn.TextScaled = true
moneyBtn.Font = Enum.Font.GothamSemibold
moneyBtn.Parent = frame

moneyBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Klinac/scripts/main/phillystreetz2_money.lua", true))()
    print("✅ Rex Money Gen Activated - Printing hard")
end)

-- Auto House Rob + Instant Interaction
local houseBtn = Instance.new("TextButton")
houseBtn.Size = UDim2.new(0.9, 0, 0, 50)
houseBtn.Position = UDim2.new(0.05, 0, 0.3, 0)
houseBtn.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
houseBtn.Text = "AUTO ROB HOUSES + INSTANT INTERACT"
houseBtn.TextColor3 = Color3.new(1,1,1)
houseBtn.TextScaled = true
houseBtn.Font = Enum.Font.GothamSemibold
houseBtn.Parent = frame

houseBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dkhub43221/scripts/refs/heads/main/Loaders", true))()
    print("✅ Auto House Rob + Instant Interaction ON")
end)

-- Status label
local status = Instance.new("TextLabel")
status.Size = UDim2.new(0.9, 0, 0, 80)
status.Position = UDim2.new(0.05, 0, 0.5, 0)
status.BackgroundTransparency = 1
status.Text = "Status: Ready\nUse Money Gen first, then House Rob.\nStay under 200-250$/sec to stay safer."
status.TextColor3 = Color3.new(1,1,1)
status.TextScaled = true
status.Font = Enum.Font.Gotham
status.TextWrapped = true
status.Parent = frame

print("🔥 Rex Philly GodMode loaded - Your own script")
