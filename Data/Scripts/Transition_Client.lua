local TWEEN = require(script:GetCustomProperty("Tween"))

local TRANSITION = script:GetCustomProperty("Transition"):WaitForObject()

local tween = nil

local function change(c)
	TRANSITION.opacity = c.o
end

local function in_tween(fn, delay, duration)
	tween = TWEEN.Tween:new(duration or 1, { o = TRANSITION.opacity }, { o = 1 })

	tween:on_change(change)
	tween:on_complete(function()
		tween = nil

		if(fn ~= nil) then
			fn()
			Events.Broadcast("transition.in.finished")
		end
	end)

	tween:set_delay(delay or 0)
end

local function out_tween(fn, delay, duration)
	tween = TWEEN:new(duration or 1, { o = TRANSITION.opacity }, { o = 0 })

	tween:on_change(change)
	tween:on_complete(function()
		tween = nil

		if(fn ~= nil) then
			fn()
			Events.Broadcast("transition.out.finished")
		end
	end)

	tween:set_delay(delay or 0)
end

function Tick(dt)
	if(tween ~= nil) then
		tween:tween(dt)
	end
end

Events.Connect("transition.out", out_tween)
Events.Connect("transition.in", in_tween)