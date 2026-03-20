


getgenv().zybrin = {
    Options = {
        ['Intro'] = true,
        ['Intro_Type'] = "zybrinIntro",
        -- Indicator variables
        ['Indicator'] = true, 
        ['IndicatorColor'] = Color3.fromRGB(100, 100, 255),  
        ['Font'] = "Proggy",   
        ['FPS_Cap'] = math.huge, 
        ['panic_key'] = "p", 
        ['double_press'] = true, -- must double press the panic key too disable

    },
Silent = { --- use on dh ripoffs
    ['Enabled'] = false,
    ['Prediction'] = 0.133,
    ['HitPart'] = "HumanoidRootPart",
    ['Key'] = "E", 
    ['HitChance'] = 90, 
    ['AlwaysMode'] = false, -- if false then the silent cant be turned off
    ['ThirdPerson'] = true,
    ['FirstPerson'] = false,
    ['Notifications'] = false,
    ['Air_part'] = false, -- if false just uses the hitpart
    ['AirHitPart'] = "UpperTorso" 
},
FOV = {
  ['Silent'] = {
       ['Visible'] = false,
       ['Filled'] = false,
       ['Sides'] = 100,
       ['Size'] = 50,
       ['Transparency'] = 1,
       ['Thickness'] = 0.7,
       ['Color'] = Color3.fromRGB(1, 1, 1),
},
Camlock = { -- fov settings
       ['UseFov'] = false, 
       ['Visible'] = false, 
       ['Filled'] = false,
       ['Sides'] = 20,
       ['Size'] = 50,
       ['Transparency'] = 1,
       ['Thickness'] = 1,
       ['Color'] = Color3.fromRGB(100, 100, 255)

     },
},
FovType = {
    ['Target'] = true,
},

Camlock = { 
    ['Enabled'] = true,
    ['Key'] = "E",
    ['Prediction'] = 0.12,
    ['HitPart'] = "HumanoidRootPart", 
    ['Air_part'] = false,
    ['Air_hitPArt'] = "LowerTorso", -- changes
    ['Distance'] = 600, -- studs 
    ['Smoothing'] = true, -- MUST ALWAYS BE ON
    ['Smoothness'] = 0.081
    

},
Shake = { 
    ['Shake'] = true, 
    ['Shake_X'] = 0.2, 
    ['Shake_Y'] = 0,
    ['Shake_Z'] = 0 
},



Checks = { -- 
    Silent = {
        ['KnockCheck'] = true, 
        ['CrewCheck'] = true, 
        ['WallCheck'] = false, 
        ['FriendCheck'] = true, 
        ['GrabCheck'] = true, 
        ['AntiCurve'] = true 
    },
    Camlock = {
        ['WallCheck'] = false, 
        ['KnockCheck'] = true,

    }
},

AntiGroundShots = {
    ['Enabled'] = false,
    ['DelayGroundShot'] = 0.5
},

AutoPrediction = {
 ['Enabled'] = true,
    ['NewPred'] = 0.1, -- changes the pred after so many ms
    ['Ping_10'] = 0.10,
    ['Ping_20'] = 0.171,
    ['Ping_30'] = 0.172,
    ['Ping_40'] = 0.1273,
    ['Ping_50'] = 0.125,
    ['Ping_60'] = 0.1267,
    ['Ping_70'] = 0.1335,
    ['Ping_80'] = 0.734,
    ['Ping_90'] = 0.6365,
    ['Ping_100'] = 0.1174,
    ['Ping_110'] = 0.172,
    ['Ping_120'] = 0.162,
    ['Ping_130'] = 0.123,
    ['Ping_140'] = 0.136,
    ['Ping_150'] = 0.16,
    ['Ping_160'] = 0.51
},
Movement = {
    Walkspeed = {
        Enabled = true,
        Key = "z", 
        Speed = 50,
    },
    Jumppower = {
        Enabled = true,
        Key = "x", 
        Power = 120,
    }
},
  Triggerbot = {
        ['Enabled'] = false,
        ['Key'] = Enum.KeyCode.C,
        ['Delay'] = 0.1
    } 


}




getgenv().ESP = {
    Enabled = true, 
    KeybindEnabled = true, 
    Key = Enum.KeyCode.Q, 

    Font = "Terminus", -- VectorDotted HighDeff Terminus Proggy
    Color1 = Color3.fromRGB(100, 100, 255), 
    Color2 = Color3.fromRGB(209, 245, 66), 

    Highlight = {
        Enabled = true, 
        KeybindEnabled = true, 
        Key = Enum.KeyCode.Q, 

        FillColor = Color3.fromRGB(255, 0, 0),
        OutlineColor = Color3.fromRGB(255, 255, 255), 
        FillTransparency = 0.5, 
        OutlineTransparency = 0, 
    }
}



