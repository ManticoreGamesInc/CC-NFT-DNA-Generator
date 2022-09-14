local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local OUTLINE_OBJECT = script:GetCustomProperty("OutlineObject"):WaitForObject()

local PLAYER = Game.GetLocalPlayer()

local function on_trigger_enter(trigger, other)
	if(PLAYER == other and OUTLINE_OBJECT ~= nil) then
		OUTLINE_OBJECT:SetSmartProperty("Enabled", true)
	end
end

local function on_trigger_exit(trigger, other)
	if(PLAYER == other and Object.IsValid(OUTLINE_OBJECT)) then
		OUTLINE_OBJECT:SetSmartProperty("Enabled", false)
	end
end

if(TRIGGER ~= nil) then
	TRIGGER.beginOverlapEvent:Connect(on_trigger_enter)
	TRIGGER.endOverlapEvent:Connect(on_trigger_exit)
end