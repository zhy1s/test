getgenv().wizprivate = {
    ["Global"] = {
        ["Mod Detector"] = true, -- Will kick you if a Mod is in-game.
        ["Key"] = "keyhere" -- Luarmor Key's.
    },
    ["Binds"] = { -- Keybinds for certain things
        ['Select'] = "E", -- Select // Target Keybind
        ['Camera Aimbot'] = "E", -- Camera Aimbot Toggle
        ['Triggerbot'] = "B", -- Triggerbot Activation Bind
        ['Speed'] = "X" -- Speed Modifications Toggle
    },
    ['Select Only Features'] = {
        ['Force Hit'] = true, -- While a person is selected it will always hit their head.
        ['Force Trigger'] = true -- While a person is selected it will trigger everywhere (Best used with Force Hit)
    },
    ['Targeting'] = {
        ['Target Mode'] = 'Select' -- Automatic // Select
    },
    ["Checks"] = { -- Checks before targeting, don't touch unless you know what you're doing.
        ['Visible Check'] = true,
        ['Knock Check'] = true,
        ['Crew Check'] = true,
        ['Self Knock Check'] = true,
        ['Forcefield Check'] = false
    },
    ['Silent Aimbot'] = {
        ['Enabled'] = true, -- Silent Aimbot toggle
        ['HitPart'] = "Closest Point", 
        ['Closest Point'] = {
            ['Mode'] = 'Advanced', -- Basic // Advanced
            ['Scale'] = 0.5, -- determines how spread out ur points are 0 = super spaced out, 1 = super centered onto the torso
            ['Density'] = 4 -- determines the density of the 3D grid so 4 = 4 x 4 x 4 which is 64 points per part // WILL LOWER UR FPS IF U PUT THIS TOO HIGH
        },
        ['Prediction'] = { -- Predicts Movement
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 0
        },
        ['FOV'] = {
            ['Show FOV'] = true, -- Visualize FOV, use this only if you're testing FOV's. Visualization = Red
            ["X Left"] = 6,
            ["X Right"] = 6,
            ["Y Upper"] = 6,
            ["Y Lower"] = 6,
            ["Z Left"] = 6,
            ["Z Right"] = 6
        },
        ['Weapon Configuration'] = { -- Configured via Weapons
            ['Enabled'] = false,
            ['Shotguns'] = {
                ["X Left"] = 1.011, ["X Right"] = 1.62,
                ["Y Upper"] = 2.025, ["Y Lower"] = 3.225,
                ["Z Left"] = 1.175, ["Z Right"] = 1.21
            },
            ['Pistols'] = {
                ["X Left"] = 1.011, ["X Right"] = 1.52,
                ["Y Upper"] = 2.025, ["Y Lower"] = 3.425,
                ["Z Left"] = 1.175, ["Z Right"] = 1.21
            },
            ['Automatics'] = {
                ["X Left"] = 2.5, ["X Right"] = 2.5,
                ["Y Upper"] = 2.5, ["Y Lower"] = 2.5,
                ["Z Left"] = 2.5, ["Z Right"] = 2.5
            },
            ['Rifles'] = {
                ["X Left"] = 2.5, ["X Right"] = 2.5,
                ["Y Upper"] = 2.5, ["Y Lower"] = 2.5,
                ["Z Left"] = 2.5, ["Z Right"] = 2.5
            },
            ['Others'] = {
                ["X Left"] = 2.5, ["X Right"] = 2.5,
                ["Y Upper"] = 2.5, ["Y Lower"] = 2.5,
                ["Z Left"] = 2.5, ["Z Right"] = 2.5
            }
        }
    },
    ['Anti Curve'] = { -- Checks Angles via gun barrels to see if silent aim should activate
        ['Enabled'] = false,
        ['Angle'] = 0.5,
        ['Weapon Configuration'] = { -- Configurable Angles via different weapons.
            ['Enabled'] = true,
            ['Shotguns'] = { ['Angle'] = 1.1 },
            ['Pistols'] = { ['Angle'] = 0.7 },
            ['Automatics'] = { ['Angle'] = 0.45 },
            ['Rifles'] = { ['Angle'] = 0.4 },
            ['Others'] = { ['Angle'] = 0.5 }
        }
    },
    ['Camera Aimbot'] = {
        ['Enabled'] = true,
        ['Mode'] = "Toggle", -- Toggle / Hold
        ['HitPart'] = "Closet Point", -- Closest Point // R15
        ['Closest Point'] = {
            ['Mode'] = 'Advanced', -- Basic // Advanced
            ['Scale'] = 0.09, -- 1.0 = most centered (tiny points around center), 0.0 = most spread out (full part size)
            ['Density'] = 4 -- determines the density of the 3D grid so 4 = 4 x 4 x 4 which is 64 points per part // WILL LOWER UR FPS IF U PUT THIS TOO HIGH
        },
        ['Smoothing'] = { -- Determines how smooth your Camera Aimbot is, the higher the more blatant the lower the more legit etc.
            ['Enabled'] = true,
            ['X'] = 0.387, -- Smoothness via Side to Side Movement
            ['Y'] = 0.439 -- Smoothness via Jumping
        },
        ['Range Smoothing'] = { -- determines smoothness based on distance
            ['Enabled'] = false,
            ['Close'] = {
                ['X'] = 0.8,
                ['Y'] = 0.75
            },
            ['Medium'] = {
                ['X'] = 0.5,
                ['Y'] = 0.45
            },
            ['Far'] = {
                ['X'] = 0.3,
                ['Y'] = 0.25
            }
        },
        ['Easing'] = "Linear", -- https://create.roblox.com/docs/reference/engine/enums/EasingStyle
        ['Humanize'] = {
            ['Bezier'] = false, -- makes aimbot humanized by using curved paths
            ['Enabled'] = false, -- enables humanizer (different from bezier)
            ['Scale'] = 0.25 -- humanizes aimbot, keep this setting the same any higher =
        },
        ['Prediction'] = { -- Predicts Movement
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 0
        },
        ['Camera Aimbot Conditions'] = { -- Specific Conditions, true = Camera Aimbot will activate via this condition false = it wont activate if this condition is met.
            ['First Person'] = true,
            ['Third Person'] = false,
            ['Right Click'] = true,
            ['Wall'] = false -- will temporarily untarget until target is back in wall (don't touch this unless u want ur camera aimbot aiming behind the wall)
        },
        ['FOV'] = {
            ['Radius'] = "155",
            ['Show FOV'] = false -- White circle that centers to ur
        }
    },
    ['Trigger Bot'] = {
        ['Enabled'] = false, -- Trigger Bot toggle
        ['Settings'] = {
            ['Mode'] = "Toggle", -- Always // Hold // Toggle // USE ALWAYS IF UR SELECT MODE AND RAGING
            ['Type'] = "FOV" -- FOV // Hitbox
        },
        ['Delay Settings'] = { -- Configurable Delay
            ['Delay Toggle'] = true,
            ['Delay'] = 0, -- 0.095 = 95 milliseconds
            ['Weapon Configuration'] = { -- determines your delay based on weapon based configurations
                ['Enabled'] = false,
                ['Shotguns'] = {
                    ['Delay'] = 0.13
                },
                ['Pistols'] = {
                     ['Delay'] = 0.07
                },
                ['Automatics'] = {
                    ['Delay'] = 0.04
                },
                ['Rifles'] = {
                    ['Delay'] = 0.06
                },
                ['Others'] = {
                    ['Delay'] = 0.095
                }
            }
        },
        ['Prediction'] = { -- Predicts movement but you HAVE to trace.
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 0
        },
        ['FOV'] = {
            ['Show FOV'] = false, -- USE WHILE CONFIGGING. Visualization = White
            ['Size'] = {
                ["X Left"] = 12,
                ["X Right"] = 12,
                ["Y Upper"] = 12,
                ["Y Lower"] = 12,
                ["Z Left"] = 12,
                ["Z Right"] = 12
            },
            ['Weapon Configuration'] = { -- Weapon Configured FOV's
                ['Enabled'] = false,
                ['Shotguns'] = {
                    ["X Left"] = 1.62, ["X Right"] = 1.62,
                    ["Y Upper"] = 2.6, ["Y Lower"] = 2.6,
                    ["Z Left"] = 1.175, ["Z Right"] = 1.175
                },
                ['Pistols'] = {
                    ["X Left"] = 1.02, ["X Right"] = 1.02,
                    ["Y Upper"] = 2.6, ["Y Lower"] = 2.6,
                    ["Z Left"] = 1.175, ["Z Right"] = 1.175
                },
                ['Automatics'] = {
                    ["X Left"] = 2.5, ["X Right"] = 2.5,
                    ["Y Upper"] = 2.5, ["Y Lower"] = 2.5,
                    ["Z Left"] = 2.5, ["Z Right"] = 2.5
                },
                ['Rifles'] = {
                    ["X Left"] = 2.5, ["X Right"] = 2.5,
                    ["Y Upper"] = 2.5, ["Y Lower"] = 2.5,
                    ["Z Left"] = 2.5, ["Z Right"] = 2.5
                },
                ['Others'] = {
                    ["X Left"] = 2.5, ["X Right"] = 2.5,
                    ["Y Upper"] = 2.5, ["Y Lower"] = 2.5,
                    ["Z Left"] = 2.5, ["Z Right"] = 2.5
                }
            }
        }
    },
    ['Spread Modifications'] = {
        ['Enabled'] = true,
        ['Mode'] = "Fixed", -- "Fixed" or "Randomized"
        ['Double-Barrel SG'] = {
            ['Fixed'] = 0.3,
            ['Min'] = 0.2,
            ['Max'] = 0.6
        },
        ['TacticalShotgun'] = {
            ['Fixed'] = 0.4,
            ['Min'] = 0.2,
            ['Max'] = 0.5
        },
        ['Shotgun'] = {
            ['Fixed'] = 0.9,
            ['Min'] = 0.85,
            ['Max'] = 0.95
        },
        ['DrumShotgun'] = {
            ['Fixed'] = 0.85,
            ['Min'] = 0.8,
            ['Max'] = 0.9
        },
    },
    ['Speed Modifications'] = { -- Modifies your speed, works universally.
        ['Enabled'] = true, -- determines if speed should work ( toggle wont work if its on false either )
        ['Normal'] = { -- normal player conditions
            ['Multiplier'] = 50
        },
        ['Low Health'] = { -- checks if player is under 35 health and if so it just makes it ur speed choice
            ['Health Threshold'] = 35,
            ['Multiplier'] = 2
        }
    }
}

-- services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local localPlayer = Players.LocalPlayer
local camera = Workspace.CurrentCamera
local mouse = localPlayer:GetMouse()

-- states
local triggerBotActive = false
local triggerHold = false
local lastTriggerTime = 0
local lastCamUpdate = 0
local CAM_UPDATE_RATE = 1/60
local lastVisualUpdate = 0
local VISUAL_UPDATE_RATE = 1/60
local currentTargetPlayer = nil
local leftCtrlHeld = false
local targetPlayer = nil
local camLockActive = false
local camLockHold = false
local camLockTarget = nil
local camLockPart = nil
local rightClickHeld = false

-- weapon names
local ShotgunNames = { ["Double-Barrel SG"]=true, ["TacticalShotgun"]=true, ["Shotgun"]=true, ["DrumShotgun"]=true }
local PistolNames = { ["Revolver"]=true, ["Silencer"]=true, ["Glock"]=true }
local AutomaticNames = { ["AK-47"]=true, ["AR"]=true, ["Silencer AR"]=true, ["Drum Gun"]=true }
local RifleNames = { ["AUG"]=true, ["P90"]=true, ["Rifle"]=true }

-- cache for visuals
local targetCache = {
    Player = nil, Root = nil, Hitbox = nil, Box = nil,
    Trigger = nil, TriggerBox = nil,
    SilentFOV = {}, TriggerFOV = {}
}

-- r15 parts
local R15_PARTS = {
    "Head", "UpperTorso", "LowerTorso",
    "LeftUpperArm", "LeftLowerArm", "LeftHand",
    "RightUpperArm", "RightLowerArm", "RightHand",
    "LeftUpperLeg", "LeftLowerLeg", "LeftFoot",
    "RightUpperLeg", "RightLowerLeg", "RightFoot"
}

task.spawn(function()
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local CommunityID = 17215700  

    local function checkMod(Player)
        if getgenv().wizprivate and getgenv().wizprivate.Global and getgenv().wizprivate.Global["Mod Detector"] then
            if Player ~= LocalPlayer and Player:IsInGroup(CommunityID) then
                LocalPlayer:Kick("A moderator has joined the game!")
                return true
            end
        end
        return false
    end

    for _, Player in ipairs(Players:GetPlayers()) do
        if checkMod(Player) then break end
    end

    Players.PlayerAdded:Connect(function(Player)
        task.wait() 
        checkMod(Player)
    end)
end)

-- prediction helper
local function applyPrediction(rootPart, predX, predY, predZ)
    local velocity = rootPart.Velocity
    return CFrame.new(rootPart.Position + Vector3.new(velocity.X * predX, velocity.Y * predY, velocity.Z * predZ))
end

-- get current weapon category
local function getWeaponCategory()
    local tool = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Tool")
    if not tool then return "Others" end
    local name = tool.Name:gsub("[%[%]]", "")
    if ShotgunNames[name] then return "Shotguns"
    elseif PistolNames[name] then return "Pistols"
    elseif AutomaticNames[name] then return "Automatics"
    elseif RifleNames[name] then return "Rifles"
    else return "Others" end
end

-- get triggerbot delay based on weapon
local function getTriggerbotDelay()
    local cfg = getgenv().wizprivate['Trigger Bot']['Delay Settings']
    if not cfg['Delay Toggle'] then return 0 end

    local defaultDelay = cfg['Delay'] or 0.095
    local wc = cfg['Weapon Configuration']
    if not wc or not wc.Enabled then return defaultDelay end

    local category = getWeaponCategory()
    local weaponCfg = wc[category] or wc.Others
    return weaponCfg['Delay'] or defaultDelay
end

-- get range-based smoothness
local function getCameraSmoothness(distance)
    local cfg = getgenv().wizprivate['Camera Aimbot']['Range Smoothing']
    if not cfg.Enabled then
        return getgenv().wizprivate['Camera Aimbot']['Smoothing'].X, getgenv().wizprivate['Camera Aimbot']['Smoothing'].Y
    end

    if distance <= 30 then
        return cfg.Close.X, cfg.Close.Y
    elseif distance <= 80 then
        return cfg.Medium.X, cfg.Medium.Y
    else
        return cfg.Far.X, cfg.Far.Y
    end
end

-- get fov config for silent or trigger (FIXED)
local function getSplitFOV(section)
    local fovData = getgenv().wizprivate[section].FOV
    local size = fovData.Size or fovData -- Handle both structures

    local cfg = {
        xLeft  = size["X Right"],  xRight = size["X Left"],
        yUpper = size["Y Upper"], yLower = size["Y Lower"],
        zLeft  = size["Z Right"],  zRight = size["Z Left"]
    }

    local wc = fovData["Weapon Configuration"]
    if wc and wc.Enabled then
        local cat = getWeaponCategory()
        local weaponCfg = wc[cat] or wc.Others
        cfg.xLeft  = weaponCfg["X Right"]  or cfg.xLeft
        cfg.xRight = weaponCfg["X Left"] or cfg.xRight
        cfg.yUpper = weaponCfg["Y Upper"] or cfg.yUpper
        cfg.yLower = weaponCfg["Y Lower"] or cfg.yLower
        cfg.zLeft  = weaponCfg["Z Right"]  or cfg.zLeft
        cfg.zRight = weaponCfg["Z Left"] or cfg.zRight
    end

    return cfg
end

-- update visuals
local function updateTargetVisuals()
    local now = tick()
    if now - lastVisualUpdate < VISUAL_UPDATE_RATE then return end
    lastVisualUpdate = now

    local showSilent = getgenv().wizprivate['Silent Aimbot'].FOV['Show FOV']
    local showTrigger = getgenv().wizprivate['Trigger Bot'].FOV['Show FOV']

    if currentTargetPlayer ~= targetPlayer then
        pcall(function()
            if targetCache.Hitbox then targetCache.Hitbox:Destroy() targetCache.Hitbox = nil end
            if targetCache.Box then targetCache.Box:Destroy() targetCache.Box = nil end
            if targetCache.Trigger then targetCache.Trigger:Destroy() targetCache.Trigger = nil end
            if targetCache.TriggerBox then targetCache.TriggerBox:Destroy() targetCache.TriggerBox = nil end
        end)
        currentTargetPlayer = targetPlayer
        return
    end

    if not targetPlayer or not targetPlayer.Character then
        pcall(function()
            if targetCache.Hitbox then targetCache.Hitbox:Destroy() targetCache.Hitbox = nil end
            if targetCache.Box then targetCache.Box:Destroy() targetCache.Box = nil end
            if targetCache.Trigger then targetCache.Trigger:Destroy() targetCache.Trigger = nil end
            if targetCache.TriggerBox then targetCache.TriggerBox:Destroy() targetCache.TriggerBox = nil end
        end)
        return
    end

    local root = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not root then return end
    targetCache.Root = root

    local upperTorso = targetPlayer.Character:FindFirstChild("UpperTorso")
    local basePos = upperTorso and upperTorso.Position or root.Position
    local look = root.CFrame.LookVector
    local facing = CFrame.lookAt(Vector3.new(), Vector3.new(look.X, 0, look.Z))

    local silentFOV = getSplitFOV('Silent Aimbot')
    local triggerFOV = getSplitFOV('Trigger Bot')
    targetCache.SilentFOV = silentFOV
    targetCache.TriggerFOV = triggerFOV

    if showSilent then
        if not targetCache.Hitbox then
            targetCache.Hitbox = Instance.new("Part")
            targetCache.Hitbox.Name = "SilentHitbox_" .. targetPlayer.Name
            targetCache.Hitbox.Anchored = true
            targetCache.Hitbox.CanCollide = false
            targetCache.Hitbox.Transparency = 1
            targetCache.Hitbox.CanQuery = false
            targetCache.Hitbox.Parent = Workspace
        end

        local size = Vector3.new(
            silentFOV.xLeft + silentFOV.xRight,
            silentFOV.yUpper + silentFOV.yLower,
            silentFOV.zLeft + silentFOV.zRight
        )
        local offset = Vector3.new(
            (silentFOV.xRight - silentFOV.xLeft)/2,
            (silentFOV.yUpper - silentFOV.yLower)/2,
            (silentFOV.zRight - silentFOV.zLeft)/2
        )
        local worldOffset = facing:VectorToWorldSpace(offset)

        targetCache.Hitbox.Size = size
        targetCache.Hitbox.CFrame = CFrame.new(basePos + worldOffset) * facing

        if not targetCache.Box then
            targetCache.Box = Instance.new("BoxHandleAdornment")
            targetCache.Box.Adornee = targetCache.Hitbox
            targetCache.Box.AlwaysOnTop = true
            targetCache.Box.ZIndex = 10
            targetCache.Box.Transparency = 0.7
            targetCache.Box.Size = size
            targetCache.Box.Parent = targetCache.Hitbox
        end
        targetCache.Box.Color3 = isMouseInSilentFOV() and Color3.new(0,1,0) or Color3.new(1,0,0)
    else
        if targetCache.Hitbox then targetCache.Hitbox:Destroy() targetCache.Hitbox = nil end
        if targetCache.Box then targetCache.Box:Destroy() targetCache.Box = nil end
    end

    if showTrigger then
        if not targetCache.Trigger then
            targetCache.Trigger = Instance.new("Part")
            targetCache.Trigger.Name = "TriggerHitbox_" .. targetPlayer.Name
            targetCache.Trigger.Anchored = true
            targetCache.Trigger.CanCollide = false
            targetCache.Trigger.Transparency = 1
            targetCache.Trigger.CanQuery = false
            targetCache.Trigger.Parent = Workspace
        end

        local pred = getgenv().wizprivate['Trigger Bot'].Prediction
        local predPos = root.Position
        if root.Velocity.Magnitude > 1 then
            predPos = predPos + root.Velocity * Vector3.new(pred.X, pred.Y, pred.Z)
        end

        local size = Vector3.new(
            triggerFOV.xLeft + triggerFOV.xRight,
            triggerFOV.yUpper + triggerFOV.yLower,
            triggerFOV.zLeft + triggerFOV.zRight
        )
        local offset = Vector3.new(
            (triggerFOV.xRight - triggerFOV.xLeft)/2,
            (triggerFOV.yUpper - triggerFOV.yLower)/2,
            (triggerFOV.zRight - triggerFOV.zLeft)/2
        )
        local worldOffset = facing:VectorToWorldSpace(offset)
        local upperPos = upperTorso and upperTorso.Position or predPos

        targetCache.Trigger.Size = size
        targetCache.Trigger.CFrame = CFrame.new(upperPos + worldOffset) * facing

        if not targetCache.TriggerBox then
            targetCache.TriggerBox = Instance.new("BoxHandleAdornment")
            targetCache.TriggerBox.Adornee = targetCache.Trigger
            targetCache.TriggerBox.AlwaysOnTop = true
            targetCache.TriggerBox.ZIndex = 10
            targetCache.TriggerBox.Transparency = 0.7
            targetCache.TriggerBox.Size = size
            targetCache.TriggerBox.Parent = targetCache.Trigger
        end
        targetCache.TriggerBox.Color3 = isMouseInTriggerFOV() and Color3.new(0,1,0) or Color3.new(1,1,1)
    else
        if targetCache.Trigger then targetCache.Trigger:Destroy() targetCache.Trigger = nil end
        if targetCache.TriggerBox then targetCache.TriggerBox:Destroy() targetCache.TriggerBox = nil end
    end
end

-- check if mouse is in fov box
local function isMouseInBoxFOV(hitbox)
    if not hitbox or not hitbox.Parent then return false end
    local mousePos = UserInputService:GetMouseLocation()
    local ray = camera:ViewportPointToRay(mousePos.X, mousePos.Y)
    local localOrigin = hitbox.CFrame:PointToObjectSpace(ray.Origin)
    local localDir = hitbox.CFrame:VectorToObjectSpace(ray.Direction).Unit
    local size = hitbox.Size / 2
    local function axis(o, d, minB, maxB)
        if math.abs(d) < 1e-6 then return -math.huge, math.huge end
        local t1 = (minB - o) / d
        local t2 = (maxB - o) / d
        return math.min(t1, t2), math.max(t1, t2)
    end
    local txMin, txMax = axis(localOrigin.X, localDir.X, -size.X, size.X)
    local tyMin, tyMax = axis(localOrigin.Y, localDir.Y, -size.Y, size.Y)
    local tzMin, tzMax = axis(localOrigin.Z, localDir.Z, -size.Z, size.Z)
    local tMin = math.max(math.max(txMin, tyMin), tzMin)
    local tMax = math.min(math.min(txMax, tyMax), tzMax)
    return tMax >= math.max(tMin, 0)
end

local function isMouseInSilentFOV()
    if not getgenv().wizprivate['Silent Aimbot'].FOV['Show FOV'] then return true end
    return targetCache.Hitbox and isMouseInBoxFOV(targetCache.Hitbox)
end

local function isMouseInTriggerFOV()
    if not getgenv().wizprivate['Trigger Bot'].FOV['Show FOV'] then return true end
    return targetCache.Trigger and isMouseInBoxFOV(targetCache.Trigger)
end

-- hitbox mode
local function isMouseInTriggerHitbox()
    if not targetPlayer or not targetPlayer.Character then return false end
    
    local mousePos = UserInputService:GetMouseLocation()
    local ray = camera:ViewportPointToRay(mousePos.X, mousePos.Y)
    
    local parts = {
        "Head", "UpperTorso", "LowerTorso",
        "LeftUpperArm", "LeftLowerArm", "LeftHand",
        "RightUpperArm", "RightLowerArm", "RightHand",
        "LeftUpperLeg", "LeftLowerLeg", "LeftFoot",
        "RightUpperLeg", "RightLowerLeg", "RightFoot"
    }
    
    local rayParams = RaycastParams.new()
    rayParams.FilterType = Enum.RaycastFilterType.Whitelist
    rayParams.FilterDescendantsInstances = {targetPlayer.Character}
    rayParams.IgnoreWater = true
    
    local result = Workspace:Raycast(ray.Origin, ray.Direction * 1000, rayParams)
    
    if result and result.Instance then
        for _, partName in ipairs(parts) do
            if result.Instance.Name == partName then
                return true
            end
        end
    end
    
    return false
end

-- visible check (MOVED OUTSIDE RenderStepped)
local function isVisible(origin, targetPart, targetCharacter)
    if not getgenv().wizprivate.Checks['Visible Check'] then return true end
    if not (targetPart and targetPart:IsA("BasePart")) then return false end
    local direction = (targetPart.Position - origin)
    local rayParams = RaycastParams.new()
    rayParams.FilterType = Enum.RaycastFilterType.Blacklist
    rayParams.FilterDescendantsInstances = { localPlayer.Character, targetCharacter }
    rayParams.IgnoreWater = true
    local result = Workspace:Raycast(origin, direction, rayParams)
    return not result or result.Instance:IsDescendantOf(targetCharacter)
end

-- crew check
local function isSameCrew(target)
    if not getgenv().wizprivate.Checks['Crew Check'] then return false end
    local localCrew = localPlayer:GetAttribute("CrewID")
    local targetCrew = target:GetAttribute("CrewID")
    return localCrew and targetCrew and localCrew == targetCrew
end

-- triggerbot 
local function triggerbot()
    local Tool = localPlayer.Character:FindFirstChildOfClass("Tool")
    if Tool and Tool:IsDescendantOf(localPlayer.Character) and Tool.Name ~= '[Knife]' then
        for i = 1, 3 do
            Tool:Activate()
        end
    end
end

-- closest point (basic)
local function basicpoint(part)
    if not part then return nil end
    local mouseRay = mouse.UnitRay
    mouseRay = mouseRay.Origin + (mouseRay.Direction * (part.Position - mouseRay.Origin).Magnitude)
    local point = (mouseRay.Y >= (part.Position - part.Size / 2).Y and mouseRay.Y <= (part.Position + part.Size / 2).Y) 
                  and (part.Position + Vector3.new(0, -part.Position.Y + mouseRay.Y, 0)) 
                  or part.Position
    local check = RaycastParams.new()
    check.FilterType = Enum.RaycastFilterType.Whitelist
    check.FilterDescendantsInstances = {part}
    local ray = Workspace:Raycast(mouseRay, (point - mouseRay), check)
    if mouse.Target == part then return mouse.Hit.Position end
    if ray then return ray.Position end
    return mouse.Hit.Position
end

-- point cache
local pointCache = {}

-- closest point (dynamic density + scale)
local function getClosestPoint(character, isCamlock)
    if not (character and character.Parent) then return nil end
    local mousePos = UserInputService:GetMouseLocation()
    local mouseX, mouseY = mousePos.X, mousePos.Y
    local cam = camera
    local ray = cam:ViewportPointToRay(mouseX, mouseY)

    local cfg = isCamlock and getgenv().wizprivate['Camera Aimbot']['Closest Point'] 
                           or getgenv().wizprivate['Silent Aimbot']['Closest Point']
    local mode = cfg.Mode or "Advanced"
    local scale = cfg['Scale'] or 0.17
    local density = cfg['Density'] or 4
    local scaleFactor = math.clamp(scale, 0, 1)

    local bestDist = 1e9
    local bestPart, bestPos

    local parts = {}
    for _, name in R15_PARTS do
        local part = character:FindFirstChild(name)
        if part and part:IsA("BasePart") then
            table.insert(parts, part)
        end
    end

    if mode == "Basic" then
        for _, part in parts do
            local closest = basicpoint(part)
            local s = cam:WorldToViewportPoint(closest)
            if s.Z > 0 then
                local dist = (s.X - mouseX)^2 + (s.Y - mouseY)^2
                if dist < bestDist then
                    bestDist = dist
                    bestPart = part
                    bestPos = closest
                end
            end
        end
    else
        local POINT_COUNT = density * density * density
        if not pointCache[character] then pointCache[character] = table.create(POINT_COUNT) end
        local points = pointCache[character]
        local i = 0
        local STEP = 1 / (density - 1)
        local STEP_OFFSETS = {}
        for j = 0, density - 1 do STEP_OFFSETS[j + 1] = j * STEP end

        for _, part in parts do
            local size = part.Size
            local half = size * 0.5
            local cframe = part.CFrame
            local scaledHalf = half * (1 - scaleFactor)

            for z = 1, density do
                local localZ = -half.Z + STEP_OFFSETS[z] * size.Z
                local clampedZ = math.clamp(localZ, -scaledHalf.Z, scaledHalf.Z)
                for y = 1, density do
                    local localY = -half.Y + STEP_OFFSETS[y] * size.Y
                    local clampedY = math.clamp(localY, -scaledHalf.Y, scaledHalf.Y)
                    for x = 1, density do
                        local localX = -half.X + STEP_OFFSETS[x] * size.X
                        local clampedX = math.clamp(localX, -scaledHalf.X, scaledHalf.X)
                        i += 1
                        local worldPos = cframe:PointToWorldSpace(Vector3.new(clampedX, clampedY, clampedZ))
                        points[i] = worldPos
                        local s = cam:WorldToViewportPoint(worldPos)
                        if s.Z > 0 then
                            local dist = (s.X - mouseX)^2 + (s.Y - mouseY)^2
                            if dist < bestDist then
                                bestDist = dist
                                bestPart = part
                                bestPos = worldPos
                            end
                        end
                    end
                end
            end
        end
    end

    if bestPart then return { Part = bestPart, Position = bestPos } end
    local root = character:FindFirstChild("HumanoidRootPart")
    return root and { Part = root, Position = root.Position }
end

-- get hitpart for silent aimbot
local function getClosestBodyPart(character)
    if not character then return nil end
    if getgenv().wizprivate['Silent Aimbot'].HitPart == "Closest Point" then
        return getClosestPoint(character, false)
    end
    local part = character:FindFirstChild(getgenv().wizprivate['Silent Aimbot'].HitPart)
    if part and part:IsA("BasePart") then
        return { Part = part, Position = part.Position }
    end
    return getClosestPoint(character, false)
end

-- get hitpart for camera aimbot
local function getCamlockBodyPart(character)
    if not character then return nil end
    if getgenv().wizprivate['Camera Aimbot'].HitPart == "Closest Point" then
        return getClosestPoint(character, true)
    end
    local part = character:FindFirstChild(getgenv().wizprivate['Camera Aimbot'].HitPart)
    if part and part:IsA("BasePart") then
        return { Part = part, Position = part.Position }
    end
    return getClosestPoint(character, true)
end

-- knock checks
local function isTargetKnocked(target)
    local bodyEffects = target.Character and target.Character:FindFirstChild("BodyEffects")
    local ko = bodyEffects and bodyEffects:FindFirstChild("K.O")
    return ko and ko.Value
end

local function isSelfKnocked()
    local bodyEffects = localPlayer.Character and localPlayer.Character:FindFirstChild("BodyEffects")
    local ko = bodyEffects and bodyEffects:FindFirstChild("K.O")
    return ko and ko.Value
end

local function getBestTarget()
    local closestPlayer, closestDist = nil, math.huge
    local mousePos = UserInputService:GetMouseLocation()
    local cam = Workspace.CurrentCamera

    for _, player in ipairs(Players:GetPlayers()) do
        if player == localPlayer then continue end
        local char = player.Character
        if not char then continue end

        local root = char:FindFirstChild("HumanoidRootPart")
        local head = char:FindFirstChild("Head")
        if not root or not head then continue end

        -- === CHECKS ===
        local be = char:FindFirstChild("BodyEffects")
        local ko = be and be:FindFirstChild("K.O")
        local ff = char:FindFirstChildOfClass("ForceField")

        local pass = true
        if getgenv().wizprivate.Checks['Knock Check'] and ko and ko.Value then pass = false end
        if getgenv().wizprivate.Checks['Forcefield Check'] and ff then pass = false end
        if getgenv().wizprivate.Checks['Crew Check'] and isSameCrew(player) then pass = false end
        if not pass then continue end

        -- Visible check (optional)
        if getgenv().wizprivate.Checks['Visible Check'] then
            if not isVisible(cam.CFrame.Position, head, char) then continue end
        end

        -- Screen position & distance
        local screenPos, onScreen = cam:WorldToViewportPoint(root.Position)
        if not onScreen or screenPos.Z <= 0 then continue end

        local dist2D = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
        if dist2D < closestDist then
            closestDist = dist2D
            closestPlayer = player
        end
    end

    return closestPlayer
end

local function clearTargetIfInvalid()
    if not targetPlayer or not targetPlayer.Character then
        targetPlayer = nil
        camLockTarget = nil
        camLockPart = nil
        camLockActive = false
        pcall(function()
            if targetCache.Hitbox then targetCache.Hitbox:Destroy() end
            if targetCache.Box then targetCache.Box:Destroy() end
            if targetCache.Trigger then targetCache.Trigger:Destroy() end
            if targetCache.TriggerBox then targetCache.TriggerBox:Destroy() end
        end)
        return true
    end

    local char = targetPlayer.Character
    local root = char:FindFirstChild("HumanoidRootPart")
    local be = char:FindFirstChild("BodyEffects")
    local ko = be and be:FindFirstChild("K.O")
    local ff = char:FindFirstChildOfClass("ForceField")

    local invalid = not root
                 or (getgenv().wizprivate.Checks['Knock Check'] and ko and ko.Value)
                 or (getgenv().wizprivate.Checks['Forcefield Check'] and ff)
                 or (getgenv().wizprivate.Checks['Crew Check'] and isSameCrew(targetPlayer))

    if invalid then
        targetPlayer = nil
        camLockTarget = nil
        camLockPart = nil
        camLockActive = false
        pcall(function()
            if targetCache.Hitbox then targetCache.Hitbox:Destroy() end
            if targetCache.Box then targetCache.Box:Destroy() end
            if targetCache.Trigger then targetCache.Trigger:Destroy() end
            if targetCache.TriggerBox then targetCache.TriggerBox:Destroy() end
        end)
        return true
    end

    return false
end

-- speed modifications
local function applySpeed()
    local cfg = getgenv().wizprivate["Speed Modifications"]
    if not cfg or not cfg.Enabled then return end

    local hum = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
    if not hum then return end

    local health = hum.Health
    local speed = 16

    if cfg["Low Health"] and health <= cfg["Low Health"]["Health Threshold"] then
        speed = speed * cfg["Low Health"]["Multiplier"]
    else
        speed = speed * cfg.Normal["Multiplier"]
    end

    hum.WalkSpeed = speed
end

local function hookHumanoid(humanoid)
    applySpeed()
    humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        if getgenv().wizprivate["Speed Modifications"].Enabled then
            applySpeed()
        end
    end)
    humanoid.HealthChanged:Connect(applySpeed)
