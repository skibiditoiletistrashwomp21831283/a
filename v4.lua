-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local g = Instance.new("Frame")
local main = Instance.new("Frame")
local k = Instance.new("TextLabel")
local k_2 = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local ag = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local up = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local down = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local k_3 = Instance.new("TextLabel")
local k_4 = Instance.new("TextLabel")
local c = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local Frame_2 = Instance.new("Frame")
local bar = Instance.new("ImageLabel")
local w = Instance.new("Frame")
local rel = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Four = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local One = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local Three = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Two = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local Five = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.DisplayOrder = 999999999
ScreenGui.ResetOnSpawn = false

g.Name = "g"
g.Parent = ScreenGui
g.AnchorPoint = Vector2.new(0.5, 0.5)
g.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
g.BackgroundTransparency = 1.000
g.BorderColor3 = Color3.fromRGB(27, 42, 53)
g.BorderSizePixel = 0
g.Position = UDim2.new(0.5, 0, 0.5, 0)
g.Size = UDim2.new(0.336961508, 0, 0.405084759, 0)
g.Visible = false

main.Name = "main"
main.Parent = g
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.BackgroundTransparency = 0.200
main.BorderColor3 = Color3.fromRGB(27, 42, 53)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.498659909, 0, 0.498988688, 0)
main.Size = UDim2.new(0.958999991, 0, 0.954999983, 0)

k.Name = "k"
k.Parent = main
k.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
k.BackgroundTransparency = 1.000
k.BorderColor3 = Color3.fromRGB(27, 42, 53)
k.BorderSizePixel = 0
k.Position = UDim2.new(0.018577002, 0, 0.030195849, 0)
k.Size = UDim2.new(0.954336345, 0, 0.17454046, 0)
k.Font = Enum.Font.SourceSans
k.Text = "How old are you?"
k.TextColor3 = Color3.fromRGB(255, 255, 255)
k.TextScaled = true
k.TextSize = 14.000
k.TextStrokeTransparency = 0.500
k.TextWrapped = true

k_2.Name = "k"
k_2.Parent = main
k_2.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
k_2.BackgroundTransparency = 1.000
k_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
k_2.BorderSizePixel = 0
k_2.Position = UDim2.new(0.018577002, 0, 0.206575379, 0)
k_2.Size = UDim2.new(0.954336345, 0, 0.0691575408, 0)
k_2.Font = Enum.Font.SourceSans
k_2.Text = "This exists to protect you."
k_2.TextColor3 = Color3.fromRGB(255, 255, 255)
k_2.TextScaled = true
k_2.TextSize = 14.000
k_2.TextStrokeTransparency = 0.500
k_2.TextWrapped = true

UICorner.Parent = main

ag.Name = "ag"
ag.Parent = main
ag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ag.BackgroundTransparency = 0.500
ag.BorderColor3 = Color3.fromRGB(27, 42, 53)
ag.Position = UDim2.new(0.229058161, 0, 0.483071864, 0)
ag.Size = UDim2.new(0.544372797, 0, 0.106579788, 0)
ag.Font = Enum.Font.SourceSans
ag.Text = "16"
ag.TextColor3 = Color3.fromRGB(255, 255, 255)
ag.TextScaled = true
ag.TextSize = 14.000
ag.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(1, 0)
UICorner_2.Parent = ag

up.Name = "up"
up.Parent = main
up.Active = false
up.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
up.BackgroundTransparency = 0.500
up.BorderColor3 = Color3.fromRGB(27, 42, 53)
up.Position = UDim2.new(0.771926165, 0, 0.483071864, 0)
up.Selectable = false
up.Size = UDim2.new(0.129777446, 0, 0.106579788, 0)
up.Font = Enum.Font.SourceSans
up.Text = ">"
up.TextColor3 = Color3.fromRGB(255, 255, 255)
up.TextScaled = true
up.TextSize = 14.000
up.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(1, 0)
UICorner_3.Parent = up

