--[[
	The DNA Generator is responsible for parsing all the traits from the Traits folder.

	Warnings will be displayed in the Event Log for anything that can not be parsed correctly.
--]]

---Static class.
---@class API
local API = {

	log = {},
	RNG = RandomStream.New(DateTime.CurrentTime().millisecondsSinceEpoch),

	---Keeps track of all the assets that have been spawned.
	spawned_assets = {},

	---Keeps track of all networked resource assets so they can be cleared up later.
	spawned_resources = {},
	traits_data = {},
	is_token = false,
	property_overrides = {},
	options = {},

	Events = require(script:GetCustomProperty("DNA_Events")),
	Warnings = require(script:GetCustomProperty("DNA_Warnings"))

}

function API.set_options(opts)
	API.warnings_on = opts.show_warnings or false
	API.nft_tokens = opts.nft_token_table
	API.random_nft = opts.get_random_nft
	API.token_id = opts.use_specific_id
	API.traits = opts.traits
	API.create_random_nft = opts.create_random_nft
	API.print_nft_data = opts.print_nft_data
end

---Set the various contains that are needed to spawn the assets into.
---@param container Folder
---@param resource_container Folder A networked folder.
---@param effects_container Folder A client context folder.
function API.set_containers(container, resource_container, effects_container)
	API.container = container
	API.resource_container = resource_container
	API.effects_container = effects_container
end