getgenv().spin360 = {
    Spin = { 
        Enabled = false, 
        Key = "X", 
        Degrees = 360, 
        Speed = 3000, 
    }
    }


 









    
    
   
    



if setfpscap then
    setfpscap(getgenv().zybrin.Options['FPS_Cap'])
end







local UserInputService = game:GetService("UserInputService")

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- checks if federwalre table exists
if getgenv().zybrin and getgenv().zybrin.Options then
local fw = getgenv().zybrin

if fw.Options['Intro'] then
    if fw.Options['Intro_Type'] == "zybrinIntro" then
        
        local blur = Instance.new("BlurEffect")
        blur.Size = 24
        blur.Name = "IntroBlur"
        blur.Parent = Lighting

        
        local screenGui = Instance.new("ScreenGui")
        screenGui.Name = "IntroGui"
        screenGui.IgnoreGuiInset = true
        screenGui.ResetOnSpawn = false
        screenGui.Parent = playerGui

        local imageLabel = Instance.new("ImageLabel")
        imageLabel.Size = UDim2.new(0, 200, 0, 200)
        imageLabel.Position = UDim2.new(0.5, -100, 0.5, -100) -- center
        imageLabel.BackgroundTransparency = 1
        imageLabel.ImageTransparency = 1
        imageLabel.Image = "rbxassetid://95942466776725" -- replace with your ( texture id)
        imageLabel.Parent = screenGui

        -- fade in
        local fadeIn = TweenService:Create(imageLabel, TweenInfo.new(1), {ImageTransparency = 0.2})
        fadeIn:Play()
        fadeIn.Completed:Wait()

        task.wait(1)

        -- make image smaller
        local slideTween = TweenService:Create(imageLabel, TweenInfo.new(1.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
            Position = UDim2.new(1, -110, 0, 10),
            Size = UDim2.new(0, 100, 0, 100)
        })
        slideTween:Play()

        -- fade out
        local blurFade = TweenService:Create(blur, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Size = 0
        })
        blurFade:Play()

        blurFade.Completed:Wait()
        blur:Destroy()
        

    elseif fw.Options['Intro_Type'] == "Notification" then
        warn("notification.")
    end
end
end


  


local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService") 

-- spin func
local spin_360_check = false

local function UpdateSpin()
if getgenv().spin360.Spin.Enabled and not spin_360_check then
    local Camera = Workspace.CurrentCamera
    local StartCFrame = Camera.CFrame
    local TotalDegrees = getgenv().spin360.Spin.Degrees
    local Speed = getgenv().spin360.Spin.Speed
    local ElapsedTime = 0
    local RotationAngle = 0

    
    while RotationAngle < TotalDegrees do
        local DeltaTime = RunService.Heartbeat:Wait()
        ElapsedTime = ElapsedTime + DeltaTime
        local StepRotation = Speed * DeltaTime 

        
        RotationAngle = RotationAngle + StepRotation

        -- clamp
        local CurrentRotation = math.min(RotationAngle, TotalDegrees)

       
        Camera.CFrame = StartCFrame * CFrame.Angles(0, math.rad(CurrentRotation), 0)
    end

    Camera.CFrame = StartCFrame 
    spin_360_check = true
end
end


local function togl_spin(enabled)
getgenv().spin360.Spin.Enabled = enabled
spin_360_check = false -- reset spin
end


local function SetSpinKey(newKey)
getgenv().spin360.Spin.Key = newKey:upper() -- stores it has upper idk why i made this
end


UserInputService.InputBegan:Connect(function(Input, gameProcessedEvent)
if not gameProcessedEvent and getgenv().spin360.Spin.Enabled then
    local pressedKey = Input.KeyCode.Name -- get the key 
    if pressedKey == getgenv().spin360.Spin.Key then
        spin_360_check = false -- resets if the spin is completed
        coroutine.wrap(UpdateSpin)() -- spins your cam when key pressed
    end
end
end)







local Players = game:GetService("Players")





-- holds the notfications
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

local function SendNotification(Notifcation_Set)
    Notification:Notify(
        {Title = "zybrin.cc ", Description = "Loading"},
        {OutlineColor = Color3.fromRGB(255,0,0),Time = 3, Type = "image"},
        {Image = "rbxassetid://95942466776725", ImageColor = Color3.fromRGB(255,255,255)}
    )
    end 

   

