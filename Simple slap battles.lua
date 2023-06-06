local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "SweatDestroyer - Simple slap battles", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Edgelord glove giver",
	Callback = function()
fireclickdetector(workspace.AdminIsland.Edgelord.Edgelord.ClickDetector)
  	end    
})

Tab:AddButton({
	Name = "Bobble glove giver",
	Callback = function()
fireclickdetector(workspace.AdminIsland.BOBBLE.BOBBLE.ClickDetector)
  	end    
})

Tab:AddButton({
	Name = "Sus glove giver",
	Callback = function()
fireclickdetector(workspace.AdminIsland.Sus.Sus.ClickDetector)
  	end    
})

Tab:AddButton({
	Name = "Minecraft glove giver",
	Callback = function()
fireclickdetector(workspace.AdminIsland.Minecraft.Minecraft.ClickDetector)
  	end    
})


Tab:AddButton({
	Name = "Brazil Glove GIver",
	Callback = function()
fireclickdetector(workspace.AdminIsland.Brazil.Brazil.ClickDetector)
  	end    
})

Tab:AddButton({
	Name = "Fortnite glove giver",
	Callback = function()
fireclickdetector(workspace.AdminIsland.Fortnite.Fortnite.ClickDetector)
  	end    
})

Tab:AddToggle({
	Name = "Game breaker (Equip bobble)",
	Callback = function(v)
    getgenv().Break = v
    if getgenv().Break == false then return end
local args = {
    [1] = "lego"
}
while getgenv().Break == true do
wait(0.01)
game:GetService("Players").LocalPlayer.Character.BOBBLE.Event:FireServer(unpack(args))
end

  	end    
})

Tab:AddToggle({
	Name = "Game Breaker V2 (equip minecraft)",
	Callback = function(v)
    getgenv().Break = v
    if getgenv().Break == false then return end
while getgenv().Break == true do 
local A_1 = "lego"
local Event = game.Players.LocalPlayer.Character.Minecraft.Event
Event:FireServer(A_1)
wait(0.0000000000000000000000000000000000000000000000001)
end
  	end    
})

Tab:AddToggle({
	Name = "Game Breaker V3 (equip fortnite)",
	Callback = function(v)
    getgenv().Break = v
    if getgenv().Break == false then return end
while getgenv().Break == true do 
local A_1 = "lego"
local Event = game.Players.LocalPlayer.Character.Fortnite.Event
Event:FireServer(A_1)
wait(0.0000000000000000000000000000000000000000000000001)
end
  	end    
})

Tab:AddButton({
	Name = "De backrooms",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Backrooms.Wall.CFrame
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
