local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

-- GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.Name = "TP_Hub_191"
ScreenGui.ResetOnSpawn = false

-- Main Frame
local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0,300,0,400)
Frame.Position = UDim2.new(0.5,-150,0.5,-200)
Frame.BackgroundColor3 = Color3.fromRGB(25,25,35)
Frame.BackgroundTransparency = 0.1
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.ClipsDescendants = true

-- Rounded Corners
local Corner = Instance.new("UICorner")
Corner.Parent = Frame
Corner.CornerRadius = UDim.new(0,10)

-- Stroke
local Stroke = Instance.new("UIStroke")
Stroke.Parent = Frame
Stroke.Color = Color3.fromRGB(45,45,55)
Stroke.Thickness = 2

-- Title Bar
local TitleBar = Instance.new("Frame")
TitleBar.Parent = Frame
TitleBar.Size = UDim2.new(1,0,0,40)
TitleBar.BackgroundColor3 = Color3.fromRGB(35,35,45)
TitleBar.BorderSizePixel = 0

local TitleCorner = Instance.new("UICorner")
TitleCorner.Parent = TitleBar
TitleCorner.CornerRadius = UDim.new(0,10)

-- Title
local Title = Instance.new("TextLabel")
Title.Parent = TitleBar
Title.Size = UDim2.new(1,-40,1,0)
Title.Position = UDim2.new(0,10,0,0)
Title.BackgroundTransparency = 1
Title.Text = "! 191 STORE !"
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16

-- Minimize Button
local MinBtn = Instance.new("TextButton")
MinBtn.Parent = TitleBar
MinBtn.Size = UDim2.new(0,30,0,30)
MinBtn.Position = UDim2.new(1,-35,0,5)
MinBtn.BackgroundColor3 = Color3.fromRGB(60,60,70)
MinBtn.Text = "−"
MinBtn.TextColor3 = Color3.fromRGB(255,255,255)
MinBtn.TextSize = 20
MinBtn.Font = Enum.Font.GothamBold

local MinCorner = Instance.new("UICorner")
MinCorner.Parent = MinBtn
MinCorner.CornerRadius = UDim.new(0,8)

-- Tab Buttons
local TabFrame = Instance.new("Frame")
TabFrame.Parent = Frame
TabFrame.Size = UDim2.new(1,0,0,40)
TabFrame.Position = UDim2.new(0,0,0,40)
TabFrame.BackgroundColor3 = Color3.fromRGB(30,30,40)
TabFrame.BorderSizePixel = 0

-- TP Tab Button
local TPTabBtn = Instance.new("TextButton")
TPTabBtn.Parent = TabFrame
TPTabBtn.Size = UDim2.new(0.5,-2,1,-8)
TPTabBtn.Position = UDim2.new(0,4,0,4)
TPTabBtn.BackgroundColor3 = Color3.fromRGB(50,50,60)
TPTabBtn.Text = "🚀 TELEPORT"
TPTabBtn.TextColor3 = Color3.fromRGB(255,255,255)
TPTabBtn.Font = Enum.Font.GothamBold
TPTabBtn.TextSize = 14

local TPTabCorner = Instance.new("UICorner")
TPTabCorner.Parent = TPTabBtn
TPTabCorner.CornerRadius = UDim.new(0,8)

-- Settings Tab Button
local SettingsTabBtn = Instance.new("TextButton")
SettingsTabBtn.Parent = TabFrame
SettingsTabBtn.Size = UDim2.new(0.5,-2,1,-8)
SettingsTabBtn.Position = UDim2.new(0.5,0,0,4)
SettingsTabBtn.BackgroundColor3 = Color3.fromRGB(40,40,50)
SettingsTabBtn.Text = "⚙️ SETTINGS"
SettingsTabBtn.TextColor3 = Color3.fromRGB(200,200,200)
SettingsTabBtn.Font = Enum.Font.GothamBold
SettingsTabBtn.TextSize = 14

local SettingsTabCorner = Instance.new("UICorner")
SettingsTabCorner.Parent = SettingsTabBtn
SettingsTabCorner.CornerRadius = UDim.new(0,8)

-- Content Container
local Content = Instance.new("Frame")
Content.Parent = Frame
Content.Size = UDim2.new(1,0,1,-80)
Content.Position = UDim2.new(0,0,0,80)
Content.BackgroundColor3 = Color3.fromRGB(25,25,35)
Content.BorderSizePixel = 0
Content.BackgroundTransparency = 0.1

local ContentCorner = Instance.new("UICorner")
ContentCorner.Parent = Content
ContentCorner.CornerRadius = UDim.new(0,10)

-- TP Tab Content
local TPContent = Instance.new("Frame")
TPContent.Parent = Content
TPContent.Size = UDim2.new(1,0,1,0)
TPContent.BackgroundTransparency = 1
TPContent.Visible = true

-- Settings Tab Content
local SettingsContent = Instance.new("Frame")
SettingsContent.Parent = Content
SettingsContent.Size = UDim2.new(1,0,1,0)
SettingsContent.BackgroundTransparency = 1
SettingsContent.Visible = false

