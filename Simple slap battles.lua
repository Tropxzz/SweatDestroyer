local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "SweatDestroyer - Simple slap battles", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})  


Tab:AddButton({
	Name = "De backrooms",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Backrooms.Wall.CFrame
  	end    
})

Tab:AddButton({
	Name = "ban GUI",
	Callback = function()
    workspace["Ban System"].ServerScriptService.Admins.BanGUI.Parent = game.Players.LocalPlayer.PlayerGui
  	end    
})

Tab:AddButton({
	Name = "Game destroyer",
	Callback = function()
   local function randomizeString(length)
    local characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local result = ""

    for _ = 1, length do
        local randomIndex = math.random(1, #characters)
        local randomChar = characters:sub(randomIndex, randomIndex)
        result = result .. randomChar
    end

    return result
end

while wait() do
    local remoteFunction = Instance.new("RemoteFunction")
    remoteFunction.Name = randomizeString(23) -- corrected function name
    remoteFunction.Parent = game.ReplicatedStorage
end
  	end    
})

Tab:AddButton({
	Name = "Spawn",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.LobbySB["Podium2"].Part.CFrame
  	end    
})

Tab:AddButton({
	Name = "Island",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Spawn["1"].CFrame
  	end    
})
