local function chat(message)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, 'All'); -- FireServer (<string> Message, <string> Channel) 
    end
   
    -- would be in function place but we need it for the loading thing
   
   -- printing shit
   print("person detected: " .. game.Players.LocalPlayer.Name.."/ "..game.Players.LocalPlayer.DisplayName)
   print("but fr why u looking")
   print("Here me out, im not a skid totally ")
   
   -- saving the files and shit for some idiotic reason
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

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "SweatDestroyer - Tower of hell", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local player = game.Players.LocalPlayer
local character = player.Character
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local mouse = player:GetMouse()

local ChatService = game:GetService("Chat")

-- Function to give yourself a chat tag
local function giveChatTag(tag)
    -- Make sure the player is in the game
    local player = game.Players.LocalPlayer
    if player then
        -- Set the special Lua tag for the player
        ChatService:SetSpecialLuaTag("player_" .. player.UserId, tag)
    end
end



-- dont remove this bypasses toh ac
for a,b in pairs(getgc()) do 
    if typeof(b) == 'function' then 
        if debug.getinfo(b).name == 'kick' then 
            hookfunction(debug.getinfo(b).func, function()
                print'game tried to kick'
            end)
        end
    end 
end 


local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Go spawn",
	Callback = function()
local newCFrame = CFrame.new(27.5687599, 4.00254536, -9.90075874, 0.74797833, 0, -0.663723171, 0, 1, 0, 0.663723171, 0, 0.74797833)
humanoidRootPart.CFrame = newCFrame
  	end    
})

Tab:AddButton({
	Name = "Go End",
	Callback = function()
for i,v in pairs(game:GetService("Workspace").tower.sections.finish:GetChildren()) do
    if v.Name == "FinishGlow" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
    end
end
  	end    
})

Tab:AddButton({
    Name = "inf jumps",
    Callback = function()
game:GetService("ReplicatedStorage").globalJumps.Value = 6969
    end
})

Tab:AddToggle({
    Name = "Time freeze",
    default = false,
    Callback = function(v)
game:GetService("Players").LocalPlayer.PlayerScripts.timefreeze.Value = v
    end
})

Tab:AddToggle({
    Name = "Default gravity",
    default = false,
    Callback = function(v)
  local enable = v
  if enable == false then
 workspace.Gravity = 147.14999999999998
    
 else
  workspace.Gravity = 196.1999969482422
  end
    end
})

Tab:AddTextbox({
	Name = "Gravity",
	Default = "Enter Gravity",
	TextDisappear = true,
	Callback = function(Value)
		workspace.Gravity = Value
	end	  
})

Tab:AddButton({
    Name = "Collide Enabler",
    Callback = function()
--makes it so that you can collide with players and their limbs (Use with scripts like Snake)
--NOTE: collision is not server sided and only happens on your client (Fling scripts only work on you not others)

LP = game.Players.LocalPlayer
while wait(3) do
    for i,v in pairs(game.Players:GetDescendants()) do
        if v:IsA("Player") and workspace:FindFirstChild(v.Name) and v ~= LP and workspace[v.Name]:FindFirstChild("CHECKER") == nil then
            checker = Instance.new("BoolValue",workspace[v.Name])
            checker.Name = "CHECKER"
            for i,v in pairs(workspace:WaitForChild(v.Name):GetDescendants()) do
                if v:IsA("Part") or v:IsA("MeshPart") then
                    local collider = Instance.new("Part",v)
                    collider.Size = v.Size
                    collider.Position = v.Position
                    collider.Transparency = 1
                    local weld = Instance.new("Weld",v)
                    weld.Part0 = v
                    weld.Part1 = collider
                end
            end
        end
    end
end
    end

   

})

-- Update the crosshair position based on the mouse movement


OrionLib:Init()