-- TP Buttons
local BtnBahan = Instance.new("TextButton")
BtnBahan.Parent = TPContent
BtnBahan.Size = UDim2.new(1,-20,0,70)
BtnBahan.Position = UDim2.new(0,10,0,20)
BtnBahan.BackgroundColor3 = Color3.fromRGB(50,50,70)
BtnBahan.Text = ""
BtnBahan.BorderSizePixel = 0

local BtnBahanCorner = Instance.new("UICorner")
BtnBahanCorner.Parent = BtnBahan
BtnBahanCorner.CornerRadius = UDim.new(0,8)

local BahanIcon = Instance.new("TextLabel")
BahanIcon.Parent = BtnBahan
BahanIcon.Size = UDim2.new(0,40,1,0)
BahanIcon.Position = UDim2.new(0,10,0,0)
BahanIcon.BackgroundTransparency = 1
BahanIcon.Text = "⚒️"
BahanIcon.TextSize = 30
BahanIcon.Font = Enum.Font.GothamBold
BahanIcon.TextColor3 = Color3.fromRGB(255,255,255)

local BahanText = Instance.new("TextLabel")
BahanText.Parent = BtnBahan
BahanText.Size = UDim2.new(1,-60,0,30)
BahanText.Position = UDim2.new(0,50,0,10)
BahanText.BackgroundTransparency = 1
BahanText.Text = "TP MS BAHAN"
BahanText.TextColor3 = Color3.fromRGB(255,255,255)
BahanText.TextXAlignment = Enum.TextXAlignment.Left
BahanText.Font = Enum.Font.GothamBold
BahanText.TextSize = 16

local BahanDesc = Instance.new("TextLabel")
BahanDesc.Parent = BtnBahan
BahanDesc.Size = UDim2.new(1,-60,0,20)
BahanDesc.Position = UDim2.new(0,50,0,35)
BahanDesc.BackgroundTransparency = 1
BahanDesc.Text = "Material Storage"
BahanDesc.TextColor3 = Color3.fromRGB(180,180,180)
BahanDesc.TextXAlignment = Enum.TextXAlignment.Left
BahanDesc.Font = Enum.Font.Gotham
BahanDesc.TextSize = 12

local BtnRS = Instance.new("TextButton")
BtnRS.Parent = TPContent
BtnRS.Size = UDim2.new(1,-20,0,70)
BtnRS.Position = UDim2.new(0,10,0,100)
BtnRS.BackgroundColor3 = Color3.fromRGB(70,50,50)
BtnRS.Text = ""
BtnRS.BorderSizePixel = 0

local BtnRSCorner = Instance.new("UICorner")
BtnRSCorner.Parent = BtnRS
BtnRSCorner.CornerRadius = UDim.new(0,8)

local RSIcon = Instance.new("TextLabel")
RSIcon.Parent = BtnRS
RSIcon.Size = UDim2.new(0,40,1,0)
RSIcon.Position = UDim2.new(0,10,0,0)
RSIcon.BackgroundTransparency = 1
RSIcon.Text = "🏥"
RSIcon.TextSize = 30
RSIcon.Font = Enum.Font.GothamBold
RSIcon.TextColor3 = Color3.fromRGB(255,255,255)

local RSText = Instance.new("TextLabel")
RSText.Parent = BtnRS
RSText.Size = UDim2.new(1,-60,0,30)
RSText.Position = UDim2.new(0,50,0,10)
RSText.BackgroundTransparency = 1
RSText.Text = "TP RS"
RSText.TextColor3 = Color3.fromRGB(255,255,255)
RSText.TextXAlignment = Enum.TextXAlignment.Left
RSText.Font = Enum.Font.GothamBold
RSText.TextSize = 16

local RSDesc = Instance.new("TextLabel")
RSDesc.Parent = BtnRS
RSDesc.Size = UDim2.new(1,-60,0,20)
RSDesc.Position = UDim2.new(0,50,0,35)
RSDesc.BackgroundTransparency = 1
RSDesc.Text = "Hospital"
RSDesc.TextColor3 = Color3.fromRGB(180,180,180)
RSDesc.TextXAlignment = Enum.TextXAlignment.Left
RSDesc.Font = Enum.Font.Gotham
RSDesc.TextSize = 12

-- Settings Content
local SettingsLabel = Instance.new("TextLabel")
SettingsLabel.Parent = SettingsContent
SettingsLabel.Size = UDim2.new(1,-20,0,30)
SettingsLabel.Position = UDim2.new(0,10,0,20)
SettingsLabel.BackgroundTransparency = 1
SettingsLabel.Text = "⚙️ SETTINGS"
SettingsLabel.TextColor3 = Color3.fromRGB(255,150,150)
SettingsLabel.TextXAlignment = Enum.TextXAlignment.Left
SettingsLabel.Font = Enum.Font.GothamBold
SettingsLabel.TextSize = 18

