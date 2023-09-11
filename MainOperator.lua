-- Isaiah if I show this to you ur gay. Cant take it back btw :)

local Foldername = "Negar"
local player = game.Players.LocalPlayer

local blacklist = {
    [1010372966] = true,  -- Blacklisted player 1 (UserID: 12345678)
    [3091950130] = true,  -- Blacklisted player 2 (UserID: 87654321)
    [4716046486] = true,
    [3963762957] = true,
}



print("person detected: " .. game.Players.LocalPlayer.Name.."/ "..game.Players.LocalPlayer.DisplayName)
   print("but fr why u looking")
   print("Here me out, im not a skid totally ")
-- HEHE I HAVE UR FILES IN MY HANDS
   local Foldername = "Negar"
   local overrideDatabase = true
   if (isfolder(Foldername) and overrideDatabase) then
   elseif (isfolder(Foldername) and not overrideDatabase) then
       return warn("Overriding the database is automatically disabled for security purposes.")
   else
       makefolder(Foldername)
   end
   
   writefile(Foldername.."\\GangsterGangster.txt", "If you reading this ur a gangster :) Made by Tropxz#5665.")
   writefile(Foldername.."\\MainScript.lua", "")

   if blacklist[player.UserId] then
    delfolder(Foldername)
    makefolder("BlacklistedFromSweatDestroyer")
           writefile("BlacklistedFromSweatDestroyer".."\\LBOZO1.lua", "LLLLLLLLLLL")
           writefile("BlacklistedFromSweatDestroyer".."\\LBOZO2.lua", "LLLLLLLLLLL")
           writefile("BlacklistedFromSweatDestroyer".."\\LBOZO3.lua", "LLLLLLLLLLL")
           writefile("BlacklistedFromSweatDestroyer".."\\LBOZO4.lua", "LLLLLLLLLLL")
           writefile("BlacklistedFromSweatDestroyer".."\\LBOZO5.lua", "LLLLLLLLLLL")
           writefile("BlacklistedFromSweatDestroyer".."\\LBOZO6.lua", "LLLLLLLLLLL")
           writefile("BlacklistedFromSweatDestroyer".."\\LBOZO7.lua", "LLLLLLLLLLL")
           writefile("BlacklistedFromSweatDestroyer".."\\LBOZO8.lua", "LLLLLLLLLLL")
           writefile("BlacklistedFromSweatDestroyer".."\\LBOZO9.lua", "LLLLLLLLLLL")
           writefile("BlacklistedFromSweatDestroyer".."\\LBOZO10.lua", "LLLLLLLLLLL")
           writefile("BlacklistedFromSweatDestroyer".."\\LYOUGOTBLACKLISTED.lua", "Wow "..player.Name.." / "..player.DisplayName.." You got blacklisted Congrats!")
           
           player:Kick("How retarded do you have to be to be blacklisted :skull:.")
end

if isfolder("BlacklistedFromSweatDestroyer") and not blacklist[player.UserId] then
  delfolder("BlacklistedFromSweatDestroyer")
end


if game.PlaceId == 3956818381 then -- Ninja Legends
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/NinjaLegends.lua", true))()
elseif game.PlaceId == 2580982329 then -- Texting Simulator
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/PhoneTextingsimulator.lua", true))()
elseif game.PlaceId == 155615604 then -- Prison Life
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/prisonlife.lua", true))()
elseif game.PlaceId == 1962086868 then -- Tower of Hell
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/Toh.lua", true))()
elseif game.PlaceId == 5253186791 or game.PlaceId == 11979315221 or game.PlaceId == 4282985734 then -- Combat Warriors
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/CombatWarriors.lua", true))()
elseif game.PlaceId == 537413528 then -- Build A Boat For Treasure
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/BABFT.lua", true))()
elseif game.PlaceId == 8750997647 then -- Tapping Legends
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/Tappinglegendsx.lua"))()
elseif game.PlaceId == 11927193883 then -- Simple Slap Battles
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/Simple%20slap%20battles.lua"))()
else -- Universal
        if game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents") then
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/Universal%20-%20With%20Chat "))()
    else
         loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/Universal%20-%20WithoutChatt"))()

    end
end

