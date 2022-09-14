local API = {

	LOCAL_PLAYER = Game.GetLocalPlayer()

}

function API.set_override(camera, lerp_time)
	API.LOCAL_PLAYER:SetOverrideCamera(camera, lerp_time or 0)
end

function API.clear_override(lerp_time)
	API.LOCAL_PLAYER:ClearOverrideCamera(lerp_time or 0)
end

return API