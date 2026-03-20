
--// Advanced Styled UI (Mooze Style Inspired)

local UIS = game:GetService("UserInputService")

local ScreenGui = Instance.new("ScreenGui", game.CoreGui)

local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 650, 0, 400)
Main.Position = UDim2.new(0.5, -325, 0.5, -200)
Main.BackgroundColor3 = Color3.fromRGB(15,15,15)
Main.Active = true
Main.Draggable = true

-- Left Sidebar
local Sidebar = Instance.new("Frame", Main)
Sidebar.Size = UDim2.new(0, 150, 1, 0)
Sidebar.BackgroundColor3 = Color3.fromRGB(10,10,10)

local UIList = Instance.new("UIListLayout", Sidebar)
UIList.Padding = UDim.new(0,5)

-- Top Tabs Bar
local TopTabs = Instance.new("Frame", Main)
TopTabs.Position = UDim2.new(0,150,0,0)
TopTabs.Size = UDim2.new(1,-150,0,40)
TopTabs.BackgroundColor3 = Color3.fromRGB(12,12,12)

local TopLayout = Instance.new("UIListLayout", TopTabs)
TopLayout.FillDirection = Enum.FillDirection.Horizontal

-- Content
local Content = Instance.new("Frame", Main)
Content.Position = UDim2.new(0,150,0,40)
Content.Size = UDim2.new(1,-150,1,-40)
Content.BackgroundColor3 = Color3.fromRGB(18,18,18)

-- Sidebar Button Creator
local function CreateSideButton(name)
    local Btn = Instance.new("TextButton", Sidebar)
    Btn.Size = UDim2.new(1,0,0,35)
    Btn.Text = name
    Btn.BackgroundColor3 = Color3.fromRGB(20,20,20)
    Btn.TextColor3 = Color3.fromRGB(200,200,200)
    Btn.BorderSizePixel = 0
    return Btn
end

-- Top Tab Creator
local function CreateTopTab(name)
    local Btn = Instance.new("TextButton", TopTabs)
    Btn.Size = UDim2.new(0,120,1,0)
    Btn.Text = name
    Btn.BackgroundColor3 = Color3.fromRGB(20,20,20)
    Btn.TextColor3 = Color3.fromRGB(255,255,255)
    Btn.BorderSizePixel = 0

    local Frame = Instance.new("Frame", Content)
    Frame.Size = UDim2.new(1,0,1,0)
    Frame.Visible = false
    Frame.BackgroundTransparency = 1

    local Layout = Instance.new("UIListLayout", Frame)
    Layout.Padding = UDim.new(0,6)

    Btn.MouseButton1Click:Connect(function()
        for _,v in pairs(Content:GetChildren()) do
            if v:IsA("Frame") then
                v.Visible = false
            end
        end
        Frame.Visible = true
    end)

    return Frame
end

-- Elements
local function AddToggle(parent,text,default,callback)
    local Btn = Instance.new("TextButton", parent)
    Btn.Size = UDim2.new(1,-10,0,30)
    Btn.BackgroundColor3 = Color3.fromRGB(25,25,25)
    Btn.TextColor3 = Color3.fromRGB(255,255,255)

    local state = default

    local function Update()
        Btn.Text = text.." : "..(state and "ON" or "OFF")
    end

    Update()

    Btn.MouseButton1Click:Connect(function()
        state = not state
        Update()
        callback(state)
    end)
end

local function AddLabel(parent,text)
    local L = Instance.new("TextLabel", parent)
    L.Size = UDim2.new(1,-10,0,25)
    L.BackgroundTransparency = 1
    L.Text = text
    L.TextColor3 = Color3.fromRGB(150,150,150)
    L.TextXAlignment = Enum.TextXAlignment.Left
end

-- Build UI
CreateSideButton("Assistance")
CreateSideButton("Exploits")
CreateSideButton("Movement")
CreateSideButton("Config")
CreateSideButton("Settings")

local General = CreateTopTab("General")
local Silent = CreateTopTab("Silent Aim")
local Aimbot = CreateTopTab("Aimbot")

-- Fill General Tab
AddLabel(General,"MAIN")
AddToggle(General,"Enabled",false,function(v)
    print("Enabled:",v)
end)

AddLabel(General,"CHECKS")
AddLabel(General,"Constant")
AddLabel(General,"When Selecting")

General.Visible = true