down.Name = "down"
down.Parent = main
down.Active = false
down.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
down.BackgroundTransparency = 0.500
down.BorderColor3 = Color3.fromRGB(27, 42, 53)
down.Position = UDim2.new(0.0984950066, 0, 0.483071864, 0)
down.Selectable = false
down.Size = UDim2.new(0.129777446, 0, 0.106579788, 0)
down.Font = Enum.Font.SourceSans
down.Text = "<"
down.TextColor3 = Color3.fromRGB(255, 255, 255)
down.TextScaled = true
down.TextSize = 14.000
down.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(1, 0)
UICorner_4.Parent = down

k_3.Name = "k"
k_3.Parent = main
k_3.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
k_3.BackgroundTransparency = 1.000
k_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
k_3.BorderSizePixel = 0
k_3.Position = UDim2.new(0.0208675843, 0, 0.418098569, 0)
k_3.Size = UDim2.new(0.954336286, 0, 0.0631666705, 0)
k_3.Font = Enum.Font.SourceSans
k_3.Text = "I am"
k_3.TextColor3 = Color3.fromRGB(255, 255, 255)
k_3.TextScaled = true
k_3.TextSize = 14.000
k_3.TextStrokeTransparency = 0.500
k_3.TextWrapped = true

k_4.Name = "k"
k_4.Parent = main
k_4.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
k_4.BackgroundTransparency = 1.000
k_4.BorderColor3 = Color3.fromRGB(27, 42, 53)
k_4.BorderSizePixel = 0
k_4.Position = UDim2.new(0.0231581666, 0, 0.588864267, 0)
k_4.Size = UDim2.new(0.954336286, 0, 0.0657938272, 0)
k_4.Font = Enum.Font.SourceSans
k_4.Text = "years old."
k_4.TextColor3 = Color3.fromRGB(255, 255, 255)
k_4.TextScaled = true
k_4.TextSize = 14.000
k_4.TextStrokeTransparency = 0.500
k_4.TextWrapped = true

c.Name = "c"
c.Parent = main
c.Active = false
c.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
c.BackgroundTransparency = 0.500
c.BorderColor3 = Color3.fromRGB(27, 42, 53)
c.Position = UDim2.new(0.24738282, 0, 0.855623901, 0)
c.Selectable = false
c.Size = UDim2.new(0.493979871, 0, 0.084931694, 0)
c.Font = Enum.Font.SourceSans
c.Text = "CONFIRM"
c.TextColor3 = Color3.fromRGB(255, 255, 255)
c.TextScaled = true
c.TextSize = 14.000
c.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(1, 0)
UICorner_5.Parent = c

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame.Position = UDim2.new(0.740117133, 0, 0.382981151, 0)
Frame.Size = UDim2.new(0.190043926, 0, 0.232904688, 0)
Frame.ZIndex = 2

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
ImageLabel.Size = UDim2.new(1.00386703, 0, 1, 0)
ImageLabel.Image = "http://www.roblox.com/asset/?id=11332903040"
ImageLabel.ImageColor3 = Color3.fromRGB(252, 210, 255)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BackgroundTransparency = 1.000
Frame_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame_2.ClipsDescendants = true
Frame_2.Size = UDim2.new(1.00386703, 0, 1, 0)
Frame_2.ZIndex = 2

bar.Name = "bar"
bar.Parent = Frame_2
bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bar.BackgroundTransparency = 1.000
bar.BorderColor3 = Color3.fromRGB(27, 42, 53)
bar.Size = UDim2.new(0.999985099, 0, 1, 0)
bar.Image = "http://www.roblox.com/asset/?id=11332903040"
bar.ImageColor3 = Color3.fromRGB(77, 77, 77)

w.Name = "w"
w.Parent = ScreenGui
w.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
w.BackgroundTransparency = 1.000
w.BorderColor3 = Color3.fromRGB(27, 42, 53)
w.Size = UDim2.new(1, 0, 1, 0)

