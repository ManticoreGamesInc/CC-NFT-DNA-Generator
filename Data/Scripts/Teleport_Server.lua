local TELEPORT_API = require(script:GetCustomProperty("Teleport_API"))

local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local SPAWN_DELAY = ROOT:GetCustomProperty("SpawnDelay")

TELEPORT_API.set_trigger(TRIGGER, SPAWN_DELAY)