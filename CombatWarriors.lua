if KillAuraHitCooldown == nil then
    getgenv().KillAuraHitCooldown = 0.2
end



local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local mouse = Players.LocalPlayer:GetMouse()
local nevermore_modules = rawget(require(game.ReplicatedStorage.Framework.Nevermore), "_lookupTable")
local network = rawget(nevermore_modules, "Network") -- network is the place where the remote handling shit is
local remotes_table = getupvalue(getsenv(network).GetEventHandler, 1)
local events_table = getupvalue(getsenv(network).GetFunctionHandler, 1)
local remotes = {}
local lines = {}
local texts = {}
local players = {}
local words = {
    "ez",
    "get good: get SweatDestroyer",
    "trash",
    "touch grass",
    "retard",
    "i love among us",
    "the impostor?!?!?!",
    "grass? whats that",
    "having issues playing the game? Get SweatDestroyer",
    "is your dad spiderman? because he far from home",
    "do you ever have problems with light users parrying your ds???",
    "how are you that bad??🤣🤣😂🤣🤣",
    "EZ EZ EZ EZ EZ",
    "dont even bother insulting me 🤣🤣😂",
    "this script was brought to you by raid shadow legends!!",
    "do you like cheese?",
    "are you even trying to kill me???",
    "get rekt noobie",
    "go get SweatDestroyer now",
    "imagine dying",
    ".gg/Py33JsYeer on top (not really)",
    "L Bozo",
    "clapped",
    "nothing personel kid",
    "damn bro you got the whole squad laughing 😂😂🤣",
    "imagine targetting someone. but get clapped afterwards",
    "according to the rules. You should not be hacking because it can get you banned 🤓🤓🤓",
    "nerds be like: OMG LOOK AT THAT HACKER!!! LET'S GET HIM!!!🤓🤓🤓",
    "why am i still writing this? -Probably Tropxz",
    "haha got you!!!",
    "how are you that bad??🤣😂",
    "нуб бозо",
    "my reaction to that information 😐",
    "OmG nO wAY a hACker!!!",
    "Super Idol的笑容",
    "goddamn i'm still writing -Probably ZaneIs",
    "have you ever heard the hitgame AmongUs???",
    "fr?",
    'skill issue',
    "touch grass losers",
    "this move is called 'Devious Lick'",
    "*Gorilla Sounds*",
    "What's up guys it's quandale dingle here.",
    "Bro got fake Jordans 💀",
    "Caught in 4K",
    "Turi ip ip",
    "Say goodbye to your Kneecaps"
}


getgenv().hitremote = nil
getgenv().swingremote = nil
getgenv().fallremote = nil
getgenv().ragdollremote = nil

local walkspeed = 16
local infjump
local antidamage
local autospawn
local tracersenabled
local nofall
local textenabled
local noclip
local stompaura
local jumppower = 50
local teleport = false
local teleportCFrame
local killsay = false
local teleportPlayer
local killaura = false
local weapon
local hidename = false
local autoair = false
local aimbot
local holdingm2 = false
local aimbotLocked
local retard
local ARROW
local shot = false
local arrowsshooted = 1
local silentaim
local autoequip = false
local nospread
local reachchoice
local jumppowerenabled = false
local walkspeedenabled = false
local bruh = Instance.new("SelectionBox",workspace)
local closest
local flying

getgenv().TracerColor = Color3.fromRGB(99, 13, 197)

-- the good ol anticheat bypass
-- combat warriors has the most retarded anticheat on earth
for i,v in pairs(getgc(true)) do
    if typeof(v) == "table" and rawget(v, "kick") then
        v.kick =  function()
            return
        end
    end

    if typeof(v) == 'table' and rawget(v, 'getIsBodyMoverCreatedByGame') then
		v.getIsBodyMoverCreatedByGame = function(among)
		    return true
		end
   end
   if typeof(v) == "table" and rawget(v, "randomDelayKick") then
        v.randomDelayKick = function()
            return wait(9e9)
        end
    end
end

table.foreach(remotes_table, function(i,v)
    if rawget(v, "Remote") then
        remotes[rawget(v, "Remote")] = i
    end
end)

table.foreach(events_table, function(i,v)
    if rawget(v, "Remote") then
        remotes[rawget(v, "Remote")] = i
    end
end)


-- the retards at combat warriors detect if you make changes to the names so this is the second best method
local pog
pog = hookmetamethod(game, "__index", function(self, key)
    if (key == "Name" or key == "name") and remotes[self] then
       return remotes[self]
    end

    return pog(self, key)
end)


local function getRemote(name)
    for i,v in pairs(remotes) do
        if i.Name == name then
            return i
        end
    end
end

