local RESOURCE_DISPLAY_PANEL = script:GetCustomProperty("ResourceDisplayPanel"):WaitForObject()
local RESOURCE_ITEM = script:GetCustomProperty("ResourceItem")

local RESOURCE_ICONS = require(script:GetCustomProperty("ResourceIcons"))

local PLAYER = Game.GetLocalPlayer()

local resources = {}
local total = 0

local function resource_changed(player, resource, amount)
	if(RESOURCE_ICONS[resource]) then
		if(not resources[resource]) then
			if(amount > 0) then
				local item = World.SpawnAsset(RESOURCE_ITEM, { parent = RESOURCE_DISPLAY_PANEL })

				resources[resource] = item
				
				item:FindDescendantByName("Amount").text = tostring(amount)
				item:FindDescendantByName("Icon"):SetImage(RESOURCE_ICONS[resource].Icon)
				item.x = -(total * 110)
				total = total + 1
			end
		else
			resources[resource]:FindDescendantByName("Amount").text = tostring(amount)
		end
	end
end

PLAYER.resourceChangedEvent:Connect(resource_changed)

Task.Wait()

for key, row in pairs(RESOURCE_ICONS) do
	resource_changed(PLAYER, key, PLAYER:GetResource(key))
end

Events.Connect("player.spawned", function()
	RESOURCE_DISPLAY_PANEL.visibility = Visibility.FORCE_ON
end)

Events.Connect("player.despawned", function()
	RESOURCE_DISPLAY_PANEL.visibility = Visibility.FORCE_OFF
end)