wait(3)
SendNotification("Loaded zybrin ")

    
if getgenv().CheckIfScriptLoaded == true then

    SendNotification("Enjoy")
    return
end

getgenv().CheckIfScriptLoaded = true


-- Services
-- Services
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local VirtualUser = game:GetService("VirtualUser")

local player = Players.LocalPlayer
local mouse = player:GetMouse()

-- Get target under crosshair
local function getTargetUnderCrosshair()
    local potentialTarget = mouse.Target
    if potentialTarget then
        local potentialCharacter = potentialTarget:FindFirstAncestorOfClass("Model")
        if potentialCharacter then
            local targetHumanoid = potentialCharacter:FindFirstChildOfClass("Humanoid")
            if targetHumanoid and targetHumanoid.Health > 0 then
                return potentialCharacter
            end
        end
    end
    return nil
end

-- Triggerbot firing
local function triggerbot()
    local cfg = getgenv().zybrin.Triggerbot
    if cfg['Enabled'] then
        local target = getTargetUnderCrosshair()
        if target then
            local humanoid = target:FindFirstChildOfClass("Humanoid")
            if humanoid and humanoid.Health > 0 then
                VirtualUser:ClickButton1(Vector2.new(0, 0))
                task.wait(cfg['Delay'])
            end
        end
    end
end

-- Toggle with key
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    local cfg = getgenv().zybrin.Triggerbot
    if input.KeyCode == cfg['Key'] and not gameProcessed then
        cfg['Enabled'] = not cfg['Enabled']
        print("Triggerbot toggled:", cfg['Enabled'])
    end
end)

-- Run each frame
RunService.RenderStepped:Connect(triggerbot)


local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local char = lp.Character or lp.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")

local ws_on = false
local jp_on = false

UIS.InputBegan:Connect(function(input, processed)
    if processed then return end

    
    if getgenv().zybrin.Movement.Walkspeed.Enabled and input.KeyCode == Enum.KeyCode[string.upper(getgenv().zybrin.Movement.Walkspeed.Key)] then
        ws_on = not ws_on
        humanoid.WalkSpeed = ws_on and getgenv().zybrin.Movement.Walkspeed.Speed or 16
    end

    
    if getgenv().zybrin.Movement.Jumppower.Enabled and input.KeyCode == Enum.KeyCode[string.upper(getgenv().zybrin.Movement.Jumppower.Key)] then
        jp_on = not jp_on
        humanoid.UseJumpPower = true
        humanoid.JumpPower = jp_on and getgenv().zybrin.Movement.Jumppower.Power or 50
    end
end)


lp.CharacterAdded:Connect(function(newChar)
    char = newChar
    humanoid = newChar:WaitForChild("Humanoid")
end)











-- VectorDotted HighDeff Terminus Proggy



-- Setup
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local HttpService = game:GetService("HttpService")
local library = {}
-- https://github.com/zhy1s/storage/raw/refs/heads/main/Tamsyn5x9.fon

-- Font Setup
local fonts = {
    Proggy = {
        url = "https://github.com/zhy1s/storage/raw/refs/heads/main/ProggyTiny.ttf",
        filename = "proggy.ttf"
    },
    VectorDotted = {
        url = "https://github.com/zhy1s/storage/raw/refs/heads/main/ProggyVector-Dotted.ttf",
        filename = "vectordotted.ttf"
    },
    Terminus = {
        url = "https://github.com/zhy1s/storage/raw/refs/heads/main/TerminusTTF-4.49.3.ttf",
        filename = "TerminusTTF-4.49.3.tff"
    },
    HighDeff = {
        url = "https://github.com/zhy1s/storage/raw/refs/heads/main/High%20Def.ttf",
        filename = "High Def.tff"
    }
}

-- Write both font files if not exist
for name, fontData in pairs(fonts) do
    if not isfile(fontData.filename) then
        writefile(fontData.filename, game:HttpGet(fontData.url))
    end
end

-- Choose font
local selectedFont = fonts[getgenv().ESP.Font]
if not selectedFont then
    warn("[ESP] Invalid font selected, using ProggyTiny")
    selectedFont = fonts.Proggy
end

-- Encode font
local special_sauce = {
    name = "cool_boy",
    faces = {
        {
            name = "Regular",
            weight = 400,
            style = "normal",
            assetId = getcustomasset(selectedFont.filename)
        }
    }
}
writefile("main_encoded.ttf", HttpService:JSONEncode(special_sauce))
library.font = Font.new(getcustomasset("main_encoded.ttf"), Enum.FontWeight.Regular)