end

localPlayer.CharacterAdded:Connect(function(char)
    local hum = char:WaitForChild("Humanoid", 10)
    if hum then hookHumanoid(hum) end
end)
if localPlayer.Character then
    local hum = localPlayer.Character:FindFirstChildOfClass("Humanoid")
    if hum then hookHumanoid(hum) end
end

-- input handling
local selectPressed = false
local camPressed = false
local triggerPressed = false
local speedPressed = false

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    local key = input.KeyCode
    local selectBind = getgenv().wizprivate["Binds"].Select
    local camBind = getgenv().wizprivate["Binds"]["Camera Aimbot"]
    local triggerBind = getgenv().wizprivate["Binds"].Triggerbot
    local speedBind = getgenv().wizprivate["Binds"].Speed
    local targetMode = getgenv().wizprivate['Targeting']['Target Mode']

    if key == Enum.KeyCode.LeftControl then leftCtrlHeld = true return end

    if key == Enum.KeyCode[selectBind] and targetMode == 'Select' then
        if not selectPressed then
            selectPressed = true
            if targetPlayer then
                targetPlayer = nil
                pcall(function()
                    if targetCache.Hitbox then targetCache.Hitbox:Destroy() end
                    if targetCache.Box then targetCache.Box:Destroy() end
                    if targetCache.Trigger then targetCache.Trigger:Destroy() end
                    if targetCache.TriggerBox then targetCache.TriggerBox:Destroy() end
                end)
            else
                targetPlayer = getBestTarget()
                if targetPlayer and targetPlayer.Character then
                    updateTargetVisuals()
                end
            end
        end
    end

    if key == Enum.KeyCode[camBind] then
        if not camPressed then
            camPressed = true
            local mode = getgenv().wizprivate['Camera Aimbot'].Mode
            if mode == "Toggle" then
                camLockActive = not camLockActive
                if camLockActive then
                    camLockTarget = targetPlayer
                    if camLockTarget and camLockTarget.Character then
                        camLockPart = getCamlockBodyPart(camLockTarget.Character)
                    end
                else
                    camLockTarget = nil
                    camLockPart = nil
                end
            elseif mode == "Hold" then
                camLockHold = true
                camLockActive = true
                camLockTarget = targetPlayer
                if camLockTarget and camLockTarget.Character then
                    camLockPart = getCamlockBodyPart(camLockTarget.Character)
                end
            end
        end
    end

    if key == Enum.KeyCode[triggerBind] then
        if not triggerPressed then
            triggerPressed = true
            local mode = getgenv().wizprivate['Trigger Bot'].Settings.Mode
            if mode == "Toggle" then
                triggerBotActive = not triggerBotActive
            elseif mode == "Hold" then
                triggerHold = true
            end
        end
    end

    if key == Enum.KeyCode[speedBind] then
        if not speedPressed then
            speedPressed = true
            local cfg = getgenv().wizprivate["Speed Modifications"]
            cfg.Enabled = not cfg.Enabled
            applySpeed()
        end
    end

    if input.UserInputType == Enum.UserInputType.MouseButton2 then
        rightClickHeld = true
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then
        leftCtrlHeld = false
    end
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
        rightClickHeld = false
    end

    local camBind = getgenv().wizprivate["Binds"]["Camera Aimbot"]
    local mode = getgenv().wizprivate['Camera Aimbot'].Mode
    if input.KeyCode == Enum.KeyCode[camBind] then
        camPressed = false
        if mode == "Hold" then
            camLockHold = false
            camLockActive = false
            camLockTarget = nil
            camLockPart = nil
        end
    end

    if input.KeyCode == Enum.KeyCode[getgenv().wizprivate["Binds"].Triggerbot] then
        if getgenv().wizprivate['Trigger Bot'].Settings.Mode == "Hold" then
            triggerHold = false
        end
        triggerPressed = false
    end

    if input.KeyCode == Enum.KeyCode[getgenv().wizprivate["Binds"].Select] then
        selectPressed = false
    end

    if input.KeyCode == Enum.KeyCode[getgenv().wizprivate["Binds"].Speed] then
        speedPressed = false
    end
