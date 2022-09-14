local PLAYER_API = require(script:GetCustomProperty("Player_API"))

local RESPAWN_EFFECT = script:GetCustomProperty("RespawnEffect")

local API = {}

function API.set_trigger(trigger, delay)
	trigger.beginOverlapEvent:Connect(function(t, other)
		if(other:IsA("Player")) then
			PLAYER_API.spawn_player(other, true, 0)
		end
	end)
end

function API.on_respawn()
	World.SpawnAsset(RESPAWN_EFFECT, { 
				
		position = Game.GetLocalPlayer():GetWorldPosition() + (-Vector3.UP * 100)

	})
end

return API