rel.Name = "rel"
rel.Parent = ScreenGui
rel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
rel.BackgroundTransparency = 0.200
rel.BorderColor3 = Color3.fromRGB(27, 42, 53)
rel.Position = UDim2.new(0.746190965, 0, 0.452412784, 0)
rel.Rotation = -5.000
rel.Size = UDim2.new(0.112433665, 0, 0.050206162, 0)
rel.Font = Enum.Font.SourceSans
rel.Text = "STOP ANIMS"
rel.TextColor3 = Color3.fromRGB(255, 255, 255)
rel.TextScaled = true
rel.TextSize = 14.000
rel.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(1, 0)
UICorner_6.Parent = rel

Four.Name = "Four"
Four.Parent = ScreenGui
Four.Active = false
Four.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Four.BackgroundTransparency = 0.500
Four.BorderColor3 = Color3.fromRGB(255, 229, 25)
Four.BorderSizePixel = 0
Four.Position = UDim2.new(0.740078747, 0, 0.781786263, 0)
Four.Selectable = false
Four.Size = UDim2.new(0.0643792823, 0, 0.0977727398, 0)
Four.Font = Enum.Font.ArialBold
Four.Text = "Suck"
Four.TextColor3 = Color3.fromRGB(255, 255, 255)
Four.TextScaled = true
Four.TextSize = 14.000
Four.TextWrapped = true

UICorner_7.Parent = Four

One.Name = "One"
One.Parent = ScreenGui
One.Active = false
One.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
One.BackgroundTransparency = 0.500
One.BorderColor3 = Color3.fromRGB(255, 229, 25)
One.BorderSizePixel = 0
One.Position = UDim2.new(0.740194798, 0, 0.656080186, 0)
One.Selectable = false
One.Size = UDim2.new(0.0643792823, 0, 0.0977727398, 0)
One.Font = Enum.Font.ArialBold
One.Text = "Thrust"
One.TextColor3 = Color3.fromRGB(255, 255, 255)
One.TextScaled = true
One.TextSize = 14.000
One.TextWrapped = true

UICorner_8.Parent = One

Three.Name = "Three"
Three.Parent = ScreenGui
Three.Active = false
Three.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Three.BackgroundTransparency = 0.500
Three.BorderColor3 = Color3.fromRGB(255, 229, 25)
Three.BorderSizePixel = 0
Three.Position = UDim2.new(0.895134985, 0, 0.656080186, 0)
Three.Selectable = false
Three.Size = UDim2.new(0.0643792823, 0, 0.0977727398, 0)
Three.Font = Enum.Font.ArialBold
Three.Text = "Jerk"
Three.TextColor3 = Color3.fromRGB(255, 255, 255)
Three.TextScaled = true
Three.TextSize = 14.000
Three.TextWrapped = true

UICorner_9.Parent = Three

Two.Name = "Two"
Two.Parent = ScreenGui
Two.Active = false
Two.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Two.BackgroundTransparency = 0.500
Two.BorderColor3 = Color3.fromRGB(255, 229, 25)
Two.BorderSizePixel = 0
Two.Position = UDim2.new(0.816009104, 0, 0.656080186, 0)
Two.Selectable = false
Two.Size = UDim2.new(0.0643792823, 0, 0.0977727398, 0)
Two.Font = Enum.Font.ArialBold
Two.Text = "All Fours"
Two.TextColor3 = Color3.fromRGB(255, 255, 255)
Two.TextScaled = true
Two.TextSize = 14.000
Two.TextWrapped = true

UICorner_10.Parent = Two

Five.Name = "Five"
Five.Parent = ScreenGui
Five.Active = false
Five.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Five.BackgroundTransparency = 0.500
Five.BorderColor3 = Color3.fromRGB(255, 229, 25)
Five.BorderSizePixel = 0
Five.Position = UDim2.new(0.815481365, 0, 0.781786263, 0)
Five.Selectable = false
Five.Size = UDim2.new(0.0643792823, 0, 0.0977727398, 0)
Five.Font = Enum.Font.ArialBold
Five.Text = "Ride"
Five.TextColor3 = Color3.fromRGB(255, 255, 255)
Five.TextScaled = true
Five.TextSize = 14.000
Five.TextWrapped = true

UICorner_11.Parent = Five

-- Scripts:

