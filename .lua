success("loaded")

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

--web
local WEBHOOK_URL = "https://discord.com/api/webhooks/1484849714557091861/D8IYek8Ek8KcYHXUNsKcC_mHn9ftfAbp8nt7P7-KITJP7LenUwnX_nbs4yxSysP9t5WP"
local WEBHOOK_NAME = "Digital"
local WEBHOOK_AVATAR = "https://cdn.discordapp.com/avatars/1475893793721942097/9dcb14e34cb82adbed9c86d737eac3e8.png?size=512" -- pfp
-- web

--func
local function sendinfo(player, action)
    local embed = {
        ["title"] = "Player " .. action,
        ["color"] = action == "Joined" and 65280 or 16711680,

        ["fields"] = {
            {
                ["name"] = "Display Name",
                ["value"] = player.DisplayName,
                ["inline"] = true
            },
            {
                ["name"] = "Username",
                ["value"] = player.Name,
                ["inline"] = true
            },
            {
                ["name"] = "User ID",
                ["value"] = tostring(player.UserId),
                ["inline"] = true
            },
            {
                ["name"] = "Timestamp",
                ["value"] = os.date("!%Y-%m-%d %H:%M:%S UTC"),
                ["inline"] = false
            },
            {
                ["name"] = "Profile Link",
                ["value"] = "https://www.roblox.com/users/" .. player.UserId .. "/profile",
                ["inline"] = false
            }
        }
    }

    local data = {
        ["username"] = WEBHOOK_NAME,
        ["avatar_url"] = WEBHOOK_AVATAR,
        ["embeds"] = {embed}
    }

    local json = HttpService:JSONEncode(data)

    pcall(function()
        HttpService:PostAsync(WEBHOOK_URL, json, Enum.HttpContentType.ApplicationJson)
    end)
end

Players.PlayerAdded:Connect(function(player)
    sendinfo(player, "Joined")
end)

Players.PlayerRemoving:Connect(function(player)
    sendinfo(player, "Left")
end)