-- took this from devforums
local function getClosest()
    local hrp = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position
    local closest_distance = math.huge
    local closestnigger

    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Character ~= nil and v ~= Players.LocalPlayer and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v.Character:FindFirstChild("Humanoid").Health > 0 then
            local plr_pos = v.Character.HumanoidRootPart.Position
            local plr_distance = (hrp - plr_pos).Magnitude
    
            if plr_distance < closest_distance then
                closest_distance = plr_distance
                closestnigger = v
            end
        end
    end

    return closestnigger
end

-- modified some closest to mouse function from the devforums idfk where
local function getClosestToMouse()
    local player, nearestDistance = nil, math.huge
    for i,v in pairs(Players:GetPlayers()) do
        if v ~= Players.LocalPlayer and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("HumanoidRootPart") then
            local root, visible = workspace.CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
            if visible then
                local distance = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(root.X, root.Y)).Magnitude

                if distance < nearestDistance then
                    nearestDistance = distance
                    player = v
                end
            end
        end
    end
    return player
end

FLYING = false
iyflyspeed = 1
vehicleflyspeed = 1
-- i love stealing features from infinite yield and adding them to my script :sunglasses:

function sFLY(vfly)
	repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and Players.LocalPlayer.Character.HumanoidRootPart and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	repeat wait() until mouse
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = Players.LocalPlayer.Character.HumanoidRootPart
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(function()
			repeat wait()
				if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = mouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed)*2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed)*2
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = mouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	FLY()
end

function NOFLY()
	FLYING = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
		Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end


firehit = function(character,arrow)
    local fakepos = character.Head.Position + Vector3.new(math.random(1,5),math.random(1,5),math.random(1,5))
    local args = {
        [1] = Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"),
        [2] = character.Head,
        [3] = fakepos,
        [4] = character.Head.CFrame:ToObjectSpace(CFrame.new(fakepos)),
        [5] = fakepos * Vector3.new(math.random(1,5),math.random(1,5),math.random(1,5)),
        [6] = tostring(arrowsshooted)
    }
    getRemote("RangedHit"):FireServer(unpack(args))
end

getgenv().hitremote = getRemote("MeleeDamage")
getgenv().swingremote = getRemote("MeleeSwing")
getgenv().fallremote = getRemote("TakeFallDamage")

for i,v in pairs(getgc(true)) do
    if typeof(v) == "table" and rawget(v, "connectCharacter") then
        v.connectCharacter = function(among)
            return
        end
    end
end


task.wait(0.5)
-- by len
pcall(function()
    for i = 1,25 do
        getRemote("StartFastRespawn"):FireServer()
        getRemote("CompleteFastRespawn"):FireServer()
        wait()
    end
end)

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

   for i,v in pairs(getgc(true)) do
    if typeof(v) == "table" and rawget(v, "kick") then
        v.kick =  function()
            return
        end
    end

-- took this from devforums
local function getClosest()
    local hrp = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position
    local closest_distance = math.huge
    local closestnigger

    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Character ~= nil and v ~= Players.LocalPlayer and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v.Character:FindFirstChild("Humanoid").Health > 0 then
            local plr_pos = v.Character.HumanoidRootPart.Position
            local plr_distance = (hrp - plr_pos).Magnitude
    
            if plr_distance < closest_distance then
                closest_distance = plr_distance
                closestnigger = v
            end
        end
    end

    return closestnigger
end

-- modified some closest to mouse function from the devforums idfk where
local function getClosestToMouse()
    local player, nearestDistance = nil, math.huge
    for i,v in pairs(Players:GetPlayers()) do
        if v ~= Players.LocalPlayer and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("HumanoidRootPart") then
            local root, visible = workspace.CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
            if visible then
                local distance = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(root.X, root.Y)).Magnitude

                if distance < nearestDistance then
                    nearestDistance = distance
                    player = v
                end
            end
        end
    end
    return player
end

FLYING = false
iyflyspeed = 1
vehicleflyspeed = 1

    function sFLY(vfly)
	repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and Players.LocalPlayer.Character.HumanoidRootPart and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	repeat wait() until mouse
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = Players.LocalPlayer.Character.HumanoidRootPart
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(function()
			repeat wait()
				if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = mouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed)*2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed)*2
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = mouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	FLY()
end

function NOFLY()
	FLYING = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
		Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end
        end


print(23*3) -- JEJJSAJSJDASJDJ

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))() -- loading ui

local Window = OrionLib:MakeWindow({Name = "SweatDestroyer - Combat Warriors", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

--[[
    while you are here take the retard test
    1. are u just here to take my code
    Ans. Yes or no
    2. Are you gay
    yes or no
    3. Are u gonna join my cords
    yes or yes
    --]]

    local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Get all emotes",
	Callback = function(v)
      		for i,v in pairs(getgc(true)) do
            if typeof(v) == "table" and rawget(v, "gamepassIdRequired") then
                if v.gamepassIdRequired ==  "danceEmotes" then
                    v.gamepassIdRequired = nil
                elseif v.gamepassIdRequired == "toxicEmotes" then
                    v.gamepassIdRequired = nil
                elseif v.gamepassIdRequired == "respectEmotes" then
                    v.gamepassIdRequired = nil
                end
            end
        end
  	end    
})

