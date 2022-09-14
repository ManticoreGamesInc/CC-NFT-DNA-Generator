local DNA_EVENTS = require(script:GetCustomProperty("DNA_Events"))

local function on_message_received(speaker, params)
	if params.message:sub(1, 1) == "/" then
		local status = ""
		local tokens = { CoreString.Split(params.message:sub(2), " ") }

		if(tokens[1] == "nft" and #tokens == 3) then
			Events.Broadcast(DNA_EVENTS.Regenerate, tokens[2], tokens[3])
			Events.BroadcastToAllPlayers(DNA_EVENTS.Regenerate, tokens[2], tokens[3])
			status = "Trying to load NFT #" .. tostring(tokens[3]) .. "."
		else
			status = "Invalid command."
		end

		params.message = ""
		Chat.BroadcastMessage(status, { players = speaker })
	end
end

Chat.receiveMessageHook:Connect(on_message_received)