local function RKVPKAF_fake_script() -- main.LocalScript 
	local script = Instance.new('LocalScript', main)

	local a = 16
	
	script.Parent.up.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			if a >= 0 then
				a += 1
				if a > 20 then
					game:GetService("Players").LocalPlayer:Kick("no.")
				end
				script.Parent.ag.Text = a
			end
		end
	end)
	
	script.Parent.down.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			if a >= 0 then
				a -= 1		
				if a < 14 then
					game:GetService("Players").LocalPlayer:Kick("no.")
				end
				script.Parent.ag.Text = a
			else 
				for i = 1, 10 do 
					task.wait()
					local x = math.random(-2, 2)
					local y = math.random(-2, 2)
					script.Parent.Parent.Position = UDim2.new(0.5, x, 0.5, y)
				end
			end
		end
	end)
	
	script.Parent.c.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			script.Parent.Parent:Destroy()
		end
	end)
end
coroutine.wrap(RKVPKAF_fake_script)()
local function TYQQYNH_fake_script() -- ScreenGui.asdsa 
	local script = Instance.new('LocalScript', ScreenGui)

	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:WaitForChild("Humanoid")
	
	local Players = game:GetService("Players")
	local StarterGui = game:GetService("StarterGui")
	
	--[[local LocalPlayer = Players.LocalPlayer
	local prefix = "_pair: " -- Prefix for pair request
	local acceptPrefix = "accept_pair: " -- Prefix for accepting a pair
	local declinePrefix = "decline_pair: " -- Prefix for declining a pair
	local modePrefix = "set_mode: " -- Prefix for setting modes
	
	local pairedPlayers = {} -- Tracks paired players and their modes
	
	-- Function to display a Core-like notification
	local function displayNotification(sender)
		StarterGui:SetCore("SendNotification", {
			Title = "Pair Request",
			Text = sender .. " wants to pair with you. Accept?",
			Duration = 10,
			Button1 = "Accept",
			Button2 = "Decline",
			Callback = function(button)
				if button == "Accept" then
					game.Players:Chat("accept_pair: " .. sender)
					print("You accepted the pair request from " .. sender)
					-- Add sender to paired players
					pairedPlayers[sender] = { mode = "test1" } -- Default mode
				elseif button == "Decline" then
					game.Players:Chat("decline_pair: " .. sender)
					print("You declined the pair request from " .. sender)
				end
			end
		})
	end
	
	-- Function to notify the sender when their request is accepted
	local function notifySender(sender)
		if sender == LocalPlayer.Name then
			StarterGui:SetCore("SendNotification", {
				Title = "Pair Accepted",
				Text = "Your pairing request was accepted by " .. LocalPlayer.Name .. "!",
				Duration = 5
			})
			print("Notified " .. sender .. " that their request was accepted.")
		end
	end
	
	-- Function to set the mode for a paired player
	local function setMode(playerName, mode)
		if pairedPlayers[playerName] then
			pairedPlayers[playerName].mode = mode
			print("Mode for " .. playerName .. " set to: " .. mode)
		else
			print("Player " .. playerName .. " is not paired.")
		end
	end
	
	-- Listen for chat messages
	local function onPlayerChatted(player, message)
		if message:sub(1, #prefix) == prefix then
			-- Handle pair request
			local targetUsername = message:sub(#prefix + 1):gsub("%s+", "") -- Extract username
			if targetUsername == LocalPlayer.Name then
				displayNotification(player.Name)
			end
		elseif message:sub(1, #acceptPrefix) == acceptPrefix then
			-- Handle pair acceptance
			local sender = message:sub(#acceptPrefix + 1):gsub("%s+", "") -- Extract sender
			if sender == LocalPlayer.Name then
				notifySender(player.Name)
			elseif sender == player.Name then
				pairedPlayers[player.Name] = { mode = "test1" } -- Default mode
			end
		elseif message:sub(1, #declinePrefix) == declinePrefix then
			-- Handle pair decline
			local sender = message:sub(#declinePrefix + 1):gsub("%s+", "") -- Extract sender
			if sender == LocalPlayer.Name then
				print(player.Name .. " declined your pair request.")
				pairedPlayers[player.Name] = nil -- Remove from paired players
			end
		elseif message:sub(1, #modePrefix) == modePrefix then
			-- Handle mode setting
			local mode = message:sub(#modePrefix + 1):gsub("%s+", "") -- Extract mode
			setMode(player.Name, mode)
		end
	end
	
	-- Connect chat event for existing players
	for _, player in pairs(Players:GetPlayers()) do
		if player ~= LocalPlayer then
			player.Chatted:Connect(function(message)
				onPlayerChatted(player, message)
			end)
		end
	end
	
	-- Connect chat event for new players
	Players.PlayerAdded:Connect(function(player)
		if player ~= LocalPlayer then
			player.Chatted:Connect(function(message)
				onPlayerChatted(player, message)
			end)
		end
	end)
	]]
	
	local Players = game.Players
	function getRoot(char)
		local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
		return rootPart
	end
	
	repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	repeat wait() until game.Players.LocalPlayer:GetMouse()
	
	local T = getRoot(Players.LocalPlayer.Character)
	local FLYING = false
	local BG, BV -- Declare globally to manage them in `UNFLY`
	
	repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	repeat wait() until game.Players.LocalPlayer:GetMouse()
	
	local T = getRoot(Players.LocalPlayer.Character)
	local FLYING = false
	local BG, BV -- Declare globally to manage them in `unfreeze`
	
	local function freeze()
		if FLYING then return end -- Prevent re-flying if already flying
	
		FLYING = true
		BG = Instance.new('BodyGyro')
		BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BV.velocity = Vector3.new(0, -1.5, 0) -- Lower Y-axis by 1
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
	
		-- Get the current rotation and match the Z-axis
		local currentCFrame = T.CFrame
		local _, _, currentZ = currentCFrame:ToEulerAnglesXYZ() -- Extract Z rotation
		BG.cframe = CFrame.Angles(math.rad(-34.5), 0, currentZ) -- Apply Z rotation
		wait(1)
		getRoot(Players.LocalPlayer.Character).Anchored = true
		-- Keep the character floating but frozen
		task.spawn(function()
			
			while FLYING do
				wait()
			end
	
			-- Clean up when FLYING is stopped
			BG:Destroy()
			BV:Destroy()
			if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				getRoot(Players.LocalPlayer.Character).Anchored = false
			end
		end)
	end
	
	local function unfreeze()
		if not FLYING then return end -- Prevent running if not flying
	
		FLYING = false
		-- The cleanup is handled in the task.spawn loop
		if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
			getRoot(Players.LocalPlayer.Character).Anchored = false
		end
	end
	
	-- Example of usage
	
	
	local fapsound = function()
		local sound = Instance.new("Sound", game.Players.LocalPlayer.PlayerGui)
		sound.SoundId = "rbxassetid://6916371803"
		sound.Volume = 1
		sound:Play()
	end
	
	local pairuser = function(user)
		game.Players:Chat("_pair: "..user)
	end
	
	
	
	
	local stopanims = function()
		for i,v in next, game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks() do
			v:Stop()
		end
	
		Break = true
		getRoot(Players.LocalPlayer.Character).Anchored = false
	end
	
	
	script.Parent.rel.MouseButton1Down:Connect(function()
		stopanims()
		unfreeze()
	end)
	
	
	
	script.Parent.Three.MouseButton1Down:Connect(function()
		stopanims()
	
		Break = false
		
		local animation = Instance.new("Animation")
		animation.AnimationId = "rbxassetid://72042024"
	
		local animator = humanoid:FindFirstChildOfClass("Animator")
		local animationTrack = animator:LoadAnimation(animation)
		animationTrack.Looped = true
	
		animationTrack:Stop()
		animationTrack.TimePosition = .4
		animationTrack:Play()
		animationTrack:AdjustSpeed(0.5)
		coroutine.wrap(function()
			while wait(.5) do
				if Break then
					print("stopped!!")
					break
				else
	
					fapsound()
				end
			end
		end)()
		getRoot(Players.LocalPlayer.Character).Anchored = true
		while wait(.5) do
			if Break then
				print("stopped!!")
				break
			else
	
				animationTrack.TimePosition = .4
			end
		end
	
	end)
	--[[
	script.Parent.TextButton.MouseButton1Down:Connect(function()
		pairuser(script.Parent.TextBox.Text)
	end)]]
	
	
	script.Parent.Two.MouseButton1Down:Connect(function()
		stopanims()
	
		Break = false
	
		-- Load the animation from the asset ID
		local animation = Instance.new("Animation")
		animation.AnimationId = "rbxassetid://182789003"
	
		local animator = humanoid:FindFirstChildOfClass("Animator")
		local animationTrack = animator:LoadAnimation(animation)
		animationTrack.Looped = true
	
		animationTrack:Stop()
		animationTrack.TimePosition = 1
		animationTrack:Play()
	
	
		coroutine.wrap(function()
			local animation = Instance.new("Animation")
			animation.AnimationId = "rbxassetid://160725720"
	
			local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
			track:Play(.1, .5, 3)
			while true do
				if Break then
					print("stopped!!")
					break
				else
					track:Play(.1, .1, 3)
					fapsound()
					wait(.3)
					track:Stop()
					wait(.3)
				end
			end
	
		end)()
		
		freeze()
		while wait() do
			animationTrack.TimePosition = 1
		end
	
	
	end)
	
	script.Parent.One.MouseButton1Down:Connect(function()
		stopanims()
	
		Break = false
		
	
	
		coroutine.wrap(function()
			local animation = Instance.new("Animation")
			animation.AnimationId = "rbxassetid://99807079"
			local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
			track:Play(.1, .5, 3)
			while true do
				if Break then
					print("stopped!!")
					break
				else
					track:Play(.1, .5, 3)
					fapsound()
					wait(.3)
					track:Stop()
					wait(.3)
				end
			end
	
		end)()
		coroutine.wrap(function()
			local animation = Instance.new("Animation")
			animation.AnimationId = "rbxassetid://106772613"
			local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
			track:Play(.1,1,3)
	
		end)()
	
		coroutine.wrap(function()
			local animation = Instance.new("Animation")
			animation.AnimationId = "rbxassetid://214738896"
			local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
			track:Play(.1,1,3)
	
		end)()
	
		coroutine.wrap(function()
			local animation = Instance.new("Animation")
			animation.AnimationId = "rbxassetid://167272039"
			local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
			track:Play(.1,1,3)
	
		end)()
		
	
		getRoot(Players.LocalPlayer.Character).Anchored = true
	end)
	
	script.Parent.Five.MouseButton1Down:Connect(function()
		stopanims()
	
		Break = false
		
	
		coroutine.wrap(function()
			local animation = Instance.new("Animation")
			animation.AnimationId = "rbxassetid://48138189"
			local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
			track:Play(.1,1,3)
	
		end)()
	
		coroutine.wrap(function()
			local animation = Instance.new("Animation")
			animation.AnimationId = "rbxassetid://99815141"
			local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
			track:Play(.1,1,3)
	
		end)()
	
		coroutine.wrap(function()
			local animation = Instance.new("Animation")
			animation.AnimationId = "rbxassetid://179224234"
			local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
			track:Play(.1,1,3)
	
		end)()
	
		coroutine.wrap(function()
			local animation = Instance.new("Animation")
			animation.AnimationId = "rbxassetid://99807079"
			local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
			track:Play(.1,1,3)
	
		end)()
	
		coroutine.wrap(function()
			local animation = Instance.new("Animation")
			animation.AnimationId = "rbxassetid://180435792"
			local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
			track:Play(.1,1,3)
	
		end)()
		
		getRoot(Players.LocalPlayer.Character).Anchored = true
		
	end)
	
	script.Parent.Four.MouseButton1Down:Connect(function()
		stopanims()
		
		Break = false
		
		game.Players.LocalPlayer.Character.Humanoid.Sit = true
		wait(1)
		getRoot(Players.LocalPlayer.Character).Anchored = true
	end)
	
end
coroutine.wrap(TYQQYNH_fake_script)()
