-- We're here coding once again.....................
-- Tip when coding: ONLY MAKE THE UNIVERSAL SCRIPT FIRST


local function chat(message)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, 'All'); -- FireServer (<string> Message, <string> Channel) 
    end

   print("person detected: " .. game.Players.LocalPlayer.Name.."/ "..game.Players.LocalPlayer.DisplayName)
   print("but fr why u looking")
   print("Here me out, im not a skid totally ")

 local playersService = game:GetService("Players")
 local Players = game:GetService("Players")
   local textService = game:GetService("TextService")
   local lightingService = game:GetService("Lighting")
   local textChatService = game:GetService("TextChatService")
   local inputService = game:GetService("UserInputService")
   local runService = game:GetService("RunService")
   local RunService = game:GetService("RunService")
   local replicatedStorageService = game:GetService("ReplicatedStorage")
   local tweenService = game:GetService("TweenService")
   local gameCamera = workspace.CurrentCamera
   local lplr = playersService.LocalPlayer -- why did i call this lplr WHO KNOWS FR
   local HttpService = game:GetService("HttpService")
   local Mouse = lplr:GetMouse()
   local UserInputService = game:GetService("UserInputService")
   local LocalPlayer = Players.LocalPlayer
  
local AutoEnabled = false

local function SendText()
    if not AutoEnabled then
        return
    end

    local A_1 = "Phone"
    local Event = game:GetService("ReplicatedStorage").Events.SendTexts
    Event:FireServer(A_1)
end


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "SweatDestroyer - Ninja legends", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local plr = game.Players.LocalPlayer

Tab:AddToggle({
	Name = "auto attack  (equip katana)",
	Default = false,
	Callback = function(v)
		 getgenv().autoswing = v
 while true do
     if not getgenv().autoswing then return end
     for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
         if v:FindFirstChild("ninjitsuGain") then
          game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
          break
         end
         
     local A_1 = "swingKatana"
     local Event = plr.ninjaEvent
     Event:FireServer(A_1)
     wait(0.025)
     end
	end    
    end
})

Tab:AddToggle({
	Name = "Auto sell",
	Default = false,
	Callback = function(v)
     getgenv().autosell = v
     while true do
            if getgenv().autosell == false then return end
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
            wait(0.1)
         end
    end
})

Tab:AddButton({
    Name = "Unlock all islands",
    Default = false,
    Callback = function()
        local oldC = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

        for _, islandPart in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = islandPart.CFrame
            wait(0.2)
        end

        -- Restore the original position of the player's character
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldC
    end
})



OrionLib:Init()

chat("Loaded")
