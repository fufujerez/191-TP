local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.Name = "TP_Hub_191"
ScreenGui.ResetOnSpawn = false

-- Hub Container
local HubFrame = Instance.new("Frame")
HubFrame.Parent = ScreenGui
HubFrame.Size = UDim2.new(0,300,0,400)
HubFrame.Position = UDim2.new(0.5,-150,0.5,-200)
HubFrame.BackgroundColor3 = Color3.fromRGB(25,25,35)
HubFrame.BackgroundTransparency = 0.1
HubFrame.BorderSizePixel = 0
HubFrame.Active = true
HubFrame.Draggable = true
HubFrame.ClipsDescendants = true

-- Shadow / Gradient Effect
local Corner = Instance.new("UICorner")
Corner.Parent = HubFrame
Corner.CornerRadius = UDim.new(0,10)

local Stroke = Instance.new("UIStroke")
Stroke.Parent = HubFrame
Stroke.Color = Color3.fromRGB(45,45,55)
Stroke.Thickness = 2

-- Title Bar
local TitleBar = Instance.new("Frame")
TitleBar.Parent = HubFrame
TitleBar.Size = UDim2.new(1,0,0,45)
TitleBar.BackgroundColor3 = Color3.fromRGB(35,35,45)
TitleBar.BorderSizePixel = 0

local TitleCorner = Instance.new("UICorner")
TitleCorner.Parent = TitleBar
TitleCorner.CornerRadius = UDim.new(0,10)

-- Title Text
local Title = Instance.new("TextLabel")
Title.Parent = TitleBar
Title.Size = UDim2.new(1,-50,1,0)
Title.Position = UDim2.new(0,15,0,0)
Title.BackgroundTransparency = 1
Title.Text = "⚡ 𝟏𝟗𝟏 𝐓𝐏 𝐇𝐔𝐁 ⚡"
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18

-- Minimize Button
local MinBtn = Instance.new("TextButton")
MinBtn.Parent = TitleBar
MinBtn.Size = UDim2.new(0,30,0,30)
MinBtn.Position = UDim2.new(1,-40,0,7.5)
MinBtn.BackgroundColor3 = Color3.fromRGB(60,60,70)
MinBtn.Text = "−"
MinBtn.TextColor3 = Color3.fromRGB(255,255,255)
MinBtn.TextSize = 20
MinBtn.Font = Enum.Font.GothamBold

local MinCorner = Instance.new("UICorner")
MinCorner.Parent = MinBtn
MinCorner.CornerRadius = UDim.new(0,8)

-- Tab System
local TabBar = Instance.new("Frame")
TabBar.Parent = HubFrame
TabBar.Size = UDim2.new(1,0,0,45)
TabBar.Position = UDim2.new(0,0,0,45)
TabBar.BackgroundColor3 = Color3.fromRGB(30,30,40)
TabBar.BorderSizePixel = 0

-- Tab Buttons
local TPTabBtn = Instance.new("TextButton")
TPTabBtn.Parent = TabBar
TPTabBtn.Size = UDim2.new(0.5,-1,1,-10)
TPTabBtn.Position = UDim2.new(0,5,0,5)
TPTabBtn.BackgroundColor3 = Color3.fromRGB(50,50,60)
TPTabBtn.Text = "🚀 TELEPORT"
TPTabBtn.TextColor3 = Color3.fromRGB(255,255,255)
TPTabBtn.Font = Enum.Font.GothamBold
TPTabBtn.TextSize = 14

local TPCorner = Instance.new("UICorner")
TPCorner.Parent = TPTabBtn
TPCorner.CornerRadius = UDim.new(0,8)

local SettingsTabBtn = Instance.new("TextButton")
SettingsTabBtn.Parent = TabBar
SettingsTabBtn.Size = UDim2.new(0.5,-6,1,-10)
SettingsTabBtn.Position = UDim2.new(0.5,1,0,5)
SettingsTabBtn.BackgroundColor3 = Color3.fromRGB(40,40,50)
SettingsTabBtn.Text = "⚙️ SETTINGS"
SettingsTabBtn.TextColor3 = Color3.fromRGB(200,200,200)
SettingsTabBtn.Font = Enum.Font.GothamBold
SettingsTabBtn.TextSize = 14

local SettingsCorner = Instance.new("UICorner")
SettingsCorner.Parent = SettingsTabBtn
SettingsCorner.CornerRadius = UDim.new(0,8)

-- Content Container
local ContentFrame = Instance.new("Frame")
ContentFrame.Parent = HubFrame
ContentFrame.Size = UDim2.new(1,0,1,-90)
ContentFrame.Position = UDim2.new(0,0,0,90)
ContentFrame.BackgroundColor3 = Color3.fromRGB(25,25,35)
ContentFrame.BorderSizePixel = 0
ContentFrame.BackgroundTransparency = 0.1

local ContentCorner = Instance.new("UICorner")
ContentCorner.Parent = ContentFrame
ContentCorner.CornerRadius = UDim.new(0,10)

