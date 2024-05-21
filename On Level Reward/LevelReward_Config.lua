--[[	

	Created by Sylian (from emudevs.gg)

	[LICENSE]
	This script is made exclusively for Emudevs.gg
	All emudevs.gg members are allowed to use this resource for their servers.
	You are NOT allowed to share this script anywhere.


--]]

-------------------- Settings --------------------



-- Table of levels, you can add more levels in here, just remember to set the "key" to be the level you would like the reward to be giving at.

---> You can add new levels to give gold as a reward by adding a line. Look down below to see how to do it.

--> ex: [54] = { gold = 5000000000 },		<-- This will give the player the amount of gold you entered, when they hit level 54.

----> If you also want to add items to give to the player when they hit a certain level, you will have to add them like this.


------> This will add both the gold to the player at level 54, but also each item added.
-------> Items are added by entering the ID of the item [51451], the amount you want the players to get is what you set the ID equles to, so it would look like this (Below)
--------> "[51451] = 5" now I am giving the player the item with ID 51451 and giving him/her 5 of that item, you can look below how a full line would look.
--------> ex: [54] = { gold = 5000000000, items = { [51451] = 1, [4811] = 1 } }
local Rewards = {
	[2] = { gold = 100000, items = { [51451] = 1, [4811] = 1 } },	-- 10G
	[3] = { gold = 200000},	-- 20G
	[4] = { gold = 300000 },	-- 30G
	[45] = { gold = 500000 },	-- 50G
	[55] = { gold = 800000 },	-- 80G
	[65] = { gold = 1200000 },	-- 120G
	[75] = { gold = 2400000 },	-- 240G
	[80] = { gold = 3800000 }	-- 380G
}


--> Set this to false, if you want the script to be disabled.
----> Default value is TRUE.
local enabled = true

--> Set this to false, if you dont want to debug the script.
----> Default value is TRUE.
local debug = true



-------------------- DONT TOUCH ANYTHING BELOW HERE --------------------


--> Function for debugging if needed.
function Debug(message, arg)
	if debug then
		if arg == nil then
			print("[DEBUG] -> " .. message)
		else

			print("[DEBUG] -> " .. message .. " : " .. arg)
		end
	end

end


return 
{
	enabled = enabled,
	Rewards = Rewards,
	Debug = Debug

 }