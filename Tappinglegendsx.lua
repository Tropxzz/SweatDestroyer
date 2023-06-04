-- tapping legends x 
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "SweatDestroyer - Tapping legends X", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"}) -- disabled folder for a already folder
_G.selectegg = "Basic Egg"

function autoHatch()
  while _G.AutoHatch == true do
      game.ReplicatedStorage.Remotes.BuyEgg:InvokeServer(_G.selectegg,1)
      wait(0.000000000000000000000000000000000001)
      end
end
local Tab = Window:MakeTab({
       Name = "Main",
       Icon = "rbxassetid://4483345998",
       PremiumOnly = false
   })
   
   Tab:AddToggle({
       Name = "Autotap",
       Callback = function(v)
       _G.AutoTap = v
       while _G.AutoTap == true do
local Event = game:GetService("ReplicatedStorage").Remotes.Tap
Event:FireServer()
wait(0.0000000000000000000000001)
           end
         end    
   })

   Tab:AddToggle({
       Name = "Autohatch",
       Callback = function(v)
       _G.AutoHatch = v
        while _G.AutoHatch == true do
              autoHatch()
                      wait(0.000000000000000000000001)

            end
       end
   })

      Tab:AddButton({
       Name = "Equip best pets",
       Callback = function(v)
local Event1 = game:GetService("ReplicatedStorage").Remotes.UnequipAll
Event1:InvokeServer()
local Event = game:GetService("ReplicatedStorage").Remotes.EquipBest
Event:InvokeServer()
       end
   })

         Tab:AddToggle({
       Name = "Auto Rebirth",
       Callback = function(v)
_G.AutoRebirth = v
while _G.AutoRebirth == true do
local A_1 = 1
local Event = game:GetService("ReplicatedStorage").Remotes.Rebirth
Event:FireServer(A_1)
        wait(0.000000000000000000000001)
          end
       end
   })
