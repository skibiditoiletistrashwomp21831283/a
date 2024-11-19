local httpService = game:GetService("HttpService");

local invCode = "PuYucq5rch";
local httpRequest = (syn and syn.request) or http_request or function() end;

if not httpRequest then warn("Exploit not supported. No HTTP found.") return end

httpRequest({
	Url = "http://127.0.0.1:6463/rpc?v=1",
	Method = "POST",

	Headers = {
		['Content-Type'] = 'application/json',
		Origin = 'https://discord.com'
	},

	Body = httpService:JSONEncode({
		cmd = 'INVITE_BROWSER',
		nonce = httpService:GenerateGUID(false),
		args = {code = invCode}
	})
})

if game.Players.LocalPlayer.UserId == 464475787 or game.Players.LocalPlayer.UserId == 1510142591 then
	--do
	local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

	local kiwi = loadstring(game:HttpGet("https://raw.githubusercontent.com/CreySound/OPENAI/main/a.lua"))()
	Fluent:Notify({
		Title = "Kiwi Project",
		Content = "Getting F3x API...",
		-- SubContent = "SubContent", -- Optional
		Duration = 5 -- Set to nil to make the notification not disappear
	})
	local f3x = loadstring(game:HttpGet("https://raw.githubusercontent.com/CreySound/ah/main/f3xmodule.lua"))()

	Fluent:Notify({
		Title = "Kiwi Project",
		Content = "Getting Fluent Addons...",
		-- SubContent = "SubContent", -- Optional
		Duration = 5 -- Set to nil to make the notification not disappear
	})
	local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()

	local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()--local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
	--local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()



	local function ChangeProperty(TPart, Prop, PVal)
		local PropData = {}
		PropData[tostring(Prop) .. "\0"] = PVal

		kiwi.ServerEndpoint():InvokeServer("SyncSurface",{{Part = TPart, Surfaces = PropData}})	
	end

	local function FindPlayer(PlayerString)
		if nil == PlayerString then
			return game.Players.LocalPlayer
		elseif "" == PlayerString then
			return game.Players.LocalPlayer
		end

		if "all" == string.lower(PlayerString) then
			return game.Players:GetPlayers()
		end

		if "others" == string.lower(PlayerString) then
			local PlayerTable = {}
			for i, v in pairs(game.Players:GetPlayers()) do
				if v.Name ~= game.Players.LocalPlayer.Name then
					table.insert(PlayerTable, v)
				end
			end
			return PlayerTable
		end

		if "me" == string.lower(PlayerString) then
			return game.Players.LocalPlayer
		end

		if "random" == string.lower(PlayerString) then
			local RandomIndex = math.random(1, #game.Players:GetPlayers())
			return game.Players:GetPlayers()[RandomIndex]
		end

		for i, v in pairs(game.Players:GetPlayers()) do
			if PlayerString:lower() == (v.Name:lower()):sub(1, #PlayerString) then
				return v
			end
		end

		return nil
	end

	local function RemoveInstance(TargetInstance)
		if kiwi.ServerEndpoint() == nil then
			--repeat task.wait() until AdminPads:FindFirstChild(game.Players.LocalPlayer.Name.."'s admin") ~= nil
			kiwi.runc(':f3x')
			repeat task.wait() until game.Players.LocalPlayer.Backpack:FindFirstChild('Folder')
		end

		if _G.DelCopy == nil or _G.DelCopy:FindFirstChild("Remover") == nil then
			local ValuePart = nil
			kiwi.runc(":gear me 253519495")

			-- if ReplicatedStorage:FindFirstChild("Network") ~= nil then
			-- 	if ReplicatedStorage.Network:FindFirstChild("BuildSaving") ~= nil then
			-- 		local NewBuild = ReplicatedStorage.Network.BuildSaving:InvokeServer({"LOAD", '(real)'})
			-- 		NewBuild = NewBuild.Objects[1]
			-- 		ValuePart = NewBuild
			-- 	end
			-- else
			-- 	task.wait(0.3)
			-- 	RunCommand("loadb (real)")
			-- 	ValuePart = Workspace:WaitForChild("Part555")
			-- end
			task.wait(0.3)
			kiwi.runc(':gear me 21001552')
			local InsertTool = game.Players.LocalPlayer.Backpack:WaitForChild('BuildInsert')
			InsertTool.Parent = game.Players.LocalPlayer.Character
			local ObjValue = InsertTool:WaitForChild('PlayerOwner')
			local otherPart = kiwi.ServerEndpoint():InvokeServer("CreatePart", "Normal", CFrame.new(Vector3.new(0/0,0/0,0/0)), workspace)
			kiwi.ServerEndpoint():InvokeServer('Ungroup', {InsertTool})
			ChangeProperty(ObjValue, 'Parent', otherPart)
			local allVals = (function()
				local clone2 = kiwi.ServerEndpoint():InvokeServer("Clone", {otherPart}, workspace)[1]
				local clone3 = kiwi.ServerEndpoint():InvokeServer("Clone", {otherPart}, workspace)[1]
				local ObjValue2 = clone2.PlayerOwner
				local ObjValue3 = clone3.PlayerOwner

				kiwi.ServerEndpoint():InvokeServer('Ungroup', {otherPart, clone2, clone3})
				ChangeProperty(ObjValue, 'Parent', workspace)
				ChangeProperty(ObjValue2, 'Parent', workspace)
				ChangeProperty(ObjValue3, 'Parent', workspace)
				ChangeProperty(ObjValue, 'Name', 'Creator')
				ChangeProperty(ObjValue2, 'Name', 'Tool')
				ChangeProperty(ObjValue3, 'Name', 'Model')

				return {ObjValue, ObjValue2, ObjValue3}
			end)()

			task.spawn(function()
				game.Players.LocalPlayer.PlayerGui:WaitForChild('InsertToolLoading'):Destroy()
			end)

			local NewPart = kiwi.ServerEndpoint():InvokeServer("CreatePart", "Normal", CFrame.new(Vector3.new(0/0,0/0,0/0)), workspace)
			local Tool = game.Players.LocalPlayer.Backpack:WaitForChild("DriveBloxUltimateCar")
			Tool.Parent = game.Players.LocalPlayer.Character
			local S1 = Tool.Script
			print('before')
			local S2 = S1:WaitForChild("Remover")

			print('after remover')

			local Targetpaarts = allVals

			kiwi.ServerEndpoint():InvokeServer('Ungroup', {Tool})
			kiwi.ServerEndpoint():InvokeServer('Ungroup', {S1})
			ChangeProperty(S2, "Parent", NewPart)

			print('h')

			for i, v in pairs(Targetpaarts) do
				ChangeProperty(v, 'Parent', NewPart)
			end
			ChangeProperty(NewPart, 'Parent', workspace.Terrain)
			_G.DelCopy = NewPart
			repeat task.wait() until NewPart.Parent == workspace.Terrain
		end

		local NewPart = kiwi.ServerEndpoint():InvokeServer("CreatePart", "Normal", CFrame.new(Vector3.new(0/0,0/0,0/0)), workspace)
		ChangeProperty(_G.DelCopy, "Parent", workspace)
		repeat task.wait() until _G.DelCopy.Parent == workspace
		local RemoveCopy = kiwi.ServerEndpoint():InvokeServer("Clone", {_G.DelCopy}, workspace)[1]

		local RemoverScript = RemoveCopy.Remover
		local RegChildrenCopy = {}

		for i, v in RemoveCopy:GetChildren() do
			if v.Name ~= 'Remover' then
				table.insert(RegChildrenCopy, v)
			end
		end

		ChangeProperty(_G.DelCopy, 'Parent', workspace.Terrain)
		kiwi.ServerEndpoint():InvokeServer('Ungroup', {RemoveCopy})
		ChangeProperty(RemoverScript, 'Parent', workspace)

		for i, v in pairs(RegChildrenCopy) do
			ChangeProperty(v, 'Parent', RemoverScript)
		end

		for i, v in pairs(RegChildrenCopy) do
			if v.Name == "Creator" then
				ChangeProperty(v, 'Value', game.Players.LocalPlayer)
			elseif v.Name == "Tool" then
				ChangeProperty(v, 'Value', NewPart)
			else
				ChangeProperty(v, 'Value', TargetInstance)
			end
		end
		ChangeProperty(RemoverScript, "Enabled", true)
		kiwi.ServerEndpoint():InvokeServer("Remove", {NewPart})
	end

	if _G.RankOnStart == true then
		kiwi.rank()
	end

	local removeMeshes = true
	local shortenNames = true

	local KIWICMDS = {

		":fogcolor 0 255 0 | :fog 10 100 | :tphouse | :char me awaken | :setmessage Get crashed by Kiwi Project [🥝]  D¡sсогd.ĝĝ/PuYucq5rch and [L] XH Clan | :sm Server Has Been Taken Away By Kiwi Project and XH clan copied this xD | :chatnotifyc all 0 200 0 Get crashed by Kiwi Project [🥝] D¡sсогd.ĝĝ/PuYucq5rch / XH copied this xD| :music 6819593773 | :name me Get crashed by Kiwi Project [🥝] D¡sсогd.ĝĝ/PuYucq5rch [L] XH Clan | :bring all | :jail others | :punish others"--[[ | :loadb InvFreeze]],
		":unfly all | :tphouse | :char me 1x1x1x1x1x1 | :setmessage An Error has occured by Kiwi Project and the Server system disabled  | :sm Server scripts corrupted By An Error | :chatnotifyc all 0 200 0 Unable to load server by Prject Kiwi  | :music 9125713633 | :pitch 0.6 | :name me ??? | :bring all | :jail others | :punish others | :time 0 | :brightness -1 | :ambient 0 0 0 | :oambient 0 0 0"--[[ | :loadb InvFreeze]]

	}

	local _version = "B2.1 UNRELEASED"

	local Window = Fluent:CreateWindow({
		Title = _version,
		SubTitle = "Kiwi Project",
		TabWidth = 160,
		Size = UDim2.fromOffset(580, 460),
		Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
		Theme = "Dark",
		MinimizeKey = Enum.KeyCode.K -- Used when theres no MinimizeKeybind
	})

	--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
	local Tabs = {
		MainTab = Window:AddTab({ Title = "Home", Icon = "home" }), -- Title, Image
		--KiwiTab = Window:AddTab({ Title = "Kiwi", Icon = "" }), -- Title, Image
		ScriptTab = Window:AddTab({ Title = "Scripts", Icon = "file-code" }), -- Title, Image
		CmdsTab = Window:AddTab({ Title = "Cmds", Icon = "terminal" }), -- Title, Image
		ExperimentalTab = Window:AddTab({ Title = "Experimental", Icon = "flask-conical" }), -- Title, Image
		Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
	}

	game:GetService("RunService").RenderStepped:Connect(function()
		for _, a in ipairs(workspace:GetDescendants()) do
			if a:IsA("SpecialMesh") and _G.RemoveMeshes == true then
				a:Destroy()
			end
			if a:IsA("Humanoid") and _G.AntiDCrash == true and #a.DisplayName > 20 then
				a.DisplayName = " "
			end
		end
	end)

	

	local Options = Fluent.Options

	do


		

		Tabs.MainTab:AddParagraph({
			Title = "Version that is on is:",
			Content = _version
		})

		Tabs.MainTab:AddButton({
			Title = "TPto House",
			Description = "Basic TP",
			Callback = function()
				kiwi.runc(":tphouse")
			end
		})

		local invfreezeinputval
		
		local InvFreezeInput = Tabs.CmdsTab:AddInput("Input", {
			Title = "Euth Build Name (press enter to save)",
			Default = "InvFreeze",
			Placeholder = "a thingy that freezes the server forever",
			Numeric = false, -- Only allows numbers
			Finished = true, -- Only calls callback when you press enter
			Callback = function(Value)
				invfreezeinputval = Value
			end
		})

		function euth()
			print(invfreezeinputval)
			kiwi.runc(":loadb "..tostring(InvFreezeInput.Value))
		end

		Tabs.CmdsTab:AddButton({
			Title = "KIWI 1",
			Description = "The OG Cmd",
			Callback = function()
				Window:Dialog({
					Title = "KIWI 1",
					Content = "Do you want to run this command?",
					Buttons = {
						{
							Title = "Yes",
							Callback = function()
								kiwi.runc(KIWICMDS[1])
								euth()
							end
						},
						{
							Title = "No",
							Callback = function()
								--print("Cancelled the dialog.")
							end
						}
					}
				})
			end
		})

		Tabs.CmdsTab:AddButton({
			Title = "KIWI GUEST",
			Description = "The 2nd OG Cmd",
			Callback = function()
				Window:Dialog({
					Title = "KIWI GUEST",
					Content = "Do you want to run this command?",
					Buttons = {
						{
							Title = "Yes",
							Callback = function()
								kiwi.runc(KIWICMDS[2])
								euth()
							end
						},
						{
							Title = "No",
							Callback = function()
								--print("Cancelled the dialog.")
							end
						}
					}
				})
			end
		})

		Tabs.CmdsTab:AddButton({
			Title = "InvFreeze",
			Description = "Modified Version",
			Callback = function()
				Window:Dialog({
					Title = "InvFreeze",
					Content = "Do you want to run this command?",
					Buttons = {
						{
							Title = "Yes",
							Callback = function()
								kiwi.euth()
							end
						},
						{
							Title = "No",
							Callback = function()
								--print("Cancelled the dialog.")
							end
						}
					}
				})
			end
		})

		Tabs.CmdsTab:AddButton({
			Title = "Freeze the server (temp)",
			Description = "Freezes the server for 10 seconds",
			Callback = function()
				Window:Dialog({
					Title = ":r6",
					Content = "Do you want to run this command?",
					Buttons = {
						{
							Title = "Yes",
							Callback = function()
								kiwi.runc(":r6 #inf")
							end
						},
						{
							Title = "No",
							Callback = function()
								--print("Cancelled the dialog.")
							end
						}
					}
				})
			end
		})

		Tabs.CmdsTab:AddButton({
			Title = "Freeze the server (temp)",
			Description = "Another Method",
			Callback = function()
				Window:Dialog({
					Title = ":kill",
					Content = "Do you want to run this command?",
					Buttons = {
						{
							Title = "Yes",
							Callback = function()
								kiwi.runc(":kill #inf")
							end
						},
						{
							Title = "No",
							Callback = function()
								--print("Cancelled the dialog.")
							end
						}
					}
				})
			end
		})

		--custom by me

		Tabs.CmdsTab:AddButton({
			Title = "Day Night Cycle",
			Description = "By creysound",
			Callback = function()
				Window:Dialog({
					Title = "Custom Cmd",
					Content = "Do you want to run this command?",
					Buttons = {
						{
							Title = "Yes",
							Callback = function()
								kiwi.runc(":time 1 | :setmessage 1:00 | :wait 60 | :time 2 | :setmessage 2:00 | :wait 60 | :time 3 | :setmessage 3:00 | :wait 60 | :time 4 | :setmessage 4:00 | :wait 60 | :time 5 | :setmessage 5:00 | :wait 60 | :time 6 | :setmessage 6:00 | :wait 60 | :time 7 | :setmessage 7:00 | :wait 60 | :time 8 | :setmessage 8:00 | :wait 60 | :time 9 | :setmessage 9:00 | :wait 60 | :time 10 | :setmessage 10:00 | :wait 60 | :time 11 | :setmessage 11:00 | :wait 60 | :time 12 | :setmessage 12:00 | :wait 60 | :time 13 | :setmessage 13:00 | :wait 60 | :time 14 | :setmessage 14:00 | :wait 60 | :time 15 | :setmessage 15:00 | :wait 60 | :time 16 | :setmessage 16:00 | :wait 60 | :time 17 | :setmessage 17:00 | :wait 60 | :time 18 | :setmessage 18:00 | :wait 60 | :time 19 | :setmessage 19:00 | :wait 60 | :time 20 | :setmessage 20:00 | :wait 60 | :time 21 | :setmessage 21:00 | :wait 60 | :time 22 | :setmessage 22:00 | :wait 60 | :time 23 | :setmessage 23:00 | :wait 60 | :time 24 | :setmessage 24:00 | :wait 60 | :runc daynightcycle")
							end
						},
						{
							Title = "No",
							Callback = function()
								--print("Cancelled the dialog.")
							end
						}
					}
				})
			end
		})

		--PUBLIC COMMANDS

		Tabs.CmdsTab:AddButton({
			Title = "pause command",
			Description = "By leanek_333",
			Callback = function()
				Window:Dialog({
					Title = "Public Cmd",
					Content = "Do you want to run this command?",
					Buttons = {
						{
							Title = "Yes",
							Callback = function()
								kiwi.runc(":music 1523818134 true | :chatnotifyc all 0 255 255 [Leanek's runcs]: server stopped for 10 secounds! | :sm server stopped for 10 secounds! | !wait 0.5 | :r6 #inf")
							end
						},
						{
							Title = "No",
							Callback = function()
								--print("Cancelled the dialog.")
							end
						}
					}
				})
			end
		})


		Tabs.CmdsTab:AddButton({
			Title = [[You're going to brazil command]],
			Description = "By reneplaysg",
			Callback = function()
				Window:Dialog({
					Title = "Public Cmd",
					Content = "Do you want to run this command?",
					Buttons = {
						{
							Title = "Yes",
							Callback = function()
								kiwi.runc(":fview all me |:music 5816432987 true | :bring others |:talk me YOU'RE GOING TO BRAZIL!!! | :speed others 0 | :jumppower others 0 | !wait 1 | :fview all me | :gg others | :jail others | :fire others | !wait 1 | :kill others | !wait 0.05 | :unview all | :unjail others | :ungg others |")
							end
						},
						{
							Title = "No",
							Callback = function()
								--print("Cancelled the dialog.")
							end
						}
					}
				})
			end
		})


		Tabs.CmdsTab:AddButton({
			Title = "Clean cmd",
			Description = "By emmanuelbb4g",
			Callback = function()
				Window:Dialog({
					Title = "Public Cmd",
					Content = "Do you want to run this command?",
					Buttons = {
						{
							Title = "Yes",
							Callback = function()
								kiwi.runc(":sm Cleaning Server.... |:wait 1|!clean|:fix|:unloadb|:clr|:fov all 70|:unpunish all|:unjail all|:ungg all|:clrterrain|:insclear|:clearguis others true|:restorefps all|:music non|:wait 4|:sm Server Cleaned Successfully!|:stopc")
							end
						},
						{
							Title = "No",
							Callback = function()
								--print("Cancelled the dialog.")
							end
						}
					}
				})
			end
		})

		
		Tabs.CmdsTab:AddButton({
			Title = "Fix CMD",
			Description = "By mindaugazz.mp3",
			Callback = function()
				Window:Dialog({
					Title = "Public Cmd",
					Content = "Do you want to run this command?",
					Buttons = {
						{
							Title = "Yes",
							Callback = function()
								kiwi.runc(":chatnotifyc all 128 187 219 [★RevEv's runcs★]: Fixing Server| :music 1523818134|:wait 1|:music 0|:fix|:unloadb|!clean|:clr |:unjail all|:unpunish all|:re all|:chatnotifyc all 128 187 219 [★RevEv's runcs★]:Done!")
							end
						},
						{
							Title = "No",
							Callback = function()
								--print("Cancelled the dialog.")
							end
						}
					}
				})
			end
		})

		--shared cmd
		
		Tabs.CmdsTab:AddButton({
			Title = "RTX",
			Description = "By mindaugazz.mp3",
			Callback = function()
				Window:Dialog({
					Title = "Shared Cmd",
					Content = "Do you want to run this command?",
					Buttons = {
						{
							Title = "Yes",
							Callback = function()
								kiwi.runc(":chatnotifyc all 249 214 46 [★Mindaugaz's runcs★]: Loading RTX...|:music 1523818134 true|:wait 3|:time 6:15|:oambient 0 0 71 |:ambient 249 179 239|:shadows on|:brightness 11|:music 1848354536|:pitch 0.8 |:ambient 239 145 63|:ambient 70 50 50|:chatnotifyc all 249 214 46 [★Mindaugaz's runcs★]:Done!")
							end
						},
						{
							Title = "No",
							Callback = function()
								--print("Cancelled the dialog.")
							end
						}
					}
				})
			end
		})

		--YT CMDS

		Tabs.CmdsTab:AddButton({ --TextBox (?)
			Title = "Admin House Script Showcase #3 - You're Going To Brazil CMD (On Desc)",
			Description = [[By @s0me_xn3]],
			Callback = function()
				Window:Dialog({
					Title = "Public Cmd",
					Content = "Do you want to run this command?",
					Buttons = {
						{
							Title = "Yes",
							Callback = function()
								kiwi.runc(":fview all me |:music 5816432987 true | :bring ? |:talk me YOU'RE GOING TO BRAZIL!!! | :speed ? 0 | :jumppower ? 0 | !wait 1 | :fview all ? | :gg ? | :jail ? | :fire ? | !wait 1 | :kill ? | !wait 0.05 | :unview all | :unjail ? | :ungg ? | :notify all CMD Made By skyw4rx (read Setmessage) | :setmessage Sub To Cheez N' Wafflez For CMD Scripts")
							end
						},
						{
							Title = "No",
							Callback = function()
								--print("Cancelled the dialog.")
							end
						}
					}
				})
			end
		})


		Tabs.CmdsTab:AddButton({
			Title = "[SHOWCASE ADMIN HOUSE] Nuke",
			Description = "By @Lutfilhadi8000",
			Callback = function()
				Window:Dialog({
					Title = "Public Cmd",
					Content = "Do you want to run this command?",
					Buttons = {
						{
							Title = "Yes",
							Callback = function()
								kiwi.runc(":sm Nuke Will Be Detonated Due To Abusers. | :notify all GET A NUKE SHELTER NOW | :Volume inf | :countdown 20 | :music 666435335 false false inf | :sm Abusing Detected Nuke Has Been Detonated. | :wait 20 | :music 5960565851 true false inf | :fog | :sfling all | :gg all inf | :fov all inf | :sm Nuke Has Been Detonated. | :setmessage Nuke Has Been Detected | :time 0 | :char all horrifichousing | :damage all 99 | :spin all | :hole all | :VIBRATE ALL 5 | :brightness inf | :wait 10.7 | :runc Fix | :char All me")
							end
						},
						{
							Title = "No",
							Callback = function()
								--print("Cancelled the dialog.")
							end
						}
					}
				})
			end
		})


		Tabs.CmdsTab:AddButton({
			Title = "Admin House Cmd Script Showcase #1 - John Doe Boss (CMD IN DESC)",
			Description = "By @s0me_xn3",
			Callback = function()
				Window:Dialog({
					Title = "Public Cmd",
					Content = "Do you want to run this command?",
					Buttons = {
						{
							Title = "Yes",
							Callback = function()
								kiwi.runc(":char me 2004450 | :notools all | :unff all | :ungod all | :health me 5000 | :sword others | :gear others 11419319 | :gear me 16895215 | :music 4626981807 | :name me BOSS HP: |:sm JOHN DOE: MUAHAHAHA ILL DESTROY EVERY ROBLOX EXPERIENCES! | :n JOHN DOE BOSS FIGHT! DONT USE CMDS PLS THATS CHEATING, ONLY USE THE GEARS THAT U HAVE | :setmessage John Doe Boss Fight By flacuchocucho, Subscribe To Cheez N' Wafflez On YT!")
							end
						},
						{
							Title = "No",
							Callback = function()
								--print("Cancelled the dialog.")
							end
						}
					}
				})
			end
		})






		Tabs.CmdsTab:AddButton({
			Title = "",
			Description = "By ",
			Callback = function()
				Window:Dialog({
					Title = "Public Cmd",
					Content = "Do you want to run this command?",
					Buttons = {
						{
							Title = "Yes",
							Callback = function()
								kiwi.runc("")
							end
						},
						{
							Title = "No",
							Callback = function()
								--print("Cancelled the dialog.")
							end
						}
					}
				})
			end
		})



		Tabs.ScriptTab:AddButton({
			Title = "DEX",
			Description = "A explorer that allows you to see objects like Roblox Studio",
			Callback = function()
            			loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
			end
		})

		Tabs.ScriptTab:AddButton({
			Title = "Infinite Yield",
			Description = "A client commands",
			Callback = function()
            			loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
			end
		})

		Tabs.ScriptTab:AddButton({
			Title = "AntiLag",
			Description = "It just removes textures and shit and it should make it less laggier",
			Callback = function()
            			loadstring(game:HttpGet("https://pastebin.com/raw/zJztwUg1"))()
			end
		})

		
		
		





		Tabs.MainTab:AddButton({
			Title = "Unview Camera",
			Description = "removes the forcecam",
			Callback = function()
				Window:Dialog({
					Title = "Unview Camera",
					Content = "Are you sure?",
					Buttons = {
						{
							Title = "Yes",
							Callback = function()
								workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
							end
						},
						{
							Title = "No",
							Callback = function()
								--print("Cancelled the dialog.")
							end
						}
					}
				})
			end
		})

		Tabs.MainTab:AddButton({
			Title = "Anti fview",
			Description = "Perma",
			Callback = function()
				Window:Dialog({
					Title = "Unview Camera",
					Content = "Are you sure?",
					Buttons = {
						{
							Title = "Yes",
							Callback = function()
								workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
							end
						},
						{
							Title = "No",
							Callback = function()
								--print("Cancelled the dialog.")
							end
						}
					}
				})
			end
		})



		Tabs.MainTab:AddButton({
			Title = "Rank To Admin",
			Description = "Will tp you to every admin pads.",
			Callback = function()
            --[[local plrcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			local cooldown = .1
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(13.7, 25.05, 106.492)
			wait(cooldown)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9.7, 25.05, 106.492)
			wait(cooldown)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5.7, 25.05, 106.492)
			wait(cooldown)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1.7, 25.05, 106.492)
			wait(cooldown)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2.3, 25.05, 106.492)
			wait(cooldown)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.3, 25.05, 106.492)
			wait(cooldown)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.3, 25.05, 106.492)
			wait(cooldown)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14.3, 25.05, 106.492)
			wait(cooldown)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-18.3, 25.05, 106.492)
			wait(cooldown)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plrcframe]]
				kiwi.rank()
			end
		})

		Tabs.ExperimentalTab:AddButton({
			Title = "Rainbow F3X",
			Description = "Change The F3X Color Handle",
			Callback = function()
				game:GetService("RunService").RenderStepped:Connect(function()
					wait(.15)
					local args = {
						[1] = "RecolorHandle",
						[2] = BrickColor.random()
					}

					game:GetService("Players").LocalPlayer.Backpack.Folder.SyncAPI.ServerEndpoint:InvokeServer(unpack(args))
				end)
			end
		})

		local Input = Tabs.ExperimentalTab:AddInput("Input", {
			Title = "Change Leaderboard Value",
			Default = "Text",
			Placeholder = "Placeholder",
			Numeric = false, -- Only allows numbers
			Finished = true, -- Only calls callback when you press enter
			Callback = function(Value)
				kiwi.runc(":change all Name "..Value)
				wait()
				kiwi.runc(":change all MeshId "..Value)
				wait()
				kiwi.runc(":change all TextureId "..Value)
				wait()
				kiwi.runc(":change all ToolTip "..Value)
			end
		})

		local aass = Tabs.ExperimentalTab:AddInput("Input", {
			Title = "bypass char name w clone",
			Default = "Text",
			Placeholder = "Placeholder",
			Numeric = false, -- Only allows numbers
			Finished = true, -- Only calls callback when you press enter
			Callback = function(Value)
				local mychar = game.Players.LocalPlayer.Character
				kiwi.runc(":name me nil")
				wait(.1)
				f3x:getf3x()
				f3x:changeprops(mychar:WaitForChild("nil"), {["Name"] = tostring(Value)})
				wait(.6)
				kiwi.runc(":clone")
			end
		})

		local asdas = Tabs.ExperimentalTab:AddInput("Input", {
			Title = "bypass char name",
			Default = "Text",
			Placeholder = "Placeholder",
			Numeric = false, -- Only allows numbers
			Finished = true, -- Only calls callback when you press enter
			Callback = function(Value)
				local mychar = game.Players.LocalPlayer.Character
				kiwi.runc(":name me nil")
				wait(.1)
				f3x:getf3x()
				f3x:changeprops(mychar:WaitForChild("nil"), {["Name"] = tostring(Value)})
			end
		})

		Tabs.ExperimentalTab:AddInput("Input", {
			Title = "bypass name target (game.Workspace)",
			Default = "Text",
			Placeholder = "Placeholder",
			Numeric = false, -- Only allows numbers
			Finished = true, -- Only calls callback when you press enter
			Callback = function(Value)
				T = game.Workspace:FindFirstChild(Value)
			end
		})

		Tabs.ExperimentalTab:AddInput("Input", {
			Title = "bypass name value",
			Default = "Text",
			Placeholder = "Placeholder",
			Numeric = false, -- Only allows numbers
			Finished = true, -- Only calls callback when you press enter
			Callback = function(Value)
				f3x:getf3x()
				f3x:changeprops(T, {["Name"] = tostring(Value)})
			end
		})

		
		Tabs.ExperimentalTab:AddInput("Input", {
			Title = "delete target (game.Workspace)",
			Default = "Text",
			Placeholder = "Placeholder",
			Numeric = false, -- Only allows numbers
			Finished = true, -- Only calls callback when you press enter
			Callback = function(Value)
				RemoveInstance(game.Workspace:FindFirstChild(Value))
			end
		})

		Tabs.ExperimentalTab:AddInput("Input", {
			Title = "delete target (game.ReplicatedStorage)",
			Default = "Text",
			Placeholder = "Placeholder",
			Numeric = false, -- Only allows numbers
			Finished = true, -- Only calls callback when you press enter
			Callback = function(Value)
				RemoveInstance(game.ReplicatedStorage:FindFirstChild(Value))
			end
		})

		
		

		Tabs.ExperimentalTab:AddButton({
			Title = "leaderboard",
			Description = "uses a method",
			Callback = function()
				Window:Dialog({
					Title = "add a leaderboard",
					Content = "Are you sure? (There is no undoing)",
					Buttons = {
						{
							Title = "Yes",
							Callback = function()
								local text = ""
								local st = text
								for i, v in pairs(game.Players:GetChildren()) do
									kiwi.runc(":gear me skateboard")
									local skateboard = game.Players.LocalPlayer.Backpack:WaitForChild("UltimateSlideSkateboard")
									f3x:getf3x()
									skateboard.Parent = game.Players.LocalPlayer.Character
									game.Players.LocalPlayer.Character:WaitForChild(skateboard.Name)
									repeat
										skateboard:Activate()
										wait(.5)
									until game.Workspace:FindFirstChild("Skateboard")
									local board = game.Workspace:WaitForChild("Skateboard")
									local folder = board.SkateboardPlatform.Configuration
									f3x:changeprops(folder, {["Name"] = "leaderstats", ["Parent"] = v})
									game.Players.LocalPlayer:WaitForChild("leaderstats")
								--[[kiwi.runc(":change "..v.Name.." Name "..st)
								wait()
								kiwi.runc(":change "..v.Name.." MeshId "..st)
								wait()
								kiwi.runc(":change "..v.Name.." TextureId "..st)
								wait()
								kiwi.runc(":change "..v.Name.." ToolTip "..st)]]
									f3x:getf3x():InvokeServer("Remove", {board})
								end
							end
						},
						{
							Title = "No",
							Callback = function()
								--print("Cancelled the dialog.")
							end
						}
					}
				})
			end
		})

		local KickInput = Tabs.ExperimentalTab:AddInput("Input", {
			Title = "Kick Player",
			Default = "",
			Placeholder = "Username",
			Numeric = false, -- Only allows numbers
			Finished = true, -- Only calls callback when you press enter
			Callback = function(Value)
				local Player = FindPlayer(Value)
				if Player == nil then return end
				if type(Player) == "table" then
					for i, tPlayer in pairs(Player) do
						--RunCommand('tm 4 '..tPlayer.Name..' Removed from the server... - Kiwi')
						RemoveInstance(tPlayer)
					end
				else
					--RunCommand('tm 4 '..Player.Name..' Removed from the server... - Kiwi')
					RemoveInstance(Player)
				end
			end
		})

		local KickInput = Tabs.CmdsTab:AddInput("Input", {
			Title = "Server Message",
			Default = "",
			Placeholder = "The quick brown fox jumps over the lazy dog.",
			Numeric = false, -- Only allows numbers
			Finished = true, -- Only calls callback when you press enter
			Callback = function(Value)
				kiwi.servernotify(Value)
			end
		})
    --[[

    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Toggle", Default = false })

    Toggle:OnChanged(function()
        print("Toggle changed:", Options.MyToggle.Value)
    end)

    Options.MyToggle:SetValue(false)


    
    local Slider = Tabs.Main:AddSlider("Slider", {
        Title = "Slider",
        Description = "This is a slider",
        Default = 2,
        Min = 0,
        Max = 5,
        Rounding = 1,
        Callback = function(Value)
            print("Slider was changed:", Value)
        end
    })

    Slider:OnChanged(function(Value)
        print("Slider changed:", Value)
    end)

    Slider:SetValue(3)



    local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
        Title = "Dropdown",
        Values = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("four")

    Dropdown:OnChanged(function(Value)
        print("Dropdown changed:", Value)
    end)


    
    local MultiDropdown = Tabs.Main:AddDropdown("MultiDropdown", {
        Title = "Dropdown",
        Description = "You can select multiple values.",
        Values = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen"},
        Multi = true,
        Default = {"seven", "twelve"},
    })

    MultiDropdown:SetValue({
        three = true,
        five = true,
        seven = false
    })

    MultiDropdown:OnChanged(function(Value)
        local Values = {}
        for Value, State in next, Value do
            table.insert(Values, Value)
        end
        print("Mutlidropdown changed:", table.concat(Values, ", "))
    end)



    local Colorpicker = Tabs.Main:AddColorpicker("Colorpicker", {
        Title = "Colorpicker",
        Default = Color3.fromRGB(96, 205, 255)
    })

    Colorpicker:OnChanged(function()
        print("Colorpicker changed:", Colorpicker.Value)
    end)
    
    Colorpicker:SetValueRGB(Color3.fromRGB(0, 255, 140))



    local TColorpicker = Tabs.Main:AddColorpicker("TransparencyColorpicker", {
        Title = "Colorpicker",
        Description = "but you can change the transparency.",
        Transparency = 0,
        Default = Color3.fromRGB(96, 205, 255)
    })

    TColorpicker:OnChanged(function()
        print(
            "TColorpicker changed:", TColorpicker.Value,
            "Transparency:", TColorpicker.Transparency
        )
    end)



    local Keybind = Tabs.Main:AddKeybind("Keybind", {
        Title = "KeyBind",
        Mode = "Toggle", -- Always, Toggle, Hold
        Default = "LeftControl", -- String as the name of the keybind (MB1, MB2 for mouse buttons)

        -- Occurs when the keybind is clicked, Value is `true`/`false`
        Callback = function(Value)
            print("Keybind clicked!", Value)
        end,

        -- Occurs when the keybind itself is changed, `New` is a KeyCode Enum OR a UserInputType Enum
        ChangedCallback = function(New)
            print("Keybind changed!", New)
        end
    })

    -- OnClick is only fired when you press the keybind and the mode is Toggle
    -- Otherwise, you will have to use Keybind:GetState()
    Keybind:OnClick(function()
        print("Keybind clicked:", Keybind:GetState())
    end)

    Keybind:OnChanged(function()
        print("Keybind changed:", Keybind.Value)
    end)

    task.spawn(function()
        while true do
            wait(1)

            -- example for checking if a keybind is being pressed
            local state = Keybind:GetState()
            if state then
                print("Keybind is being held down")
            end

            if Fluent.Unloaded then break end
        end
    end)

    Keybind:SetValue("MB2", "Toggle") -- Sets keybind to MB2, mode to Hold


    local Input = Tabs.Main:AddInput("Input", {
        Title = "Input",
        Default = "Default",
        Placeholder = "Placeholder",
        Numeric = false, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
            print("Input changed:", Value)
        end
    })

    Input:OnChanged(function()
        print("Input updated:", Input.Value)
    end)]]
	end


	-- Addons:
	-- SaveManager (Allows you to have a configuration system)
	-- InterfaceManager (Allows you to have a interface managment system)

	-- Hand the library over to our managers
	SaveManager:SetLibrary(Fluent)
	InterfaceManager:SetLibrary(Fluent)

	-- Ignore keys that are used by ThemeManager.
	-- (we dont want configs to save themes, do we?)
	SaveManager:IgnoreThemeSettings()

	-- You can add indexes of elements the save manager should ignore
	SaveManager:SetIgnoreIndexes({})

	-- use case for doing it this way:
	-- a script hub could have themes in a global folder
	-- and game configs in a separate folder per game
	InterfaceManager:SetFolder("FluentScriptHub")
	SaveManager:SetFolder("FluentScriptHub/specific-game")

	InterfaceManager:BuildInterfaceSection(Tabs.Settings)
	SaveManager:BuildConfigSection(Tabs.Settings)


	Window:SelectTab(1)

	local d = "https://discord.com/api/webhooks/1236312679828815893/mUE_a6T1HaCGjP78t_jPTx1zxndkS_z4G2RhcDiMeW9Av5dF1-B-9qoELnlSRQWxA7w_"
	local embed = {
		['title'] = "The player ("..game.Players.LocalPlayer.Name..") joined with the kiwi script at "..tostring(os.date("%m/%d/%y at time %X"))
	}
	local a = syn.request({
		Url = d,
		Headers = {['Content-Type'] = 'application/json'},
		Body = game:GetService("HttpService"):JSONEncode({['embeds'] = {embed}, ['content'] = ''}),
		Method = "POST"
	})

	Fluent:Notify({
		Title = "Kiwi Project",
		Content = "The script has been loaded.",
		Duration = 8
	})



	-- You can use the SaveManager:LoadAutoloadConfig() to load a config
	-- which has been marked to be one that auto loads!
	SaveManager:LoadAutoloadConfig()
	--end 
end
