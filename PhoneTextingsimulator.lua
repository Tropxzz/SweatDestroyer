-- We're here coding once again.....................
-- Tip when coding: ONLY MAKE THE UNIVERSAL SCRIPT FIRST

function bigman(thing)
    game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver[thing].ITEMPICKUP)
end
local success, err


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
local Window = OrionLib:MakeWindow({Name = "SweatDestroyer - Texting simulator", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({Name = "Auto Phone text",
 	Icon = "rbxassetid://4483345998",
PremiumOnly = false, 
Callback = function(V)
getgenv().Auto = V

while true do 
    if not getgenv().Auto then return end
local A_1 = "Phone"
local Event = game:GetService("ReplicatedStorage").Events.SendTexts
Event:FireServer(A_1)
wait(0.0000000000000000000000000000000000000000001)
end
end
})

Tab:AddToggle({Name = "Auto Tablet text",
 	Icon = "rbxassetid://4483345998",
PremiumOnly = false, 
Callback = function(V)
getgenv().Auto = V

while true do 
    if not getgenv().Auto then return end
local A_1 = "Tablet"
local Event = game:GetService("ReplicatedStorage").Events.SendTexts
Event:FireServer(A_1)
wait(0.0000000000000000000000000000000000000000001)

end
end
})

Tab:AddToggle({Name = "Auto Computer text",
 	Icon = "rbxassetid://4483345998",
PremiumOnly = false, 
Callback = function(V)
getgenv().Auto = V

while true do 
    if not getgenv().Auto then return end
local A_1 = "Computer"
local Event = game:GetService("ReplicatedStorage").Events.SendTexts
Event:FireServer(A_1)
wait(0.0000000000000000000000000000000000000000001)

end
end
})


   local C = Window:MakeTab({
       Name = "Credits",
       Icon = "rbxassetid://4483345998",
       PremiumOnly = false
   })
   
   C:AddLabel("Coding By tropxz")
   C:AddLabel("all scripts in this scripthub IS MADE BY TROPXZ (ME)")
   C:AddLabel("Ui library creator: ShelxWare (Orion)")
   C:AddLabel("Please credit me if u use the scripts above")
   C:AddLabel("If u have any bugs or Issues, Dm Tropxz#5665") 





OrionLib:Init()
