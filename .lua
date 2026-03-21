local HttpService = game:GetService("HttpService")

local webhook = "https://discord.com/api/webhooks/1484849714557091861/D8IYek8Ek8KcYHXUNsKcC_mHn9ftfAbp8nt7P7-KITJP7LenUwnX_nbs4yxSysP9t5WP"

local data = {
    content = "roblox"
}
print(data)
local encoded = HttpService:JSONEncode(data)

HttpService:PostAsync(webhook, encoded, Enum.HttpContentType.ApplicationJson)
