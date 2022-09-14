local PLAYER_API = require(script:GetCustomProperty("Player_API"))

Events.Connect("spawn.set", PLAYER_API.set_spawn_point)
Events.Connect("spawn.despawn", PLAYER_API.despawn_players)
Events.ConnectForPlayer("spawn.player", PLAYER_API.spawn_player)