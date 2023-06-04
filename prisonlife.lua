-- We're here coding once again.....................
-- Tip when coding: ONLY MAKE THE UNIVERSAL SCRIPT FIRST

local function chat(message)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, 'All'); -- FireServer (<string> Message, <string> Channel) 
    end
   
    -- would be in function place but we need it for the loading thing
   
   -- printing shit
   print("person detected: " .. game.Players.LocalPlayer.Name.."/ "..game.Players.LocalPlayer.DisplayName)
   print("but fr why u looking")
   print("Here me out, im not a skid totally ")
   
   -- saving the files and shit for some idiotic reason

   chat("Making files.")
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



local Prison_ITEMS = game:GetService('Workspace')["Prison_ITEMS"].single
local tigger = {
    "Remington 870",
    "M9",
    "AK-47"
}

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
   local highlight = Instance.new("Highlight") -- Replace this with your own highlight object
   local Mouse = lplr:GetMouse()
   local ESPEnabled = false -- Set initial state to disabled
   local UserInputService = game:GetService("UserInputService")
   local LocalPlayer = Players.LocalPlayer
   local Holding = false
   local AimbotEnabled = false

_G.AimbotEnabled = true
_G.TeamCheck = false -- If set to true then the script would only lock your aim at enemy team members.
_G.AimPart = "Head" -- Where the aimbot script would lock at.
_G.Sensitivity = 0 -- How many seconds it takes for the aimbot script to officially lock onto the target's aimpart.

function Kill(Player)
	pcall(function()
		if Player.Character:FindFirstChild("ForceField") or not workspace:FindFirstChild(Player.Name) or not workspace:FindFirstChild(Player.Name):FindFirstChild("Head") or Player == nil or Player.Character.Parent ~= workspace then return end
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
 
		local MyTeam = GetTeam()
		if Player.TeamColor.Name == game.Players.LocalPlayer.TeamColor.Name then
			local savedcf = GetPos()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.random().Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
		end
 
		local Gun = game.Players.LocalPlayer.Character:FindFirstChild("Remington 870") or game.Players.LocalPlayer.Backpack:FindFirstChild("Remington 870")
 
		local FireEvent = {
			[1] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [2] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [3] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [4] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [5] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [6] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [7] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [8] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}
		}
 
		game:GetService("ReplicatedStorage").ShootEvent:FireServer(FireEvent, Gun)
		Gun.Parent = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character["Remington 870"]:Destroy()
	end)
end

function GetClosestToCuror()
    Closest = math.huge
    Target = nil
    for _, v in pairs(Players:GetPlayers()) do
        if FreeForAll(v) then
            if
                v ~= Player and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and
                    v.Character:FindFirstChild("Humanoid") and
                    v.Character.Humanoid.Health ~= 0
             then
                Point, OnScreen = Workspace.CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                if
                    OnScreen and
                        NotObstructing(
                            v.Character.HumanoidRootPart.Position,
                            {Player.Character, v.Character}
                        )
                 then
                    Distance =
                        (Vector2.new(Point.X, Point.Y) -
                        Vector2.new(Player:GetMouse().X, Player:GetMouse().Y)).magnitude
                    if Distance <= Aimbot.FOV then
                        Closest = Distance
                        Target = v
                    end
                end
            end
        end
    end
    return Target
end


RunService.Stepped:connect(
    function()
        pcall(
            function()
                if Aimbot.Enabled == false or Shoot == false then
                    return
                end
                ClosestPlayer = GetClosestToCuror()
                if ClosestPlayer then
                    Workspace.CurrentCamera.CFrame =
                        CFrame.new(Workspace.CurrentCamera.CFrame.p, ClosestPlayer.Character[AimPart].CFrame.p)
                end
            end
        )
    end
)
T = {
    TeamCheck = false,
    Delay = 0.01,
    Enabled = false
}

local Aim = false
UserInputService.InputBegan:connect(
    function(v)
        if v.UserInputType == Enum.UserInputType.MouseButton2 and T.Enabled then
            Aim = true
            while Aim do
                wait()
                if
                    Player:GetMouse().Target and
                        Players:FindFirstChild(
                            Player:GetMouse().Target.Parent.Name
                        )
                 then
                    local Person =
                        Players:FindFirstChild(
                        Player:GetMouse().Target.Parent.Name
                    )
                    if Person.Team ~= Player.Team or not T.TeamCheck then
                        if T.Delay > 0 then
                            wait(0.01)
                        end
                        mouse1press()
                        wait()
                        mouse1release()
                    end
                end
                if not T.Enabled then
                    break
                end
            end
        end
    end
)

UserInputService.InputEnded:connect(function(v)
    if v.KeyCode == Enum.UserInputType.MouseButton2 and T.Enabled then
        Aim = false
    end
end)

Aimbot = {
    FreeForAll = false,
    WallCheck = false,
    Enabled = false,
    FOV = 250
}


local function AimAtPlayer(player)
    local myCharacter = game.Players.LocalPlayer.Character
    local targetCharacter = player.Character
    local aimPart = targetCharacter:FindFirstChild(AimPart)

    if aimPart then
        -- Implement your aimbot logic here
        -- Example: Make the camera look at the aimPart
        local camera = workspace.CurrentCamera
        local lookVector = (aimPart.Position - camera.CFrame.Position).Unit
        local targetRotation = CFrame.lookAt(Vector3.new(), lookVector)
        camera.CFrame = CFrame.new(camera.CFrame.Position, camera.CFrame.Position + targetRotation.LookVector)
    end
end

 local function UpdateAimbot()
    if AimbotEnabled then
        local closestPlayer = GetClosestPlayer()
        if closestPlayer then
            AimAtPlayer(closestPlayer)
        end
    end
end



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



local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "SweatDestroyer - Prison life", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Esp!",
	Default = false,
	Callback = function(Value)
		        ESPEnabled = not ESPEnabled -- Toggle state
        if not ESPEnabled then
            ShowESP() -- Show ESP on all players
        else
            DisableESP() -- Disable ESP on all players
        end
	end    
})

Tab:AddButton({
	Name = "Police team change",
	Callback = function()
local A_1 = "Bright blue"
local Event = game:GetService("Workspace").Remote.TeamEvent
Event:FireServer(A_1)
  	end    
})

Tab:AddButton({
	Name = "Prisoner team change",
	Callback = function()
local A_1 = "Bright orange"
local Event = game:GetService("Workspace").Remote.TeamEvent
Event:FireServer(A_1)

  	end    
})

Tab:AddButton({
    Name = "Give dropped weapons (Might not work)",
    Callback = function()
local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver["AK-47"].ITEMPICKUP
local Event = game:GetService("Workspace").Remote.ItemHandler
Event:InvokeServer(A_1)
Prison_ITEMS.ChildAdded:Connect(function(thingthing) -- Detect when a new gun has been added.
     game.Workspace.Remote.ItemHandler:InvokeServer(Prison_ITEMS[thingthing.Name].ITEMPICKUP)
end)
end
})

Tab:AddToggle({
    Name = "Aimmy limmy >:) (prob broken, AImbot)",
    Default = false,
    Callback = function(Value)
    Aimbot.Enabled = Value
    end    
})


Tab:AddButton({
    Name = "Go crim base >:)",
    Callback = function()
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace["Criminals Spawn"].SpawnLocation.CFrame 
end
})

Tab:AddButton({
    Name = "Kill all crims >:)",
    Callback = function()
    
    for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if v.TeamColor.Name == "Really red" then
					Kill(v)
				end
            end
end
end
})



OrionLib:Init()
