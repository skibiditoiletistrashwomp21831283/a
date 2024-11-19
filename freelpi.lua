-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.020030817, 0, 0.0355411954, 0)
Frame.Size = UDim2.new(0, 249, 0, 179)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 249, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "FE Hammer Bypass"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 27.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Position = UDim2.new(0.0963855386, 0, 0.329608947, 0)
TextButton.Size = UDim2.new(0, 200, 0, 38)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Get Hammer"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.Position = UDim2.new(0.0963855386, 0, 0.625698328, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 38)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Get F3x"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000

-- Scripts:

local function ZLHWTAF_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Down:Connect(function()
		--// Variables \\--
	
	local Hammer = Instance.new("Tool")
	
	--func
	local GetPath = function()
		local ToolName = "F3X" or "Building Tools"
		if not (game.Players.LocalPlayer.Character:FindFirstChild(ToolName) or game.Players.LocalPlayer.Backpack:FindFirstChild(ToolName)) then
			game.StarterGui:SetCore("SendNotification", {Title="FE Hammer", Text="Get F3X in order it to work!",Icon="rbxasset://Textures/Hammer.png",Duration=5});
			return nil
		else
			local Tool = game.Players.LocalPlayer.Character:FindFirstChild(ToolName) or game.Players.LocalPlayer.Backpack:FindFirstChild(ToolName)
			return Tool
		end
	
	
		
	end
		
		local Delete = function(instance, tool)
			tool:FindFirstChildOfClass("BindableFunction"):FindFirstChildOfClass("RemoteFunction"):InvokeServer("UndoRemove", {instance})
		end
	
	
	
	local destroy = function(ins)
		coroutine.wrap(function()
		local Tool = GetPath()
							local plr = game.Players.LocalPlayer
							
							if Tool.Parent == plr.Backpack then
								Tool.Parent = plr.Character
								wait()
								Delete(ins, Tool)
								wait()
								Tool.Parent = plr.Backpack
							elseif Tool.Parent == plr.Character then
								Delete(ins, Tool)
							end
	end)()
	end
	
	--// Properties \\--
	
	Hammer.GripUp = Vector3.new(-0.6427541375160217, 0.06673097610473633, -0.7631605267524719)
	Hammer.GripPos = Vector3.new(0.0000457763671875, 0.000030517578125, 0.000003814697265625)
	Hammer.GripRight = Vector3.new(0.000020802021026611328, -0.9961972832679749, -0.08712518215179443)
	Hammer.TextureId = "rbxasset://Textures/Hammer.png"
	Hammer.GripForward = Vector3.new(-0.7660724520683289, -0.05601590871810913, 0.6403086185455322)
	Hammer.Grip = CFrame.new(4.57763672e-05, 3.05175781e-05, 3.81469727e-06, 2.0802021e-05, -0.642754138, 0.766072452, -0.996197283, 0.0667309761, 0.0560159087, -0.0871251822, -0.763160527, -0.640308619)
	Hammer.Name = "Hammer"
	Hammer.Parent = game.Players.LocalPlayer.Backpack
	Hammer.RequiresHandle = false
	
	
	-- Variables
	local runservice = game:GetService("RunService")
	local player = game.Players.LocalPlayer
	local mouse = player:GetMouse()
	local tool = Hammer
	
	local toolmouse = nil -- Mouse from the equipped function, used for cursor stuff
	local rendersteppedevent = nil
	
	local selectionbox = Instance.new("SelectionBox")
	selectionbox.Color3 = Color3.fromRGB(223, 130, 0)
	selectionbox.LineThickness = 0.01
	selectionbox.Parent = tool
	
	-- Code
	
	tool.Activated:Connect(function()
	    local target = mouse.Target
	    if target and not target.Locked and target:IsDescendantOf(game) then
	        local hit = mouse.Hit
	        local primarypart = player.Character.PrimaryPart
	        if primarypart then
	            coroutine.wrap(function()
		destroy(target)
	end)()
	            --mousedownremote:FireServer(target)
	            --[[local explosionsound = Instance.new("Sound")
	            explosionsound.SoundId = "rbxasset://9458891856"
	            explosionsound.Parent = player
	            explosionsound.PlayOnRemove = true
	            explosionsound:Destroy()]]
	        end
	    end
	end)
	
	-- Equipped and Unequipped
	tool.Equipped:Connect(function(newtoolmouse)
	    toolmouse = newtoolmouse -- Set the toolmouse first
	    rendersteppedevent = runservice.RenderStepped:Connect(function()
	        local target = mouse.Target
	        local hit = mouse.Hit
	        local primarypart = player.Character.PrimaryPart
	        if target and not target.Locked and primarypart then
	            toolmouse.Icon = "rbxassetid://5814321639"
	            selectionbox.Adornee = target
	        else
	            toolmouse.Icon = "rbxassetid://5814320337"
	            selectionbox.Adornee = nil
	        end
	
	
			
	    end)
	end)
	
	tool.Unequipped:Connect(function()
	    if rendersteppedevent then
	        rendersteppedevent:Disconnect()
	        rendersteppedevent = nil
	    end
	
	    toolmouse = nil
	    selectionbox.Adornee = nil
	end)
	game.StarterGui:SetCore("SendNotification", {Title="FE Hammer", Text="Scripted by creysound",Icon="rbxasset://Textures/Hammer.png",Duration=5});
		
	end)
