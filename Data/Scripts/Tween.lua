--[[
Author: CommanderFoo

The MIT License (MIT)

Copyright (c) 2022 pixeldepth.net

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
]]

local Tween = {}

Tween.id = 0

Tween.Easings = require(script:GetCustomProperty("Tween_Easings"))

Tween.ease = function(from, to, original, time, duration, ease)
	for k, v in pairs(to) do
		local t = time
		local b = original[k]
		local c = v - original[k]
		local d = duration

		if(type(ease) == "userdata" and ease.type == "SimpleCurve") then
			local val = ease:GetValue(t / duration)

			from[k] = c * val + b
		else
			from[k] = ease(t, b, c, d)
		end
	end

	return from
end

Tween.copy_table = function(t)
	local tmp = {}

	for k, v in pairs(t) do
		tmp[k] = v
	end

	return tmp
end

function Tween:tween(delta)
	if(self.tween_finished or self.tween_paused) then
		return
	end

	self.time = self.time + delta

	if(self.time < self.delay_tween) then
		return
	end

	self.original = self.original or Tween.copy_table(self.from)

	if((self.time - self.delay_tween) >= self.duration) then
		self.from = Tween.copy_table(self.to)

		if(type(self.change_evt) == "function") then
			self.change_evt(self.to)
		end

		self.tween_finished = true

		if(type(self.complete_evt) == "function") then
			self.complete_evt()
		end
	else
		if(self.start_evt and not self.start_evt_invoked) then
			self.start_evt()
			self.start_evt_invoked = true
		end

		self.from = Tween.ease(self.from, self.to, self.original, self.time - self.delay_tween, self.duration, self.easing)

		if(type(self.change_evt) == "function") then
			self.change_evt(self.from)
		end
	end

	return self
end

function Tween:on_change(fn)
	if(fn and type(fn) == "function" and self.change_evt == nil) then
		self.change_evt = fn
	end

	return self
end

function Tween:set_from(from)
	self.original = from
end

function Tween:reset()
	self.time = 0

	self.from = Tween.copy_table(self.original_from)
	self.to = Tween.copy_table(self.original_to)

	self.start_evt_invoked = false
	self.original = nil
	self.tween_finished = false
	self.tween_paused = false

	return self
end

function Tween:set_easing(ease)
	if(ease ~= nil) then
		self.easing = ease or Tween.Easings.Linear
	end

	return self
end

function Tween:on_complete(fn)
	if(fn and type(fn) == "function" and self.complete_evt == nil) then
		self.complete_evt = fn
	end

	return self
end

function Tween:on_start(fn)
	if(fn and type(fn) == "function" and self.start_evt == nil) then
		self.start_evt = fn
	end

	return self
end

function Tween:set_delay(delay_time)
	if(delay_time and delay_time > 0) then
		self.delay_tween = delay_time
	end

	return self
end

function Tween:paused()
	return self.tween_paused
end

function Tween:pause()
	self.tween_paused = true

	return self
end

function Tween:continue()
	self.tween_paused = false

	return self
end

function Tween:play()
	self.tween_paused = false

	return self
end

function Tween:stop()
	self.tween_finished = true
	self.tween_paused = false

	if(self.complete_evt and type(self.complete_evt) == "function") then
		self.complete_evt()
	end

	return self
end

function Tween:active()
	return not self.tween_finished
end

function Tween:get_id()
	return "tween_" .. tostring(self.id)
end

function Tween:new(duration, from, to, easing, change, complete)
	self.__index = self

	Tween.id = Tween.id + 1

	local m_table = setmetatable({

		duration = duration,
		from = from,
		to = to,
		time = 0,
		tween_finished = false,
		complete_evt = nil,
		start_evt = nil,
		easing = easing or Tween.Easings.Linear,
		delay_tween = 0,
		time_started = 0,
		original_from = Tween.copy_table(from),
		original_to = Tween.copy_table(to),
		change_evt = nil,
		start_evt_invoked = false,
		tween_paused = false,
		id = Tween.id

	}, self)

	m_table:on_change(change)
	m_table:on_complete(complete)

	return m_table
end

return Tween