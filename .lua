local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

--// CONFIG
local WEBHOOK_URL = "ttps://discord.com/api/webhooks/1484849714557091861/D8IYek8Ek8KcYHXUNsKcC_mHn9ftfAbp8nt7P7-KITJP7LenUwnX_nbs4yxSysP9t5W"
local WEBHOOK_NAME = "Digitalr"
local WEBHOOK_PFP = "https://cdn.discordapp.com/avatars/1475893793721942097/9dcb14e34cb82adbed9c86d737eac3e8.png?size=512"

--// SEND EMBED

local function SendMessageEMBED(url, embed)
    local headers = {
        ["Content-Type"] = "application/json"
    }

    local data = {
        ["username"] = WEBHOOK_NAME,
        ["avatar_url"] = WEBHOOK_PFP,

        ["embeds"] = {
            {
                ["title"] = embed.title,
                ["description"] = embed.description,
                ["color"] = embed.color,
                ["fields"] = embed.fields,
                ["thumbnail"] = embed.thumbnail,
                ["footer"] = {
                    ["text"] = embed.footer.text
                },
                ["timestamp"] = DateTime.now():ToIsoDate()
            }
        }
    }

    local body = HttpService:JSONEncode(data)

    pcall(function()
        request({
            Url = url,
            Method = "POST",
            Headers = headers,
            Body = body
        })
    end)
end

--// AVATAR
local function GetAvatar(userId)
    return "https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds="
        .. userId ..
        "&size=420x420&format=Png&isCircular=false"
end

--// JOIN LOG
local function PlayerJoined(player)
    local embed = {
        title = "🟢 Player Joined",
        description = player.Name .. " joined the game",
        color = 65280,

        fields = {
            {name = "Username", value = player.Name, inline = true},
            {name = "Display Name", value = player.DisplayName, inline = true},
            {name = "UserId", value = tostring(player.UserId), inline = true},
            {name = "PlaceId", value = tostring(game.PlaceId), inline = true},
            {name = "JobId", value = tostring(game.JobId), inline = true}
        },

        thumbnail = {
            url = GetAvatar(player.UserId)
        },

        footer = {
            text = "Join Logger"
        }
    }

    SendMessageEMBED(WEBHOOK_URL, embed)
end

--// LEAVE LOG
local function PlayerLeft(player)
    local embed = {
        title = "🔴 Player Left",
        description = player.Name .. " left the game",
        color = 16711680,

        fields = {
            {name = "Username", value = player.Name, inline = true},
            {name = "Display Name", value = player.DisplayName, inline = true},
            {name = "UserId", value = tostring(player.UserId), inline = true},
            {name = "PlaceId", value = tostring(game.PlaceId), inline = true},
            {name = "JobId", value = tostring(game.JobId), inline = true}
        },

        thumbnail = {
            url = GetAvatar(player.UserId)
        },

        footer = {
            text = "Leave Logger"
        }
    }

    SendMessageEMBED(WEBHOOK_URL, embed)
end

--// EVENTS

Players.PlayerAdded:Connect(PlayerJoined)
Players.PlayerRemoving:Connect(PlayerLeft)
