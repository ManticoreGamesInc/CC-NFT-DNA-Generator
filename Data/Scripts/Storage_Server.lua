-- Simple example of saving and loading player resources.
-- Ideally you should check against a table of resources to make sure they are valid.

local STORAGE_KEY = "res"

local function on_player_joined(player)
	local data = Storage.GetPlayerData(player)

	if(data[STORAGE_KEY] ~= nil) then
		for key, value in pairs(data[STORAGE_KEY]) do
			player:AddResource(key, value)
		end
	end
end

local function on_player_left(player)
	local data = Storage.GetPlayerData(player)

	data[STORAGE_KEY] = {}

	for key, value in pairs(player:GetResources()) do
		data[STORAGE_KEY][key] = value
	end

	Storage.SetPlayerData(player, data)
end

Game.playerJoinedEvent:Connect(on_player_joined)
Game.playerLeftEvent:Connect(on_player_left)