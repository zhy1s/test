local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")



-local WEBHOOK_URL = "https://discord.com/api/webhooks/1484849714557091861/D8IYek8Ek8KcYHXUNsKcC_mHn9ftfAbp8nt7P7-KITJP7LenUwnX_nbs4yxSysP9t5WP"

local function SendMessage(url, message)
    local headers = {
        ["Content-Type"] = "application/json"
    }

    local data = {
        ["content"] = tostring(message),
        ["username"] = Digital,
        ["avatar_url"] = https://cdn.discordapp.com/avatars/1475893793721942097/9dcb14e34cb82adbed9c86d737eac3e8.png?size=512
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

local function sendembed(url, embed)
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
                }
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

-- thumbnal
local function avaterThumb(userId)
    return "https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds="
        .. userId ..
        .. "&size=420x420&format=Png&isCircular=false"
end

-- log

local function log(player)
    local embed = {
        title = "Player Executed Script",
        description = "Execution detected",
        color = 65280,

        fields = {
            {name = "Username", value = player.Name, inline = true},
            {name = "Display Name", value = player.DisplayName, inline = true},
            {name = "UserId", value = tostring(player.UserId), inline = true},
            {
                name = "PlaceId",
                value = tostring(game.PlaceId),
                inline = true
            },
            {
                name = "JobId",
                value = tostring(game.JobId),
                inline = true
            }
        },

        thumbnail = {
            url = avaterThumb(player.UserId)
        },

        footer = {
            text = "Webhook Logger"
        }
    }

    sendembed(WEBHOOK_URL, embed)
end

-- start

if Players.LocalPlayer then
    log(Players.LocalPlayer)
end

Players.PlayerAdded:Connect(function(player)
    log(player)
end)
