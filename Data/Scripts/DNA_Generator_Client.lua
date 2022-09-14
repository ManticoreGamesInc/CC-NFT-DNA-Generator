local DNA_EVENTS = require(script:GetCustomProperty("DNA_Events"))

Events.Connect(DNA_EVENTS.Send_Traits, function(traits)
	_G.DNA_Traits = traits
end)