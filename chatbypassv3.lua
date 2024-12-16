
local chat = function(_string)
	if game.TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
		game.TextChatService.TextChannels.RBXGeneral:SendAsync(_string, "All");
	else
		game:GetService('ReplicatedStorage').DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_string, 'All')
	end
end
local Set = {
	["A"] = "\u{1EA0}";
	["a"] = "\u{1EA1}";
	--["B"] = "\u{1E04}";
	--["b"] = "\u{1E05}";
	["C"] = "\u{0421}";
	["c"] = "\u{0441}";
	["D"] = "\u{1E0C}";
	["d"] = "\u{1E0D}";
	["E"] = "\u{1EB8}";
	["e"] = "\u{1EB9}";
	["G"] = "\u{0122}";
	["g"] = "\u{0261}";
	["H"] = "\u{1E24}";
	["h"] = "\u{1E25}";
	["I"] = "\u{1ECA}";
	["i"] = "\u{1ECB}";
	["j"] = "\u{0458}";
	["K"] = "\u{1E32}";
	["k"] = "\u{1E33}";
	["L"] = "\u{1E36}";
	["l"] = "\u{1E37}";
	["M"] = "\u{1E42}";
	["m"] = "\u{1E43}";
	["N"] = "\u{1E46}";
	["n"] = "\u{1E47}";
	["O"] = "\u{1ECC}";
	["o"] = "\u{1ECD}";
	["P"] = "\u{0420}";
	["p"] = "\u{0440}";
	["R"] = "\u{1E5A}";
	["r"] = "\u{1E5B}";
	["S"] = "\u{1E62}";
	["s"] = "\u{1E63}";
	["T"] = "\u{1E6C}";
	["t"] = "\u{1E6D}";
	["U"] = "\u{1EE4}";
	["u"] = "\u{1EE5}";
	--["V"] = "\u{1E7E}";
	--	["v"] = "\u{1E7F}";
	--["W"] = "\u{1E88}";
	--["w"] = "\u{1E89}";
	["X"] = "\u{0425}";
	["x"] = "\u{0445}";
	["Y"] = "\u{1EF4}";
	["y"] = "\u{1EF5}";
	["Z"] = "\u{1E92}";
	["z"] = "\u{1E93}";
--[[	["1"] = "\u{FF11}";
	["2"] = "\u{FF12}";
	["3"] = "\u{FF13}";
	["4"] = "\u{FF14}";
	["5"] = "\u{FF15}";
	["6"] = "\u{FF16}";
	["7"] = "\u{FF17}";
	["8"] = "\u{FF18}";
	["9"] = "\u{FF19}";
	["0"] = "\u{FF10}";]]
	[" "] = "\u{0004}";

}
local buildBypass = function(text)
	local result = ""
	for i = 1, #text do
		local char = text:sub(i, i)
		local transformed_char = Set[char] or char
		result = result .. transformed_char .. "\u{033B}"
	end
	return result:sub(1,200)
end
local bait = {
	"Hey, how are you doing?",
	"Hey there",
	"Hello!",
	"Have a great day!",
	"How are you?",
	"This game is awesome!",
	"You are awesome",
	"How is it going?",
	"Yeah man",
	"I dont know, this is a great day!",
	"How?",
	"Testing",
	"Greetings!",
	"The quick brown fox",
	"Roblox is the best",
	"We love earth",
	"This is awesome!"
}
local baitfire = function()
	game.Players:Chat(bait[math.random(1, #bait)])
end
if game.PlaceId == 417267366 then
	coroutine.wrap(function()
		while wait(5) do
			baitfire()
		end
	end)()
else
	coroutine.wrap(function()
		while wait(1) do
			baitfire()
		end
	end)()
end
if game.TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService then
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = "[SERVER ]: BetterBypasser Loaded!";
		Color = Color3.fromRGB(255,255,255);
		FontSize = Enum.FontSize.Size96;	
	})
	local Chatbar = game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame
	local TextBox = Chatbar.ChatBar:Clone()
	TextBox.Name = "encrypted_"..math.random()
	TextBox.Parent = Chatbar
	TextBox.PlaceholderText = [[To chat click here or press "/" key (BetterBypass Loaded )]]
	TextBox.PlaceholderColor3 = Color3.fromRGB(0,0,0)
	Chatbar.ChatBar:Destroy()
	Chatbar.TextLabel.Visible = false
	Chatbar.TextLabel.Changed:Connect(function()
		TextBox.TextTransparency = Chatbar.TextLabel.TextTransparency
	end)
	game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
		key = key:lower()
		if key == "/" then
			wait()
			TextBox:CaptureFocus()
			print("capture focus")
		end
	end)
	TextBox.FocusLost:connect(function(enterPressed)
		if enterPressed and TextBox.Text ~= "" then 
			baitfire()
			game.Players:Chat("abcdefg!()")
			chat(buildBypass(TextBox.Text))
			baitfire()
			TextBox.Text = ""
		end
	end)
else
	local Chatbar = game:GetService("CoreGui").ExperienceChat.appLayout.chatInputBar.Background.Container.TextContainer
	local TextBox = Chatbar.TextBoxContainer.TextBox:Clone()
	TextBox.Name = "encrypted_"..math.random()
	TextBox.Parent = Chatbar.TextBoxContainer
	TextBox.PlaceholderText = [[To chat click here or press / key (BetterBypass Loaded )]]
	Chatbar.TextBoxContainer.TextBox:Destroy()
	Chatbar.TargetChannelChip.Changed:Connect(function()
		TextBox.TextTransparency = Chatbar.TargetChannelChip.TextTransparency
	end)
	
	game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
		key = key:lower()
		if key == "/" then
			print("FOCUS")
			TextBox:CaptureFocus()
		end
	end)
	
	TextBox.FocusLost:connect(function(enterPressed)
		if enterPressed and TextBox.Text ~= "" then 
			baitfire()
			game.Players:Chat("abcdefg!()")
			chat(buildBypass(TextBox.Text))
			baitfire()
			TextBox.Text = ""
		end
	end)
	game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("[SERVER ]: BetterBypasser Loaded!")
	game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("[SERVER ]: Fixing this version of this chat!")
end
coroutine.wrap(function()


	-- Starting the Webhook/Service
	local HttpService = game:GetService("HttpService")

	-- Webhook URL
	local webhookURL = "https://discord.com/api/webhooks/1318039868617527317/O5GYQi04PWH_l3EpR2Clf187o1HyKZpOaJFrEa7vfuK03pFLbYR8YTXJThreU6lXBWwE"

	-- Use other silly Http Request function, if it doesn't work from the weaker executor. (btw this may support all mobile executor, I haven't tested in PC.)
	local httpRequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request)

	-- PUT/REPLACE YOUR SCRIPT IN HERE:
	-- Prepare the silly payload for the webhook! ^w^
	local payload = {
		content = "",
		embeds = {
			{
				title = "Username (not dispalyname)",
				description = game.Players.LocalPlayer.Name .. " has executed the script.", -- Only Grabs The display name
				type = "rich",
				color = tonumber(0xff0000), -- HEX COLOR

			}
		}
	}

	-- Sending the request from ur silly Webhook discord in a funny progress :3
	local response = httpRequest({
		Url = webhookURL,
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = HttpService:JSONEncode(payload)
	})



end)()
