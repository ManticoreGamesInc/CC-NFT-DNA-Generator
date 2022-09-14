local DNA_GENERATOR = require(script:GetCustomProperty("DNA_Generator_API"))

local ROOT = script:GetCustomProperty("Root"):WaitForObject()

local OBJECT_CONTAINER = script:GetCustomProperty("ObjectContainer"):WaitForObject()
local RESOURCE_CONTAINER = script:GetCustomProperty("ResourceContainer"):WaitForObject()
local EFFECTS_CONTAINER = script:GetCustomProperty("EffectsContainer"):WaitForObject()

DNA_GENERATOR.set_containers(OBJECT_CONTAINER, RESOURCE_CONTAINER, EFFECTS_CONTAINER)
DNA_GENERATOR.set_options({

	show_warnings = ROOT:GetCustomProperty("ShowWarnings"),
	nft_token_table = require(ROOT:GetCustomProperty("NFTTokens")),
	get_random_nft = ROOT:GetCustomProperty("GetRandomNFT"),
	use_specific_id = ROOT:GetCustomProperty("UseSpecificTokenId"),
	create_random_nft = ROOT:GetCustomProperty("CreateRandomNFT"),
	traits = ROOT:GetCustomProperty("Traits"):WaitForObject(),
	print_nft_data = ROOT:GetCustomProperty("PrintNFTData")


})

Task.Wait()
DNA_GENERATOR.generate()