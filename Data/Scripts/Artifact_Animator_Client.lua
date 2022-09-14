local ARTIFACT = script:GetCustomProperty("Artifact"):WaitForObject()
local CURVE = script:GetCustomProperty("Curve")

ARTIFACT:RotateContinuous(Rotation.New(0, 0, 10))

local z_offset = ARTIFACT:GetPosition().z

function Tick(dt)
	local pos = ARTIFACT:GetPosition()

	pos.z = z_offset + CURVE:GetValue(time() / 3) * 350

	ARTIFACT:SetPosition(pos)
end