Tab:AddToggle({
	Name = "Disable jump cooldown",
	Default = false,
	Callback = function(val)
		  for i,v in pairs(getgc(true)) do
            if typeof(v) == "table" and rawget(v, "getCanJump") then
                local old = v.getCanJump
                if val then
                    v.getCanJump = function()
                        return true
                    end
                else
                    return old()
                end
            end
        end
	end    
})

Tab:AddToggle({
	Name = "Inf stamia",
	Default = false,
	Callback = function(val)
		        for i,v in pairs(getgc(true)) do
            if typeof(v) == "table" and rawget(v, "_setStamina") then
                local old = v._setStamina
                v._setStamina = function(among, us)
                    if val then
                        among._stamina = math.huge
                        among._staminaChangedSignal:Fire(150)
                    else
                        return old(among, us)
                    end
                end
            end
         end
	end    
})

Tab:AddToggle({
	Name = "No fall damage",
	Default = false,
	Callback = function(val)
        nofall = val
        	end    
})

Tab:AddToggle({
	Name = "Stompaura",
	Default = false,
	Callback = function(val)
        stompaura = val
        	end    
})

Tab:AddToggle({
	Name = "no dash cooldown",
	Default = false,
	Callback = function(val)
         for i,v2 in pairs(getgc(true)) do
            if typeof(v2) == "table" and rawget(v2, "DASH_COOLDOWN") then
                if val then
                    v2.DASH_COOLDOWN = 0
                else
                    v2.DASH_COOLDOWN = 3

                end
            end
        end
        	end    
})

Tab:AddToggle({
	Name = "anti fire + beartrap damage",
	Default = false,
	Callback = function(val)
antidamage = val
        	end    
})

Tab:AddToggle({
	Name = "auto spawn",
	Default = false,
	Callback = function(val)
autospawn  = val
        	end    
})

Tab:AddSlider({
	Name = "Speed",
	Min = 16,
	Max = 100,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(v)
	       Players.LocalPlayer.Character.Humanoid.WalkSpeed  = v
	end    
})

Tab:AddToggle({
    Name = "inf jump",
    Default = false,
    Callback = function(val)
        infjump = val
    end
})

Tab:AddToggle({
    Name = "Become god",
    Default = false,
    Callback = function(val)
                flying = not flying
        if val then
            sFLY(true)
        else
            NOFLY()
        end
    end
})

Tab:AddToggle({
    Name = "AutoEquip",
    Default = false,
    Callback = function(val)
        autoequip = val
    end
})

Tab:AddToggle({
    Name = "God v2",
    Default = false,
    Callback = function(val)
                for i,v2 in pairs(game.Workspace.Map:GetDescendants()) do
            if v2.Name == "WaterArea" then
                if val then
                    v2.CanCollide = true
                else
                    v2.CanCollide = false
                end
            end
        end
    end
})

Tab:AddToggle({
    Name = "Kill aura",
    Default = false,
    Callback = function(val)
        killaura = val
    end
})

Tab:AddToggle({
    Name = "Reach",
    Default = false,
    Callback = function(val)
             Reaching = val
        if val == false then return end
        local character = game.Players.LocalPlayer.Character
        local torso = character.Torso
        local rightarm = character["Right Arm"]
        local rightshoulder = torso["Right Shoulder"]
        if rightshoulder and rightshoulder.Enabled == true then
            local rightshoulderclone = rightshoulder:Clone()
            rightshoulderclone.Enabled = false
            rightshoulder:Destroy()
            rightshoulderclone.Parent = torso
        end
    
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
            if v:IsA("BasePart") then
                v.Massless = true
            end
        end
        if rightarm:FindFirstChild("RagdollBallSocket") then
            rightarm.RagdollBallSocket.Enabled = false
        end
        while Reaching do
            sethiddenproperty(rightarm,"AssemblyLinearVelocity",Vector3.new(100,100,100))
            rightarm.Velocity = Vector3.new(100,100,100)
            if torso:FindFirstChild("Right Shoulder") then
                local rightarm = character["Right Arm"]
                local rightshoulder = torso["Right Shoulder"]
    
                local rightshoulderclone = rightshoulder:Clone()
                rightshoulderclone.Enabled = false
                rightshoulder:Destroy()
                rightshoulderclone.Parent = torso
            end
    
            local target = nil

            if reachchoice == "closest to player" then
                target = getClosest()
            elseif reachchoice == "closest to mouse" then
                target = getClosestToMouse()
                bruh.Adornee = target.Character
            else
                target = getClosest()
            end
            if target.Character:FindFirstChild("Head") and (character.Head.Position - target.Character.Head.Position).magnitude < 100 then
                rightarm.CFrame = target.Character.Head.CFrame * CFrame.new(math.random(-0,0),0,0)
            elseif character:FindFirstChild("Head") then
                rightarm.CFrame = character.Head.CFrame * CFrame.new(math.random(-0,0),0,0)
            end
            game:GetService("RunService").Heartbeat:wait()
        end
    end
})

