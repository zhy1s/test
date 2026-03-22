
shared.Script = {
    ['Framework'] = {
        ['Version'] = "v0.3",
        ['Core'] = {
            ['ESP Interval'] = 0.01,
            ['Conditions Interval'] = 0.1,
            ['License'] = 'gDyTPzjOuutLsCS2yrae2luXooZRG93axbdqbSha2lE=',
        },
        ['Bindings'] = {
            ['Silent Aim'] = "L",
            ['Aim Assist'] = "MouseButton2",
            ['Triggerbot'] = "C",
            ['Speed'] = "V",
            ['Target'] = "G",
            ['Macro'] = "Q",
            ['ESP'] = "B",
        },

        ['Indicators'] = true,
        ['Chat Commands'] = true,
    },

    ['Conditions'] = {
        ['Is Behind Wall'] = true,
        ['Is Knocked'] = true,
        ['Is Grabbed'] = false,
        ['Is Gun Not Held'] = true,
        ['Is Target Idle'] = false,
    },

    ['Silent Aim'] = {
        ['Enabled'] = true,
        ['Keybind'] = { ['Enabled'] = false, ['Mode'] = "Toggle" },

        ['Prediction'] = {
            ['Enabled'] = false,
            ['Y Stabalizer'] = false,
            ['Resolver'] = { ['Enabled'] = false, ['Mode'] = "Auto" }, -- [Auto, Always]
            ['X'] = 0.108,
            ['Y'] = 0.083,
            ['Z'] = 0.108,
        },

        ['Angle Limiter'] = {
            ['Enabled'] = false,
            ['Type'] = "Gun Origin", -- [Camera, Gun Origin]
            ['Max'] = {
                ['X'] = 4,
                ['Y'] = 5,
            },
        },

        ['Hit Point'] = {
            ['Static Part'] = "Head", -- Exact part name for instance Head, HumanoidRootPart, UpperTorso etc
            ['Targeting Mode'] = "Nearest Part", -- Static Part, Nearest Part, Nearest Point, HvH
            ['Spread Compensation'] = false,
            ['Whitelisted Parts'] = { "Head","UpperTorso","LowerTorso","HumanoidRootPart","LeftUpperArm","LeftLowerArm","LeftHand","RightUpperArm","RightLowerArm","RightHand","LeftUpperLeg","LeftLowerLeg","LeftFoot","RightUpperLeg","RightLowerLeg","RightFoot" },
            ['Nearest Point'] = {
                ['Mode'] = "Full Body",
                ['Scale'] = 1,
            },
        },

        ['Client Redirection'] = true,
    },

    ['Aim Assist'] = {
        ['Enabled'] = true,
        ['Keybind'] = { ['Enabled'] = true, ['Mode'] = "Hold" },

        ['Interpolation'] = {
            ['Use Delta Time'] = true,
            ['Strength'] = 0.045,

            ['Easing'] = {
                ['Style'] = 'Circular',
                ['Direction'] = "InOut",
            },
        },

        ['Hit Point'] = {
            ['Static Part'] = "Head",
            ['Targeting Mode'] = "Nearest Part", -- Static Part, Nearest Part, Nearest Point
            ['Whitelisted Parts'] = { "Head","UpperTorso","LowerTorso","HumanoidRootPart" },
            ['Nearest Point'] = {
                ['Mode'] = "Full Body",
                ['Scale'] = 1,
            },
        },
    },

    ['Triggerbot'] = {
        ['Enabled'] = true,
        ['Keybind'] = { ['Enabled'] = true, ['Mode'] = "Hold" },
        ['Mode'] = "Hitbox", -- Hitbox
        ['Delay'] = 0.001,
        ['Shake'] = {
            ['Enabled'] = false,
            ['X'] = 50,
            ['Y'] = 50
        },
    },

    ['Hitbox'] = { -- bounding box
        ['Visible'] = false,
        ['Target Selection'] = "Auto", -- [ Target, Auto ]
        ['Keybind'] = { ['Enabled'] = true, ['Mode'] = "Toggle" },
        ['Size'] = {
            ['Scale'] = {
                ['Max'] = 1.21,
                ['Min'] = 1.67,
            },
            ['X'] = 0.5,
            ['Y'] = 0.6,
        },
    },

    ['Weapon Manipulation'] = {
        ['Double Tap'] = {
            ['Enabled'] = false,
            ['Whitelisted'] = {
                ['[Revolver]'] = true,
                ['[Rifle]'] = true,
                ['[Silencer]'] = true,
            },
        },
        ['Shoot Cooldown'] = {
            ['Enabled'] = false,
            ['Multiplier'] = 0,
        },
        ['Spread'] = {
            ['Enabled'] = true,
            ['Values'] = {
                ['X'] = 0.04, -- default: 0.05
                ['Y'] = 0.07, -- default: 0.1
                ['Z'] = 0.04, -- default: 0.05
            },
        }
    },

    ['Lighting Modifications'] = {
        ['Enabled'] = true,
        ['Ambient'] = Color3.fromRGB(247, 201, 255),
        ['Brightness'] = 2.2,
        ['Color Brightness'] = 0.1,
        ['Color Contrast'] = 0.25,
        ['Color Saturation'] = 0.1,
        ['Color Shift Top'] = Color3.fromRGB(255, 217, 140),
        ['Color Shift Bottom'] = Color3.fromRGB(0, 0, 0),
        ['Environment Diffuse Scale'] = 0.3,
        ['Environment Specular Scale'] = 0.25,
        ['Outdoor Ambient'] = Color3.fromRGB(0, 0, 0),
    },

    ['Self Modifications'] = {
        ['Speed'] = {
            ['Enabled'] = true,
            ['Keybind'] = { ['Enabled'] = true, ['Mode'] = "Toggle" },
            ['Multiplier'] = 15,
        },
    },

    ['Skin Changer'] = {
        ['Enabled'] = true,
        ['Skins'] = {
            ['[Double-Barrel SG]'] = "Galaxy",
            ['[Revolver]'] = "Galaxy",
            ['[TacticalShotgun]'] = "Galaxy",
            ['[AK47]'] = "Galaxy",
            ['[Silencer]'] = "Mummy",
            ['[Knife]'] = "Love Kukri",
        },
    },

    ['ESP'] = {
        ['Enabled'] = true,
        ['Keybind'] = { ['Enabled'] = true, ['Mode'] = "Toggle" },

        ['Target Color'] = Color3.fromRGB(255, 0, 0),
        ['Regular Color'] = Color3.fromRGB(255, 255, 255),
    }
}

local SEED = os.time() 
local A = 1664525
local C = 1013904223
local M = 2^32
local state = SEED


local HttpService = game:GetService('HttpService')


    print("Authentication Success!")
local workspace = game:GetService("Workspace")
local players = game:GetService("Players")
local replicated_storage = game:GetService("ReplicatedStorage")
local place_id = game.PlaceId
local local_player = players.LocalPlayer
local user_input_service = game:GetService("UserInputService")
local mouse = local_player:GetMouse()
local camera = workspace.CurrentCamera
local virtual_input = game:GetService("VirtualInputManager")
local core_gui = game:GetService("CoreGui")
local lighting = game:GetService("Lighting")
local tween_service = game:GetService("TweenService")
local gui_service = game:GetService("GuiService")
local run_service = game:GetService("RunService")
local gui_inset = gui_service:GetGuiInset()
local gui = Instance.new("ScreenGui")
local box = Instance.new("Frame")
local stroke = Instance.new("UIStroke")
local outline = Instance.new("UIStroke")
local container = Instance.new("Frame")
local layout = Instance.new("UIListLayout")
local local_character
local local_humanoid
local local_root
local local_tool
local server_time = workspace:GetServerTimeNow()
local skin_assets 
local gun_handle_particles 
local gun_shoot_sounds 
local gun_skin_muzzle_particle
local knives 
local meshes 
local gun_skin_animations 
local knife_skin_animations 
local scripts 
local data = {
    cheat_name = "Private",
    current_version = "v0.3",
    dahood_funcs = {},
    game = {},
    players = {},
    locals = {},
    connections = {},
    applied_tools = {},
    labels = {},
    tool_connections = nil,
    tool_connection = nil,
    speed_connection = nil,
    aimed = false,
    mouse_in_box = false,
    closest_data = {
        plr = nil,
        dist = math.huge,
    },
    functions = {
        combat = {},
        helpers = {},
    },
    toggles = {
        silent_aim = false,
        esp = false,
		aim_assist = false,
        speed = false,
        triggerbot = false,
        target = false,
    },
    last_updates = {
        esp = tick(),
        triggerbot = tick(),
        tools = {}
    },
}

gui.Parent = local_player:WaitForChild("PlayerGui")
gui.ResetOnSpawn = false
box.Parent = gui
box.BackgroundTransparency = 1
stroke.Parent = box
stroke.Thickness = 1
stroke.LineJoinMode = Enum.LineJoinMode.Miter
stroke.Color = Color3.fromRGB(255, 0, 0)

container.Size = UDim2.new(0, 200, 0, 200)
container.Position = UDim2.new(0, 10, 0.5, -100)
container.BackgroundTransparency = 1
container.Parent = gui

layout.Padding = UDim.new(0, 1)
layout.Parent = container

local WeldMotor6D = {
	'UnDead',
	'Frog',
	'Wild West',
	'Cupid',
	'Love',
	'Chain',
	'Portal',
	'Military',
	'RGB Dual Bayonets',
	'GPO-Knife',
	'Cartoon',
	'Dragon',
	'Dual Bayonets',
	'Ruby Fan',
	'Star',
	'Golden Age Tanto',
	'Metalic GPO',
	'Etheral',
	'RGB Butterfly',
	'Crow',
	'Soul',
	'Ice Sword',
	'Heaven',
	'Cat',
	'Reptile',
	'Unicorn',
	'Wire',
	
	'Iced Out',
	'Verified Tanto',
	'Squid',
	'Green Blaze',
	'Purple Blaze',
	'Red Blaze',
	'Blue Blaze',
	'Aqua',
	'Hers',
	'His',
	'Metal',
	'Penguin',
	'Batman',
}

local WeldTable = {
	'UnDead',
	'RGB Butterfly',
	'Soul',
	'Crow',
	'Reptile',
}

function kick(message)
    local_player:Kick("["..data.cheat_name.."] "..message)
end

local WeaponInfo = {
    Offsets = {
        ["[Double-Barrel SG]"] = CFrame.new(0, 0.35, -2.2),
        ["[TacticalShotgun]"] = CFrame.new(0, 0.25, -2.5),
        ["[Drum-Shotgun]"] = CFrame.new(-0.1, 0.5, -2.5),
        ["[Shotgun]"] = CFrame.new(0, 0.25, -2.5),
        ["[Revolver]"] = CFrame.new(-1, 0.4, 0),
        ["[Silencer]"] = CFrame.new(0, 0.4, 1.3),
        ["[Glock]"] = CFrame.new(0.6, 0.25, 0),
        ["[Rifle]"] = CFrame.new(0, 0.25, 2.5),
        ["[AUG]"] = CFrame.new(-0.1, 0.4, 1.8),
        ["[AR]"] = CFrame.new(2, 0.35, 0),
        ["[SMG]"] = CFrame.new(0, 1, 0.5),
        ["[LMG]"] = CFrame.new(0, 0.7, -3.8),
        ["[P90]"] = CFrame.new(0, 0.2, -1.7),
        ["[AK47]"] = CFrame.new(-0.1, 0.5, -2.5),
        ["[SilencerAR]"] = CFrame.new(2.5, 0.35, 0),
        ["[DrumGun]"] = CFrame.new(0, 0.4, 2.4),
    },
}

