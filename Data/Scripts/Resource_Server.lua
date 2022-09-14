local DAMAGEABLE = script:FindAncestorByType("DamageableObject")

local players = {}

local function on_destroyed(damageable, damage)
	for player, damage in pairs(players) do
		if(Object.IsValid(player)) then
			local max = 3

			if(damage >= 50) then
				max = 6
			end

			local amount = math.random(1, max)

			player:AddResource(damageable:GetCustomProperty("ResourceKey"), amount)
			Events.BroadcastToPlayer(player, "notification.add", damageable:GetCustomProperty("ResourceKey"), amount)
		end
	end
end

local function on_damaged(damageable, damage)
	if(not players[damage.sourcePlayer]) then
		players[damage.sourcePlayer] = damage.amount
	else
		players[damage.sourcePlayer] = math.min(damageable.maxHitPoints, players[damage.sourcePlayer] + damage.amount)
	end
end

if(Object.IsValid(DAMAGEABLE)) then
	DAMAGEABLE.diedEvent:Connect(on_destroyed)
	DAMAGEABLE.damagedEvent:Connect(on_damaged)
end