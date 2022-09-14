local DNA_EVENTS = require(script:GetCustomProperty("DNA_Events"))

Events.Connect(DNA_EVENTS.Send_Traits, function(traits)
	Events.BroadcastToAllPlayers(DNA_EVENTS.Send_Traits, traits)
end)