Tab:AddToggle({
    Name = "Parry or smth",
    Default = false,
    Callback = function(val)
     for i,v in pairs(getgc(true)) do
            if type(v) == "table" and rawget(v, "PARRY_COOLDOWN_IN_SECONDS") and rawget(v, "PARRY_COOLDOWN_IN_SECONDS_AFTER_SUCCESSFUL_PARRY") then
                if val then
                    v.PARRY_COOLDOWN_IN_SECONDS = 0
                    v.PARRY_COOLDOWN_IN_SECONDS_AFTER_SUCCESSFUL_PARRY = 0
                else
                    v.PARRY_COOLDOWN_IN_SECONDS = 3
                    v.PARRY_COOLDOWN_IN_SECONDS_AFTER_SUCCESSFUL_PARRY = 0.33
                end
            end
        end
    end
})

Tab:AddToggle({
    Name = "Aimbot",
    Default = false,
    Callback = function(val)
      aimbot = val
    end
})

Tab:AddToggle({
    Name = "Fling",
    Default = false,
    Callback = function(val)
       local plr = game.Players.LocalPlayer
        local oldHumanoid = plr.Character.Humanoid
        local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
        local flying = true
        local deb = true
        local ctrl = {f = 0, b = 0, l = 0, r = 0}
        local lastctrl = {f = 0, b = 0, l = 0, r = 0}
        local maxspeed = 50
        local speed = 50
        
        workspace.CurrentCamera.CameraSubject = torso
         
        local function Fly()
             local bambam = Instance.new("BodyThrust")
             bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
             bambam.Force = Vector3.new(99999,0,99999)
             bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
             Instance.new("SelectionBox",game.Players.LocalPlayer.Character.HumanoidRootPart).Adornee = game.Players.LocalPlayer.Character.HumanoidRootPart
             local bg = Instance.new("BodyGyro", torso)
             bg.P = 9e4
             bg.maxTorque = Vector3.new(0, 0, 0)
             bg.cframe = torso.CFrame
             local bv = Instance.new("BodyVelocity", torso)
             bv.velocity = Vector3.new(0,0,0)
             bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
             repeat wait()
                 if oldHumanoid:FindFirstChildOfClass'RemoteEvent' ~= nil then
                     oldHumanoid.RagdollRemoteEvent:FireServer(true)
                 end
                 getRemote("UpdateIsCrouching"):FireServer(true)
         
                 if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                     speed = speed+.2
                     if speed > maxspeed then
                         speed = maxspeed
                     end
                 elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                     speed = speed-1
                     if speed < 0 then
                         speed = 0
                     end
                 end
                 if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                     bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                     lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                 elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                     bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                 else
                     bv.velocity = Vector3.new(0,0.1,0)
                 end
         
             until not flying
             ctrl = {f = 0, b = 0, l = 0, r = 0}
             lastctrl = {f = 0, b = 0, l = 0, r = 0}
             speed = 0
             bg:Destroy()
             bv:Destroy()
         
         end
         mouse.KeyDown:connect(function(key)
             if key:lower() == "w" then
                 ctrl.f = 1
             elseif key:lower() == "s" then
                 ctrl.b = -1
             elseif key:lower() == "a" then
                 ctrl.l = -1
             elseif key:lower() == "d" then
                 ctrl.r = 1
             end
         end)
         mouse.KeyUp:connect(function(key)
             if key:lower() == "w" then
                 ctrl.f = 0
             elseif key:lower() == "s" then
                 ctrl.b = 0
             elseif key:lower() == "a" then
                 ctrl.l = 0
             elseif key:lower() == "d" then
                 ctrl.r = 0
             elseif key:lower() == "r" then
         
             end
         end)
         for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
             v:Destroy()
         end -- doesnt need tools anyways
         -- hides all of ur body parts expect torso (there is a chance it doesnt work)
         wait(.1)
         oldHumanoid.RagdollRemoteEvent:FireServer(true)
         wait(.5)
         coroutine.wrap(Fly)()
         wait(.5)
         game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.Part0 = nil
    end
})

print("Test work")

-- when ur script crashes ur client :sob:

OrionLib:Init()