end)

-- main loop
RunService.RenderStepped:Connect(function()
    local mode = getgenv().wizprivate['Targeting']['Target Mode']

    if mode == "Automatic" then
        local best = getBestTarget()
        if best ~= targetPlayer then
            targetPlayer = best
        end
    end

    if clearTargetIfInvalid() then
        currentTargetPlayer = nil
        return
    end

    if targetPlayer ~= currentTargetPlayer then
        currentTargetPlayer = targetPlayer
        pcall(function()
            if targetCache.Hitbox then targetCache.Hitbox:Destroy() targetCache.Hitbox = nil end
            if targetCache.Box then targetCache.Box:Destroy() targetCache.Box = nil end
            if targetCache.Trigger then targetCache.Trigger:Destroy() targetCache.Trigger = nil end
            if targetCache.TriggerBox then targetCache.TriggerBox:Destroy() targetCache.TriggerBox = nil end
        end)
    end

    if not targetPlayer or not targetPlayer.Character then return end

    local root = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not root then return end

    local upperTorso = targetPlayer.Character:FindFirstChild("UpperTorso")
    local basePos = upperTorso and upperTorso.Position or root.Position
    local look = root.CFrame.LookVector
    local facing = CFrame.lookAt(Vector3.new(), Vector3.new(look.X, 0, look.Z))

    local showSilent = getgenv().wizprivate['Silent Aimbot'].FOV['Show FOV']
    local showTrigger = getgenv().wizprivate['Trigger Bot'].FOV['Show FOV']

    local weaponCategory = getWeaponCategory()
    local silentFOV = getSplitFOV('Silent Aimbot')
    local triggerFOV = getSplitFOV('Trigger Bot')

    local function applySilentFOV()
        if not showSilent then
            if targetCache.Hitbox then targetCache.Hitbox:Destroy() targetCache.Hitbox = nil end
            if targetCache.Box then targetCache.Box:Destroy() targetCache.Box = nil end
            return
        end

        if not targetCache.Hitbox then
            targetCache.Hitbox = Instance.new("Part")
            targetCache.Hitbox.Name = "SilentHitbox_" .. targetPlayer.Name
            targetCache.Hitbox.Anchored = true
            targetCache.Hitbox.CanCollide = false
            targetCache.Hitbox.Transparency = 1
            targetCache.Hitbox.CanQuery = false
            targetCache.Hitbox.Parent = Workspace
        end

        local size = Vector3.new(
            silentFOV.xLeft + silentFOV.xRight,
            silentFOV.yUpper + silentFOV.yLower,
            silentFOV.zLeft + silentFOV.zRight
        )
        local offset = Vector3.new(
            (silentFOV.xRight - silentFOV.xLeft)/2,
            (silentFOV.yUpper - silentFOV.yLower)/2,
            (silentFOV.zRight - silentFOV.zLeft)/2
        )
        local worldOffset = facing:VectorToWorldSpace(offset)

        targetCache.Hitbox.Size = size
        targetCache.Hitbox.CFrame = CFrame.new(basePos + worldOffset) * facing

        if not targetCache.Box then
            targetCache.Box = Instance.new("BoxHandleAdornment")
            targetCache.Box.Adornee = targetCache.Hitbox
            targetCache.Box.AlwaysOnTop = true
            targetCache.Box.ZIndex = 10
            targetCache.Box.Transparency = 0.7
            targetCache.Box.Size = size
            targetCache.Box.Parent = targetCache.Hitbox
        end
        targetCache.Box.Color3 = isMouseInSilentFOV() and Color3.new(0,1,0) or Color3.new(1,0,0)
    end

    local function applyTriggerFOV()
        if not showTrigger then
            if targetCache.Trigger then targetCache.Trigger:Destroy() targetCache.Trigger = nil end
            if targetCache.TriggerBox then targetCache.TriggerBox:Destroy() targetCache.TriggerBox = nil end
            return
        end

        if not targetCache.Trigger then
            targetCache.Trigger = Instance.new("Part")
            targetCache.Trigger.Name = "TriggerHitbox_" .. targetPlayer.Name
            targetCache.Trigger.Anchored = true
            targetCache.Trigger.CanCollide = false
            targetCache.Trigger.Transparency = 1
            targetCache.Trigger.CanQuery = false
            targetCache.Trigger.Parent = Workspace
        end

        local pred = getgenv().wizprivate['Trigger Bot'].Prediction
        local predPos = root.Position
        if root.Velocity.Magnitude > 1 then
            predPos = predPos + root.Velocity * Vector3.new(pred.X, pred.Y, pred.Z)
        end

        local size = Vector3.new(
            triggerFOV.xLeft + triggerFOV.xRight,
            triggerFOV.yUpper + triggerFOV.yLower,
            triggerFOV.zLeft + triggerFOV.zRight
        )
        local offset = Vector3.new(
            (triggerFOV.xRight - triggerFOV.xLeft)/2,
            (triggerFOV.yUpper - triggerFOV.yLower)/2,
            (triggerFOV.zRight - triggerFOV.zLeft)/2
        )
        local worldOffset = facing:VectorToWorldSpace(offset)
        local upperPos = upperTorso and upperTorso.Position or predPos

        targetCache.Trigger.Size = size
        targetCache.Trigger.CFrame = CFrame.new(upperPos + worldOffset) * facing

        if not targetCache.TriggerBox then
            targetCache.TriggerBox = Instance.new("BoxHandleAdornment")
            targetCache.TriggerBox.Adornee = targetCache.Trigger
            targetCache.TriggerBox.AlwaysOnTop = true
            targetCache.TriggerBox.ZIndex = 10
            targetCache.TriggerBox.Transparency = 0.7
            targetCache.TriggerBox.Size = size
            targetCache.TriggerBox.Parent = targetCache.Trigger
        end
        targetCache.TriggerBox.Color3 = isMouseInTriggerFOV() and Color3.new(0,1,0) or Color3.new(1,1,1)
    end

    applySilentFOV()
    applyTriggerFOV()

    if getgenv().wizprivate['Trigger Bot'].Enabled and not leftCtrlHeld then
        local cfg = getgenv().wizprivate['Trigger Bot'].Settings
        local isSelectMode = (mode == "Select")
        local forceTrigger = isSelectMode and getgenv().wizprivate['Select Only Features']['Force Trigger']
        local forceHit = isSelectMode and getgenv().wizprivate['Select Only Features']['Force Hit']

        local active = forceTrigger or (cfg.Mode == "Always") or (cfg.Mode == "Hold" and triggerHold) or (cfg.Mode == "Toggle" and triggerBotActive)
        if active then
            local now = tick()
            local delay = getTriggerbotDelay()
            if delay > 0 and (now - lastTriggerTime) < delay then return end

            local inRange = forceTrigger or 
                           (cfg.Type == "FOV" and isMouseInTriggerFOV()) or 
                           (cfg.Type == "Hitbox" and isMouseInTriggerHitbox())

            if inRange then
                local hitData
                if forceHit then
                    local head = targetPlayer.Character:FindFirstChild("Head")
                    if head and head:IsA("BasePart") then
                        hitData = { Part = head, Position = head.Position }
                    end
                else
                    hitData = getClosestBodyPart(targetPlayer.Character)
                end

                if hitData and hitData.Part then
                    local visible = not getgenv().wizprivate.Checks['Visible Check'] or 
                                   isVisible(camera.CFrame.Position, hitData.Part, targetPlayer.Character)
                    if visible then
                        triggerbot()
                        lastTriggerTime = now
                    end
                end
            end
        end
    end
end)