local animations = {
    ["Golden Age Tanto"] = {soundid = "rbxassetid://5917819099", animationid = "rbxassetid://13473404819", positionoffset = Vector3.new(0, -0.20, -1.2), rotationoffset = Vector3.new(90, 263.7, 180)},
    ["GPO-Knife"] = {soundid = "rbxassetid://4604390759", animationid = "rbxassetid://14014278925", positionoffset = Vector3.new(0.00, -0.32, -1.07), rotationoffset = Vector3.new(90, -97.4, 90)},
    ["GPO-Knife Prestige"] = {soundid = "rbxassetid://4604390759", animationid = "rbxassetid://14014278925", positionoffset = Vector3.new(0.00, -0.32, -1.07), rotationoffset = Vector3.new(90, -97.4, 90)},
    ["Heaven"] = {soundid = "rbxassetid://14489860007", animationid = "rbxassetid://14500266726", positionoffset = Vector3.new(-0.02, -0.82, 0.20), rotationoffset = Vector3.new(64.42, 3.79, 0.00)},
    ["Purple Dagger"] = {soundid = "rbxassetid://17822743153", animationid = "rbxassetid://17824999722", positionoffset = Vector3.new(-0.13, -0.24, -1.80), rotationoffset = Vector3.new(89.05, 96.63, 180.00)},
    ["Blue Dagger"] = {soundid = "rbxassetid://17822737046", animationid = "rbxassetid://17824995184", positionoffset = Vector3.new(-0.13, -0.24, -1.80), rotationoffset = Vector3.new(89.05, 96.63, 180.00)},
    ["Green Dagger"] = {soundid = "rbxassetid://17822741762", animationid = "rbxassetid://17825004320", positionoffset = Vector3.new(-0.13, -0.24, -1.07), rotationoffset = Vector3.new(89.05, 96.63, 180.00)},
    ["Red Dagger"] = {soundid = "rbxassetid://17822952417", animationid = "rbxassetid://17825008844", positionoffset = Vector3.new(-0.13, -0.24, -1.07), rotationoffset = Vector3.new(89.05, 96.63, 180.00)},
    ["Portal"] = {soundid = "rbxassetid://16058846352", animationid = "rbxassetid://16058633881", positionoffset = Vector3.new(-0.13, -0.35, -0.57), rotationoffset = Vector3.new(89.05, 96.63, 180.00)},
    ["Emerald Butterfly"] = {soundid = "rbxassetid://14931902491", animationid = "rbxassetid://14918231706", positionoffset = Vector3.new(-0.02, -0.30, -0.65), rotationoffset = Vector3.new(180.00, 90.95, 180.00)},
    ["Boy"] = {soundid = "rbxassetid://18765078331", animationid = "rbxassetid://18789158908", positionoffset = Vector3.new(-0.02, -0.09, -0.73), rotationoffset = Vector3.new(89.05, -88.11, 180.00)},
    ["Girl"] = {soundid = "rbxassetid://18765078331", animationid = "rbxassetid://18789162944", positionoffset = Vector3.new(-0.02, -0.16, -0.73), rotationoffset = Vector3.new(89.05, -88.11, 180.00)},
    ["Dragon"] = {soundid = "rbxassetid://14217789230", animationid = "rbxassetid://14217804400", positionoffset = Vector3.new(-0.02, -0.32, -0.98), rotationoffset = Vector3.new(89.05, 90.95, 180.00)},
    ["Void"] = {soundid = "rbxassetid://14756591763", animationid = "rbxassetid://14774699952", positionoffset = Vector3.new(-0.02, -0.22, -0.85), rotationoffset = Vector3.new(180.00, 90.95, 180.00)},
    ["Wild West"] = {soundid = "rbxassetid://16058689026", animationid = "rbxassetid://16058148839", positionoffset = Vector3.new(-0.02, -0.24, -1.15), rotationoffset = Vector3.new(-91.89, 90.95, 180.00)},
    ["Iced Out"] = {soundid = "rbxassetid://14924261405", animationid = "rbxassetid://18465353361", positionoffset = Vector3.new(0.02, -0.08, 0.99), rotationoffset = Vector3.new(180.00, -90.95, -180.00)},
    ["Reptile"] = {soundid = "rbxassetid://18765103349", animationid = "rbxassetid://18788955930", positionoffset = Vector3.new(-0.03, -0.06, -0.92), rotationoffset = Vector3.new(168.63, 90.00, -180.00)},
    ["Ribbon"] = {soundid = "rbxassetid://130974579277249", animationid = "rbxassetid://124102609796063", positionoffset = Vector3.new(0.02, -0.25, -0.05), rotationoffset = Vector3.new(90.00, 0.00, 180.00)},
}

local last_velocity_data = {} 
local module = {}

function hook_func(original, new)
    local old = original
    original = function(...)
        return new(old, ...)
    end
    return original
end

function validate_framework()
    if not shared.Script then 
        kick("Table Missing - Must execute with table.")
    end
    if not shared.Script.Framework then 
        kick("Framework configuration missing - Must update table")
    end
    if not shared.Script['Silent Aim'] then
        kick("Silent Aim configuration missing - Must update table")
    end
    if shared.Script.Framework.Version ~= data.current_version then
        kick("Version mismatch, current version is "..data.current_version)
    end
end

validate_framework()


do 
    function check_game()
        if place_id == 2788229376 then
            data.game = {
                name = "Da Hood",
                server_sided = false
            }
        elseif place_id == 96725866057460 then
            data.game = {
                name = "Das Hood",
                server_sided = false
            }
        elseif place_id == 9825515356 then
            data.game = {
                name = "Hood Customs",
                server_sided = false
            }
        elseif place_id == 73285039277655 then
            data.game = {
                name = "Dee Hood",
                server_sided = true
            }
        elseif place_id == 126898502734157 or place_id == 76635203690918 or place_id == 133250819461970 or place_id == 125166614827213 or place_id == 75323429739524 then
            data.game = {
                name = "Zee Hood",
                server_sided = true
            }
        else 
            kick("unsupported game")
        end
    end
    check_game()
end

data.functions.chat = {}
local prefix = "."

function lowercase_keys(tbl)
    local new = {}
    for k,v in pairs(tbl) do
        new[k:lower()] = v
    end
    return new
end

local command_alias = lowercase_keys({
    ["aimassist"] = "Aim Assist",
    ["silent"] = "Silent Aim",
    ["triggerbot"] = "Triggerbot",
    ["esp"] = "ESP",
    ["anticurve"] = "Anti Curve",
    ["conditions"] = "Conditions",
    ["world"] = "World",
    ["selfdestruct"] = "Self Destruct",
})

function get_category(name)
    name = name:lower()
    for k,v in pairs(shared.Script) do
        if k:lower() == name then return v end
    end
    if command_alias[name] then
        return shared.Script[command_alias[name]]
    end
    return nil
end

function reply(...)
    print("[cmd]", ...)
end

function data.functions.chat.handle_command(raw)
    if raw:sub(1,1) ~= prefix or shared.Script.Framework['Chat Commands'] ~= true then return end

    local msg = raw:sub(2):lower() 
    local args = {}

    for word in msg:gmatch("%S+") do
        table.insert(args, word)
    end

    if #args == 0 then return end

    local cmd = args[1]
    local arg1 = args[2]
    local arg2 = args[3]
    local arg3 = args[4]

    
    if cmd == "toggle" and arg1 then
        local cat = get_category(arg1)
        if not cat then return reply("Invalid module:", arg1) end
        if not cat.Enabled == nil then return reply("This module cannot be toggled.") end
        
        cat.Enabled = not cat.Enabled
        return reply(arg1, "set to", tostring(cat.Enabled))
    end

    
    if cmd == "bind" and arg1 and arg2 then
        local cat = get_category(arg1)
        if not cat then return reply("Invalid bind module:", arg1) end
        if not cat.Keybind then return reply("No keybind available for", arg1) end
        
        cat.Keybind.Enabled = true
        cat.Keybind.Key = arg2:upper()

        return reply(arg1, "bind set to", arg2)
    end

    
    if cmd == "set" and arg1 == "condition" and arg2 and arg3 then
        local cond = shared.Script.Conditions[arg2:gsub("^%l", string.upper)]
        if cond == nil then return reply("Invalid condition:", arg2) end
        
        local val = (arg3 == "true") and true or false
        shared.Script.Conditions[arg2:gsub("^%l", string.upper)] = val
        
        return reply("Condition", arg2, "=", tostring(val))
    end

	if cmd == "set" and arg1 == "hitbox" then
    
		
		if arg2 == "x" and tonumber(arg3) then
			shared.Script.Hitbox.Size.X = tonumber(arg3)
			return reply("Hitbox X set to", arg3)
		end

		
		if arg2 == "y" and tonumber(arg3) then
			shared.Script.Hitbox.Size.Y = tonumber(arg3)
			return reply("Hitbox Y set to", arg3)
		end

		
		if arg2 == "size" and tonumber(arg3) and tonumber(arg4) then
			shared.Script.Hitbox.Size.X = tonumber(arg3)
			shared.Script.Hitbox.Size.Y = tonumber(arg4)
			return reply("Hitbox size set to", arg3, arg4)
		end

		if arg2 == "visible" and arg3 then
			if arg3 == "true" then
				shared.Script.Hitbox.Visible = true
				return reply("Hitbox visibility set to true")
			elseif arg3 == "false" then
				shared.Script.Hitbox.Visible = false
				return reply("Hitbox visibility set to false")
			else
				return reply("Use true/false for visibility.")
			end
		end

		return reply("Usage:", ".set hitbox x <value>", ".set hitbox y <value>", ".set hitbox size <x> <y>")
	end

    reply("Unknown command:", cmd)
end

function on_chat(msg)
    data.functions.chat.handle_command(msg)
end

local_player.Chatted:Connect(on_chat)


