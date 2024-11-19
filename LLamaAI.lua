repeat wait() until game:IsLoaded();

-- // SETTINGS \\ --


local CLOSE_RANGE_ONLY = true;

_G.MESSAGE_SETTINGS = {
	["MINIMUM_CHARACTERS"] = 1,
	["MAXIMUM_CHARACTERS"] = 200,
	["MAXIMUM_STUDS"] = 11,
};

_G.WHITELISTED = { --Only works if CLOSE_RANGE_ONLY is disabled
	["seem2006"] = true,
};

_G.BLACKLISTED = { --Only works if CLOSE_RANGE_ONLY is enabled
	["Builderman"] = true,
};

-- // DO NOT CHANGE BELOW \\ --

local chat = function(_string)
	if game.TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
		game.TextChatService.TextChannels.RBXGeneral:SendAsync(_string, "All");
	else
		game:GetService('ReplicatedStorage').DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_string, 'All')
	end
end

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Players = game:GetService("Players");
local HttpService = game:GetService("HttpService");
local OnMessageDoneFiltering = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering");
local LocalPlayer = Players.LocalPlayer;
local Debounce = false;

chat("[oLLama AI] Loading script...");
local RequestFunction = syn and syn.request or request

local function MakeRequest(Prompt)
	return RequestFunction({
		Url = "http://localhost:11434/api/generate",
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = game:GetService("HttpService"):JSONEncode({
			model = "llama3.1",
			prompt = Prompt,
			stream = false
		})
	})
end




OnMessageDoneFiltering.OnClientEvent:Connect(function(Table)
	local Message, Instance = Table.Message, Players:FindFirstChild(Table.FromSpeaker);

	local Character = Instance and Instance.Character;

	if Instance == LocalPlayer or string.match(Message, "#") or not Character or not Character:FindFirstChild("Head") or not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("Head") then return end;
	if Debounce or #Message < _G.MESSAGE_SETTINGS["MINIMUM_CHARACTERS"] or #Message > _G.MESSAGE_SETTINGS["MAXIMUM_CHARACTERS"] then return end;
	if CLOSE_RANGE_ONLY then if _G.BLACKLISTED[Instance.Name] or (Character.Head.Position - LocalPlayer.Character.Head.Position).Magnitude > _G.MESSAGE_SETTINGS["MAXIMUM_STUDS"] then return end elseif not _G.WHITELISTED[Instance.Name] then return end;

	Debounce = true;

	local HttpRequest = MakeRequest("(note: dont use any line breaks and keep the messages shorter) "..Message);
	print("["..Instance.Name.."]: "..Message)
    local Response = ""
	if HttpRequest.StatusCode == 200 then
		local responseData = game:GetService("HttpService"):JSONDecode(HttpRequest.Body)
		local actualResponse = responseData.response

		if actualResponse == nil then
			warn("fix your script: response is nil")
		else 
			Response = Instance.Name..", "..actualResponse
            warn("[oLLama AI]: "..Response)
		end
	else
		warn("Request failed with status code: " .. HttpRequest.StatusCode)
	end


	chat(string.sub(Response, 1, 128));
	delay(1, function()
		chat(string.sub(Response, 129));
		wait();
		Debounce = false;
	end)	

end)

wait()

warn("Script has been executed with success.");
chat("[oLLama AI] LLama 3.1 Loaded!");