local function name_esp(player)
    if not getgenv().ESP.Enabled then return end
    if player == LocalPlayer then return end

    local character = player.Character or player.CharacterAdded:Wait()
    local head = character:WaitForChild("Head")

    
    if head:FindFirstChild("NameESP") then
        head.NameESP:Destroy()
    end

    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "NameESP"
    billboardGui.Adornee = head
    billboardGui.Size = UDim2.new(0, 100, 0, 25)
    billboardGui.StudsOffset = Vector3.new(0, 1.5, 0)
    billboardGui.AlwaysOnTop = true

    local Label_Tag = Instance.new("TextLabel")
    Label_Tag.Parent = billboardGui
    Label_Tag.Size = UDim2.new(1, 0, 1, 0)
    Label_Tag.BackgroundTransparency = 1
    Label_Tag.TextColor3 = Color3.fromRGB(255, 255, 255)
    Label_Tag.TextStrokeTransparency = 0.5
    Label_Tag.Text = player.Name
    Label_Tag.FontFace = library.font
    Label_Tag.TextSize = 25

    local gradient = Instance.new("UIGradient")
    gradient.Parent = Label_Tag
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, getgenv().ESP.Color1),
        ColorSequenceKeypoint.new(1, getgenv().ESP.Color2)
    }
    gradient.Rotation = 0

    billboardGui.Parent = head
end


local function highlight_esp(player)
    if not getgenv().ESP.Highlight.Enabled then return end
    if player == LocalPlayer then return end

    local character = player.Character or player.CharacterAdded:Wait()

    if character:FindFirstChild("HighlightESP") then
        character.HighlightESP:Destroy()
    end

    local highlight = Instance.new("Highlight")
    highlight.Name = "HighlightESP"
    highlight.FillColor = getgenv().ESP.Highlight.FillColor
    highlight.OutlineColor = getgenv().ESP.Highlight.OutlineColor
    highlight.FillTransparency = getgenv().ESP.Highlight.FillTransparency
    highlight.OutlineTransparency = getgenv().ESP.Highlight.OutlineTransparency
    highlight.Adornee = character
    highlight.Parent = character
end


local function refresh_esp()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            if player.Character then
                name_esp(player)
                highlight_esp(player)
            end
            player.CharacterAdded:Connect(function()
                name_esp(player)
                highlight_esp(player)
            end)
        end
    end
end

refresh_esp()


RunService.RenderStepped:Connect(function()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local character = player.Character
            if character then
                local head = character:FindFirstChild("Head")

               
                local esp = head and head:FindFirstChild("NameESP")
                if getgenv().ESP.Enabled and not esp then
                    name_esp(player)
                elseif not getgenv().ESP.Enabled and esp then
                    esp:Destroy()
                end

                
                local highlight = character:FindFirstChild("HighlightESP")
                if getgenv().ESP.Highlight.Enabled and not highlight then
                    highlight_esp(player)
                elseif not getgenv().ESP.Highlight.Enabled and highlight then
                    highlight:Destroy()
                end
            end
        end
    end
end)


UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end

    
    if getgenv().ESP.KeybindEnabled and input.KeyCode == getgenv().ESP.Key then
        getgenv().ESP.Enabled = not getgenv().ESP.Enabled
    end

   
    if getgenv().ESP.Highlight.KeybindEnabled and input.KeyCode == getgenv().ESP.Highlight.Key then
        getgenv().ESP.Highlight.Enabled = not getgenv().ESP.Highlight.Enabled
    end
end)







getgenv().zybrin = getgenv().zybrin or {}
getgenv().zybrin.Camlock = getgenv().zybrin.Camlock or {}
getgenv().zybrin.Camlock.visualizations = true 


local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera


local aimCircle = Drawing.new("Circle")
aimCircle.Color = Color3.new(1, 1, 1)
aimCircle.Thickness = 2
aimCircle.Transparency = 1
aimCircle.Radius = 6
aimCircle.Filled = true
aimCircle.Visible = false


local function WorldToScreen(pos)
    local screenPos, onScreen = Camera:WorldToViewportPoint(pos)
    return Vector2.new(screenPos.X, screenPos.Y), onScreen
end


