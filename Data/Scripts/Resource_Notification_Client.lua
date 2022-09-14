local TWEEN = require(script:GetCustomProperty("Tween"))
local QUEUE = require(script:GetCustomProperty("Queue_API"))

local CONTAINER = script:GetCustomProperty("Container"):WaitForObject()
local RESOURCE_ITEM_UI = script:GetCustomProperty("ResourceItemUI")

local queue = QUEUE:new()
local current_item = nil
local tween = nil

local function add_item(resource, quantity)
	local item = World.SpawnAsset(RESOURCE_ITEM_UI, { parent = CONTAINER })

	queue:push({ item = item, resource = resource, quantity = quantity })
end

local function tween_item_out()
	tween = TWEEN:new(1, { o = 1 }, { o = 0 })
	tween:on_change(function(c)
		current_item.item.opacity = c.o
	end)

	tween:on_complete(function()
		tween = nil
		current_item.item:Destroy()
		current_item = nil
	end)

	tween:set_delay(1.5)
end

local function tween_item()
	current_item.item.x = -current_item.item.width + 20

	current_item.item:FindChildByName("Text").text = string.format("%s x%s", current_item.resource, current_item.quantity)

	tween = TWEEN:new(1, { x = current_item.item.x }, { x = CONTAINER.x })
	tween:on_change(function(c)
		current_item.item.x = c.x
	end)

	tween:on_complete(function()
		tween = nil
		tween_item_out()
	end)

	tween:set_easing(TWEEN.Easings.Out_Elastic)
end

function Tick(dt)
	if(queue:length() > 0 and current_item == nil) then
		current_item = queue:pop()
		tween_item()
	end

	if(tween ~= nil) then
		tween:tween(dt)
	end
end

Events.Connect("notification.add", add_item)