end
coroutine.wrap(ZLHWTAF_fake_script)()
local function CIBEXVA_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	local F3XSpawnPad = nil
		local BTOOLSpawnPad = nil
		local HumanoidRootPart = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
		
	
	
	local gettool = function(...)
			
	
			local SafePlate = game.Workspace:WaitForChild("SafePlate")
			local freegamepass = workspace["LPI Museum V.2 By Cobleth"]["Free  game pass"]
			
			for i, v in pairs(SafePlate.Mesh.Value:GetChildren()) do
				if v.Bricks:FindFirstChild("Bar") then
					F3XSpawnPad = v
					print(F3XSpawnPad.Name)
				end
			end
		
			for i, v in pairs(SafePlate.Mesh.Value:GetChildren()) do
				if v.Bricks:FindFirstChild("Smooth Block Model") then
					if v.Bricks:FindFirstChild("Smooth Block Model").Color == Color3.fromRGB(13, 105, 172) then
						BTOOLSpawnPad = v
						print(BTOOLSpawnPad.Name)
					end
				end
			end
		
		
			HumanoidRootPart = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
			if ... == "F3X" then
				local Bar = F3XSpawnPad.Bricks:WaitForChild("Bar")
				local prevcframe = HumanoidRootPart.CFrame
				Bar.CanCollide = false
				HumanoidRootPart.CFrame = Bar.CFrame
				wait(.25)
				HumanoidRootPart.CFrame = prevcframe
			elseif ... == "Btools" then
				local Bar = BTOOLSpawnPad.Bricks:FindFirstChild("Smooth Block Model")
				local prevcframe = HumanoidRootPart.CFrame
				Bar.CanCollide = false
				HumanoidRootPart.CFrame = Bar.CFrame
				wait(.25)
				HumanoidRootPart.CFrame = prevcframe
		
			elseif ... == "GameCard" then 
				local Bar = freegamepass["game card"]["PUT THE WEAPON IN THIS BRICK"]
				local prevcframe = HumanoidRootPart.CFrame
				Bar.CanCollide = false
				HumanoidRootPart.CFrame = Bar.CFrame
				wait(.25)
				HumanoidRootPart.CFrame = prevcframe
			elseif ... == "Knife" then
				local Bar = freegamepass["knife"]["PUT THE WEAPON IN THIS BRICK"]
				local prevcframe = HumanoidRootPart.CFrame
				Bar.CanCollide = false
				HumanoidRootPart.CFrame = Bar.CFrame
				wait(.25)
				HumanoidRootPart.CFrame = prevcframe
			elseif ... == "ToySword" then
				local Bar = freegamepass["sword"]["PUT THE WEAPON IN THIS BRICK"]
				local prevcframe = HumanoidRootPart.CFrame
				Bar.CanCollide = false
				HumanoidRootPart.CFrame = Bar.CFrame
				wait(.25)
				HumanoidRootPart.CFrame = prevcframe
			elseif ... == "FFPotion" then
				local Bar = freegamepass["FF potion"]["PUT THE WEAPON IN THIS BRICK"]
				local prevcframe = HumanoidRootPart.CFrame
				Bar.CanCollide = false
				HumanoidRootPart.CFrame = Bar.CFrame
				wait(.25)
				HumanoidRootPart.CFrame = prevcframe
			elseif ... == "Noob" then
				local Bar = freegamepass["Noob"]["PUT THE WEAPON IN THIS BRICK"]
				local prevcframe = HumanoidRootPart.CFrame
				Bar.CanCollide = false
				HumanoidRootPart.CFrame = Bar.CFrame
				wait(.25)
				HumanoidRootPart.CFrame = prevcframe
			elseif ... == "ItemGiver" then
				local Bar = freegamepass["Item Giver"]["PUT THE WEAPON IN THIS BRICK"]
				local prevcframe = HumanoidRootPart.CFrame
				Bar.CanCollide = false
				HumanoidRootPart.CFrame = Bar.CFrame
				wait(.25)
				HumanoidRootPart.CFrame = prevcframe
		
		
		
		
		
		
			elseif ... == "all" or ... == "All" then
				local Bar = F3XSpawnPad.Bricks:WaitForChild("Bar")
				local prevcframe = HumanoidRootPart.CFrame
				Bar.CanCollide = false
				HumanoidRootPart.CFrame = Bar.CFrame
				wait(.25)
				HumanoidRootPart.CFrame = prevcframe
				local Bar = BTOOLSpawnPad.Bricks:FindFirstChild("Smooth Block Model")
				local prevcframe = HumanoidRootPart.CFrame
				Bar.CanCollide = false
				HumanoidRootPart.CFrame = Bar.CFrame
				wait(.25)
				HumanoidRootPart.CFrame = prevcframe
				local Bar = freegamepass["game card"]["PUT THE WEAPON IN THIS BRICK"]
				local prevcframe = HumanoidRootPart.CFrame
				Bar.CanCollide = false
				HumanoidRootPart.CFrame = Bar.CFrame
				wait(.25)
				HumanoidRootPart.CFrame = prevcframe
				local Bar = freegamepass["knife"]["PUT THE WEAPON IN THIS BRICK"]
				local prevcframe = HumanoidRootPart.CFrame
				Bar.CanCollide = false
				HumanoidRootPart.CFrame = Bar.CFrame
				wait(.25)
				HumanoidRootPart.CFrame = prevcframe
				local Bar = freegamepass["sword"]["PUT THE WEAPON IN THIS BRICK"]
				local prevcframe = HumanoidRootPart.CFrame
				Bar.CanCollide = false
				HumanoidRootPart.CFrame = Bar.CFrame
				wait(.25)
				HumanoidRootPart.CFrame = prevcframe
				local Bar = freegamepass["FF potion"]["PUT THE WEAPON IN THIS BRICK"]
				local prevcframe = HumanoidRootPart.CFrame
				Bar.CanCollide = false
				HumanoidRootPart.CFrame = Bar.CFrame
				wait(.25)
				HumanoidRootPart.CFrame = prevcframe
				local Bar = freegamepass["Noob"]["PUT THE WEAPON IN THIS BRICK"]
				local prevcframe = HumanoidRootPart.CFrame
				Bar.CanCollide = false
				HumanoidRootPart.CFrame = Bar.CFrame
				wait(.25)
				HumanoidRootPart.CFrame = prevcframe
				local Bar = freegamepass["Item Giver"]["PUT THE WEAPON IN THIS BRICK"]
				local prevcframe = HumanoidRootPart.CFrame
				Bar.CanCollide = false
				HumanoidRootPart.CFrame = Bar.CFrame
				wait(.25)
				HumanoidRootPart.CFrame = prevcframe
			end
		end
	
	script.Parent.MouseButton1Down:Connect(function()
		gettool("F3X")
	end)
end
coroutine.wrap(CIBEXVA_fake_script)()
local function AMDOCHZ_fake_script() -- Frame.Dragify 
	local script = Instance.new('LocalScript', Frame)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(AMDOCHZ_fake_script)()

while wait() do
    for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Locked = false
		end
	end
end