RunService.RenderStepped:Connect(function()
    if not getgenv().zybrin or not getgenv().zybrin.Camlock or not getgenv().zybrin.Camlock.visualizations then
        aimCircle.Visible = false
        return
    end

    local target = rawget(_G, "Plr")  
    if target and target.Character and target.Character:FindFirstChild(getgenv().zybrin.Camlock.HitPart) then
        local part = target.Character[getgenv().zybrin.Camlock.HitPart]
        local pos = part.Position + part.Velocity * getgenv().zybrin.Camlock.Prediction
        local screenPos, onScreen = WorldToScreen(pos)

        if onScreen then
            aimCircle.Position = screenPos
            aimCircle.Visible = true
        else
            aimCircle.Visible = false
        end
    else
        aimCircle.Visible = false
    end
end)


local lastPanicTime = 0
local panicDelay = 0.5 

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed or not input.UserInputType == Enum.UserInputType.Keyboard then return end

    local pressedKey = input.KeyCode.Name:lower()
    if pressedKey == getgenv().zybrin.Options.panic_key:lower() then
        if getgenv().zybrin.Options.double_press then
            local now = tick()
            if now - lastPanicTime <= panicDelay then
               
                disableScript()
            else
                lastPanicTime = now
            end
        else
            disableScript()
        end
    end
end)

function disableScript()
    getgenv().zybrin.Camlock.Enabled = false
    getgenv().zybrin.Silent.Enabled = false
    getgenv().ESP.Enabled = false
    getgenv().ESP.Highlight.Enabled = false
    getgenv().ESP.Enabled = false
    getgenv().zybrin.Indicator = false
    ws_on = false
    jp_on = false
    Humanoid.WalkSpeed = 16  
    Humanoid.JumpPower = 50  


    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if player.Character then
            local head = player.Character:FindFirstChild("Head")
            if head and head:FindFirstChild("NameESP") then
                head.NameESP:Destroy()
            end
            if player.Character:FindFirstChild("HighlightESP") then
                player.Character.HighlightESP:Destroy()
            end
        end
    end

    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "PANIC",
        Text = "Script Disabled!",
        Duration = 3
    })
end







local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Client = LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local GetPlayers = Players.GetPlayers
local Mouse = LocalPlayer:GetMouse()
local RunService = game:GetService("RunService")
local Camera = game.Workspace.CurrentCamera
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TPservice= game:GetService("TeleportService")
local GetPlayers = Players.GetPlayers
local Mouse = LocalPlayer:GetMouse()
local Workspace = game:GetService("Workspace")
local GuiService = game:GetService("GuiService")
local CurrentCamera = Workspace.CurrentCamera
local TeleportService = game:GetService("TeleportService")
local GetGuiInset = GuiService.GetGuiInset
local Circle1 = Drawing.new("Circle")
local Circle2 = Drawing.new("Circle")
local Plr,Plr2,IsTargetting

function WallCheckCheck (destination, ignore)
if (getgenv().zybrin.Checks.Silent.WallCheck) then
    local Origin = Camera.CFrame.p
    local CheckRay = Ray.new(Origin, destination - Origin)
    local Hit = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(CheckRay, ignore)
    return Hit == nil
else
    return true
end
end

local WTS = (function(Object)
local ObjectVector = CurrentCamera:WorldToScreenPoint(Object.Position)
return Vector2.new(ObjectVector.X, ObjectVector.Y)
end)

local Filter = (function(obj)
if (obj:IsA('BasePart')) then
    return true
end
end)

local MousePosVector2 = (function()
return Vector2.new(Mouse.X, Mouse.Y) 
end)




function SilentFOV()
if not (Circle2) then
  return
end
Circle2.Visible = getgenv().zybrin.FOV.Silent.Visible
Circle2.NumSides = getgenv().zybrin.FOV.Silent.Sides
Circle2.Radius =  getgenv().zybrin.FOV.Silent.Size * 2.1 -- keep it 2.1 plz
Circle2.Position = Vector2.new(Mouse.X, Mouse.Y + GetGuiInset(GuiService).Y)
Circle2.Filled = getgenv().zybrin.FOV.Silent.Filled
Circle2.Color = getgenv().zybrin.FOV.Silent.Color

Circle2.Thickness = getgenv().zybrin.FOV.Silent.Thickness
Circle2.Transparency = getgenv().zybrin.FOV.Silent.Transparency


return Circle2
end
RunService.Heartbeat:Connect(function() CamlockFOV() SilentFOV()end)


function CamlockFOV()
if not (Circle1) then
    return