-- TP Tab Content
local TPTab = Instance.new("Frame")
TPTab.Parent = ContentFrame
TPTab.Size = UDim2.new(1,0,1,0)
TPTab.BackgroundTransparency = 1
TPTab.Visible = true

-- Settings Tab Content
local SettingsTab = Instance.new("Frame")
SettingsTab.Parent = ContentFrame
SettingsTab.Size = UDim2.new(1,0,1,0)
SettingsTab.BackgroundTransparency = 1
SettingsTab.Visible = false

-- TP Tab UI Elements
local TPHeader = Instance.new("TextLabel")
TPHeader.Parent = TPTab
TPHeader.Size = UDim2.new(1,-20,0,30)
TPHeader.Position = UDim2.new(0,10,0,10)
TPHeader.BackgroundTransparency = 1
TPHeader.Text = "📍 QUICK TELEPORT"
TPHeader.TextColor3 = Color3.fromRGB(150,150,255)
TPHeader.TextXAlignment = Enum.TextXAlignment.Left
TPHeader.Font = Enum.Font.GothamBold
TPHeader.TextSize = 16

-- TP Buttons (MS & RS)
local function CreateTPButton(parent, name, pos, color, text, tpCFrame)
    local btn = Instance.new("TextButton")
    btn.Parent = parent
    btn.Size = UDim2.new(1,-20,0,60)
    btn.Position = UDim2.new(0,10,0,pos)
    btn.BackgroundColor3 = color
    btn.Text = ""
    btn.BorderSizePixel = 0
    
    local btnCorner = Instance.new("UICorner")
    btnCorner.Parent = btn
    btnCorner.CornerRadius = UDim.new(0,8)
    
    local icon = Instance.new("TextLabel")
    icon.Parent = btn
    icon.Size = UDim2.new(0,40,1,0)
    icon.Position = UDim2.new(0,10,0,0)
    icon.BackgroundTransparency = 1
    icon.Text = text
    icon.TextSize = 24
    icon.Font = Enum.Font.GothamBold
    
    local label = Instance.new("TextLabel")
    label.Parent = btn
    label.Size = UDim2.new(1,-60,1,0)
    label.Position = UDim2.new(0,50,0,0)
    label.BackgroundTransparency = 1
    label.Text = name
    label.TextColor3 = Color3.fromRGB(255,255,255)
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Font = Enum.Font.Gotham
    label.TextSize = 16
    
    local desc = Instance.new("TextLabel")
    desc.Parent = btn
    desc.Size = UDim2.new(1,-60,0,20)
    desc.Position = UDim2.new(0,50,0,30)
    desc.BackgroundTransparency = 1
    desc.Text = "Click to teleport"
    desc.TextColor3 = Color3.fromRGB(150,150,150)
    desc.TextXAlignment = Enum.TextXAlignment.Left
    desc.Font = Enum.Font.Gotham
    desc.TextSize = 12
    
    btn.MouseButton1Click:Connect(function()
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = tpCFrame
            
            -- Visual feedback
            btn.BackgroundColor3 = Color3.fromRGB(0,255,100)
            task.wait(0.2)
            btn.BackgroundColor3 = color
        end
    end)
    
    return btn
end

-- Create TP Buttons
local BtnBahan = CreateTPButton(TPTab, "MATERIALS STORAGE", 50, Color3.fromRGB(70,70,90), "⚒️", CFrame.new(521.32,47.79,617.25))
local BtnRS = CreateTPButton(TPTab, "HOSPITAL", 120, Color3.fromRGB(90,70,70), "🏥", CFrame.new(1065.19,28.47,420.76))

-- Settings Tab Content
local SettingsHeader = Instance.new("TextLabel")
SettingsHeader.Parent = SettingsTab
SettingsHeader.Size = UDim2.new(1,-20,0,30)
SettingsHeader.Position = UDim2.new(0,10,0,10)
SettingsHeader.BackgroundTransparency = 1
SettingsHeader.Text = "⚙️ HUB SETTINGS"
SettingsHeader.TextColor3 = Color3.fromRGB(255,150,150)
SettingsHeader.TextXAlignment = Enum.TextXAlignment.Left
SettingsHeader.Font = Enum.Font.GothamBold
SettingsHeader.TextSize = 16

-- Drag Toggle
local DragToggle = Instance.new("TextButton")
DragToggle.Parent = SettingsTab
DragToggle.Size = UDim2.new(1,-20,0,40)
DragToggle.Position = UDim2.new(0,10,0,50)
DragToggle.BackgroundColor3 = Color3.fromRGB(50,50,60)
DragToggle.Text = "🔒 Draggable: ON"
DragToggle.TextColor3 = Color3.fromRGB(255,255,255)
DragToggle.Font = Enum.Font.Gotham
DragToggle.TextSize = 14

local DragCorner = Instance.new("UICorner")
DragCorner.Parent = DragToggle
DragCorner.CornerRadius = UDim.new(0,8)

