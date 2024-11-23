f3x = {
	endpoint = {
		Export = function(instances)
			local args = {
				[1] = "Export",
				[2] = instances
			}

			local success, newPart = pcall(function() 
				return game.Players.LocalPlayer.Character.F3X:FindFirstChildOfClass("BindableFunction"):FindFirstChildOfClass("RemoteFunction"):InvokeServer(unpack(args)) 
			end)

			if success and newPart then
				return newPart
			else
				warn("F3X Library Error: ", newPart)
			end
		end,
		
		RecolorHandle = function(brickcolor)
			local args = {
				[1] = "RecolorHandle",
				[2] = brickcolor
			}

			local success, newPart = pcall(function() 
				return game.Players.LocalPlayer.Character.F3X:FindFirstChildOfClass("BindableFunction"):FindFirstChildOfClass("RemoteFunction"):InvokeServer(unpack(args)) 
			end)

			if success and newPart then
				return newPart
			else
				warn("F3X Library Error: ", newPart)
			end
		end,

		EditProperties = function(Part, Props)
			local PropData = {}
			for i, v in next, Props do
				PropData[tostring(i) .. "\0"] = v
			end
			
			local success, newPart = pcall(function() 
				return game.Players.LocalPlayer.Character.F3X:FindFirstChildOfClass("BindableFunction"):FindFirstChildOfClass("RemoteFunction"):InvokeServer("SyncSurface", {{
					Part = Part,
					Surfaces = PropData
				}})
			end)

			if success and newPart then
				return newPart
			else
				warn("F3X Library Error: ", newPart)
			end

			
		end,

		Clone = function(instances, parent)
			local args = {
				[1] = "Clone",
				[2] = instances,
				[3] = parent
			}

			local success, newPart = pcall(function() 
				return game.Players.LocalPlayer.Character.F3X:FindFirstChildOfClass("BindableFunction"):FindFirstChildOfClass("RemoteFunction"):InvokeServer(unpack(args)) 
			end)

			if success and newPart then
				return newPart
			else
				warn("F3X Library Error: ", newPart)
			end
		end,

		CreatePart = function(shape, parent)
			local args = {
				[1] = "CreatePart",
				[2] = tostring(shape),
				[3] = CFrame.new(0,0,0),
				[4] = parent
			}

			local success, newPart = pcall(function() 
				return game.Players.LocalPlayer.Character.F3X:FindFirstChildOfClass("BindableFunction"):FindFirstChildOfClass("RemoteFunction"):InvokeServer(unpack(args)) 
			end)

			if success and newPart then
				return newPart
			else
				warn("F3X Library Error: ", newPart)
			end

		end,

		SetParent = function(instance, parent)
			f3x.EditProperties(instance, {
				["Parent"] = parent
			})
		end,

		SetName = function(instance, name)
			f3x.EditProperties(instance, {
				["Name"] = name
			})
		end,

		Remove = function(instance)
			local args = {
				[1] = "UndoRemove",
				[2] = instance
			}

			local success, newPart = pcall(function() 
				return game.Players.LocalPlayer.Character.F3X:FindFirstChildOfClass("BindableFunction"):FindFirstChildOfClass("RemoteFunction"):InvokeServer(unpack(args)) 
			end)

			if success and newPart then
				return newPart
			else
				warn("F3X Library Error: ", newPart)
			end
		end,

		Moveto = function(instance, cframe)
			f3x.EditProperties(instance, {
				["CFrame"] = cframe
			})
		end,

		Resizeto = function(instance, vector3)
			f3x.EditProperties(instance, {
				["Size"] = vector3
			})
		end,

		Rotateto = function(instance, vector3)
			f3x.EditProperties(instance, {
				["Rotation"] = vector3
			})
		end,

		Color = function(instance, color3)
			f3x.EditProperties(instance, {
				["Color"] = color3
			})
		end,


		ColorInstances = function(table) --{{Part:BasePart,Color:Color3},...} Changes Parts and their new colors
			local args = {
				[1] = "SyncColor",
				[2] = table
			}

			local success, newPart = pcall(function() 
				return game.Players.LocalPlayer.Character.F3X:FindFirstChildOfClass("BindableFunction"):FindFirstChildOfClass("RemoteFunction"):InvokeServer(unpack(args)) 
			end)

			if success and newPart then
				return newPart
			else
				warn("F3X Library Error: ", newPart)
			end
		end,

		AddLight = function(instance)
			local args = {
				[1] = "CreateLights",
				[2] = instance
			}

			local success, newPart = pcall(function() 
				return game.Players.LocalPlayer.Character.F3X:FindFirstChildOfClass("BindableFunction"):FindFirstChildOfClass("RemoteFunction"):InvokeServer(unpack(args)) 
			end)

			if success and newPart then
				return newPart
			else
				warn("F3X Library Error: ", newPart)
			end
		end,

		ChangeLights = function(instance, _type, value)
			if _type == "Range" then
				f3x.EditProperties(instance, {
					["Range"] = value
				})
			elseif _type == "Brightness" then
				f3x.EditProperties(instance, {
					["Brightness"] = value
				})
			elseif _type == "Color" then
				f3x.EditProperties(instance, {
					["Color"] = value
				})
			elseif _type == "Shadows" then
				f3x.EditProperties(instance, {
					["Shadows"] = value
				})
			elseif _type == "Face" then
				f3x.EditProperties(instance, {
					["Face"] = value
				})
			elseif _type == "Angle" then
				f3x.EditProperties(instance, {
					["Angle"] = value
				})
			end;
		end,

		CreateMeshes = function(instance)
			local args = {
				[1] = "CreateMeshes",
				[2] = instance
			}

			local success, newins = pcall(function() 
				return game.Players.LocalPlayer.Character.F3X:FindFirstChildOfClass("BindableFunction"):FindFirstChildOfClass("RemoteFunction"):InvokeServer(unpack(args)) 
			end)

			if success and newins then
				return newins
			else
				warn("Failed to create part:", newins)
			end
		end,
	},

	Core = {
		GrabSelectedParts = function()
			return require(game.Players.LocalPlayer.Character.F3X:FindFirstChild("Core")).Selection.Parts
		end,
	}
}

return f3x