do
    
    do 
        function data.functions.helpers.create_connection(signal, callback)
            local connection = signal:Connect(callback)
            table.insert(data.connections, connection)
        end

        function data.functions.helpers.get_dist(target, origin)
            return (target - origin).Magnitude
        end

        function data.functions.helpers.get_dir(target, origin)
            return (target - origin).Unit
        end

        function data.functions.helpers.get_dee_hood_arg()
            for plr, info in pairs(data.players) do
                if info.player then
                    local backpack = info.player:FindFirstChild("Backpack")
                    if not backpack then continue end
                    local arg = backpack:GetAttribute("MUV")
                    if not arg then continue end
                    return arg 
                end
            end
        end

        function data.functions.helpers.get_spread()
            local spread = Vector3.zero
            if shared.Script['Weapon Manipulation'].Spread.Enabled then
                local values = shared.Script['Weapon Manipulation'].Spread.Values
                spread = Vector3.new(
                    math.random() > 0.5 and math.random() * values.X or -math.random() * values.X,
                    math.random() > 0.5 and math.random() * values.Y or -math.random() * values.Y,
                    math.random() > 0.5 and math.random() * values.Z or -math.random() * values.Z
                )
            else
                spread = Vector3.new(
                    math.random() > 0.5 and math.random() * 0.05 or -math.random() * 0.05,
                    math.random() > 0.5 and math.random() * 0.1 or -math.random() * 0.1,
                    math.random() > 0.5 and math.random() * 0.05 or -math.random() * 0.05
                )
            end
            return spread
        end

        function data.functions.helpers.move_mouse(x, y)
            x = x or 0
            y = y or 0

            local size = camera.ViewportSize
            local x = size.X * x
            local y = size.Y * y

            virtual_input:SendMouseMoveEvent(x, y, workspace.Parent)
        end

        function data.functions.helpers.get_velocity(target, current_pos, config, vel)
            if config['Mode'] == "Auto" and vel.Magnitude > 20 or vel.Y > 5 or vel.Y < -5 then
                local current_time = os.clock()

                local data = last_velocity_data[target] or {pos = current_pos, time = current_time}
                local dt = current_time - data.time
                local velocity = dt > 0 and (current_pos - data.pos) / dt or Vector3.new()
                last_velocity_data[target] = {pos = current_pos, time = current_time}

                return velocity
            else 
                return vel
            end
        end

        function data.functions.helpers.get_angle(target_pos, origin)
            local relative = origin:ToObjectSpace(CFrame.new(target_pos)).Position
            local yaw = math.deg(math.atan2(relative.X, -relative.Z))
            local pitch = math.deg(math.atan2(relative.Y, -relative.Z))
            return yaw, pitch
        end

		function data.functions.helpers.move_camera(delta_time, target, smoothing_factor, easing_style, easing_direction)
			local alpha = nil
			if shared.Script['Aim Assist'].Interpolation['Use Delta Time'] then
				alpha = math.clamp(delta_time / (smoothing_factor), 0, 1)
			else
				alpha = math.clamp(smoothing_factor, 0, 1)
			end
			local new_alpha = tween_service:GetValue(alpha, Enum.EasingStyle[easing_style], Enum.EasingDirection[easing_direction])
			camera.CFrame = camera.CFrame:Lerp(target, new_alpha)
		end

        function data.functions.helpers.get_part_pos(config)
            local target_pos = nil
            local config = shared.Script['Silent Aim']
            if config['Hit Point']['Targeting Mode'] == "Nearest Part" then
                target_pos = data.functions.helpers.get_nearest_part(data.closest_data.plr.character, config['Hit Point'])
            elseif config['Hit Point']['Targeting Mode'] == "Nearest Point" then
                target_pos = data.functions.helpers.get_nearest_point(data.closest_data.plr.character, config['Hit Point'])
            elseif config['Hit Point']['Targeting Mode'] == "Static Part" then
                local part = data.closest_data.plr.character:FindFirstChild(config['Hit Point']['Static Part'] or "HumanoidRootPart")
                target_pos = part and part.Position
            end
            return target_pos
        end

        
        do 
            function data.functions.helpers.check_if_target_obstructed(target)
                local local_char = data.locals.character

                if target and target.character and target.character:FindFirstChild("Head") then
                    local origin = camera.CFrame.Position
                    local direction = target.character.Head.Position - origin

                    local ray = Ray.new(origin, direction)
                    local ignore_list = { local_char, target.character }

                    local hit = workspace:FindPartOnRayWithIgnoreList(ray, ignore_list)
                    return hit ~= nil
                end
                return false
            end

            function data.functions.helpers.check_if_target_knocked(target)
                return target and target.character and target.knocked and target.knocked.Value
            end

            function data.functions.helpers.check_if_target_grabbed(target)
                return target and target.character and target.character:FindFirstChild("GRABBING_CONSTRAINT")
            end

			function data.functions.helpers.check_if_target_is_idle(target) 
				return target and target.character and target.root and target.root.Velocity.Magnitude <= 0
			end
        end

        function data.functions.helpers.is_mouse_in_box(box)
            local pos = box.AbsolutePosition
            local size = box.AbsoluteSize

            local min_x = pos.X
            local max_x = pos.X + size.X
            local min_y = pos.Y
            local max_y = pos.Y + size.Y

            return mouse.X >= min_x and mouse.X <= max_x and mouse.Y >= min_y and mouse.Y <= max_y
        end

        function data.functions.helpers.get_aim(origin, range)
            local params = RaycastParams.new()
            params.FilterDescendantsInstances = {data.locals.character}
            params.FilterType = Enum.RaycastFilterType.Exclude
            params.IgnoreWater = true

            local new_range = range or 200

            local ray_origin = camera.CFrame.Position
            local ray_direction = camera:ScreenPointToRay(mouse.X, mouse.Y).Direction * new_range
                                
            local result = workspace:Raycast(ray_origin, ray_direction, params)
            local hit = result and result.Position or (ray_origin + ray_direction)

            local aim = hit - origin
            return aim.Unit, aim.Magnitude    
        end

        function data.functions.helpers.get_bounds(cf, size)
            local minX, minY = math.huge, math.huge
            local maxX, maxY = -math.huge, -math.huge

            for x = -1, 1, 2 do
                for y = -1, 1, 2 do
                    for z = -1, 1, 2 do
                        local corner = cf * CFrame.new(size.X / 2 * x, size.Y / 2 * y, size.Z / 2 * z)
                        local screen_pos, on_screen = camera:WorldToScreenPoint(corner.Position)
                        if on_screen then
                            minX = math.min(minX, screen_pos.X)
                            minY = math.min(minY, screen_pos.Y)
                            maxX = math.max(maxX, screen_pos.X)
                            maxY = math.max(maxY, screen_pos.Y)
                        end
                    end
                end
            end

            return minX, minY, maxX, maxY
        end

        function data.functions.helpers.get_nearest_part(character, config)
            local closest_part = nil
            local closest_dist = math.huge

            for instance, part in pairs(character:GetChildren()) do
                if part and table.find(config['Whitelisted Parts'], part.Name) then
                    local pos = part.Position
                    local screen_pos, on_screen = camera:WorldToScreenPoint(pos)

                    if on_screen then
                        local dist = data.functions.helpers.get_dist(Vector2.new(screen_pos.X, screen_pos.Y), Vector2.new(mouse.X, mouse.Y))
                        if dist < closest_dist then
                            closest_dist = dist
                            closest_part = part
                        end
                    end
                end
            end
            return closest_part and closest_part.Position
        end

        function data.functions.helpers.get_closest_part_to_self(Plr)
            local MaxDistance = math.huge
            local ClosestPart = nil

            for value, index in pairs(Plr.Character:GetChildren()) do
                if index:IsA("BasePart") and data.locals.character and data.locals.root then
                    local Position = camera:WorldToScreenPoint(index.Position)
                    local Position2 = camera:WorldToScreenPoint(data.locals.root.Position)
                    local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Position2.X, Position2.Y)).Magnitude
                    if Distance < MaxDistance then
                        ClosestPart = index
                        MaxDistance = Distance
                    end
                end
            end
            return ClosestPart and ClosestPart.Position
        end

        function data.functions.helpers.get_nearest_point(character, config)
            local mouse_pos = mouse.Hit.Position
            
            if config['Nearest Point']['Mode'] == "Full Body" then
                local nearest_point = nil
                local nearest_dist = math.huge
                for _, part in pairs(character:GetChildren()) do
                    if part:IsA("BasePart") and table.find(config['Whitelisted Parts'], part.Name) then
                        local scale = config['Nearest Point']['Scale'] or 1
                        local size = part.Size 
                        local new_size = size * scale * 0.5

                        local ray = mouse.UnitRay
                        local origin = ray.Origin
                        local dir = ray.Direction

                        local dist_to_center = part.Position - origin
                        local t = dist_to_center:Dot(dir)
                        if t < 0 then
                            continue
                        end

                        local closest_ray_point = origin + dir * t
                        local local_point = part.CFrame:PointToObjectSpace(closest_ray_point)

                        local clamped = Vector3.new(
                            math.clamp(local_point.X, -new_size.X, new_size.X),
                            math.clamp(local_point.Y, -new_size.Y, new_size.Y),
                            math.clamp(local_point.Z, -new_size.Z, new_size.Z)
                        )

                        local world_point = part.CFrame:PointToWorldSpace(clamped)

                        local screen_point, on_screen = camera:WorldToScreenPoint(world_point)
                        if not on_screen then
                            continue
                        end

                        local dist = (Vector2.new(screen_point.X, screen_point.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                        if dist < nearest_dist then
                            nearest_dist = dist
                            nearest_point = world_point
                        end
                    end
                end
                return nearest_point
            elseif config['Nearest Point']['Mode'] == "Nearest Part" then
                local part = data.functions.helpers.get_nearest_part(character, config)
                if part and part:IsA("BasePart") then
                    local local_point = part.CFrame:PointToObjectSpace(mouse_pos)

                    local scale = config['Nearest Point']['Scale'] or 1
                    local size = part.Size 
                    local new_size = size * scale * 0.5

                    local clamped = Vector3.new(math.clamp(local_point.X, -new_size.X, new_size.X), math.clamp(local_point.Y, -new_size.Y, new_size.Y), math.clamp(local_point.Z, -new_size.Z, new_size.Z))
                    return part.CFrame * clamped
                end
            end
        end

        function data.functions.helpers.get_closest_plr()
            data.closest_data.dist = math.huge
            data.closest_data.plr = nil

            function check_if_conditions_met(plr)
			    local conditions = shared.Script.Conditions
							
                if conditions['Is Behind Wall'] and data.functions.helpers.check_if_target_obstructed(plr) then
                    return false
                end

                if conditions['Is Knocked'] and data.functions.helpers.check_if_target_knocked(plr) then
                    return false
                end

                if conditions['Is Grabbed'] and data.functions.helpers.check_if_target_grabbed(plr) then
                    return false
                end

                if conditions['Is Gun Not Held'] and data.locals.character and not data.locals.gun_held then
                    return false
                end

                if conditions['Is Target Idle'] and data.functions.helpers.check_if_target_is_idle(plr) then
                    return false
                end
	
				return true
			end

            for plr, info in pairs(data.players) do
                if info.character and info.humanoid and info.root and check_if_conditions_met(info) then
                    local root_pos = info.root.Position
                    local root_screen_pos, on_screen = camera:WorldToScreenPoint(root_pos)
                    
                    if on_screen then
                        local dist = data.functions.helpers.get_dist(Vector2.new(root_screen_pos.X, root_screen_pos.Y), Vector2.new(mouse.X, mouse.Y))
                        if dist < data.closest_data.dist then
                            data.closest_data.dist = dist
                            data.closest_data.plr = info
                        end
                    end
                end
            end
        end

        function data.functions.helpers.get_closest_plr_from_loop(plr, info)
            local root_screen_pos, on_screen = camera:WorldToScreenPoint(info.root.Position)
            if not on_screen then return end

            local dist = data.functions.helpers.get_dist(Vector2.new(root_screen_pos.X, root_screen_pos.Y), Vector2.new(mouse.X, mouse.Y))
            if dist < data.closest_data.dist then
                data.closest_data.dist = dist
                data.closest_data.plr = info
            end
        end
    end

    
do 
    if data.game.name == "Da Hood" then
        if data.game.name == "Da Hood" then
            skin_assets = replicated_storage:FindFirstChild("SkinAssets")
            gun_handle_particles = skin_assets:FindFirstChild("GunHandleParticle") 
            gun_shoot_sounds = skin_assets:FindFirstChild("GunShootSounds")
            gun_skin_muzzle_particle = skin_assets:FindFirstChild("GunSkinMuzzleParticle")
            knives = replicated_storage:FindFirstChild("SkinModules").Knives
            meshes = replicated_storage:FindFirstChild("SkinModules").Meshes
            gun_skin_animations = skin_assets.SkinScriptsStorage
            knife_skin_animations = skin_assets.KnifeSkinAnimation
            scripts = skin_assets.SkinScripts

            module = require(replicated_storage:FindFirstChild("SkinModules"))
        end

                local v_u_1 = {
                    "[Shotgun]",
                    "[Drum-Shotgun]",
                    "[Rifle]",
                    "[TacticalShotgun]",    
                    "[AR]",
                    "[AUG]",
                    "[AK47]",
                    "[LMG]",
                    "[SilencerAR]"
                }
                local v_u_2 = {
                    ["Brainrot"] = "All"
                }

                local can_aim = true

                data.functions.helpers.create_connection(user_input_service.InputBegan, function(input, game_processed)
                    if game_processed then return end
                    if input.UserInputType == Enum.UserInputType.MouseButton2 then
                        if can_aim then
                            data.aimed = true
                        end
                    end
                end)

                data.functions.helpers.create_connection(user_input_service.InputEnded, function(input, game_processed)
                    if game_processed then return end
                    if input.UserInputType == Enum.UserInputType.MouseButton2 then
                        data.aimed = false
                        can_aim = false
                        task.wait(0.1)
                        can_aim = true
                    end
                end)


                local v4 = game:GetService("Players")
                local v_u_5 = workspace.CurrentCamera
                local v_u_6 = game:GetService("TweenService")
                game:GetService("UserInputService")
                local v_u_7 = v4.LocalPlayer
                local v_u_8 = v_u_7:GetMouse()
                local v_u_9 = replicated_storage.SkinAssets
                local v_u_10 = local_player.Character or local_player.CharacterAdded:Wait()
                local v_u_15 = workspace:GetServerTimeNow()
                local _ = game.PlaceId == 88976059384565

                local v_u_11 = v_u_10.Humanoid.Animator:LoadAnimation(replicated_storage:WaitForChild("Animations"):WaitForChild("GunCombat"):WaitForChild("Shoot"))
                local v_u_12 = v_u_10.Humanoid.Animator:LoadAnimation(replicated_storage:WaitForChild("Animations"):WaitForChild("GunCombat"):WaitForChild("ShootLeft"))
                local v_u_13 = v_u_10.Humanoid.Animator:LoadAnimation(replicated_storage:WaitForChild("Animations"):WaitForChild("GunCombat"):WaitForChild("ShootRight"))
                local v_u_14 = v_u_10.Humanoid.Animator:LoadAnimation(replicated_storage:WaitForChild("Animations"):WaitForChild("GunCombat"):WaitForChild("AimShoot"))

 local v_u_16 = require(replicated_storage:WaitForChild("GunSoundPlay"))

                local v_u_45 = {}
                function v_u_23(p17, p18)
                    if p18 == 0 then
                        return p17.Keypoints[1].Value
                    end
                    if p18 == 1 then
                        return p17.Keypoints[#p17.Keypoints].Value
                    end
                    for v19 = 1, #p17.Keypoints - 1 do
                        local v20 = p17.Keypoints[v19]
                        local v21 = p17.Keypoints[v19 + 1]
                        if v20.Time <= p18 and p18 < v21.Time then
                            local v22 = (p18 - v20.Time) / (v21.Time - v20.Time)
                            return Color3.new((v21.Value.R - v20.Value.R) * v22 + v20.Value.R, (v21.Value.G - v20.Value.G) * v22 + v20.Value.G, (v21.Value.B - v20.Value.B) * v22 + v20.Value.B)
                        end
                    end
                end

                function v_u_25(p24)
                    -- Don't change upvalues: (copy) v_u_10, (copy) v_u_7, (ref) v_u_11, (copy) replicated_storage, (ref) v_u_12, (ref) v_u_13, (ref) v_u_14, (copy) v_u_1
                    if v_u_10 ~= v_u_10 then
                        v_u_11 = v_u_10.Humanoid.Animator:LoadAnimation(replicated_storage:WaitForChild("Animations"):WaitForChild("GunCombat"):WaitForChild("Shoot"))
                        v_u_12 = v_u_10.Humanoid.Animator:LoadAnimation(replicated_storage:WaitForChild("Animations"):WaitForChild("GunCombat"):WaitForChild("ShootLeft"))
                        v_u_13 = v_u_10.Humanoid.Animator:LoadAnimation(replicated_storage:WaitForChild("Animations"):WaitForChild("GunCombat"):WaitForChild("ShootRight"))
                        v_u_14 = v_u_10.Humanoid.Animator:LoadAnimation(replicated_storage:WaitForChild("Animations"):WaitForChild("GunCombat"):WaitForChild("AimShoot"))
                    end
                    if data.aimed or (_G.MobleAimingIn or table.find(v_u_1, p24.Parent.Name)) then
                        v_u_14:Play()
                        return
                    elseif p24:GetAttribute("DualWield") then
                        v_u_12:Play()
                        v_u_13:Play()
                    else
                        v_u_11:Play()
                    end
                end

                function __set_list(table, index, values)
                    for i, v in ipairs(values) do
                        table[index + i - 1] = v
                    end
                end

                function data.dahood_funcs.can_shoot(arg1)
                    if not arg1 then return end
                    local Humanoid = arg1:FindFirstChild("Humanoid")
                    if not Humanoid or Humanoid.Health <= 0 or Humanoid:GetState() == Enum.HumanoidStateType.Dead then return end
                    local BodyEffects = arg1:FindFirstChild("BodyEffects")
                    if not BodyEffects then return end
                    local class_Tool = arg1:FindFirstChildWhichIsA("Tool")
                    if not class_Tool or not class_Tool:FindFirstChild("Handle") or not class_Tool:FindFirstChild("Ammo") then return end
                    if not var1_upvr and any_IsClient_result1_upvr then
                        if BodyEffects:FindFirstChild("Block") then
                            shared.playerShot(class_Tool.Handle)
                            class_Tool.Handle.NoAmmo:Play()
                            return
                        end
                        if class_Tool.Ammo.Value == 0 then
                            class_Tool.Handle.NoAmmo:Play()
                            return
                        end
                    end
                    if workspace:GetAttribute("SERVER_AIM") and class_Tool.Name ~= "[Flintlock]" then return end
                    if arg1:FindFirstChild("FULLY_LOADED_CHAR") == nil then return end
                    if arg1:FindFirstChild("FORCEFIELD") then return end
                    if arg1:FindFirstChild("GRABBING_CONSTRAINT") then return end
                    if arg1:FindFirstChild("Christmas_Sock") then return end
                    if BodyEffects.Cuff.Value == true then return end
                    if BodyEffects.Attacking.Value == true then return end
                    if BodyEffects["K.O"].Value == true then return end
                    if BodyEffects.Grabbed.Value then return end
                    if BodyEffects.Reload.Value == true then return end
                    if BodyEffects.Dead.Value == true then return end
                    if class_Tool:GetAttribute("Cooldown") then return end
                    arg1:SetAttribute("LastGunShot", class_Tool.Name)
                    if any_IsClient_result1_upvr and arg1:GetAttribute("LastGunShot") ~= class_Tool.Name and arg1:GetAttribute("ShotgunDebounce") then return end
                    if not any_IsClient_result1_upvr and not arg1:GetAttribute("ShotgunDebounce") and (class_Tool.Name == "[Shotgun]" or class_Tool.Name == "[Double-Barrel SG]" or class_Tool.Name == "TacticalShotgun" or class_Tool.Name == "Drum-Shotgun") then
                        arg1:SetAttribute("ShotgunDebounce", true)
                        task.delay(0.65, function() 
                            arg1:SetAttribute("ShotgunDebounce", nil)
                        end)
                    end
                    return true
                end
                            
                shared.playerShot = v_u_25
                
                function data.dahood_funcs.shoot(p46)
                    local v_u_47 = p46.Shooter
                    local v_u_48 = p46.Handle
                    local v49 = p46.AimPosition
                    local v_u_50 = p46.BeamColor
                    local v51 = p46.isReflecting
                    local v_u_52 = p46.Hit
                    local v_u_53 = p46.Range 
                    v_u_48 = v_u_48
                    local v_u_54
                    if v_u_48 then
                        v_u_54 = v_u_48:GetAttribute("SkinName")
                    end
                    local v_u_55 = p46.IsLeftHand
                    local _, v56 = data.functions.helpers.get_aim(v_u_48.Position, v_u_53)
                    if v_u_47 ~= local_player.Character then
                        v56 = v_u_53
                    end
                    local v_u_57 = p46.ForcedOrigin or v_u_48.Muzzle.WorldPosition
                    local v58 = (v49 - v_u_57).Unit
                    local v59 = RaycastParams.new()

                    local function set_list(targetTable, index, values)
                        for i, v in ipairs(values) do
                            targetTable[index + i - 1] = v
                        end
                    end
                    local v60 = {}
                    local v48 = { workspace:WaitForChild("Bush"), workspace:WaitForChild("Ignored") }
                    set_list(v60, 1, {v_u_47, unpack(v48)})
                    v59.FilterDescendantsInstances = v60
                    v59.FilterType = Enum.RaycastFilterType.Exclude
                    v59.IgnoreWater = true
                    local v_u_62, v_u_63, v_u_64
                    if v_u_52 then
                        v_u_62 = p46.Hit
                        v_u_63 = p46.AimPosition
                        v_u_64 = p46.Normal
                    else
                        local v65 = workspace:Raycast(v_u_57, v58 * v_u_53, v59)
                        if v65 then
                            v_u_62 = v65.Instance
                            v_u_63 = v65.Position
                            v_u_64 = v65.Normal
                        else
                            v_u_63 = v_u_57 + v58 * math.min(v56, v_u_53)
                            v_u_62 = nil
                            v_u_64 = nil
                        end
                    end
                    local v_u_66 = Instance.new("Part")
                    v_u_66:SetAttribute("OwnerCharacter", v_u_47.Name)
                    v_u_66.Name = "BULLET_RAYS"
                    v_u_66.Anchored = true
                    v_u_66.CanCollide = false
                    v_u_66.Size = Vector3.new(0, 0, 0)
                    v_u_66.Transparency = 1
                    game.Debris:AddItem(v_u_66, 1)

                    if shared.Script['Silent Aim']['Client Redirection'] then
                        if data.locals.tool and data.locals.gun_type == "shotgun" then
                            local v19 = nil

                            if shared.Script['Weapon Manipulation']['Spread'].Enabled then
                                v19 = data.functions.helpers.get_spread()
                            else
                                local v16 = math.random() > 0.5 and math.random() * 0.05  or -math.random() * 0.051
                                local v17 = math.random() > 0.5 and math.random() * 0.1  or -math.random() * 0.1
                                local v18 = math.random() > 0.5 and math.random() * 0.05  or -math.random() * 0.05

                                v19 = Vector3.new(v16, v17, v18)
                            end

                            v_u_66.CFrame = CFrame.new(v_u_57, p46.ForcedOrigin + (data.functions.helpers.get_aim(p46.ForcedOrigin, v_u_53) + v19) * v_u_53)
                        else
                            v_u_66.CFrame = CFrame.new(v_u_57, p46.ForcedOrigin + (data.functions.helpers.get_aim(p46.ForcedOrigin, v_u_53)) * v_u_53) 
                        end
                    else
                        v_u_66.CFrame = CFrame.new(v_u_57, v49)
                    end
                    
                    v_u_66.Material = Enum.Material.SmoothPlastic
                    v_u_66.Parent = workspace.Ignored.Siren.Radius
                    local v67 = Instance.new("Attachment")
                    v67.Position = Vector3.new(0, 0, 0)
                    v67.Parent = v_u_66
                    local v68 = Instance.new("Attachment")
                    local v69 = -(v_u_63 - v_u_57).magnitude
                    v68.Position = Vector3.new(0, 0, v69)
                    v68.Parent = v_u_66
                    local v_u_70 = false
                    local v_u_71 = nil
                    local v72
                    if v_u_48 then
                        local v73 = v_u_48.Parent
                        if v73 then
                            v73 = v_u_48.Parent.Name
                        end
                        if v73 and (v_u_54 and v_u_54 ~= "" or v_u_9.GunSkinMuzzleParticle:FindFirstChild(v73)) then
                            if v_u_54 == "" then
                                v_u_54 = v73
                            else
                                v_u_54 = v_u_54 or v73
                            end
                            local v74 = v_u_55 and "LeftMuzzle" or "Muzzle"
                            if v_u_9.GunSkinMuzzleParticle:FindFirstChild(v_u_54) then
                                if not v51 then
                                    if v_u_9.GunSkinMuzzleParticle[v_u_54]:FindFirstChild(v74) or v_u_55 then
                                        local v75 = v_u_48.Parent:FindFirstChild("Default") and v_u_48.Parent.Default:FindFirstChild("Mesh") and v_u_48.Parent.Default.Mesh:FindFirstChild(v74) or v_u_48:FindFirstChild(v74)
                                        local v76
                                        if v_u_55 then
                                            local v77
                                            if v_u_48.Parent:FindFirstChild("Default") and v_u_48.Parent.Default:FindFirstChild("Mesh") then
                                                v77 = v_u_48.Parent.Default.Mesh.DualWieldLeftHandMesh:FindFirstChild(v74) or v75
                                            else
                                                v77 = v75
                                            end
                                            v76 = v77 ~= v75
                                            if v76 then
                                                v75 = v77
                                            end
                                        else
                                            v76 = false
                                        end
                                        if v75 then
                                            local v78
                                            if v76 then
                                                v78 = v75
                                            elseif v_u_9.GunSkinMuzzleParticle[v_u_54].Muzzle:FindFirstChild("Different_GunMuzzle") then
                                                v78 = v_u_9.GunSkinMuzzleParticle[v_u_54][v74].Different_GunMuzzle[v73]
                                            else
                                                v78 = v_u_9.GunSkinMuzzleParticle[v_u_54][v74]
                                            end
                                            for _, v79 in v78:GetChildren() do
                                                local v80 = v79:GetAttribute("EmitCount") or 1
                                                local v_u_81 = v_u_55 and v79 and v79 or v79:Clone()
                                                v_u_81.Parent = v75
                                                v_u_81:Emit(v80)
                                                if not v76 then
                                                    task.delay(v_u_81.Lifetime.Max, function()
                                                        -- upvalues: (copy) v_u_81
                                                        v_u_81:Destroy()
                                                    end)
                                                end
                                            end
                                        end
                                    else
                                        local v82 = v_u_9.GunSkinMuzzleParticle[v_u_54]:GetChildren()
                                        local v83 = v82[math.random(#v82)]:Clone()
                                        v83.Parent = v67
                                        v83:Emit(v83.Rate)
                                    end
                                end
                                v_u_70 = true
                            end
                            if v_u_9.GunBeam:FindFirstChild(v_u_54) then
                                local v84 = v_u_9.GunBeam[v_u_54]
                                local v85 = v_u_55 and "LeftGunBeam" or "GunBeam"
                                local v86 = v84:FindFirstChild(v85) or v84.GunBeam
                                local _ = v_u_55 and (v86:IsA("BasePart") and v86:FindFirstChild("LeftHandBeam"))
                                if v86:IsA("BasePart") then
                                    v72 = {
                                        ["Parent"] = nil,
                                        ["Attachment0"] = nil,
                                        ["Attachment1"] = nil
                                    }
                                    local v87 = v86:FindFirstChild("Different_GunBeam")
                                    if v87 and v87:FindFirstChild(v73) then
                                        local v88 = v87[v73][v85]
                                        if v88 and v88:IsA("BasePart") then
                                            v_u_71 = v88:Clone()
                                        elseif v88 then
                                            v72 = v88:Clone() or v72
                                        end
                                    else
                                        v_u_71 = v86:Clone()
                                    end
                                else
                                    v72 = v86:Clone()
                                end
                            else
                                v72 = game.ReplicatedStorage.GunBeam:Clone()
                                v72.Color = v_u_50 and ColorSequence.new(v_u_50) or v72.Color
                            end
                        else
                            v72 = game.ReplicatedStorage.GunBeam:Clone()
                            v72.Color = v_u_50 and ColorSequence.new(v_u_50) or v72.Color
                        end
                    else
                        v72 = nil
                    end
                    task.spawn(function()
                        -- Don't change upvalues: (ref) v_u_71, (ref) v_u_63, (copy) v_u_57, (ref) v_u_23, (ref) v_u_62, (ref) v_u_64, (ref) v_u_54, (ref) v_u_9, (copy) v_u_66, (copy) v_u_48, (ref) v_u_70, (ref) v_u_6
                        if v_u_71 then
                            local v89 = (v_u_63 - v_u_57).Magnitude
                            local v90 = v89 / 725
                            v_u_71.Anchored = true
                            v_u_71.CanCollide = false
                            v_u_71.CanQuery = false
                            v_u_71.CFrame = CFrame.new(v_u_57, v_u_63)
                            local v91 = v_u_71.CFrame * CFrame.new(0, 0, -v89)
                            v_u_71.Parent = workspace.Ignored.Siren.Radius
                            task.delay(v90 + 5, function()
                                -- Don't change upvalues: (ref) v_u_71
                                v_u_71:Destroy()
                                v_u_71 = nil
                            end)
                            if v_u_71:GetAttribute("SpecialEffects") then
                                for _, v92 in pairs(v_u_71:GetDescendants()) do
                                    if v92:IsA("Trail") and v92:GetAttribute("ColorRandom") then
                                        local v93 = v92:GetAttribute("ColorRandom")
                                        v92.Color = ColorSequence.new(v_u_23(v93, math.random()))
                                    end
                                end
                            end
                            local v94 = game:GetService("TweenService"):Create(v_u_71, TweenInfo.new(0.05, Enum.EasingStyle.Linear), {
                                ["CFrame"] = v_u_71.CFrame * CFrame.new(0, 0, -0.1)
                            })
                            v94:Play()
                            task.wait(0.05)
                            if v94.PlaybackState ~= Enum.PlaybackState.Completed then
                                v94:Pause()
                            end
                            local v95 = nil
                            if _G.Reduce_Lag and not v_u_71:GetAttribute("NoSlow") or v_u_71:GetAttribute("LOWGFX") then
                                v_u_71.CFrame = v91
                            else
                                v95 = game:GetService("TweenService"):Create(v_u_71, TweenInfo.new(v90, Enum.EasingStyle.Linear), {
                                    ["CFrame"] = v91
                                })
                                v95:Play()
                                task.wait(v90)
                            end
                            if v_u_71:FindFirstChild("Impact") and (v_u_62 and (v_u_64 and not v_u_62.Parent:FindFirstChild("Humanoid"))) then
                                if v95 and v95.PlaybackState ~= Enum.PlaybackState.Completed then
                                    task.wait(0.05)
                                end
                                if not v_u_71:FindFirstChild("NoNormal") then
                                    v_u_71.CFrame = CFrame.new(v_u_63, v_u_63 - v_u_64)
                                end
                                for _, v96 in pairs(v_u_71.Impact:GetChildren()) do
                                    if v96:IsA("ParticleEmitter") then
                                        v96:Emit(v96:GetAttribute("EmitCount") or 1)
                                    end
                                end
                            else
                                for _, v97 in pairs(v_u_71:GetChildren()) do
                                    if v97:IsA("BasePart") then
                                        v97.Transparency = 1
                                    end
                                end
                            end
                            if v_u_71 then
                                for _, v98 in pairs(v_u_71:GetDescendants()) do
                                    if v98:IsA("ParticleEmitter") then
                                        v98.Enabled = false
                                    end
                                end
                            end
                        elseif v_u_62 and (v_u_62:IsDescendantOf(workspace.MAP) and (v_u_54 and (v_u_9.GunBeam:FindFirstChild(v_u_54) and v_u_9.GunBeam[v_u_54]:FindFirstChild("Impact")))) then
                            local v_u_99 = v_u_9.GunBeam[v_u_54].Impact:Clone()
                            v_u_99.Parent = workspace.Ignored
                            v_u_99:PivotTo(CFrame.new(v_u_63, v_u_63 + v_u_64 * 5) * CFrame.Angles(-1.5707963267948966, 0, 0))
                            for _, v100 in pairs(v_u_99:GetDescendants()) do
                                if v100:IsA("ParticleEmitter") then
                                    v100:Emit(v100:GetAttribute("EmitCount") or 1)
                                end
                            end
                            task.delay(1.5, function()
                                -- Don't change upvalues: (ref) v_u_99
                                v_u_99:Destroy()
                                v_u_99 = nil
                            end)
                        end
                        local v101 = Instance.new("PointLight")
                        v101.Brightness = 0.5
                        v101.Range = 15
                        v101.Shadows = true
                        v101.Color = Color3.new(1, 1, 1)
                        v101.Parent = v_u_66
                        local v102 = v_u_48:FindFirstChild("ShootBBGUI")
                        local v103 = v102 and (not v_u_70 and v102:FindFirstChild("Shoot"))
                        if v103 then
                            v103.Size = UDim2.new(0, 0, 0, 0)
                            v103.ImageTransparency = 1
                            v103.Visible = true
                            v_u_6:Create(v103, TweenInfo.new(0.4, Enum.EasingStyle.Bounce, Enum.EasingDirection.In, 0, false, 0), {
                                ["Size"] = UDim2.new(1, 0, 1, 0),
                                ["ImageTransparency"] = 0.4
                            }):Play()
                            v_u_6:Create(v101, TweenInfo.new(0.4, Enum.EasingStyle.Bounce, Enum.EasingDirection.In, 0, false, 0), {
                                ["Range"] = 0
                            }):Play()
                            wait(0.4)
                            v_u_66:Destroy()
                            v_u_6:Create(v103, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.In, 0, false, 0), {
                                ["Size"] = UDim2.new(1, 0, 1, 0),
                                ["ImageTransparency"] = 1
                            }):Play()
                            wait(0.2)
                            v103.Visible = false
                        end
                    end)
                    v72.Attachment0 = v67
                    v72.Attachment1 = v68
                    v72.Name = "NewGunBeam"
                    v72.Parent = v_u_66
                    if v_u_47 == local_player.Character and workspace:GetServerTimeNow() - v_u_15 > 0.95 then
                        v_u_25(v_u_48)
                    end

                    if not v_u_45[v_u_48] then
                        local v104 = v_u_48.Parent.Name
                        local v105 = v_u_54 or "None"
                        local v106 = v_u_2[v105] ~= "All" and not (v_u_2[v105] and v_u_2[v105][v104]) and true or false
                        task.spawn(v_u_16.SoundPlay, v_u_48, v106)
                        
                        v_u_45[v_u_48] = true
                        task.delay(0.021, function()
                            -- don't change upvalues: (ref) v_u_45, (copy) v_u_48
                            v_u_45[v_u_48] = nil
                        end)
                    end
                    
                    task.spawn(function()
                        -- Dont change upvalues: (copy) v_u_48, (copy) v_u_55, (ref) v_u_44, (copy) v_u_47, (ref) v_u_63, (copy) v_u_50, (copy) v_u_52, (copy) v_u_53
                        if v_u_48:GetAttribute("DualWield") and not v_u_55 then
                            v_u_44.shoot({
                                ["Shooter"] = v_u_47,
                                ["Handle"] = v_u_48,
                                ["ForcedOrigin"] = v_u_48.Parent.Default.Mesh.DualWieldLeftHandMesh.LeftMuzzle.WorldPosition,
                                ["AimPosition"] = v_u_63,
                                ["BeamColor"] = v_u_50,
                                ["Hit"] = v_u_52,
                                ["Range"] = v_u_53,
                                ["IsLeftHand"] = true
                         })
                    end

                    if shared.Script['Weapon Manipulation']['Double Tap'].Enabled and data.locals.tool then
                        local specific = shared.Script['Weapon Manipulation']['Double Tap'].Whitelisted[data.locals.tool.Name]
                        if specific then
                            replicated_storage.MainEvent:FireServer("ShootGun", v_u_48, p46.ForcedOrigin, v_u_63, v_u_62, v_u_64)
                        end
                    end
                end)
                return v_u_63, v_u_62, v_u_64
            end
        end
	end

    
    do
        local knifedata = {}

        local function clearmesh(tool, exclude)
            local children = tool:GetChildren()
            for i = 1, #children do
                local v = children[i]
                if v:IsA("MeshPart") and v ~= exclude then
                    v:Destroy()
                end
            end
        end

        local function cleanknife(tool)
            local kdata = knifedata[tool]
            if kdata then
                if kdata.track then
                    kdata.track:Stop()
                    kdata.track:Destroy()
                    kdata.track = nil
                end
                if kdata.welds then
                    for _, w in ipairs(kdata.welds) do
                        if w then w:Destroy() end
                    end
                end
                if kdata.sounds then
                    for _, s in ipairs(kdata.sounds) do
                        if s and s.Parent then s:Destroy() end
                    end
                end
            end

            local mesh = tool:FindFirstChild("Default")
            if mesh then
                local children = mesh:GetChildren()
                for i = 1, #children do
                    local v = children[i]
                    if v.Name == "Handle.R" or v:IsA("Model") or (v:IsA("BasePart") and v.Name ~= "Default") then
                        v:Destroy()
                    end
                end
                mesh.Transparency = 0
            end

            knifedata[tool] = nil
        end

        function data.functions.combat.set_skin(tool, skin, name)
            if not tool then return end
            if tool.Name == "[Knife]" then
                local skincfg = animations[name]
                if not skincfg then return end

                local char = local_player.Character
                if not char then return end
                local hum = char:FindFirstChild("Humanoid")
                local rhand = char:FindFirstChild("RightHand")
                if not hum or not rhand then return end

                cleanknife(tool)
                knifedata[tool] = {track = nil, welds = {}, sounds = {}}
                local kdata = knifedata[tool]

                local mesh = tool:FindFirstChild("Default")
                if not mesh then return end
                mesh.Transparency = 1

                local skinmodel = knives:FindFirstChild(name)
                if not skinmodel then return end
                local clone = skinmodel:Clone()
                clone.Name = name

                local handr = Instance.new("Part")
                handr.Name = "Handle.R"
                handr.Transparency = 1
                handr.CanCollide = false
                handr.Anchored = false
                handr.Size = Vector3.new(0.001, 0.001, 0.001)
                handr.Massless = true
                handr.Parent = mesh

                local m6d = Instance.new("Motor6D")
                m6d.Name = "Handle.R"
                m6d.Part0 = rhand
                m6d.Part1 = handr
                m6d.Parent = handr

                local offset = CFrame.new(skincfg.positionoffset) * CFrame.Angles(math.rad(skincfg.rotationoffset.X), math.rad(skincfg.rotationoffset.Y), math.rad(skincfg.rotationoffset.Z))

                local skin_script = scripts and scripts:FindFirstChild(name)
                if clone:IsA("Model") then
                    if not clone.PrimaryPart then
                        local children = clone:GetChildren()
                        for i = 1, #children do
                            local c = children[i]
                            if c:IsA("BasePart") then
                                clone.PrimaryPart = c
                                break
                            end
                        end
                    end
                    if clone.PrimaryPart then
                        local descendants = clone:GetDescendants()
                        for i = 1, #descendants do
                            local p = descendants[i]
                            if p:IsA("BasePart") then
                                p.CanCollide = false
                                p.Massless = true
                                p.Anchored = false
                                local w = Instance.new("Weld")
                                w.Part0 = handr
                                w.Part1 = p
                                w.C0 = offset
                                w.C1 = p.CFrame:ToObjectSpace(clone.PrimaryPart.CFrame)
                                w.Parent = p
                                table.insert(kdata.welds, w)
                            end
                        end
                    end
                    if skin_script then
                        local new_script = skin_script:Clone()
                        new_script.Enabled = true
                        new_script.Parent = clone
                    end
                    clone.Parent = mesh
                elseif clone:IsA("BasePart") then
                    clone.CanCollide = false
                    clone.Massless = true
                    clone.Anchored = false

                    if clone:IsA("MeshPart") and skincfg.textureid then
                        clone.TextureID = skincfg.textureid
                    end

                    if skincfg.particle then
                        local particlefolder = gun_handle_particles:FindFirstChild(name)
                        if particlefolder then
                            local pe = particlefolder:FindFirstChild("ParticleEmitter")
                            if pe then
                                pe:Clone().Parent = clone
                            end
                        end
                    end

                    if skin_script then
                        local new_script = skin_script:Clone()
                        new_script.Enabled = true
                        new_script.Parent = clone
                    end
                    clone.Parent = mesh
                    local w = Instance.new("Weld")
                    w.Part0 = handr
                    w.Part1 = clone
                    w.C0 = offset
                    w.Parent = clone
                    table.insert(kdata.welds, w)
                end

                local animator = hum:FindFirstChildOfClass("Animator")
                if not animator then
                    animator = Instance.new("Animator")
                    animator.Parent = hum
                end

                tool:SetAttribute("CurrentKnifeSkin", name)
            else
                local orig = tool:FindFirstChildOfClass("MeshPart")
                if not orig then return end
            
                clearmesh(tool, orig)
            
                local skinpart = skin.TextureID
                if typeof(skinpart) == "Instance" then
                    local clone = skinpart:Clone()
                    clone.Parent = tool
                    clone.CFrame = orig.CFrame
                    clone.Name = "CurrentSkin"
            
                    local w = Instance.new("Weld")
                    w.Part0 = clone
                    w.Part1 = orig
                    w.C0 = skin.CFrame:Inverse()
                    w.Parent = clone
            
                    orig.Transparency = 1
                else
                    orig.TextureID = skinpart
                    orig.Transparency = 0
                end
            
                local handle = tool:FindFirstChild("Handle")
                if not handle then return end
            
                local shoot = handle:FindFirstChild("ShootSound")
                if shoot then
                    local sounds_folder = gun_shoot_sounds:FindFirstChild(tool.Name)
                    local obj = sounds_folder and sounds_folder:FindFirstChild(name)
                    if obj then
                        shoot.SoundId = obj.Value
                    end
                end
            
                local particlefolder = gun_handle_particles:FindFirstChild(name)
                if particlefolder then
                    local pe = particlefolder:FindFirstChild("ParticleEmitter")
                    if pe then
                        for _, existing in ipairs(handle:GetChildren()) do
                            if existing:IsA("ParticleEmitter") then
                                existing:Destroy()
                            end
                        end
                        pe:Clone().Parent = handle
                    end
                end
            
                handle:SetAttribute("SkinName", name)
            end
        end

        function data.functions.combat.create_hitbox(info, visible)
            local character = info.character
            if not character then
                box.Visible = false
                return
            end

            local cframe, size = character:GetBoundingBox()
            local min_x, min_y, max_x, max_y = data.functions.helpers.get_bounds(cframe, size)

            local hitbox_size = shared.Script.Hitbox.Size
            local dist = data.functions.helpers.get_dist(camera.CFrame.Position, info.root.Position)

            local min_scale, max_scale = shared.Script.Hitbox.Size.Scale.Min, shared.Script.Hitbox.Size.Scale.Max
            local alpha = 1 - math.clamp((dist - 40) / (200 - 40), 0, 1)
            local scale = math.max(min_scale, min_scale + (max_scale - min_scale) * alpha)

            local width = max_x - min_x
            local height = max_y - min_y

            local scaled_width = width * hitbox_size.X * scale
            local scaled_height = height * hitbox_size.Y * scale

            local center = Vector2.new(min_x + width / 2, min_y + height / 2)

            box.Position = UDim2.fromOffset(center.x - scaled_width / 2, center.y - scaled_height / 2)
            box.Size = UDim2.fromOffset(scaled_width, scaled_height)
            box.Visible = visible

            if data.mouse_in_box and stroke then
                stroke.Color = Color3.fromRGB(255, 0, 0)
            else
                stroke.Color = Color3.fromRGB(255, 255, 255)
            end

            info.hitbox = box
        end

        function data.functions.combat.create_label(name)
            local label = Instance.new("TextLabel")
            label.Name = "text"
            label.BackgroundTransparency = 1
            label.TextColor3 = shared.Script.ESP['Regular Color'] 
            label.TextStrokeTransparency = 0
            label.Font = Enum.Font.Arial
            label.TextSize = 12
            label.Text = name
            label.Visible = false
            label.Size = UDim2.new(1, 0, 0, 15)
            label.Parent = container
            data.labels[name] = label
        end

        function data.functions.combat.create_name_esp(info)
            if not shared.Script.ESP.Enabled then return end
            if not info.root then return end

            if not info.name_esp then
                local billboard = Instance.new("BillboardGui")
                billboard.Name = "NameESP"
                billboard.Size = UDim2.new(0, 100, 0, 25)
                billboard.StudsOffset = Vector3.new(0, -4, 0)
                billboard.AlwaysOnTop = true

                local label = Instance.new("TextLabel")
                label.Name = "text"
                label.BackgroundTransparency = 1
                label.TextColor3 = shared.Script.ESP['Regular Color'] 
                label.TextStrokeTransparency = 0
                label.Font = Enum.Font.Arial
                label.TextSize = 12
                label.Size = UDim2.new(1, 0, 1, 0)
                label.Parent = billboard

                info.name_esp = billboard
            end

            info.name_esp.Adornee = info.root
            info.name_esp.Parent = info.root

            local label = info.name_esp:FindFirstChildOfClass("TextLabel")
            if label then
                label.Text = info.humanoid.DisplayName or info.player.Name
            end

            if data.closest_data.plr and data.closest_data.plr.character and data.closest_data.plr == info and data.mouse_in_box then
                label.TextColor3 = shared.Script.ESP['Target Color']
            else
                label.TextColor3 = shared.Script.ESP['Regular Color']
            end
        end

        if shared.Script.Framework.Indicators then
            data.functions.combat.create_label("ESP")
            data.functions.combat.create_label('Speed')
            data.functions.combat.create_label('Target')
            data.functions.combat.create_label('Silent Aim')
            data.functions.combat.create_label('Aim Assist')
            data.functions.combat.create_label('Triggerbot')
        end

        function data.functions.combat.silent_aim(tool)
            if data.game.name == "Zee Hood" then
                local remote = replicated_storage.MainRemotes.MainRemoteEvent

                if shared.Script['Silent Aim'].Enabled and data.mouse_in_box and data.closest_data.plr then
                    if (shared.Script['Silent Aim'].Keybind.Enabled and data.toggles.silent_aim) or (not shared.Script['Silent Aim'].Keybind.Enabled) then
                        local config = shared.Script['Silent Aim']
                        local target_pos = data.functions.helpers.get_part_pos(config)

                        if shared.Script['Silent Aim'].Prediction.Enabled then
                            local target_vel = Vector3.zero
                            if shared.Script['Silent Aim'].Prediction.Resolver.Enabled then
                                target_vel = data.functions.helpers.get_velocity(data.closest_data.plr, target_pos, shared.Script['Silent Aim'].Prediction.Resolver, data.closest_data.plr.root.Velocity)
                            else
                                target_vel = data.closest_data.plr.root.Velocity
                            end

                            if target_vel.Magnitude > 0 then
                                local pred = shared.Script['Silent Aim'].Prediction
                                local y_pred = pred.Y

                                target_pos = target_pos + target_vel * Vector3.new(pred.X, y_pred, pred.Z)
                            end
                        end

                        local args = {
                            [1] = "XEEHOODMOUSEPOSx3^3",
                            [2] = target_pos
                        }

                        remote:FireServer(unpack(args))
                    end
                end
            elseif data.game.name == "Das Hood" then
                local gun_handler = require(replicated_storage.Modules.GunHandler)
                
                local old_get_aim; old_get_aim = hook_func(gun_handler.getAim, function(origin, range)
                    if shared.Script['Silent Aim'].Enabled and data.mouse_in_box and data.closest_data.plr then
                        if (shared.Script['Silent Aim'].Keybind.Enabled and data.toggles.silent_aim) or (not shared.Script['Silent Aim'].Keybind.Enabled) then
                            local config = shared.Script['Silent Aim']
                            local target_pos = data.functions.helpers.get_part_pos(config)
                            return target_pos 
                        else
                            return data.functions.helpers.get_aim(origin, range)
                        end
                    else
                        return data.functions.helpers.get_aim(origin, range)
                    end
                end)
            elseif data.game.name == "Dee Hood" then
                local remote = replicated_storage.MainEvent

                if shared.Script['Silent Aim'].Enabled and data.mouse_in_box and data.closest_data.plr then
                    if (shared.Script['Silent Aim'].Keybind.Enabled and data.toggles.silent_aim) or (not shared.Script['Silent Aim'].Keybind.Enabled) then
                        local config = shared.Script['Silent Aim']
                        local target_pos = data.functions.helpers.get_part_pos(config)

                        if shared.Script['Silent Aim'].Prediction.Enabled then
                            local target_vel = Vector3.zero
                            if shared.Script['Silent Aim'].Prediction.Resolver.Enabled then
                                target_vel = data.functions.helpers.get_velocity(data.closest_data.plr, target_pos, shared.Script['Silent Aim'].Prediction.Resolver, data.closest_data.plr.root.Velocity)
                            else
                                target_vel = data.closest_data.plr.root.Velocity
                            end

                            if target_vel.Magnitude > 0 then
                                local pred = shared.Script['Silent Aim'].Prediction
                                local y_pred = pred.Y

                                target_pos = target_pos + target_vel * Vector3.new(pred.X, y_pred, pred.Z)
                            end
                        end

                        local args = {
                            [1] = data.functions.helpers.get_dee_hood_arg(),
                            [2] = target_pos
                        }

                        remote:FireServer(unpack(args))
                    end
                end
            elseif data.game.name == "Da Hood" then
                local tool_name = tool.Name
                local cooldown_obj = tool:FindFirstChild("ShootingCooldown")
                local range_obj = tool:FindFirstChild("Range")

                local cooldown = cooldown_obj.Value
                local range = range_obj.Value

                if shared.Script['Weapon Manipulation']['Shoot Cooldown'].Enabled then
                    cooldown = cooldown * shared.Script['Weapon Manipulation']['Shoot Cooldown'].Multiplier
                end

                local idkwtfthisis = tool:FindFirstChild("RemoteEvent")

                local gun_type = data.locals.gun_type
                local ammo = tool:FindFirstChild("Ammo") and tool.Ammo.Value or 0
                local last_update = data.last_updates.tools[tool_name] or 0

                local Time = workspace:GetServerTimeNow()

                local shitmessycodefromdahood = game.PlaceId == 88976059384565 and {
                    ["Value"] = 5
                } or tool.Ammo

                local WeaponOffset = WeaponInfo.Offsets[tool_name]
                if tick() - last_update >= cooldown and (shitmessycodefromdahood.Value >= 1 and (not _G.GUN_COMBAT_TOGGLE and data.dahood_funcs.can_shoot(data.locals.character))) and ammo > 0 then
                    data.last_updates.tools[tool_name] = tick()

                    local handle = tool:FindFirstChild("Handle")
                    local origin = tool:FindFirstChild("Default") and (tool.Default:FindFirstChild("Mesh") and tool.Default.Mesh:FindFirstChild("Muzzle")) or {["WorldPosition"] = (handle.CFrame * WeaponOffset).Position}

                    idkwtfthisis:FireServer("Shoot")

                    if gun_type == "shotgun" then
                        for _ = 1, 5 do
                            local spread = data.functions.helpers.get_spread()

                            local aim_pos = nil
                            if shared.Script['Silent Aim'].Enabled and data.mouse_in_box and data.closest_data.plr then
                                if (shared.Script['Silent Aim'].Keybind.Enabled and data.toggles.silent_aim) or (not shared.Script['Silent Aim'].Keybind.Enabled) then
                                    local target_pos = nil
                                    local config = shared.Script['Silent Aim']
                                    local target_pos = data.functions.helpers.get_part_pos(config)

                                    if config['Angle Limiter'].Enabled then
                                        local gun_origin = nil
                                        if config['Angle Limiter'].Type == "Gun Origin" then
                                            gun_origin = CFrame.new(origin.WorldPosition)
                                        else
                                            gun_origin = camera.CFrame
                                        end

                                        local yaw, pitch = data.functions.helpers.get_angle(target_pos, gun_origin)
                                        if yaw > config['Angle Limiter'].Max.X and pitch > config['Angle Limiter'].Max.Y then
                                            local aim_dir, aim_dist = data.functions.helpers.get_aim(origin.WorldPosition, range)
                                            aim_pos = origin.WorldPosition + (aim_dir + spread) * range
                                        else
                                            local aim_dist = data.functions.helpers.get_dist(target_pos, origin.WorldPosition)
                                            local aim_dir = data.functions.helpers.get_dir(target_pos, origin.WorldPosition)
                                            aim_pos = origin.WorldPosition + ((target_pos - origin.WorldPosition).Unit + spread) * range 
                                        end
                                    else
                                        local aim_dist = data.functions.helpers.get_dist(target_pos, origin.WorldPosition)
                                        local aim_dir = data.functions.helpers.get_dir(target_pos, origin.WorldPosition)
                                        aim_pos = origin.WorldPosition + ((target_pos - origin.WorldPosition).Unit + spread) * range 
                                    end
                                else
                                    local aim_dir, aim_dist = data.functions.helpers.get_aim(origin.WorldPosition, range)
                                    aim_pos = origin.WorldPosition + (aim_dir + spread) * range
                                end
                            else
                                local aim_dir, aim_dist = data.functions.helpers.get_aim(origin.WorldPosition, range)
                                aim_pos = origin.WorldPosition + (aim_dir + spread) * range
                            end 

                            local res1, res2, res3 = data.dahood_funcs.shoot({
                                Shooter = data.locals.character,
                                Handle = handle,
                                AimPosition = aim_pos,
                                BeamColor = Color3.new(1, 0.545098, 0.14902),
                                ForcedOrigin = origin.WorldPosition,
                                Range = range
                            })
                            replicated_storage.MainEvent:FireServer("ShootGun", handle, origin.WorldPosition, res1, res2, res3, Time)
                        end
                        idkwtfthisis:FireServer()
                    elseif gun_type == "burst" then
                        local origin_pos = origin.Position or origin.WorldPosition

                        task.spawn(function()
                            local var21
                            if 3 < ammo then
                                var21 = 3
                            else
                                var21 = ammo
                            end
                            for _ = 1, var21 do
                                local aim_pos = nil
                                if (shared.Script['Silent Aim'].Keybind.Enabled and data.toggles.silent_aim) or (not shared.Script['Silent Aim'].Keybind.Enabled) then
                                    local config = shared.Script['Silent Aim']
                                    local target_pos = data.functions.helpers.get_part_pos(config)
                                    if config['Angle Limiter'].Enabled then
                                        local gun_origin = nil
                                        if config['Angle Limiter'].Type == "Gun Origin" then
                                            gun_origin = CFrame.new(origin.WorldPosition)
                                        else
                                            gun_origin = camera.CFrame
                                        end
                                        local yaw, pitch = data.functions.helpers.get_angle(target_pos, gun_origin)
                                        if yaw > config['Angle Limiter'].Max.X and pitch > config['Angle Limiter'].Max.Y then
                                            local aim_dir, aim_dist = data.functions.helpers.get_aim(origin_pos, range)
                                            aim_pos = origin_pos + aim_dir * range * 1.2
                                        else
                                            aim_pos = target_pos
                                        end
                                    else
                                        aim_pos = target_pos
                                    end
                                else
                                    local aim_dir, aim_dist = data.functions.helpers.get_aim(origin_pos, range)
                                    aim_pos = origin_pos + aim_dir * range * 1.2
                                end

                                local res1, res2, res3 = data.dahood_funcs.shoot({
                                    Shooter = data.locals.character,
                                    Handle = handle,
                                    AimPosition = aim_pos,
                                    BeamColor = Color3.new(1, 0.545098, 0.14902),
                                    ForcedOrigin = origin.WorldPosition,
                                    Range = range
                                })
                                replicated_storage.MainEvent:FireServer("ShootGun", handle, origin.WorldPosition, res1, res2, res3)
                                task.wait(0.0095)
                            end
                            idkwtfthisis:FireServer()
                        end)
                    else                        
                        local aim_pos = nil
                        if shared.Script['Silent Aim'].Enabled and data.mouse_in_box and data.closest_data.plr then
                            if (shared.Script['Silent Aim'].Keybind.Enabled and data.toggles.silent_aim) or (not shared.Script['Silent Aim'].Keybind.Enabled) then
                                local config = shared.Script['Silent Aim']
                                local target_pos = data.functions.helpers.get_part_pos(config)
                                if config['Angle Limiter'].Enabled then
                                    local gun_origin = nil
                                    if config['Angle Limiter'].Type == "Gun Origin" then
                                        gun_origin = CFrame.new(origin.WorldPosition)
                                    else
                                        gun_origin = camera.CFrame
                                    end
                                    local yaw, pitch = data.functions.helpers.get_angle(target_pos, gun_origin)
                                    if yaw > config['Angle Limiter'].Max.X and pitch > config['Angle Limiter'].Max.Y then
                                        local aim_dir, aim_dist = data.functions.helpers.get_aim(origin.WorldPosition, range)
                                        aim_pos = origin.WorldPosition + aim_dir * range * 1.2
                                    else
                                        aim_pos = target_pos
                                    end
                                else
                                    aim_pos = target_pos
                                end
                            else
                                local aim_dir, aim_dist = data.functions.helpers.get_aim(origin.WorldPosition, range)
                                aim_pos = origin.WorldPosition + aim_dir * range * 1.2
                            end
                        else
                            local aim_dir, aim_dist = data.functions.helpers.get_aim(origin.WorldPosition, range)
                            aim_pos = origin.WorldPosition + aim_dir * range * 1.2
                        end 

                        local res1, res2, res3 = data.dahood_funcs.shoot({
                            Shooter = data.locals.character,
                            Handle = handle,
                            AimPosition = aim_pos,
                            BeamColor = Color3.new(1, 0.545098, 0.14902),
                            ForcedOrigin = origin.WorldPosition,
                            Range = range
                        })

                        replicated_storage.MainEvent:FireServer("ShootGun", handle, origin.WorldPosition, res1, res2, res3)
                        idkwtfthisis:FireServer()
                    end
                end
            end
        end
    end

    
    do 
        local_character = local_player.Character or local_player.CharacterAdded:Wait()
        local_humanoid = local_character:WaitForChild("Humanoid")
        local_root = local_character:WaitForChild("HumanoidRootPart")
        local_tool = nil

        data.locals = {
            player = local_player,
            character = local_character,
            humanoid = local_humanoid,
        }

        function apply_skin(tool)
            if shared.Script['Skin Changer'].Enabled and tool and data.game.name == "Da Hood" then
                if data.applied_tools[tool] then return end
                local tool_name = tool.Name
                local skin_name = shared.Script['Skin Changer'].Skins[tool_name]
                if skin_name and module[tool_name] and module[tool_name][skin_name] then
                    data.functions.combat.set_skin(tool, module[tool_name][skin_name], skin_name)
                    data.applied_tools[tool] = true
                end
            end
        end

        function update_tool()
            local_tool = local_character:FindFirstChildOfClass("Tool")
            data.locals.tool = local_tool

            if data.tool_connections then
                data.tool_connections:Disconnect()
                data.tool_connections = nil
            end

            if data.tool_connection then
                data.tool_connection:Disconnect()
                data.tool_connection = nil
            end
            
            if local_tool then
                data.locals.gun_held = local_tool:FindFirstChild("Ammo")
                
                data.tool_connection = local_tool.Equipped:Connect(function()
                    if not shared.Script['Skin Changer'].Enabled then return end
                    if not local_humanoid then return end
                    
                    local skin_name = shared.Script['Skin Changer'].Skins[local_tool.Name]
                    if not skin_name then return end
                    
                    local anim_data = animations[skin_name]
                    if not anim_data then return end
                
                    local find_anim = local_tool:FindFirstChild("Animation")
                    if find_anim then
                        local track = local_humanoid:LoadAnimation(find_anim)
                        track:Play()
                    else
                        local animation = Instance.new("Animation")
                        animation.Name = "Animation"
                        animation.Parent = local_tool
                        animation.AnimationId = anim_data.animationid
                        
                        local track = local_humanoid:LoadAnimation(animation)
                        track:Play()
                    end
                    
                    if anim_data.soundid then
                        local sound = Instance.new("Sound")
                        sound.Name = "Sound"
                        sound.SoundId = anim_data.soundid
                        sound.Volume = 1
                        sound.Parent = local_tool
                        sound:Play()
                        
                        sound.Ended:Connect(function()
                            sound:Destroy()
                        end)
                    end
                end)

                data.tool_connections = local_tool.Activated:Connect(function()
					--[[ Kaykaykay, komzy Don't delete this
				
					if data.game.name == "Da Hood" and shared.Script['Skin Changer'].Enabled then
						local animation = local_tool:FindFirstChildOfClass("Animation")
						if animation then
							local anim = local_character.Humanoid:LoadAnimation(animation)
							anim:Play()
						end
					end  
					--]]
							
					if data.locals.gun_held then
                        data.functions.combat.silent_aim(local_tool)
					end
                end)

                if data.game.name == "Da Hood" then
					apply_skin(local_tool)
                    local target_script = local_tool:FindFirstChildOfClass("LocalScript")
                    if target_script and target_script.Enabled then
                        task.wait(0.1)
                        target_script.Enabled = false
                    end

                    if data.locals.gun_held then
                        local gun_client_name = target_script.Name
                        if gun_client_name == "GunClientShotgun" then
                            data.locals.gun_type = "shotgun"
                        elseif gun_client_name == "GunClientBurst" then
                            data.locals.gun_type = "burst"
                        else 
                            data.locals.gun_type = "normal"
                        end
                    else 
                        data.locals.gun_held = nil
                        data.locals.gun_type = nil
                    end
                end
            else
                data.locals.gun_held = nil
                data.locals.gun_type = nil
                return
            end
        end

        if local_character then
            local_character.ChildAdded:Connect(function(child)
                if child:IsA("Tool") then
                    update_tool()
                end
            end)

            local_character.ChildRemoved:Connect(function(child)
                if child:IsA("Tool") then
                    if data.tool_connections then
                        data.tool_connections:Disconnect()
                        data.tool_connections = nil
                    end

                    if data.tool_connection then
                        data.tool_connection:Disconnect()
                        data.tool_connection = nil
                    end
                    data.locals.tool = nil
                    data.locals.gun_held = nil
                    data.locals.gun_type = nil
                end
            end)
        end

        data.functions.helpers.create_connection(local_player.CharacterAdded, function(char)
            local_character = char
            local_humanoid = char:WaitForChild("Humanoid")
            local_root = char:WaitForChild("HumanoidRootPart")

            data.locals.character = local_character
            data.locals.humanoid = local_humanoid
            data.locals.root = local_root

            local_character.ChildAdded:Connect(function(child)
                if child:IsA("Tool") then
                    update_tool()
                end
            end)

            local_character.ChildRemoved:Connect(function(child)
                if child:IsA("Tool") then
                    if data.tool_connections then
                        data.tool_connections:Disconnect()
                        data.tool_connections = nil
                    end
                    data.locals.tool = nil
                    data.locals.gun_held = nil
                    data.locals.gun_type = nil
                end
            end)
        end)
    end

    -- // those are the toggle buttons
    do
        function check_if_key_clicked(input, config)
            if config == "MouseButton2" then
                return input.UserInputType == Enum.UserInputType[config]
            else
                return input.KeyCode == Enum.KeyCode[config]
            end
        end

        function walkspeed(humanoid)
            if shared.Script['Self Modifications'].Speed.Enabled and humanoid then
                if (shared.Script['Self Modifications'].Speed.Keybind.Enabled and data.toggles.speed) or (not shared.Script['Self Modifications'].Speed.Keybind.Enabled) then
                    local speed = humanoid.WalkSpeed * shared.Script['Self Modifications'].Speed.Multiplier
                    local applying = false

                    if data.speed_connection then
                        data.speed_connection:Disconnect()
                        data.speed_connection = nil
                    end

                    data.speed_connection = humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                        if applying then return end
                        applying = true
                        humanoid.WalkSpeed = speed
                        applying = false
                    end)

                    humanoid.WalkSpeed = speed
                else
                    if data.speed_connection then
                        data.speed_connection:Disconnect()
                        data.speed_connection = nil
                    end
                end
            end
        end

        data.functions.helpers.create_connection(user_input_service.InputBegan, function(input, game_processed)
            if game_processed then return end
            local key = input.KeyCode
			local key2 = input.UserInputType

            local bindings = shared.Script.Framework.Bindings
            local silent_aim = shared.Script['Silent Aim']
            local esp = shared.Script['ESP']
			local aim_assist = shared.Script['Aim Assist']
            local triggerbot = shared.Script['Triggerbot']
            local speed = shared.Script['Self Modifications'].Speed
            local target = shared.Script.Hitbox

            if silent_aim.Enabled and silent_aim.Keybind.Enabled and check_if_key_clicked(input, bindings['Silent Aim']) then
                if silent_aim.Keybind.Mode == "Toggle" then
                    data.toggles.silent_aim = not data.toggles.silent_aim
                else 
                    data.toggles.silent_aim = true
                end
            end

            if target.Keybind.Enabled and target['Target Selection'] == "Target" and check_if_key_clicked(input, bindings['Target']) then
                if target.Keybind.Mode == "Toggle" then
                    data.toggles.target = not data.toggles.target
                else 
                    data.toggles.target = true
                end

                if target['Target Selection'] == "Target" and data.toggles.target then
                    data.functions.helpers.get_closest_plr(plr, info) 
                else
                    data.closest_data.dist = math.huge
                    data.closest_data.plr = nil
                end
            end

			if aim_assist.Enabled and aim_assist.Keybind.Enabled and check_if_key_clicked(input, bindings['Aim Assist']) then
                if aim_assist.Keybind.Mode == "Toggle" then
                    data.toggles.aim_assist = not data.toggles.aim_assist
                else 
                    data.toggles.aim_assist = true
                end
            end

            if esp.Enabled and esp.Keybind.Enabled and check_if_key_clicked(input, bindings['ESP']) then
                if esp.Keybind.Mode == "Toggle" then
                    data.toggles.esp = not data.toggles.esp
                else 
                    data.toggles.esp = true
                end
            end

            if triggerbot.Enabled and triggerbot.Keybind.Enabled and check_if_key_clicked(input, bindings['Triggerbot']) then
                if triggerbot.Keybind.Mode == "Toggle" then
                    data.toggles.triggerbot = not data.toggles.triggerbot
                else 
                    data.toggles.triggerbot = true
                end
            end

            if speed.Enabled and speed.Keybind.Enabled and check_if_key_clicked(input, bindings['Speed']) then
                if speed.Keybind.Mode == "Toggle" then
                    data.toggles.speed = not data.toggles.speed
                else 
                    data.toggles.speed = true
                end

                local hum = data.locals.humanoid
                if hum then
                    walkspeed(hum)
                end
            end
        end)

        data.functions.helpers.create_connection(user_input_service.InputEnded, function(input, game_processed)
            if game_processed then return end
            local key = input.KeyCode
			local key2 = input.UserInputType
            local bindings = shared.Script.Framework.Bindings
            local silent_aim = shared.Script['Silent Aim']
            local esp = shared.Script['ESP']
			local aim_assist = shared.Script['Aim Assist']
            local triggerbot = shared.Script['Triggerbot']
            local speed = shared.Script['Self Modifications'].Speed
            local target = shared.Script.Hitbox

            if silent_aim.Enabled and silent_aim.Keybind.Enabled and silent_aim.Keybind.Mode == "Hold" and check_if_key_clicked(input, bindings['Silent Aim']) then
                data.toggles.silent_aim = false
            end

			if aim_assist.Enabled and aim_assist.Keybind.Enabled and aim_assist.Keybind.Mode == "Hold" and check_if_key_clicked(input, bindings['Aim Assist']) then
                data.toggles.aim_assist = false
            end

            if target.Keybind.Enabled and target.Keybind.Mode == "Hold" and check_if_key_clicked(input, bindings['Target']) then
                data.toggles.target = false

                if target['Target Selection'] == "Target" and not data.toggles.target then
                    data.closest_data.dist = math.huge
                    data.closest_data.plr = nil
                end
            end

            if esp.Enabled and esp.Keybind.Enabled and esp.Keybind.Mode == "Hold" and check_if_key_clicked(input, bindings['ESP']) then
                data.toggles.esp = false
            end

            if triggerbot.Enabled and triggerbot.Keybind.Enabled and triggerbot.Keybind.Mode == "Hold" and check_if_key_clicked(input, bindings['Triggerbot']) then
                data.toggles.triggerbot = false
            end

            if speed.Enabled and speed.Keybind.Enabled and speed.Keybind.Mode == "Hold" and check_if_key_clicked(input, bindings['Speed']) then
                data.toggles.speed = false
                local hum = data.locals.humanoid
                if hum then
                    walkspeed(hum)
                end
            end
        end)
    end

    -- // connections in case you need to connect anything else
    do 
        data.last_target_toggle = data.last_target_toggle or false
        data.functions.helpers.create_connection(run_service.RenderStepped, function(delta_time)
            local esp = shared.Script['ESP']
			local aim_assist = shared.Script['Aim Assist']
            local triggerbot = shared.Script['Triggerbot']
            
            data.mouse_in_box = false

            if shared.Script.Framework.Indicators then
                data.labels['Silent Aim'].Visible = shared.Script['Silent Aim'].Enabled
                data.labels['Target'].Visible = data.toggles.target

                if data.closest_data.plr then
                    data.labels['Target'].Text = "Target ("..data.closest_data.plr.character.Name..")"
                else
                    data.labels['Target'].Text = "Target (none)"
                end

                data.labels['Aim Assist'].Visible = data.toggles.aim_assist
                data.labels['ESP'].Visible = data.toggles.esp
                data.labels['Triggerbot'].Visible = data.toggles.triggerbot
                data.labels['Speed'].Visible = data.toggles.speed
            end

            if shared.Script.Hitbox['Target Selection'] == "Auto" then
                data.closest_data.dist = math.huge
                data.closest_data.plr = nil
            end

			if shared.Script['Skin Changer'].Enabled and data.game.name == "Da Hood" and data.locals.tool and data.locals.tool:FindFirstChild("Handle") then
				data.locals.tool.Handle:SetAttribute("SkinName", shared.Script['Skin Changer'].Skins[data.locals.tool.Name]) 
			end

            function check_if_conditions_met()
			    local conditions = shared.Script.Conditions
							
                if conditions['Is Behind Wall'] and data.functions.helpers.check_if_target_obstructed(data.closest_data.plr) then
                    return false
                end

                if conditions['Is Knocked'] and data.functions.helpers.check_if_target_knocked(data.closest_data.plr) then
                    return false
                end

                if conditions['Is Grabbed'] and data.functions.helpers.check_if_target_grabbed(data.closest_data.plr) then
                    return false
                end

                if conditions['Is Gun Not Held'] and data.locals.character and not data.locals.gun_held then
                    return false
                end

                if conditions['Is Target Idle'] and data.functions.helpers.check_if_target_is_idle(data.closest_data.plr) then
                    return false
                end
	
				return true
			end

            for plr, info in pairs(data.players) do
				if info.character and info.humanoid and info.root then
                    if shared.Script.Hitbox['Target Selection'] == "Auto" or (shared.Script.Hitbox['Target Selection'] == "Target" and (data.toggles.target and get_target)) then
                        data.functions.helpers.get_closest_plr_from_loop(plr, info)
                    end

					if esp.Enabled and esp.Keybind.Enabled and data.toggles.esp then
						info.last_esp_update = info.last_esp_update or 0

						if tick() - info.last_esp_update >= shared.Script.Framework.Core['ESP Interval'] then
							info.last_esp_update = tick()
							data.functions.combat.create_name_esp(info)
						end
					else
						if info.name_esp then
							info.name_esp:Destroy()
							info.name_esp = nil
						end
					end
				end
			end

            if data.closest_data.plr then
                if check_if_conditions_met() then
                    data.mouse_in_box = box and data.functions.helpers.is_mouse_in_box(box)
                    data.functions.combat.create_hitbox(data.closest_data.plr, shared.Script.Hitbox.Visible)

                    if data.mouse_in_box then
                        if triggerbot.Enabled and data.toggles.triggerbot and data.locals.character and data.locals.tool and data.locals.gun_held then
                            if tick() - data.last_updates.triggerbot >= triggerbot['Delay'] then
                                data.locals.tool:Activate()
                                data.locals.tool:Deactivate()
                                data.last_updates.triggerbot = tick()

                                if triggerbot.Shake.Enabled then
                                    local x = triggerbot.Shake.X
                                    local y = triggerbot.Shake.Y
                                    local random = Vector2.new(math.random(-x, y), math.random(-x, y))
                                    data.functions.helpers.move_mouse(random.X, random.Y)
                                end
                            end
                        end

                        if aim_assist.Enabled and data.toggles.aim_assist and data.locals.character and data.locals.tool and data.locals.gun_held then
                            if (aim_assist.Keybind.Enabled and data.toggles.aim_assist) or (not aim_assist.Keybind.Enabled and data.toggles.silent_aim) then
                                local target_pos = data.functions.helpers.get_part_pos(aim_assist)
                                local target_cframe = CFrame.new(camera.CFrame.Position, target_pos)
                                data.functions.helpers.move_camera(delta_time, target_cframe, aim_assist['Interpolation']['Strength'], aim_assist['Interpolation']['Easing']['Style'], aim_assist['Interpolation']['Easing']['Direction'])
                            end
                        end
                    end
                else
                    if box.Visible then
                        box.Visible = false
                    end
                end
            else
                if box.Visible then
                    box.Visible = false
                end
            end
        end)

		function fill_player_data(plr)
			if plr == local_player then return end  

			local char = plr.Character
			local body_effects = char and char:FindFirstChild("BodyEffects")

			data.players[plr] = {
				player = plr,
				character = char,
				humanoid = char and char:FindFirstChildWhichIsA("Humanoid"),
				root = char and char:FindFirstChild("HumanoidRootPart"),
				body_effects = body_effects,
				knocked = body_effects and body_effects:FindFirstChild("K.O"),
			}
		end

        function clear_player_data(plr)
            data.players[plr] = nil
        end

        for _, plr in ipairs(players:GetPlayers()) do
            fill_player_data(plr)
        end

		function on_character_added(plr)
			data.functions.helpers.create_connection(plr.CharacterAdded, function(char)
				if not data.players[plr] then return end
				
				local root = char:WaitForChild("HumanoidRootPart")
				local body_effects = char:WaitForChild("BodyEffects")

				data.players[plr].character = char
				data.players[plr].humanoid = char:WaitForChild("Humanoid")
				data.players[plr].root = root
				data.players[plr].body_effects = body_effects
				data.players[plr].knocked = body_effects:WaitForChild("K.O")
			end)
		end

        for _, plr in ipairs(players:GetPlayers()) do
            if plr ~= local_player then
                on_character_added(plr)
            end
        end

        data.functions.helpers.create_connection(players.PlayerAdded, function(plr)
            fill_player_data(plr)
            on_character_added(plr)
        end)
        data.functions.helpers.create_connection(players.PlayerRemoving, function(plr)
            local info = data.players[plr]
            if info and info.name_esp then
                info.name_esp:Destroy()
                info.name_esp = nil
            end

            clear_player_data(plr)
        end)
    end
    local lm = shared.Script['Lighting Modifications']
    if lm.Enabled then
        lighting.Ambient = lm.Ambient
        lighting.Brightness = lm.Brightness
        lighting.ColorShift_Top = lm['Color Shift Top']
        lighting.ColorShift_Bottom = lm['Color Shift Bottom']
        lighting.EnvironmentDiffuseScale = lm['Environment Diffuse Scale']
        lighting.EnvironmentSpecularScale = lm['Environment Specular Scale']
        lighting.OutdoorAmbient = lm['Outdoor Ambient']
        
        local cc = lighting:FindFirstChildOfClass("ColorCorrectionEffect")
        if not cc then
            cc = Instance.new("ColorCorrectionEffect")
            cc.Parent = lighting
        end
        cc.Brightness = lm['Color Brightness']
        cc.Contrast = lm['Color Contrast']
        cc.Saturation = lm['Color Saturation']
    end
