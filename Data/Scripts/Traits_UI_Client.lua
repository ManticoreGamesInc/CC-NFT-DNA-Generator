local TWEEN = require(script:GetCustomProperty("Tween"))
local DNA_EVENTS = require(script:GetCustomProperty("DNA_Events"))

local TRAITS_PANEL = script:GetCustomProperty("TraitsPanel"):WaitForObject()
local TRAIT_ITEM = script:GetCustomProperty("TraitItem")

local tiers = {

	script:GetCustomProperty("Tier1Dots"),
	script:GetCustomProperty("Tier2Dots"),
	script:GetCustomProperty("Tier3Dots"),
	script:GetCustomProperty("Tier4Dots"),
	script:GetCustomProperty("Tier5Dots")
	
}

while(_G.DNA_Traits == nil) do
	Task.Wait()
end

local tween = nil
local can_play = false
local is_playing = false

local function show_traits_panel()
	if(tween ~= nil) then
		return
	end

	tween = TWEEN:new(.8, { o = 0 }, { o = 1 })

	tween:on_start(function()
		TRAITS_PANEL.opacity = 0
	end)

	tween:on_change(function(c)
		TRAITS_PANEL.opacity = c.o
	end)

	tween:on_complete(function()
		tween = nil
		can_play = true
	end)
end

local function on_action_pressed(player, action)
	if((action == "Jump" or Input.GetCurrentInputType() == InputType.TOUCH) and can_play) then
		tween = nil
		TRAITS_PANEL.opacity = 0
		is_playing = true
	elseif(action == "Regenerate") then
		if(is_playing) then
			tween = nil
			TRAITS_PANEL.opacity = 0
		end

		is_playing = false
		show_traits_panel()
	end
end

local function clear_traits_panel()
	for index, child in ipairs(TRAITS_PANEL:GetChildren()) do
		child:Destroy()
	end
end

local function update_trait_info(data)
	if(data ~= nil) then
		clear_traits_panel()

		local items = {}

		for _, trait in pairs(data) do
			local item = World.SpawnAsset(TRAIT_ITEM, { parent = TRAITS_PANEL })

			item:FindChildByName("Title").text = trait.trait_type
			item:FindChildByName("Name").text = trait.trait_value
			
			if(trait.secondary_value ~= nil) then
				local tier = tonumber(trait.secondary_value)

				if(tier ~= nil) then
					if(tiers[tonumber(tier)] ~= nil) then
						World.SpawnAsset(tiers[tonumber(tier)], { parent = item })
					end
				end
			end

			table.insert(items, item)
		end

		if(#items > 0) then
			local middle = math.ceil(#items / 2)
			local left_count = middle - 1
			local right_count = 1
			local offset = 0

			if(#items % 2 == 0) then
				offset = items[1].width / 2
				items[middle].x = -offset
			end

			for index, item in ipairs(items) do
				if(index < middle) then
					item.x = -((item.width * left_count) + offset)
					left_count = left_count - 1
				elseif(index > middle) then
					item.x = (item.width * right_count) - offset
					right_count = right_count + 1
				end
			end
		end
	end
end

function Tick(dt)
	if(tween ~= nil) then
		tween:tween(dt)
	end
end

Input.actionPressedEvent:Connect(on_action_pressed)
Input.touchStoppedEvent:Connect(on_action_pressed)

Events.Connect("transition.out.finished", show_traits_panel)
Events.Connect(DNA_EVENTS.Send_Traits, update_trait_info)

update_trait_info(_G.DNA_Traits)