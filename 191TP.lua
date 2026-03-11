local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

-- GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = player:WaitForChild("PlayerGui")

-- Frame utama
local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0,200,0,150)
Frame.Position = UDim2.new(0.05,0,0.3,0)
Frame.BackgroundColor3 = Color3.fromRGB(0,0,0)
Frame.Active = true
Frame.Draggable = true

-- Title
local Title = Instance.new("TextLabel")
Title.Parent = Frame
Title.Size = UDim2.new(1,0,0,30)
Title.BackgroundTransparency = 1
Title.Text = "191 TP"
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.TextScaled = true

-- Button TP Bahan
local BtnBahan = Instance.new("TextButton")
BtnBahan.Parent = Frame
BtnBahan.Size = UDim2.new(1,-20,0,40)
BtnBahan.Position = UDim2.new(0,10,0,40)
BtnBahan.Text = "TP Marshmallow Bahan"
BtnBahan.BackgroundColor3 = Color3.fromRGB(40,40,40)
BtnBahan.TextColor3 = Color3.fromRGB(255,255,255)

-- Button TP RS
local BtnRS = Instance.new("TextButton")
BtnRS.Parent = Frame
BtnRS.Size = UDim2.new(1,-20,0,40)
BtnRS.Position = UDim2.new(0,10,0,90)
BtnRS.Text = "TP RS"
BtnRS.BackgroundColor3 = Color3.fromRGB(40,40,40)
BtnRS.TextColor3 = Color3.fromRGB(255,255,255)

-- Function TP
function TP_MS_BAHAN()
    player.Character.HumanoidRootPart.CFrame = CFrame.new(521.32,47.79,617.25)
end

function TP_RS()
    player.Character.HumanoidRootPart.CFrame = CFrame.new(1065.19,28.47,420.76)
end

BtnBahan.MouseButton1Click:Connect(TP_MS_BAHAN)
BtnRS.MouseButton1Click:Connect(TP_RS)

-- Tween settings
local openSize = UDim2.new(0,200,0,150)
local closedSize = UDim2.new(0,200,0,30)

local tweenInfo = TweenInfo.new(
    0.35,
    Enum.EasingStyle.Quad,
    Enum.EasingDirection.Out
)

local minimized = false

-- Minimize dengan Z
UIS.InputBegan:Connect(function(input,gp)
    if gp then return end
    
    if input.KeyCode == Enum.KeyCode.Z then
        minimized = not minimized
        
        if minimized then
            BtnBahan.Visible = false
            BtnRS.Visible = false
            
            TweenService:Create(Frame,tweenInfo,{
                Size = closedSize
            }):Play()
            
        else
            TweenService:Create(Frame,tweenInfo,{
                Size = openSize
            }):Play()
            
            task.wait(1.00)
            BtnBahan.Visible = true
            BtnRS.Visible = true
        end
    end
end)