function API.add(str, args_table)
	API.log[#API.log + 1] = string.format(str, table.unpack(args_table or {}))
end

function API.print_data()
	print(" ")
	print("--------------------")
	print("Initial Seed: " .. tostring(API.RNG:GetInitialSeed()))
	print("Current Seed: " .. tostring(API.RNG.seed))

	for index, msg in ipairs(API.log) do
		print(msg)
	end

	print("--------------------")
end

function API.send_traits_to_player(player)
	player:SetPrivateNetworkedData(API.Events.Traits_Key, API.traits_data)
end

function API.send_traits_to_players()
	for _, player in ipairs(Game.GetPlayers()) do
		player:SetPrivateNetworkedData(API.Events.Traits_Key, API.traits_data)
	end
end

function API.pad(len, str)
	return string.rep("0", len - #tostring(str)) .. str
end

---Clears all spawned assets and resets tables to empty.
---A broadcast to all players is done when clearing, this can be used
---to do something like despawning the player if regen is done.
function API.clear()
	for index, object in ipairs(API.container:GetChildren()) do
		if(not object:IsA("Script")) then
			if(Object.IsValid(object)) then
				object:Destroy()
			end
			
			object = nil
		end
	end

	if(Environment.IsServer()) then
		for index, object in ipairs(API.resource_container:GetChildren()) do
			if(Object.IsValid(object)) then
				object:Destroy()
			end
			
			object = nil
		end
	end

	API.spawned_assets = {}
	API.spawned_resources = {}
	API.traits_data = {}
	API.property_overrides = {}
	API.attributes = {}
	API.log = {}

	Events.Broadcast(API.Events.Cleared)
end

---Looks for a spawn point for the player. If multiple spawn points exist
-- then it will pick one at random.
function API.set_spawn_point()
	local spawn_points = API.container:FindDescendantsByType("PlayerStart")
	local point = Vector3.New(0, 0, 500)

	if(#spawn_points > 0) then
		point = spawn_points[API.RNG:GetInteger(1, #spawn_points)]
	end

	Events.Broadcast("spawn.set", point)
end

---Creates a warning message and displays it in the Event Log.
---Warnings are from the API.Warnings table, and use string.format.
function API.warn(msg, value1, value2, value3)
	if(not API.warnings_on) then
		return
	end
	
	warn(string.format("DNA Generator: " .. msg, value1 or "", value2 or "", value3 or ""))
end

function API.has_chance(row)
	return row.Chance ~= nil
end

function API.chance(row)
	local rng = API.RNG:GetInteger(1, 100)

	if(rng >= row.Chance) then
		return row
	end
end
---Tries to find a row from a table that has the value. If the value is empty then
---a random row is returned.
---@param tbl table
---@param value? any
---@param trait? any
---@return table
function API.find_row_from_value(tbl, value, trait)
	if(string.len(value) > 0) then
		local matches = {}

		for index, row in ipairs(tbl) do
			if(tostring(row.Value) == tostring(value)) then
				table.insert(matches, row)
			end
		end

		if(#matches == 1) then
			if(not API.is_token and API.has_chance(matches[1])) then
				return API.chance(matches[1]), true
			else
				return matches[1]
			end
		elseif(#matches > 1) then
			local matched = matches[API.RNG:GetInteger(1, #matches)]
			
			if(not API.is_token and API.has_chance(matched)) then
				return API.chance(matched)
			end

			return
		end

		API.warn(API.Warnings.Value_Not_Found, value,  trait)
		return
	end

	if(#tbl > 0 and not API.is_token) then
		local matched = tbl[API.RNG:GetInteger(1, #tbl)]
			
		if(API.has_chance(matched)) then
			return API.chance(matched)
		end

		return matched
	end
end

---Looks at the custom properties on a trait and works out what template it
---should be returning.
---@param trait table
---@return any
function API.get_trait_properties(trait)
	local trait_type = trait:GetCustomProperty("TraitType")

	if(string.len(trait_type) == 0) then 
		API.warn(API.Warnings.No_Trait_Type, trait)
		return
	end

	local value = trait:GetCustomProperty("Value")
	local table_ref = trait:GetCustomProperty("Table")
	local trait_table = nil
	local name = nil

	if(API.property_overrides[trait_type] ~= nil) then
		value = API.property_overrides[trait_type]		
	end

	if(not pcall(function()
		trait_table = require(table_ref)
	end)) then
		API.warn(API.Warnings.Not_A_Table, trait)
		return
	end

	local row = API.find_row_from_value(trait_table, value, trait)

	if(row == nil) then
		--API.warn(API.Warnings.Row_Not_Found, table_ref, trait)
		return
	end

	if(API.is_token and string.len(value) == 0) then
		return
	end

	local is_client_only = trait:GetCustomProperty("IsClientOnly")
	local location_name = trait:GetCustomProperty("LocationName")
	local secondary_trait_type = trait:GetCustomProperty("SecondaryTraitType")
	local secondary_value = trait:GetCustomProperty("SecondaryValue")
	
	local the_template = row.Template
	local secondary_name = nil

	if(API.property_overrides[secondary_trait_type] ~= nil) then
		secondary_value = API.property_overrides[secondary_trait_type]		
	end

	if(type(the_template) == "table") then
		if(string.len(secondary_trait_type) > 0) then
			local secondary_row = API.find_row_from_value(row.Template, secondary_value, trait)

			if(secondary_row == nil) then
				API.warn(API.Warnings.Secondary_Row_Not_Found, trait)
				return
			end

			the_template = secondary_row.Template
			name = secondary_row.Value
			secondary_name = name
		else
			the_template = the_template[API.RNG:GetInteger(1, #the_template)].Template
		end
	end

	table.insert(API.traits_data, {

		trait_type = trait_type,
		trait_value = row.Value,
		secondary_value = secondary_name

	})

	if(string.len(row.Value) > 0) then
		API.add("%s: %s", { trait_type, row.Value })
	end

	if(string.len(secondary_value) > 0) then
		API.add("%s: %s", { secondary_trait_type, secondary_value })
	end

	return the_template, is_client_only, location_name
end

---Get a location by trying to find it the container. It's important that
---traits with a location set are lower in the hierarchy, otherwise the
---the locations will not be found.
---@param location_name string
---@return Vector3
---@return Rotation
function API.get_location(location_name)
	local position = nil
	local rotation = nil

	local location = API.container:FindDescendantByName(location_name)

	if(location ~= nil) then
		position = location:GetWorldPosition()
		rotation = location:GetWorldRotation()
	end

	return position, rotation
end

function API.apply_color_modifier(item, modifier)
	if(Environment.IsClient() or Environment.IsSinglePlayerPreview()) then
		local meshes = {}

		if(item:IsA("StaticMesh")) then
			meshes = { item }
		else
			meshes = item:FindDescendantsByType("StaticMesh")
		end

		local trait_type = modifier:GetCustomProperty("TraitType")
		local palette = require(modifier:GetCustomProperty("Table"))
		local color = modifier:GetCustomProperty("Value")

		if(string.len(trait_type) > 0 and API.attributes ~= nil and API.attributes[trait_type] ~= nil) then
			color = API.attributes[trait_type]
		elseif(API.create_random_nft) then
			if(#palette > 0) then
				color = palette[API.RNG:GetInteger(1, #palette)].Color
			end
		elseif(string.len(color) == 0) then
			for index, row in ipairs(palette) do
				if(color == row.Value) then
					color = row.Color
					break
				end
			end
		end

		if(color ~= nil and string.len(tostring(color)) > 0) then
			API.add("%s: %s", {trait_type, color:ToStandardHex() })

			for index, mesh in ipairs(meshes) do
				if(not mesh:GetCustomProperty("DNAIgnore")) then
					mesh:SetColor(color)
				end
			end
		end
	end
end

function API.apply_material_modifier(item, modifier)
	if(Environment.IsClient() or Environment.IsSinglePlayerPreview()) then
		local meshes = {}

		if(item:IsA("StaticMesh")) then
			meshes = { item }
		else
			meshes = item:FindDescendantsByType("StaticMesh")
		end

		local trait_type = modifier:GetCustomProperty("TraitType")
		local materials = require(modifier:GetCustomProperty("Table"))
		local material = modifier:GetCustomProperty("Value")

		if(string.len(trait_type) > 0 and API.attributes ~= nil and API.attributes[trait_type] ~= nil) then
			material = API.attributes[trait_type]
		elseif(API.create_random_nft) then
			if(#materials > 0) then
				material = materials[API.RNG:GetInteger(1, #materials)].Material
			end
		elseif(string.len(material) == 0) then
			for index, row in ipairs(materials) do
				if(material == row.Value) then
					material = row.Material
					break
				end
			end
		end

		if(material ~= nil and string.len(tostring(material)) > 0) then
			API.add("%s: %s", {trait_type, CoreString.Split(tostring(material), ":") })

			for index, mesh in ipairs(meshes) do
				if(not mesh:GetCustomProperty("DNAIgnore")) then
					local materials_slots = mesh:GetMaterialSlots()

					for s, slot in ipairs(materials_slots) do
						if(string.find(slot.slotName, "BaseMaterial")) then
							slot.materialAssetId = material
						end
					end
				end
			end
		end
	end
end

function API.spawn_template(template, modifiers)
	local item = World.SpawnAsset(template, {

		parent = API.container

	})

	if(modifiers ~= nil) then
		for m, modifier in ipairs(modifiers) do
			if(modifier:GetCustomProperty("IsColorModifier")) then
				API.apply_color_modifier(item, modifier)
			end

			if(modifier:GetCustomProperty("IsMaterialModifier")) then
				API.apply_material_modifier(item, modifier)
			end
		end
	end

	table.insert(API.spawned_assets, item)
end

function API.get_trait_modifiers(trait)
	return trait:GetChildren()
end

---Parses the traits from the traits folder passed in.
---This function will handle the spawning of any template and place it in
---the correct context depending on what properties have been set.
function API.parse_traits()
	if(API.traits == nil or API.traits.type ~= "Folder") then
		API.warn(API.Warnings.No_Trait_Folder, API.container.parent)
		return
	end

	local traits = API.traits:GetChildren()

	if(#traits == 0) then
		API.warn(API.Warnings.No_Traits, traits)
		return
	end

	for index, trait in ipairs(traits) do
		local template, is_client_only, location_name = API.get_trait_properties(trait)

		if(template ~= nil) then
			local modifiers = API.get_trait_modifiers(trait)

			if(string.len(location_name) > 0) then
				if(Environment.IsServer()) then
					local position, rotation = API.get_location(location_name)

					if(position ~= nil and rotation ~= nil) then
						local item = World.SpawnAsset(template, {

							position = position,
							rotation = rotation,
							parent = API.resource_container,
							networkContext = NetworkContextType.NETWORKED

						})

						if(item:GetCustomProperty("ResourceKey") ~= nil) then
							item:SetCustomProperty("ResourceKey", item.name)
						end

						table.insert(API.spawned_resources, item)
					else
						API.warn(API.Warnings.Location_Not_Found, location_name, template, trait)
					end
				end
			elseif(is_client_only) then
				World.SpawnAsset(template, {
							
					parent = API.effects_container,
					networkContext = NetworkContextType.CLIENT_CONTEXT
				
				})
			else
				API.spawn_template(template, modifiers)
			end
		end
	end
end

function API.get_token(contract_address, token_id)
	local token = Blockchain.GetToken(contract_address, token_id)

	if(token ~= nil) then
		return token
	else
		API.warn(API.Warnings.Invalid_Token, token_id)
	end
end

--- Get random NFT from collection

function API.set_traits_from_token(contract_address, token_id)
	print(string.format("Fetching NFT %s #%s", contract_address, token_id))

	local token = Blockchain.GetToken(contract_address, token_id)

	if(token == nil) then
		API.warn(API.Warnings.Invalid_Token, token_id)
		return
	end

	local nft_attributes = token:GetAttributes()

	if(not nft_attributes) then
		API.warn(API.Warnings.No_Attributes, token.tokenId)
		return
	end

	local attributes = {}

	for k, v in ipairs(nft_attributes) do
		attributes[v.name] = v:GetValue()
	end

	API.attributes = attributes
	API.is_token = true

	if(API.traits ~= nil) then
		local trait_scripts = API.traits:GetChildren()

		for index, trait in ipairs(trait_scripts) do
			local trait_type = trait:GetCustomProperty("TraitType")

			if(attributes[trait_type] ~= nil) then
				API.property_overrides[trait_type] = tostring(attributes[trait_type])
			end

			local secondary_trait_type = trait:GetCustomProperty("SecondaryTraitType")

			if(attributes[secondary_trait_type] ~= nil) then
				API.property_overrides[secondary_trait_type] = tostring(attributes[secondary_trait_type])
			end
		end
	end

	API.token = token
end

function API.find_nft(token_id)
	for index, row in ipairs(API.nft_tokens) do
		if(row.TokenId == token_id) then
			return row
		end
	end
end

function API.check_nft_options()
	if(not API.create_random_nft and API.nft_tokens ~= nil) then
		local row = nil
		
		if(API.token_id ~= nil and string.len(API.token_id) > 0) then
			row = API.find_nft(API.token_id)
		elseif(API.random_nft) then
			row = API.nft_tokens[API.RNG:GetInteger(1, #API.nft_tokens)]
		end

		if(row ~= nil) then
			API.set_traits_from_token(row.ContractAddress, row.TokenId)
		end
	else
		API.token = true
	end
end

---Init the generation. This is called outside.
---Because this function can be used again to regenerate the trait templates, then
---it will clear all previous spawned templates.
function API.generate()
	API.clear()

	API.check_nft_options()

	while(not API.token) do
		Task.Wait()
	end

	API.parse_traits()
	
	if(Environment.IsServer()) then
		Events.Broadcast("spawn.despawn")

		API.set_spawn_point()
	elseif(Environment.IsClient) then
		_G.DNA_Traits = API.traits_data
	end
	
	if(Environment.IsSinglePlayerPreview()) then
		Events.Broadcast(API.Events.Send_Traits, API.traits_data)
	end

	if(API.print_nft_data) then
		API.print_data()
	end
end

if(Environment.IsSinglePlayerPreview()) then
	Events.Connect(API.Events.Regenerate, API.generate)
end

return API