-- I hate my life for making this script :(

  print("person detected: " .. game.Players.LocalPlayer.Name.."/ "..game.Players.LocalPlayer.DisplayName)
   print("but fr why u looking")
   print("Here me out, im not a skid totally ")

   local Foldername = "Negar"
   local overrideDatabase = true
   
   if (isfolder(Foldername) and overrideDatabase) then
   elseif (isfolder(Foldername) and not overrideDatabase) then
       return warn("Overriding the database is automatically disabled for security purposes.")
   else
       makefolder(Foldername)
   end
   
   writefile(Foldername.."\\GangsterGangster.txt", "If you reading this ur a gangster :) Made by Tropxz#5665.")
   writefile(Foldername.."\\MainScript.lua", "Not made yet")


local Players = game:GetService("Players")
local rs = game:GetService("ReplicatedStorage")
local localPlayer = Players.LocalPlayer
local char = localPlayer.Character
local hum = char.Humanoid

function speed()
 if hum.Walkspeed == 16 then
  hum.WalkSpeed = 40  
    else
    hum.WalkSpeed = 16
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
    local LocalPlayer = Players.LocalPlayer
    local Character = LocalPlayer.Character or LocalPlayer:WaitForChild("Character")
    local HumanoidRootPart = Character.HumanoidRootPart or Character:WaitForChild("HumanoidRootPart")

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
