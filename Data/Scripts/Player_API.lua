local API = {

	spawn_points = nil

}

function API.despawn_players()
	for _, player in ipairs(Game.GetPlayers()) do
		player:Despawn()

		Events.BroadcastToPlayer(player, "player.despawned")
	end
end

function API.spawn_player(player, force, delay)
	if(API.spawn_point == nil or (player.isSpawned and not force)) then
		return
	end

	if(delay) then
		Task.Wait(delay)
	end

	local position = API.spawn_point
	local rotation = Rotation.New()

	if(API.spawn_point.type ~= "Vector3") then
		position = API.spawn_point:GetWorldPosition()
		rotation = API.spawn_point:GetWorldRotation()
	end

	player:Spawn({

		position = position,
		rotation = rotation

	})

	Events.BroadcastToPlayer(player, "player.spawned")
end

function API.set_spawn_point(point)
	API.spawn_point = point
end

function API.clear_spawn_point()
	API.spawn_points = nil
end

return API