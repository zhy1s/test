function SendMessage(url, message)
    local http = game:GetService("HttpService")
    local headers = {
        ["Content-Type"] = "application/json"
    }
    local data = {
        ["content"] = message
    }
    local body = http:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
    print("Sent")
end

function SendMessageEMBED(url, embed)
    local http = game:GetService("HttpService")
    local headers = {
        ["Content-Type"] = "application/json"
    }
    local data = {
        ["embeds"] = {
            {
                ["title"] = embed.title,
                ["description"] = embed.description,
                ["color"] = embed.color,
                ["fields"] = embed.fields,
                ["footer"] = {
                    ["text"] = embed.footer.text
                }
            }
        }
    }
    local body = http:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
    print("Sent")
end


--Examples 

local url = "https://discord.com/api/webhooks/1484849714557091861/D8IYek8Ek8KcYHXUNsKcC_mHn9ftfAbp8nt7P7-KITJP7LenUwnX_nbs4yxSysP9t5WP"
SendMessage(url, "Hello")


local embed = {
    ["title"] = "This is an embedded message",
    ["description"] = "This message has an embed with fields and a footer",
    ["color"] = 65280,
    ["fields"] = {
        {
            ["name"] = "Field 1",
            ["value"] = "This is the first field"
        },
        {
            ["name"] = "Field 2",
            ["value"] = "This is the second field"
        }
    },
    ["footer"] = {
        ["text"] = "This is the footer text"
    }
}
SendMessageEMBED(url, embed)
