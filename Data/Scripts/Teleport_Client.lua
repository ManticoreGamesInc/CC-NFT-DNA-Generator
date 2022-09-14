local TELEPORT_API = require(script:GetCustomProperty("Teleport_API"))

local evt = Game.GetLocalPlayer().spawnedEvent:Connect(TELEPORT_API.on_respawn)

script.destroyEvent:Connect(function()
	if(evt.isConnected) then
		evt:Disconnect()
	end
end)