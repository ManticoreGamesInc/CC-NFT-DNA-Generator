local TWEEN = require(script:GetCustomProperty("Tween"))
local DNA_EVENTS = require(script:GetCustomProperty("DNA_Events"))

local PLAY_PANEL = script:GetCustomProperty("PlayPanel"):WaitForObject()
local PLAY_TEXT = script:GetCustomProperty("PlayText"):WaitForObject()
local REGENERATE_TEXT = script:GetCustomProperty("RegenerateText"):WaitForObject()

local PLAYER = Game.GetLocalPlayer()

local tween = nil
local dir_in = false
local can_play = false
local is_playing = false

local function tween_alpha()
	tween = TWEEN:new(1, { o = (dir_in and .2 or 1) }, { o = (dir_in and 1 or .2 ) })

	tween:on_change(function(c)
		PLAY_PANEL.opacity = c.o
	end)

	tween:on_complete(function()
		tween = nil
		dir_in = not dir_in
		tween_alpha()
	end)

	tween:set_delay(.2)
end

local function update_input_text(player, input_type)
	if(input_type == InputType.TOUCH) then
		PLAY_TEXT.text = "Tap to Play"
		REGENERATE_TEXT.visibility = Visibility.FORCE_OFF
	else
		PLAY_TEXT.text = string.format("Press [%s] to Play", Input.GetActionInputLabel("Jump"))
		REGENERATE_TEXT.text = string.format("Press [%s] to Regenerate", Input.GetActionInputLabel("Regenerate"))
		REGENERATE_TEXT.visibility = Visibility.INHERIT
	end
end

local function show_play_text()
	if(tween ~= nil) then
		return
	end

	update_input_text(PLAYER, Input.GetCurrentInputType())

	tween = TWEEN:new(.8, { o = 0 }, { o = 1 })

	tween:on_start(function()
		PLAY_PANEL.opacity = 0
		
		if(Input.GetCurrentInputType() == InputType.KEYBOARD_AND_MOUSE) then
			REGENERATE_TEXT.visibility = Visibility.FORCE_ON
		end
	end)

	tween:on_change(function(c)
		PLAY_PANEL.opacity = c.o
	end)

	tween:on_complete(function()
		tween = nil
		tween_alpha()
		can_play = true
	end)
end

local function on_action_pressed(player, action)
	if((action == "Jump" or Input.GetCurrentInputType() == InputType.TOUCH) and can_play) then
		tween = nil
		PLAY_PANEL.opacity = 0

		Events.Broadcast("camera.clear", 1)
		Events.BroadcastToServer("spawn.player")

		is_playing = true
	elseif(action == "Regenerate") then
		if(is_playing) then
			tween = nil
			PLAY_PANEL.opacity = 0
			dir_in = false
		end

		is_playing = false
		Events.BroadcastToServer(DNA_EVENTS.Regenerate)
		Events.Broadcast(DNA_EVENTS.Regenerate)
		Events.Broadcast("camera.override")

		show_play_text()
	end
end

function Tick(dt)
	if(tween ~= nil) then
		tween:tween(dt)
	end
end

Input.actionPressedEvent:Connect(on_action_pressed)
Input.inputTypeChangedEvent:Connect(update_input_text)
Input.touchStoppedEvent:Connect(on_action_pressed)

Task.Wait()

Events.Broadcast("transition.out", show_play_text, 0, 1.3)