end
Circle1.Visible = getgenv().zybrin.FOV.Camlock.Visible
Circle1.Radius =  getgenv().zybrin.FOV.Camlock.Size * 2.1
Circle1.Position = Vector2.new(Mouse.X, Mouse.Y + GetGuiInset(GuiService).Y)
Circle1.Filled = getgenv().zybrin.FOV.Camlock.Filled
Circle1.Transparency = getgenv().zybrin.FOV.Camlock.Transparency
Circle1.Thickness = getgenv().zybrin.FOV.Camlock.Thickness
Circle1.NumSides = getgenv().zybrin.FOV.Camlock.Sides
Circle1.Color = getgenv().zybrin.FOV.Camlock.Color
return Circle1
end

local ClosestPlrFromMouse = function()
local Target = nil
Closest = 1 / 0
for _ ,v in ipairs(Players:GetPlayers()) do
    if (v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart")) and WallCheckCheck(v.Character.HumanoidRootPart.Position, {Client, v.Character})  then
    local Position, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
    local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
    if (Circle2.Radius > Distance and Distance < Closest and OnScreen and Position) then
    Closest = Distance
    Target = v
    end
    end
end
return Target
end

local GetClosestBodyPart = (function()
local ShortestDistance = math.huge
local BodyPart = nil
for _, v in next, game.Players:GetPlayers() do
    if (v ~= Client and v.Character and v.Character:FindFirstChild("Humanoid")) then
        for k, x in next, v.Character:GetChildren() do
            if (Filter(x)) then
                local Distance = (WTS(x) - MousePosVector2()).magnitude
                if (Distance < ShortestDistance) then
                    ShortestDistance = Distance
                    BodyPart = x
                end
            end
        end
    end
end
return BodyPart
end)



if getgenv().zybrin.Camlock.Air_part == true then
if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
    getgenv().zybrin.Camlock.HitPart = getgenv().zybrin.Camlock.Air_hitPArt
else
    Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
    if new == Enum.HumanoidStateType.Freefall then
    getgenv().zybrin.Camlock.HitPart = getgenv().zybrin.Camlock.Air_hitPArt
    else
    getgenv().zybrin.Camlock.HitPart = getgenv().zybrin.Camlock.HitPart
    end
    end)
end
end

Mouse.KeyDown:Connect(function(Key)
local Keybind = getgenv().zybrin.Camlock.Key:lower()
if (Key == Keybind) then
    if getgenv().zybrin.Camlock.Enabled == true then
    IsTargetting = not IsTargetting
    if IsTargetting then
    Plr = NearestPerson()
    else
    if Plr ~= nil then
    Plr = nil
    end
    end
   end
end
end)


local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = workspace.CurrentCamera

function NearestPerson()
    local closestPlayer = nil
    local shortestDistance = getgenv().zybrin.FOV.Camlock.UseFov and getgenv().zybrin.FOV.Camlock.Size or getgenv().zybrin.Camlock.Distance

    for _, player in ipairs(Players:GetPlayers()) do
        pcall(function()
            if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character:FindFirstChild("Humanoid") then
                if WallCheckCheck(player.Character.HumanoidRootPart.Position, {LocalPlayer, player.Character}) then
                    local pos, onScreen = CurrentCamera:WorldToViewportPoint(player.Character.PrimaryPart.Position)
                    if onScreen then
                        local mousePos = Vector2.new(Mouse.X, Mouse.Y)
                        local screenPos = Vector2.new(pos.X, pos.Y)
                        local distance = (mousePos - screenPos).Magnitude
                        if distance < shortestDistance then
                            closestPlayer = player
                            shortestDistance = distance
                        end
                    end
                end
            end
        end)
    end

    return closestPlayer
end


    



RunService.RenderStepped:Connect(function()
if getgenv().zybrin.Camlock.Enabled == true and Plr and Plr.Character ~= nil then
    if getgenv().zybrin.Shake.Shake then
    local Main = CFrame.new(Camera.CFrame.p,Plr.Character[getgenv().zybrin.Camlock.HitPart].Position + Plr.Character[getgenv().zybrin.Camlock.HitPart].Velocity*getgenv().zybrin.Camlock.Prediction +
    Vector3.new(
    math.random(-getgenv().zybrin.Shake.Shake_X,getgenv().zybrin.Shake.Shake_X),
    math.random(-getgenv().zybrin.Shake.Shake_Y,getgenv().zybrin.Shake.Shake_Z),
    math.random(-getgenv().zybrin.Shake.Shake_Z,getgenv().zybrin.Shake.Shake_Z)
    )*1)
    Camera.CFrame = Camera.CFrame:Lerp(Main,getgenv().zybrin.Camlock.Smoothness,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,Enum.EasingStyle.Bounce,Enum.EasingDirection.Out,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out)
    else
    local Main = CFrame.new(Camera.CFrame.p,Plr.Character[getgenv().zybrin.Camlock.HitPart].Position + Plr.Character[getgenv().zybrin.Camlock.HitPart].Velocity*getgenv().zybrin.Camlock.Prediction)
    Camera.CFrame = Camera.CFrame:Lerp(Main,getgenv().zybrin.Camlock.Smoothness,Enum.EasingStyle[getgenv().zybrin.Easing.Style],Enum.EasingDirection[getgenv().zybrin.Easing.Direction])
    end
end
end)