DragToggle.MouseButton1Click:Connect(function()
    HubFrame.Draggable = not HubFrame.Draggable
    DragToggle.Text = HubFrame.Draggable and "🔒 Draggable: ON" or "🔓 Draggable: OFF"
    DragToggle.BackgroundColor3 = HubFrame.Draggable and Color3.fromRGB(50,50,60) or Color3.fromRGB(80,60,60)
end)

-- Keybind Display
local KeybindLabel = Instance.new("TextLabel")
KeybindLabel.Parent = SettingsTab
KeybindLabel.Size = UDim2.new(1,-20,0,30)
KeybindLabel.Position = UDim2.new(0,10,0,100)
KeybindLabel.BackgroundTransparency = 0.5
KeybindLabel.BackgroundColor3 = Color3.fromRGB(40,40,50)
KeybindLabel.Text = "⌨️ Minimize Key: Z"
KeybindLabel.TextColor3 = Color3.fromRGB(200,200,200)
KeybindLabel.Font = Enum.Font.Gotham
KeybindLabel.TextSize = 14

local KeyCorner = Instance.new("UICorner")
KeyCorner.Parent = KeybindLabel
KeyCorner.CornerRadius = UDim.new(0,8)

-- Tab Switching Logic
TPTabBtn.MouseButton1Click:Connect(function()
    TPTab.Visible = true
    SettingsTab.Visible = false
    TPTabBtn.BackgroundColor3 = Color3.fromRGB(50,50,60)
    SettingsTabBtn.BackgroundColor3 = Color3.fromRGB(40,40,50)
    TPTabBtn.TextColor3 = Color3.fromRGB(255,255,255)
    SettingsTabBtn.TextColor3 = Color3.fromRGB(200,200,200)
end)

SettingsTabBtn.MouseButton1Click:Connect(function()
    TPTab.Visible = false
    SettingsTab.Visible = true
    TPTabBtn.BackgroundColor3 = Color3.fromRGB(40,40,50)
    SettingsTabBtn.BackgroundColor3 = Color3.fromRGB(50,50,60)
    TPTabBtn.TextColor3 = Color3.fromRGB(200,200,200)
    SettingsTabBtn.TextColor3 = Color3.fromRGB(255,255,255)
end)

-- Minimize System
local minimized = false
local openSize = UDim2.new(0,300,0,400)
local closedSize = UDim2.new(0,300,0,45)

MinBtn.MouseButton1Click:Connect(function()
    minimized = not minimized
    
    if minimized then
        TPTab.Visible = false
        SettingsTab.Visible = false
        TabBar.Visible = false
        MinBtn.Text = "□"
        
        TweenService:Create(HubFrame, TweenInfo.new(0.3), {
            Size = closedSize
        }):Play()
    else
        TPTab.Visible = true
        TabBar.Visible = true
        MinBtn.Text = "−"
        
        TweenService:Create(HubFrame, TweenInfo.new(0.3), {
            Size = openSize
        }):Play()
    end
end)

-- Keyboard Minimize (Z key)
UIS.InputBegan:Connect(function(input, gp)
    if gp then return end
    
    if input.KeyCode == Enum.KeyCode.Z then
        minimized = not minimized
        
        if minimized then
            TPTab.Visible = false
            SettingsTab.Visible = false
            TabBar.Visible = false
            MinBtn.Text = "□"
            
            TweenService:Create(HubFrame, TweenInfo.new(0.3), {
                Size = closedSize
            }):Play()
        else
            TPTab.Visible = true
            TabBar.Visible = true
            MinBtn.Text = "−"
            
            TweenService:Create(HubFrame, TweenInfo.new(0.3), {
                Size = openSize
            }):Play()
        end
    end
end)

-- Smooth Animation on Open
HubFrame.Size = UDim2.new(0,0,0,0)
task.wait(0.1)
TweenService:Create(HubFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back), {
    Size = openSize
}):Play()

-- Notifikasi
local Notification = Instance.new("TextLabel")
Notification.Parent = ScreenGui
Notification.Size = UDim2.new(0,250,0,50)
Notification.Position = UDim2.new(1,-260,1,-60)
Notification.BackgroundColor3 = Color3.fromRGB(35,35,45)
Notification.Text = "✅ 𝟏𝟗𝟏 𝐓𝐏 𝐇𝐔𝐁 Loaded!"
Notification.TextColor3 = Color3.fromRGB(0,255,100)
Notification.Font = Enum.Font.GothamBold
Notification.TextSize = 16

local NotifCorner = Instance.new("UICorner")
NotifCorner.Parent = Notification
NotifCorner.CornerRadius = UDim.new(0,10)

local NotifStroke = Instance.new("UIStroke")
NotifStroke.Parent = Notification
NotifStroke.Color = Color3.fromRGB(0,255,100)
NotifStroke.Thickness = 2

-- Auto fade notification
task.wait(3)
TweenService:Create(Notification, TweenInfo.new(0.5), {
    Position = UDim2.new(1,-260,1,-20),
    BackgroundTransparency = 1,
    TextTransparency = 1,
    StrokeTransparency = 1
}):Play()
task.wait(0.5)
Notification:Destroy()
