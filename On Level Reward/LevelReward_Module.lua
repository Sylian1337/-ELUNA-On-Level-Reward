--[[	

	Created by Sylian (from emudevs.gg)

	[LICENSE]
	This script is made exclusively for Emudevs.gg
	All emudevs.gg members are allowed to use this resource for their servers.
	You are NOT allowed to share this script anywhere.

--]]

-- Requires the "Config" file.
local config = require("LevelReward_Config")

-- Events
local PLAYER_EVENT_ON_LEVEL_CHANGE = 13


-- event, player, oldLevel
function OnPlayerLevelUp(event, player, oldLevel)
	if config.enabled then
		-- Calls the function to reward the player.
		RewardPlayer(player)
	end


end


-- Returns true if the player has hit a milestone for a reward.
function RewardPlayer(player)
	-- Getting the player level.
	local pLvl = player:GetLevel();

	-- Loop all rewards.
	for level, reward in pairs(config.Rewards) do
		-- Check if player is the correct level for this reward.
		if level == pLvl then
			-- Add money to the player.
			player:ModifyMoney(reward.gold)
			
			-- If the reward table for this level does have items in it.
			--- Run a loop over all these items in that table.
			if(reward.items) then 

				-- Loop all items to give.
				for itemID, itemAmount in pairs(reward.items) do
					-- Add item to inventory.
					player:AddItem(itemID, itemAmount)
				end
			end

			

			-- Called but only printed, if enabled in configs.
			config.Debug("Level -> " .. level ..  "  Rewarded gold -> " .. reward.gold)
		end
	end
end


-- Register events
RegisterPlayerEvent(PLAYER_EVENT_ON_LEVEL_CHANGE, OnPlayerLevelUp)