-- camera aimbot
local camFOVCircle = nil
RunService.Heartbeat:Connect(function(dt)
    local camcfg = getgenv().wizprivate['Camera Aimbot']
    if not (camcfg.Enabled and camLockActive and camLockTarget and camLockTarget.Character) then 
        if camFOVCircle then camFOVCircle:Remove() camFOVCircle = nil end
        return 
    end

    if clearTargetIfInvalid() then return end

    local root = camLockTarget.Character:FindFirstChild("HumanoidRootPart")
    if not root then return end

    if getgenv().wizprivate.Checks["Self Knock Check"] and isSelfKnocked() then return end

    local zoom = (camera.CFrame.Position - camera.Focus.Position).Magnitude
    local isFP = zoom < 1
    local isTP = zoom >= 1
    local cond = camcfg['Camera Aimbot Conditions']
    local allowed = (cond['First Person'] and isFP or cond['Third Person'] and isTP) and (not cond['Right Click'] or rightClickHeld)
    if not allowed then return end

    local newPart = getCamlockBodyPart(camLockTarget.Character)
    if not newPart then return end

    local radius = tonumber(camcfg.FOV.Radius) or 155
    local mousePos = UserInputService:GetMouseLocation()
    local screenPos = camera:WorldToViewportPoint(newPart.Position)
    if screenPos.Z <= 0 or (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude > radius then return end

    if not cond['Wall'] then
        local visible = isVisible(camera.CFrame.Position, newPart.Part, camLockTarget.Character)
        if not visible then return end
        camLockPart = newPart
    else
        camLockPart = newPart
    end

    local campart = camLockPart

    if tick() - lastCamUpdate < CAM_UPDATE_RATE then return end
    lastCamUpdate = tick()

    local targetPos = campart.Position

    local distance = (camera.CFrame.Position - root.Position).Magnitude
    local smoothX, smoothY = getCameraSmoothness(distance)

    local humanize = camcfg.Humanize
    local targetCF = CFrame.new(camera.CFrame.Position, targetPos)

    if humanize.Bezier and humanize.Enabled then
        local scale = math.clamp(humanize.Scale or 0.25, 0, 1)
        local chaos = scale * 15
        local control = camera.CFrame.Position:Lerp(targetPos, 0.5) 
                      + Vector3.new(math.random(-chaos, chaos), math.random(-chaos, chaos), math.random(-chaos, chaos))
        local t = (tick() % 1)
        local p1 = camera.CFrame.Position
        local p2 = control
        local p3 = targetPos
        local bezier = p1:Lerp(p2, t):Lerp(p3, t)
        targetCF = CFrame.new(camera.CFrame.Position, bezier)
        smoothX *= (1 - scale * 0.6)
        smoothY *= (1 - scale * 0.6)
    end

    local factorX = 1 - math.exp(-smoothX * dt * 60)
    local factorY = 1 - math.exp(-smoothY * dt * 60)
    local alpha = math.max(factorX, factorY)
    camera.CFrame = camera.CFrame:Lerp(targetCF, alpha)

    if camcfg.FOV['Show FOV'] then
        if not camFOVCircle then
            camFOVCircle = Drawing.new("Circle")
            camFOVCircle.Thickness = 1.5
            camFOVCircle.Filled = false
            camFOVCircle.Transparency = 1
            camFOVCircle.Color = Color3.new(1, 1, 1)
            camFOVCircle.Visible = true
        end
        local mouseLoc = UserInputService:GetMouseLocation()
        camFOVCircle.Position = Vector2.new(mouseLoc.X, mouseLoc.Y)
        camFOVCircle.Radius = radius
    elseif camFOVCircle then
        camFOVCircle:Remove()
        camFOVCircle = nil
    end
end)
-- silent aimbot
local originalIndex
originalIndex = hookmetamethod(game, "__index", function(t, k)
    if not (getgenv().wizprivate['Silent Aimbot'].Enabled and t == mouse and targetPlayer and targetPlayer.Character) then
        return originalIndex(t, k)
    end

    local targetMode = getgenv().wizprivate['Targeting']['Target Mode']
    local isSelectMode = targetMode == "Select"
    local forceHit = isSelectMode and getgenv().wizprivate['Select Only Features']['Force Hit']

    local shouldCheckFOV = not forceHit
    local inFOV = not getgenv().wizprivate['Silent Aimbot'].FOV['Show FOV'] or isMouseInSilentFOV()
    local alwaysHit = forceHit or (shouldCheckFOV and inFOV)

    if not alwaysHit then return originalIndex(t, k) end

    local hitData
    if forceHit then
        local head = targetPlayer.Character:FindFirstChild("Head")
        if head and head:IsA("BasePart") then
            hitData = { Part = head, Position = head.Position }
        end
    else
        hitData = getClosestBodyPart(targetPlayer.Character)
    end

    if not hitData or not hitData.Part then
        return originalIndex(t, k)
    end

    if not (forceHit or isVisible(camera.CFrame.Position, hitData.Part, targetPlayer.Character)) then
        return originalIndex(t, k)
    end

    local antiCurve = getgenv().wizprivate["Anti Curve"]
    if antiCurve.Enabled then
        local cameraDir = camera.CFrame.LookVector
        local toTarget = (hitData.Position - camera.CFrame.Position).Unit
        local dot = cameraDir:Dot(toTarget)
        local angle = math.deg(math.acos(math.clamp(dot, -1, 1)))
        local antiCurveAngle = antiCurve.Angle or 0.5
        
        if antiCurve['Weapon Configuration'].Enabled then
            local tool = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Tool")
            if tool then
                local name = tool.Name:gsub("[%[%]]", "")
                local wc = antiCurve['Weapon Configuration']
                if ShotgunNames[name] then antiCurveAngle = wc.Shotguns.Angle
                elseif PistolNames[name] then antiCurveAngle = wc.Pistols.Angle
                elseif AutomaticNames[name] then antiCurveAngle = wc.Automatics.Angle
                elseif RifleNames[name] then antiCurveAngle = wc.Rifles.Angle
                else antiCurveAngle = wc.Others.Angle end
            end
        end
        
        if angle > antiCurveAngle then return originalIndex(t, k) end
    end

    if k == "Hit" then
        local pos = hitData.Position
        local pred = getgenv().wizprivate['Silent Aimbot'].Prediction
        local root = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
        if root and (pred.X ~= 0 or pred.Y ~= 0 or pred.Z ~= 0) then
            pos = pos + root.Velocity * Vector3.new(pred.X, pred.Y, pred.Z)
        end
        return CFrame.new(pos)
    elseif k == "Target" then
        return hitData.Part
    end

    return originalIndex(t, k)
end)

-- spread modifications
local originalRandom = math.random
originalRandom = hookfunction(math.random, function(...)
    local args = { ... }
    if checkcaller() then return originalRandom(...) end

    local isSpreadCall = false
    if #args == 0 then
        isSpreadCall = true
    elseif #args == 2 and type(args[1]) == "number" and type(args[2]) == "number" then
        local a, b = args[1], args[2]
        if (a == -0.1 and b == 0.05) or
           (a >= -0.15 and a <= -0.05 and b >= 0.03 and b <= 0.07) then
            isSpreadCall = true
        end
    elseif #args == 1 and type(args[1]) == "number" then
        local a = args[1]
        if a == -0.1 or a == -0.05 or (a >= -0.15 and a <= -0.03) then
            isSpreadCall = true
        end
    end

    if not isSpreadCall then return originalRandom(...) end

    local spreadMods = getgenv().wizprivate and getgenv().wizprivate['Spread Modifications']
    if not spreadMods or not spreadMods.Enabled then return originalRandom(...) end

    local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
    local tool = character:FindFirstChildOfClass("Tool")
    local toolName = tool and tool.Name or ""
    toolName = toolName:gsub("%[", ""):gsub("%]", "")

    local weaponConfig = spreadMods[toolName]
    if not weaponConfig then return originalRandom(...) end

    local multiplier = 1
    if spreadMods.Mode == "Randomized" then
        local min = math.clamp(tonumber(weaponConfig.Min) or 0, 0, 1)
        local max = math.clamp(tonumber(weaponConfig.Max) or 1, 0, 1)
        if min > max then min, max = max, min end
        local rand = originalRandom()
        multiplier = min + (rand * (max - min))
    else
        multiplier = math.clamp(tonumber(weaponConfig.Fixed) or 1, 0, 1)
    end

    local originalValue = originalRandom(...)
    return originalValue * multiplier
end)
