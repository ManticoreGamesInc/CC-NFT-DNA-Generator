local TOOLS = require(script:GetCustomProperty("Tools"))

local function on_player_joined(player)
	local tool = World.SpawnAsset(TOOLS["pickaxe"].template, { networkContext = NetworkContextType.NETWORKED })

	tool:Equip(player)
end

Game.playerJoinedEvent:Connect(on_player_joined)