--// Single Script Dark UI (No require needed)

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Tabs = Instance.new("Frame")
local Content = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")

ScreenGui.Parent = game.CoreGui

Main.Parent = ScreenGui
Main.Size = UDim2.new(0, 500, 0, 300)
Main.Position = UDim2.new(0.5, -250, 0.5, -150)
Main.BackgroundColor3 = Color3.fromRGB(20,20,20)
Main.Active = true
Main.Draggable = true

Tabs.Parent = Main
Tabs.Size = UDim2.new(0,120,1,0)
Tabs.Position = UDim2.new(1,-120,0,0)
Tabs.BackgroundColor3 = Color3.fromRGB(30,30,30)

UIListLayout.Parent = Tabs

Content.Parent = Main
Content.Size = UDim2.new(1,-120,1,0)
Content.BackgroundColor3 = Color3.fromRGB(25,25,25)

local function CreateTab(name)
    local TabButton = Instance.new("TextButton")
    local TabFrame = Instance.new("Frame")
    local Layout = Instance.new("UIListLayout")

    TabButton.Parent = Tabs
    TabButton.Size = UDim2.new(1,0,0,40)
    TabButton.Text = name
    TabButton.BackgroundColor3 = Color3.fromRGB(40,40,40)
    TabButton.TextColor3 = Color3.fromRGB(255,255,255)

    TabFrame.Parent = Content
    TabFrame.Size = UDim2.new(1,0,1,0)
    TabFrame.Visible = false
    TabFrame.BackgroundTransparency = 1

    Layout.Parent = TabFrame

    TabButton.MouseButton1Click:Connect(function()
        for _,v in pairs(Content:GetChildren()) do
            if v:IsA("Frame") then
                v.Visible = false
            end
        end
        TabFrame.Visible = true
    end)

    local Elements = {}

    function Elements:AddButton(text, callback)
        local Button = Instance.new("TextButton")
        Button.Parent = TabFrame
        Button.Size = UDim2.new(1,-10,0,35)
        Button.BackgroundColor3 = Color3.fromRGB(35,35,35)
        Button.TextColor3 = Color3.fromRGB(255,255,255)
        Button.Text = text

        Button.MouseButton1Click:Connect(callback)
    end

    function Elements:AddToggle(text, default, callback)
        local Toggle = Instance.new("TextButton")
        local state = default

        Toggle.Parent = TabFrame
        Toggle.Size = UDim2.new(1,-10,0,35)
        Toggle.BackgroundColor3 = Color3.fromRGB(35,35,35)
        Toggle.TextColor3 = Color3.fromRGB(255,255,255)

        local function Update()
            Toggle.Text = text..": "..(state and "ON" or "OFF")
        end

        Update()

        Toggle.MouseButton1Click:Connect(function()
            state = not state
            Update()
            callback(state)
        end)
    end

    function Elements:AddSlider(text,min,max,default,callback)
        local Frame = Instance.new("Frame")
        local Button = Instance.new("TextButton")
        local value = default

        Frame.Parent = TabFrame
        Frame.Size = UDim2.new(1,-10,0,40)
        Frame.BackgroundColor3 = Color3.fromRGB(35,35,35)

        Button.Parent = Frame
        Button.Size = UDim2.new(1,0,1,0)
        Button.BackgroundTransparency = 1
        Button.TextColor3 = Color3.fromRGB(255,255,255)

        local dragging = false

        local function Update(x)
            local percent = math.clamp((x - Frame.AbsolutePosition.X)/Frame.AbsoluteSize.X,0,1)
            value = math.floor(min + (max-min)*percent)
            Button.Text = text..": "..value
            callback(value)
        end

        Button.Text = text..": "..value

        Button.MouseButton1Down:Connect(function()
            dragging = true
        end)

        game:GetService("UserInputService").InputEnded:Connect(function()
            dragging = false
        end)

        game:GetService("UserInputService").InputChanged:Connect(function(input)
            if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                Update(input.Position.X)
            end
        end)
    end

    function Elements:AddDropdown(text,list,callback)
        local Dropdown = Instance.new("TextButton")
        local Open = false

        Dropdown.Parent = TabFrame
        Dropdown.Size = UDim2.new(1,-10,0,35)
        Dropdown.BackgroundColor3 = Color3.fromRGB(35,35,35)
        Dropdown.TextColor3 = Color3.fromRGB(255,255,255)
        Dropdown.Text = text

        local ListFrame = Instance.new("Frame")
        ListFrame.Parent = TabFrame
        ListFrame.Size = UDim2.new(1,-10,0,0)
        ListFrame.BackgroundColor3 = Color3.fromRGB(30,30,30)
        ListFrame.Visible = false

        local Layout = Instance.new("UIListLayout", ListFrame)

        for _,v in pairs(list) do
            local Item = Instance.new("TextButton")
            Item.Parent = ListFrame
            Item.Size = UDim2.new(1,0,0,30)
            Item.Text = v
            Item.BackgroundColor3 = Color3.fromRGB(40,40,40)
            Item.TextColor3 = Color3.fromRGB(255,255,255)

            Item.MouseButton1Click:Connect(function()
                Dropdown.Text = text..": "..v
                callback(v)
            end)
        end

        Dropdown.MouseButton1Click:Connect(function()
            Open = not Open
            ListFrame.Visible = Open
            ListFrame.Size = Open and UDim2.new(1,-10,0,#list*30) or UDim2.new(1,-10,0,0)
        end)
    end

    function Elements:AddColorPicker(text,default,callback)
        local Button = Instance.new("TextButton")
        local color = default

        Button.Parent = TabFrame
        Button.Size = UDim2.new(1,-10,0,35)
        Button.BackgroundColor3 = color
        Button.Text = text
        Button.TextColor3 = Color3.fromRGB(255,255,255)

        Button.MouseButton1Click:Connect(function()
            color = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
            Button.BackgroundColor3 = color
            callback(color)
        end)
    end

    return Elements
end

--// Example Usage
local tab = CreateTab("Main")

tab:AddButton("Click Me", function()
    print("clicked")
end)

tab:AddToggle("Test Toggle", false, function(v)
    print(v)
end)

tab:AddSlider("Speed",0,100,50,function(v)
    print(v)
end)

tab:AddDropdown("Pick",{"A","B","C"},function(v)
    print(v)
end)

tab:AddColorPicker("Color",Color3.fromRGB(255,0,0),function(c)
    print(c)
end)
