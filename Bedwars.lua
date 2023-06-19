-- Updates in the future if I dont forget :Skull:
-- if i forget Ima be sad
local verison = 0.01
local Game = "Bedwars"
   
    -- would be in function place but we need it for the loading thing
   
   -- printing shit
   print("person detected: " .. game.Players.LocalPlayer.Name.."/ "..game.Players.LocalPlayer.DisplayName)
   print("but fr why u looking")
   print("Here me out, im not a skid totally ")
   
   -- saving the files and shit for some idiotic reason

   
   
   -- main code
   
   -- varibles
   local playersService = game:GetService("Players")
   local player = game.Players.LocalPlayer
   local textService = game:GetService("TextService")
   local lightingService = game:GetService("Lighting")
   local textChatService = game:GetService("TextChatService")
   local UserInputService = game:GetService("UserInputService")
   local runService = game:GetService("RunService")
   local replicatedStorageService = game:GetService("ReplicatedStorage")
   local tweenService = game:GetService("TweenService")
   local gameCamera = workspace.CurrentCamera
   local lplr = playersService.LocalPlayer -- why did i call this lplr WHO KNOWS FR
   local HttpService = game:GetService("HttpService")
   local highlight = Instance.new("Highlight") -- Replace this with your own highlight object
   local Mouse = lplr:GetMouse()
   local orbitspeed = 0.1 -- define orbitspeed here
   local orbitradius = 5 -- define orbitradius here
   local ESPEnabled = false -- Set initial state to disabled
   local ORBIT
   local orbitspeed = 0.1 -- define orbitspeed here
   local orbitradius = 5 -- define orbitradius here
   local Camera = game:GetService("Workspace").CurrentCamera
   local userInputService = game:GetService("UserInputService")
   local runService = game:GetService("RunService")
   local RunService = game:GetService("RunService")
   local aimAssistEnabled = false
   local aimAssistRadius = 5 -- adjust this value to change the aim assist radius
   local Camera = workspace.CurrentCamera
   local TweenService = game:GetService("TweenService")
   local Holding = false
   local Players = game:GetService("Players")
   local LocalPlayer = Players.LocalPlayer
   local invisRunning
   local SDInjected = true

local queueonteleport = syn and syn.queue_on_teleport or queue_on_teleport or function() end

   _G.AimbotEnabled = true
_G.TeamCheck = false -- If set to true then the script would only lock your aim at enemy team members.
_G.AimPart = "Head" -- Where the aimbot script would lock at.
_G.Sensitivity = 0 -- How many seconds it takes for the aimbot script to officially lock onto the target's aimpart.


-- bro why do i do 2 of the same varible with different names (E)
   -- ui library coz I was too lazy to make a ui 💀
   local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
   
   OrionLib:MakeNotification({
       Name = "Loading window.",
       Content = "Check workspace for a secret",
       Image = "rbxassetid://4483345998",
       Time = 5
   })
   
   local Window = OrionLib:MakeWindow({Name = "SweatDestroyer - "..Game, HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"}) -- disabled folder for a already folder
   -- POV: YOU HAVE 2 FOLDERS FOR 1 SCRIPT
   -- COuldnt be me
   -- functions
   
local function GetClosestPlayer()
	local MaximumDistance = math.huge
	local Target = nil

	local function ResetMaximumDistance()
		wait(20)
		MaximumDistance = math.huge
	end

	for _, v in next, Players:GetPlayers() do
		if v.Name ~= LocalPlayer.Name then
			if _G.TeamCheck == true then
				if v.Team ~= LocalPlayer.Team then
					if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
						local ScreenPoint = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
						local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude

						if VectorDistance < MaximumDistance then
							Target = v
							MaximumDistance = VectorDistance
						end
					end
				end
			else
				if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
					local ScreenPoint = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
					local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude

					if VectorDistance < MaximumDistance then
						Target = v
						MaximumDistance = VectorDistance
					end
				end
			end
		end
	end

	spawn(ResetMaximumDistance)

	return Target
end


   
   local function getRandomPlayer()
       local players = game:GetService("Players"):GetPlayers()
       if #players > 0 then
           local randomIndex = math.random(1, #players)
           return players[randomIndex]
       end
       return nil
   end
   
   local randomPlayer = getRandomPlayer()

   local function ShowESP()
    for _, player in ipairs(game.Players:GetPlayers()) do
        -- Create an ESP object for each player and adjust its properties
        local esp = Instance.new("BoxHandleAdornment")
        esp.Adornee = player.Character:FindFirstChild("HumanoidRootPart")
        esp.Size = esp.Adornee.Size
        esp.Color3 = Color3.fromRGB(255, 0, 0) -- Choose your desired color
        esp.Transparency = 0.5 -- Choose your desired transparency
        esp.ZIndex = 5
        esp.AlwaysOnTop = true
        esp.Visible = true
        esp.Parent = esp.Adornee
    end
end

local function DisableESP()
    for _, player in ipairs(game.Players:GetPlayers()) do
        -- Find and remove the ESP object from each player
        local esp = player.Character.HumanoidRootPart:FindFirstChild("BoxHandleAdornment")
        if esp then
            esp:Destroy()
        end
    end
end

local function unorbit()
    if ORBIT then
        ORBIT:Disconnect()
        ORBIT = nil
    end
end

   
   --[[
   chat("Anyone like byfron, I dont it tried stopping me")
   --]]
   
   -- i can make the player say anything now <:)
   
   -- Hmmmmm, what should i call this 
   -- maybe main NO NO lets do
   local Co = Window:MakeTab({
       Name = "Combat",
       Icon = "rbxassetid://4483345998",
       PremiumOnly = false
   })

      Co:AddToggle({
    Name = "ESP",
    default = false,
    Callback = function()
        ESPEnabled = not ESPEnabled -- Toggle state
        if not ESPEnabled then
            ShowESP() -- Show ESP on all players
        else
            DisableESP() -- Disable ESP on all players
        end
    end
})

Co:AddToggle({
    Name = "Aimbot",
    Default = false,
    Callback = function(v)
        _G.AimbotEnabled = v
        while _G.AimbotEnabled == true do
            local closestPlayer = GetClosestPlayer()
            if closestPlayer then
                local aimPartPosition = closestPlayer.Character[_G.AimPart].Position
                local aimCFrame = CFrame.new(Camera.CFrame.Position, aimPartPosition)
                TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = aimCFrame}):Play()
            end
            wait(0.3)
        end
    end
})

Co:AddToggle({
    Name = "BHOP",
    Default = false,
    Callback = function(v)
    getgenv().BHop = v
     while getgenv().BHop do
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
wait()
end
end
})

  local Blatant = Window:MakeTab({
       Name = "Blatant",
       Icon = "rbxassetid://4483345998",
       PremiumOnly = false
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