local KeyLabel = Instance.new("TextLabel")
KeyLabel.Parent = SettingsContent
KeyLabel.Size = UDim2.new(1,-20,0,40)
KeyLabel.Position = UDim2.new(0,10,0,60)
KeyLabel.BackgroundColor3 = Color3.fromRGB(40,40,50)
KeyLabel.Text = "Minimize Key: Z"
KeyLabel.TextColor3 = Color3.fromRGB(200,200,200)
KeyLabel.Font = Enum.Font.Gotham
KeyLabel.TextSize = 14

local KeyCorner = Instance.new("UICorner")
KeyCorner.Parent = KeyLabel
KeyCorner.CornerRadius = UDim.new(0,8)

-- TP Functions
function TP_MS_BAHAN()
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(521.32,47.79,617.25)
    end
end

function TP_RS()
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(1065.19,28.47,420.76)
    end
end

-- Button Connections
BtnBahan.MouseButton1Click:Connect(TP_MS_BAHAN)
BtnRS.MouseButton1Click:Connect(TP_RS)

-- Tab Switching
TPTabBtn.MouseButton1Click:Connect(function()
    TPContent.Visible = true
    SettingsContent.Visible = false
    TPTabBtn.BackgroundColor3 = Color3.fromRGB(50,50,60)
    SettingsTabBtn.BackgroundColor3 = Color3.fromRGB(40,40,50)
    TPTabBtn.TextColor3 = Color3.fromRGB(255,255,255)
    SettingsTabBtn.TextColor3 = Color3.fromRGB(200,200,200)
end)

SettingsTabBtn.MouseButton1Click:Connect(function()
    TPContent.Visible = false
    SettingsContent.Visible = true
    TPTabBtn.BackgroundColor3 = Color3.fromRGB(40,40,50)
    SettingsTabBtn.BackgroundColor3 = Color3.fromRGB(50,50,60)
    TPTabBtn.TextColor3 = Color3.fromRGB(200,200,200)
    SettingsTabBtn.TextColor3 = Color3.fromRGB(255,255,255)
end)

-- Minimize System
local minimized = false
local openSize = UDim2.new(0,300,0,400)
local closedSize = UDim2.new(0,300,0,40)

local tweenInfo = TweenInfo.new(
    0.3,
    Enum.EasingStyle.Quad,
    Enum.EasingDirection.Out
)

-- Minimize Button Function
MinBtn.MouseButton1Click:Connect(function()
    minimized = not minimized
    
    if minimized then
        TPContent.Visible = false
        SettingsContent.Visible = false
        TabFrame.Visible = false
        MinBtn.Text = "□"
        
        TweenService:Create(Frame, tweenInfo, {
            Size = closedSize
        }):Play()
    else
        TweenService:Create(Frame, tweenInfo, {
            Size = openSize
        }):Play()
        
        task.wait(0.3)
        TPContent.Visible = true
        TabFrame.Visible = true
        MinBtn.Text = "−"
    end
end)

-- Keyboard Minimize (Z key)
UIS.InputBegan:Connect(function(input, gp)
    if gp then return end
    
    if input.KeyCode == Enum.KeyCode.Z then
        minimized = not minimized
        
        if minimized then
            TPContent.Visible = false
            SettingsContent.Visible = false
            TabFrame.Visible = false
            MinBtn.Text = "□"
            
            TweenService:Create(Frame, tweenInfo, {
                Size = closedSize
            }):Play()
        else
            TweenService:Create(Frame, tweenInfo, {
                Size = openSize
            }):Play()
            
            task.wait(0.3)
            TPContent.Visible = true
            TabFrame.Visible = true
            MinBtn.Text = "−"
        end
    end
end)

-- Initial Animation
Frame.Size = UDim2.new(0,0,0,0)
task.wait(0.1)
TweenService:Create(Frame, tweenInfo, {
    Size = openSize
}):Play()

-- Welcome Message
local Welcome = Instance.new("TextLabel")
Welcome.Parent = ScreenGui
Welcome.Size = UDim2.new(0,250,0,50)
Welcome.Position = UDim2.new(0.5,-125,0.5,-25)
Welcome.BackgroundColor3 = Color3.fromRGB(25,25,35)
Welcome.Text = "𝟏𝟗𝟏 𝐓𝐏 𝐇𝐔𝐁 Loaded!"
Welcome.TextColor3 = Color3.fromRGB(0,255,100)
Welcome.Font = Enum.Font.GothamBold
Welcome.TextSize = 18
Welcome.ZIndex = 10

local WelcomeCorner = Instance.new("UICorner")
WelcomeCorner.Parent = Welcome
WelcomeCorner.CornerRadius = UDim.new(0,10)

local WelcomeStroke = Instance.new("UIStroke")
WelcomeStroke.Parent = Welcome
WelcomeStroke.Color = Color3.fromRGB(0,255,100)
WelcomeStroke.Thickness = 2

-- Fade Welcome
task.wait(2)
TweenService:Create(Welcome, TweenInfo.new(0.5), {
    BackgroundTransparency = 1,
    TextTransparency = 1,
    StrokeTransparency = 1
}):Play()
task.wait(0.5)
Welcome:Destroy()
