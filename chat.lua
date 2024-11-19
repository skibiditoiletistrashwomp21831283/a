local module = {}

module.chat = function(_string)
	if game.TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
		print("FIRING ".._string.."...")
		game.TextChatService.TextChannels.RBXGeneral:SendAsync(_string, "All");
		warn("FIRED!")
	else
		game:GetService('ReplicatedStorage').DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_string, 'All')
	end
end

return module