RunService.Heartbeat:Connect(function()
    if getgenv().zybrin.Camlock.Enabled == true and Plr and Plr.Character ~= nil then
    if getgenv().zybrin.Checks.Camlock.KnockCheck then
    if Plr.Character.BodyEffects["K.O"].Value then Plr = nil 
    end
    end
    end
end)



 local grmt = getrawmetatable(game)
 local backupindex = grmt.__index
 setreadonly(grmt, false)

grmt.__index = newcclosure(function(self, v)
if (getgenv().zybrin.Silent.Enabled and Mouse and tostring(v) == "Hit") then
Plr2 = ClosestPlrFromMouse()
if Plr2 then
    local endpoint = game.Players[tostring(Plr2)].Character[getgenv().zybrin.Silent.HitPart].CFrame + (
    game.Players[tostring(Plr2)].Character[getgenv().zybrin.Silent.HitPart].Velocity *getgenv().zybrin.Silent.Prediction
    )
    return (tostring(v) == "Hit" and endpoint)
end
end
return backupindex(self, v)
end)

RunService.RenderStepped:Connect(function()
if getgenv().zybrin.Camlock.Smoothing and getgenv().zybrin.Camlock.Enabled  == true then
    local Main = CFrame.new(workspace.CurrentCamera.CFrame.p, Plr.Character[getgenv().zybrin.Camlock.HitPart].Position + Plr.Character[getgenv().zybrin.Camlock.HitPart].Velocity*getgenv().zybrin.Camlock.Prediction)
     workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(Main,getgenv().zybrin.Camlock.Smoothness,Enum.EasingStyle[getgenv().zybrin.Easing.Style],Enum.EasingDirection[getgenv().zybrin.Easing.Direction])
elseif getgenv().zybrin.Camlock.Smoothing == false and  getgenv().zybrin.Camlock.Enabled == true then
    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, Plr.Character[getgenv().zybrin.Camlock.HitPart].Position + Plr.Character[getgenv().zybrin.Camlock.HitPart].Velocity*getgenv().zybrin.Camlock.Prediction)
    end
end)


Client.Chatted:Connect(function(message)
if getgenv().zybrin.Cmds.Enabled then
    local args = string.split(message, " ")
    if args[1] == getgenv().zybrin.Cmds.FOV_Size and getgenv().zybrin.Cmds.FOV_Type == "Silent" and args[2] ~= nil then
    getgenv().zybrin.FOV.Silent.Size = tonumber(args[2])
    elseif args[1] == getgenv().zybrin.Cmds.FOV_Size and getgenv().zybrin.Cmds.FOV_Type == "Camlock" and args[2] ~= nil then
    getgenv().zybrin.FOV.Camlock.Size = tonumber(args[2])
    end

if getgenv().zybrin.Cmds.Enabled then
    local args = string.split(message, " ")
    if args[1] == getgenv().zybrin.Cmds.Pred_Value and getgenv().zybrin.cmds.Predict_Type == "Silent" and args[2] ~= nil then
    getgenv().zybrin.Silent.Prediction = tonumber(args[2])
    elseif args[1] == getgenv().zybrin.Cmds.Pred_Value and getgenv().zybrin.cmds.Predict_Type == "Camlock" and args[2] ~= nil then
    getgenv().zybrin.Camlock.Prediction = tonumber(args[2])
    end
end
end
end)
-- silent no work
Mouse.KeyDown:Connect(
function(Key)
if getgenv().zybrin.Silent.AlwaysMode then
if (Key ==  getgenv().zybrin.Silent.Key:lower()) then
    if getgenv().zybrin.Silent.Enabled == true then
    getgenv().zybrin.Silent.Enabled = false
   SendNotification("Silent Disabled.")
    else
    getgenv().zybrin.Silent.Enabled = true
    SendNotification("Silent Enabled.")
    end
end
end
end
)

