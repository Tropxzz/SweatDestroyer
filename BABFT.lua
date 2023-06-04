-- I hate my life for making this script :(
loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G_Hub_Extras/main/Universal_Client_Bypass"))()

  print("person detected: " .. game.Players.LocalPlayer.Name.."/ "..game.Players.LocalPlayer.DisplayName)
   print("but fr why u looking")
   print("Here me out, im not a skid totally ")


local Players = game:GetService("Players")
local rs = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local HumanoidRootPart = character.HumanoidRootPart


function speed()
 if hum.Walkspeed == 16 then
  hum.WalkSpeed = 40  
    else
    hum.WalkSpeed = 16
 end
end
  
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "SweatDestroyer - Build a boat for treasure", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
  
Tab:AddToggle({
    Name = "Afk Farm",
    Default = false,
    Callback = function(v)
        getgenv().Autofarm = v
        if getgenv().Autofarm == false then return end
        workspace["New YellerZone"].VoteLaunchRE:FireServer()
        workspace["Really redZone"].VoteLaunchRE:FireServer()
        workspace["Really blueZone"].VoteLaunchRE:FireServer()
        workspace["WhiteZone"].VoteLaunchRE:FireServer()
        workspace["BlackZone"].VoteLaunchRE:FireServer()
        workspace["MagentaZone"].VoteLaunchRE:FireServer()
        workspace["CamoZone"].VoteLaunchRE:FireServer()

        local StartingPosition = CFrame.new(-49, -9, -199, -0, -1, -0, -1, 1, -4, 0, -4, -0)
        local FinalPosition = CFrame.new(-55, -361, 9491, 0, 0, -1, 0, 1, 0, 1, 0, 0)

        repeat

            HumanoidRootPart.CFrame = CFrame.new(StartingPosition.X, 65, StartingPosition.Z)

            local TweenService = game:GetService("TweenService")

            coroutine.wrap(function()
                repeat
                    HumanoidRootPart.Anchored = true
                    task.wait(0.15)

                    HumanoidRootPart.Anchored = false
                    task.wait(0.35)
                until false
            end)()

            local Tween = TweenService:Create(HumanoidRootPart, TweenInfo.new(15, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(FinalPosition.X, 55, FinalPosition.Z)})
            Tween:Play()

            task.wait(35)
        until false
  end
})

Tab:AddButton({
    Name = "No more water",
    Default = false,
    Callback = function(state)
        game.workspace.Water:Destroy()
        game.workspace.BoatStages.NormalStages.CaveStage1.Water:Destroy()
        game.workspace.BoatStages.NormalStages.CaveStage2.Water:Destroy()
        game.workspace.BoatStages.NormalStages.CaveStage3.Water:Destroy()
        game.workspace.BoatStages.NormalStages.CaveStage4.Water:Destroy()
        game.workspace.BoatStages.NormalStages.CaveStage5.Water:Destroy()
        game.workspace.BoatStages.NormalStages.CaveStage6.Water:Destroy()
        game.workspace.BoatStages.NormalStages.CaveStage7.Water:Destroy()
        game.workspace.BoatStages.NormalStages.CaveStage8.Water:Destroy()
        game.workspace.BoatStages.NormalStages.CaveStage9.Water:Destroy()
        game.workspace.BoatStages.NormalStages.ForestStage.Water:Destroy()
        game.workspace.BoatStages.NormalStages.TheEnd.Water:Destroy()
        game.workspace.BoatStages.OtherStages.CircusStage.Water:Destroy()
        game.workspace.BoatStages.OtherStages.CrystalCaveStage.Water:Destroy()
        game.workspace.BoatStages.OtherStages.EnchantedForestStage.Water:Destroy()
        game.workspace.BoatStages.OtherStages.FlowerStage.Water:Destroy()
        game.workspace.BoatStages.OtherStages.LightHouseStage.Water:Destroy()
        game.workspace.BoatStages.OtherStages.SciFiCityStage.Water:Destroy()
        game.workspace.BoatStages.OtherStages.ShipWreckedStage.Water:Destroy()
        game.workspace.BoatStages.OtherStages.TrenchStage.Water:Destroy()
        game.workspace.BoatStages.OtherStages.VaporwaveStage.Water:Destroy()
      print("POV: U DONT HAVE AC IN UR GAME LLL")
    end
})

OrionLib:Init()
