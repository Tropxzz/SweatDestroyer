-- Example blacklist data structure
local player = game.Players.LocalPlayer


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
   writefile(Foldername.."\\MainScript.lua", "Not made yet")

loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/shitblacklist"))()

if game.PlaceId == 3956818381 then -- ninja legends
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/NinjaLegends.lua", true))()
   elseif game.PlaceId == 2580982329 then -- texting sim
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/PhoneTextingsimulator.lua", true))()
elseif game.PlaceId ==155615604 then -- Prison life
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/prisonlife.lua", true))()
    elseif game.PlaceId ==1962086868 then -- Toh
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/Toh.lua", true))()
   elseif game.PlaceId == 4282985734 then -- Combat warriors
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/CombatWarriors.lua", true))()
    elseif game.PlaceId == 537413528 then -- BABFT
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/BABFT.lua", true))()
    elseif game.PlaceId == 8750997647 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/Tappinglegendsx.lua"))()
    elseif game.PlaceId ~= 155615604 or 2580982329 or 3956818381 or 1962086868 or 4282985734 or 537413528 or 8750997647 then -- Universal
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/Universal", true))()
    
    
end

-- W or L
