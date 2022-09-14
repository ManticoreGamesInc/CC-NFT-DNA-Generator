local CAMERA_API = require(script:GetCustomProperty("Camera_API"))

CAMERA_API.set_override(script.parent, 0)

Events.Connect("camera.clear", CAMERA_API.clear_override)
Events.Connect("camera.override", function()
	CAMERA_API.set_override(script.parent, 0)
end)