-- grab check for silent (silent does not work)

if getgenv().zybrin.Checks.Silent.GrabCheck == true and player and player.Character then
    if player.Character:FindFirstChild("GRABBING_CONSTRAINT") then
    return true
    end
end

if getgenv().zybrin.Checks.Silent.CrewCheck == true then
while true do
local newPlayer = game.Players.PlayerAdded:wait()
if player:IsInGroup(newPlayer.Group) then
table.insert(Ignored.Players, newPlayer)
end
end
end


function TargetChecks(Target)
if getgenv().zybrin.Checks.Silent.KnockCheck == true and Target.Character then
    return Target.Character.BodyEffects["K.O"].Value and true or false
end
return false
end


function AntiCurve()
local character = game.Players.LocalPlayer.Character
if getgenv().zybrin.Checks.Silent.AntiCurve and character and character.PrimaryPart then
    local characterCf = character.PrimaryPart.CFrame
    local target = self.Character.HumanoidRootPart
    local targetPos = target.Position
    local charPos = character.PrimaryPart.Position
    character:SetPrimaryPartCFrame(CFrame.lookAt(charPos, v3(targetPos.X, charPos.Y, targetPos.Z)))
    wait()
    character:SetPrimaryPartCFrame(characterCf)
end
end




if getgenv().zybrin.Checks.Silent.FriendCheck then
    if table.find(Script.FriendChecks, Target.UserId) then
        return nil
    end
end


local function AntiGroundShots()
    if self ~= nil and getgenv().zybrin.AntiGroundShots.Enabled and self.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
        local currentvelocity = self.Character.HumanoidRootPart.Velocity
        self.Character.HumanoidRootPart.Velocity = Vector3.new(
            currentvelocity.X,
            currentvelocity.Y / getgenv().zybrin.AntiGroundShots.DelayGroundShot,
            currentvelocity.Z
        )
    end
end

while getgenv().zybrin.AutoPrediction.Enabled == true do
    local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    local pingNumber = string.split(Ping, " ")[1] - 10

    if pingNumber < 10 then
        getgenv().zybrin.Silent.Prediction = getgenv().zybrin.AutoPrediction.Ping_10
    elseif pingNumber < 20 then
        getgenv().zybrin.Silent.Prediction = getgenv().zybrin.AutoPrediction.Ping_20
    elseif pingNumber < 30 then
        getgenv().zybrin.Silent.Prediction = getgenv().zybrin.AutoPrediction.Ping_30
    elseif pingNumber < 40 then
        getgenv().zybrin.Silent.Prediction = getgenv().zybrin.AutoPrediction.Ping_40
    elseif pingNumber < 50 then
        getgenv().zybrin.Silent.Prediction = getgenv().zybrin.AutoPrediction.Ping_50
    elseif pingNumber < 60 then
        getgenv().zybrin.Silent.Prediction = getgenv().zybrin.AutoPrediction.Ping_60
    elseif pingNumber < 70 then
        getgenv().zybrin.Silent.Prediction = getgenv().zybrin.AutoPrediction.Ping_70
    elseif pingNumber < 80 then
        getgenv().zybrin.Silent.Prediction = getgenv().zybrin.AutoPrediction.Ping_80
    elseif pingNumber < 90 then
        getgenv().zybrin.Silent.Prediction = getgenv().zybrin.AutoPrediction.Ping_90
    elseif pingNumber < 100 then
        getgenv().zybrin.Silent.Prediction = getgenv().zybrin.AutoPrediction.Ping_100
    elseif pingNumber < 110 then
        getgenv().zybrin.Silent.Prediction = getgenv().zybrin.AutoPrediction.Ping_110 + 0.02
    elseif pingNumber < 120 then
        getgenv().zybrin.Silent.Prediction = getgenv().zybrin.AutoPrediction.Ping_120 + 0.03
    elseif pingNumber < 130 then
        getgenv().zybrin.Silent.Prediction = getgenv().zybrin.AutoPrediction.Ping_130 + 0.04
    elseif pingNumber < 140 then
        getgenv().zybrin.Silent.Prediction = getgenv().zybrin.AutoPrediction.Ping_140 + 0.05
    elseif pingNumber < 150 then
        getgenv().zybrin.Silent.Prediction = getgenv().zybrin.AutoPrediction.Ping_150
    end

    wait(getgenv().zybrin.AutoPrediction.NewPred)
end




