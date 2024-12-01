local BB = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local UIPadding = Instance.new("UIPadding")
local Shadows = Instance.new("Folder")
local AmbientShadow = Instance.new("ImageLabel")
local PenumbraShadow = Instance.new("ImageLabel")
local UmbraShadow = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local Shadows_2 = Instance.new("Folder")
local AmbientShadow_2 = Instance.new("ImageLabel")
local PenumbraShadow_2 = Instance.new("ImageLabel")
local UmbraShadow_2 = Instance.new("ImageLabel")
BB.Name = "BB"
BB.ResetOnSpawn = false
BB.Parent = game.CoreGui
Frame.Parent = BB
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.825, 0)
Frame.Size = UDim2.new(0, 454, 0, 33)
TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.075000003, 0, 0.129999995, 0)
TextBox.Size = UDim2.new(0, 417, 0, 25)
TextBox.Font = Enum.Font.GothamMedium
TextBox.PlaceholderText = "made by creysound"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000
TextBox.TextXAlignment = Enum.TextXAlignment.Left
UIPadding.Parent = TextBox
UIPadding.PaddingLeft = UDim.new(0, 5)
Shadows.Name = "Shadows"
Shadows.Parent = Frame
AmbientShadow.Name = "AmbientShadow"
AmbientShadow.Parent = Shadows
AmbientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
AmbientShadow.BackgroundTransparency = 1.000
AmbientShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
AmbientShadow.Position = UDim2.new(0.5, 0, 0.5, 3)
AmbientShadow.Size = UDim2.new(1, 5, 1, 5)
AmbientShadow.ZIndex = 0
AmbientShadow.Image = "rbxassetid://1316045217"
AmbientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
AmbientShadow.ImageTransparency = 0.800
AmbientShadow.ScaleType = Enum.ScaleType.Slice
AmbientShadow.SliceCenter = Rect.new(10, 10, 118, 118)
PenumbraShadow.Name = "PenumbraShadow"
PenumbraShadow.Parent = Shadows
PenumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
PenumbraShadow.BackgroundTransparency = 1.000
PenumbraShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
PenumbraShadow.Position = UDim2.new(0.5, 0, 0.5, 1)
PenumbraShadow.Size = UDim2.new(1, 18, 1, 18)
PenumbraShadow.ZIndex = 0
PenumbraShadow.Image = "rbxassetid://1316045217"
PenumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
PenumbraShadow.ImageTransparency = 0.880
PenumbraShadow.ScaleType = Enum.ScaleType.Slice
PenumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
UmbraShadow.Name = "UmbraShadow"
UmbraShadow.Parent = Shadows
UmbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
UmbraShadow.BackgroundTransparency = 1.000
UmbraShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
UmbraShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
UmbraShadow.Size = UDim2.new(1, 10, 1, 10)
UmbraShadow.ZIndex = 0
UmbraShadow.Image = "rbxassetid://1316045217"
UmbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
UmbraShadow.ImageTransparency = 0.860
UmbraShadow.ScaleType = Enum.ScaleType.Slice
UmbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(0, 34, 0, 33)
TextButton.Font = Enum.Font.MontserratBold
TextButton.Text = "BB"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000
TextButton_2.Parent = BB
TextButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.791284382, 0, 0.601612926, 0)
TextButton_2.Size = UDim2.new(0, 50, 0, 50)
TextButton_2.Visible = false
TextButton_2.Font = Enum.Font.MontserratBold
TextButton_2.Text = "BB"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 18.000
Shadows_2.Name = "Shadows"
Shadows_2.Parent = TextButton_2
AmbientShadow_2.Name = "AmbientShadow"
AmbientShadow_2.Parent = Shadows_2
AmbientShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
AmbientShadow_2.BackgroundTransparency = 1.000
AmbientShadow_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
AmbientShadow_2.Position = UDim2.new(0.5, 0, 0.5, 3)
AmbientShadow_2.Size = UDim2.new(1, 5, 1, 5)
AmbientShadow_2.ZIndex = 0
AmbientShadow_2.Image = "rbxassetid://1316045217"
AmbientShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
AmbientShadow_2.ImageTransparency = 0.800
AmbientShadow_2.ScaleType = Enum.ScaleType.Slice
AmbientShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)
PenumbraShadow_2.Name = "PenumbraShadow"
PenumbraShadow_2.Parent = Shadows_2
PenumbraShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
PenumbraShadow_2.BackgroundTransparency = 1.000
PenumbraShadow_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
PenumbraShadow_2.Position = UDim2.new(0.5, 0, 0.5, 1)
PenumbraShadow_2.Size = UDim2.new(1, 18, 1, 18)
PenumbraShadow_2.ZIndex = 0
PenumbraShadow_2.Image = "rbxassetid://1316045217"
PenumbraShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
PenumbraShadow_2.ImageTransparency = 0.880
PenumbraShadow_2.ScaleType = Enum.ScaleType.Slice
PenumbraShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)
UmbraShadow_2.Name = "UmbraShadow"
UmbraShadow_2.Parent = Shadows_2
UmbraShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
UmbraShadow_2.BackgroundTransparency = 1.000
UmbraShadow_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
UmbraShadow_2.Position = UDim2.new(0.5, 0, 0.5, 6)
UmbraShadow_2.Size = UDim2.new(1, 10, 1, 10)
UmbraShadow_2.ZIndex = 0
UmbraShadow_2.Image = "rbxassetid://1316045217"
UmbraShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
UmbraShadow_2.ImageTransparency = 0.860
UmbraShadow_2.ScaleType = Enum.ScaleType.Slice
UmbraShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)
local Set = {
   [" "] = "\u{0008}"
}
local buildBypass = function(text)
    local result = ""

    for i = 1, #text do
        local char = text:sub(i, i)
        local transformed_char = Set[char] or char
        result = result .. transformed_char .. "\u{06D4}"
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
	"How is it going?"
}
local function replace(input)
	local output = ""

	for i = 1, #input do
		local char = input:sub(i, i)
		local found = false

		for j = 1, #normal do
			if char == normal[j] then
				output = output .. bypass[j]
				found = true
				break
			end
		end

		if not found then
			output = output .. char
		end
	end

	return input
end
local chat = function(_string)
	if game.TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
		game.TextChatService.TextChannels.RBXGeneral:SendAsync(_string, "All");
	else
		game:GetService('ReplicatedStorage').DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_string, 'All')
	end
end
local baitfire = function()
	game.Players:Chat(bait[math.random(1, #bait)])
end
function KeyD(key)
	key = key:lower()
	if key == "b" then
		wait()
		TextBox:CaptureFocus()
	end
end
game.Players.LocalPlayer:GetMouse().KeyDown:connect(KeyD)
TextBox.FocusLost:connect(function(enterPressed)
	if enterPressed and TextBox.Text ~= "" then 
		baitfire()

		    chat(buildBypass(TextBox.Text))
		

		baitfire()
	end
end)
TextButton_2.MouseButton1Down:Connect(function()
	Frame.Visible = true
	TextButton_2.Visible = false
end)
TextButton.MouseButton1Down:Connect(function()
	Frame.Visible = false
	TextButton_2.Visible = true
end)
coroutine.wrap(function()
	while wait(2) do
		baitfire()
	end
end)()
