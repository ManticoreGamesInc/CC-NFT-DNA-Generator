local ADJUSTMENTS = require(script:GetCustomProperty("Adjustments"))

World.SpawnAsset(ADJUSTMENTS[math.random(#ADJUSTMENTS)].Template, { parent = script.parent })