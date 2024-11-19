-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-10-22 18:02:54
-- Luau version 6, Types version 3
-- Time taken: 0.025676 seconds

SyncAPl = script.Parent -- Setting global
Tool = SyncAPl.Parent -- Setting global
Player = nil -- Setting global
RbxUtility = require(game:GetService("ReplicatedStorage").LoadLibrary.RbxUtility) -- Setting global
Support = require(Tool.SupportLibrary) -- Setting global
Security = require(Tool.SecurityModule) -- Setting global
RegionModule = require(Tool["Region by AxisAngle"]) -- Setting global
Serialization = require(Tool.SerializationModule) -- Setting global
Create = RbxUtility.Create -- Setting global
CreateSignal = RbxUtility.CreateSignal -- Setting global
Support.ImportServices()
Options = {
	DefaultPartParent = Workspace;
} -- Setting global
CreatedInstances = {} -- Setting global
LastParents = {} -- Setting global
if Tool:IsA("Tool") then
	ToolMode = "Tool" -- Setting global
elseif Tool:IsA("Model") then
	ToolMode = "Plugin" -- Setting global
end
Actions = {
	RecolorHandle = function(arg1) -- Line 37
		Tool.Handle.BrickColor = arg1
	end;
	Clone = function(arg1) -- Line 42
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if not ArePartsSelectable(arg1) then return end
		if Security.ArePartsViolatingAreas(arg1, Player, false, Security.GetPermissions(Security.GetSelectionAreas(arg1), Player)) then return end
		for _, v in pairs(arg1) do
			local clone = v:Clone()
			clone.Parent = Options.DefaultPartParent
			table.insert({}, clone)
			CreatedInstances[v] = v
			local var18
		end
		return var18
	end;
	CreatePart = function(arg1, arg2) -- Line 77
		local Support_CreatePart_result1 = Support.CreatePart(arg1)
		Support_CreatePart_result1.CFrame = arg2
		if Security.ArePartsViolatingAreas({Support_CreatePart_result1}, Player, false, Security.GetPermissions(Security.GetSelectionAreas({Support_CreatePart_result1}), Player)) then return end
		Support_CreatePart_result1.Parent = Options.DefaultPartParent
		CreatedInstances[Support_CreatePart_result1] = Support_CreatePart_result1
		return Support_CreatePart_result1
	end;
	Remove = function(arg1) -- Line 104
		local tbl_24 = {}
		for _, v_2 in pairs(arg1) do
			if v_2 then
				if v_2:IsA("BasePart") then
					table.insert(tbl_24, v_2)
				elseif v_2:IsA("Smoke") or v_2:IsA("Fire") or v_2:IsA("Sparkles") or v_2:IsA("DataModelMesh") or v_2:IsA("Decal") or v_2:IsA("Texture") or v_2:IsA("Light") then
					table.insert(tbl_24, v_2.Parent)
				end
			end
		end
		if not ArePartsSelectable(tbl_24) then
		else
			if Security.ArePartsViolatingAreas(tbl_24, Player, true, Security.GetPermissions(Security.GetSelectionAreas(tbl_24), Player)) then return end
			for _, v_38 in pairs(tbl_24) do
				LastParents[v_38] = v_38.Parent
				CreatedInstances[v_38] = v_38
				v_38.Parent = nil
			end
		end
	end;
	UndoRemove = function(arg1) -- Line 156
		local tbl_26 = {}
		for _, v_3 in pairs(arg1) do
			if v_3 and LastParents[v_3] then
				if v_3:IsA("BasePart") then
					table.insert(tbl_26, v_3)
				elseif v_3:IsA("Smoke") or v_3:IsA("Fire") or v_3:IsA("Sparkles") or v_3:IsA("DataModelMesh") or v_3:IsA("Decal") or v_3:IsA("Texture") or v_3:IsA("Light") then
					table.insert(tbl_26, v_3.Parent)
				end
			end
		end
		if not ArePartsSelectable(tbl_26) then
		else
			if Security.ArePartsViolatingAreas(tbl_26, Player, false, Security.GetPermissions(Security.GetSelectionAreas(tbl_26), Player)) then return end
			for _, v_39 in pairs(arg1) do
				LastParents[v_39] = v_39.Parent
				CreatedInstances[v_39] = v_39
				v_39.Parent = LastParents[v_39]
			end
		end
	end;
	SyncMove = function(arg1) -- Line 209
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local tbl_12 = {}
		for _, v_4 in pairs(arg1) do
			if v_4.Part then
				table.insert(tbl_12, v_4.Part)
			end
		end
		if not ArePartsSelectable(tbl_12) then
		else
			local Security_GetPermissions_result1 = Security.GetPermissions(Security.GetSelectionAreas(tbl_12), Player)
			if Security.ArePartsViolatingAreas(tbl_12, Player, true, Security_GetPermissions_result1) then return end
			local tbl_9 = {}
			for _, v_40 in pairs(arg1) do
				if v_40.Part then
					v_40.InitialState = {
						Anchored = v_40.Part.Anchored;
						CFrame = v_40.Part.CFrame;
					}
					tbl_9[v_40.Part] = v_40
				end
			end
			for i_42, v_41 in pairs(tbl_9) do
				v_41.Joints = PreserveJoints(i_42, tbl_9)
				local var109
			end
			for i_43, v_42 in pairs(var109) do
				i_43.Anchored = true
				i_43:BreakJoints()
				i_43.Velocity = Vector3.new()
				i_43.RotVelocity = Vector3.new()
				i_43.CFrame = v_42.CFrame
			end
			if Security.ArePartsViolatingAreas(tbl_12, Player, false, Security_GetPermissions_result1) then
				for i_44, v_43 in pairs(var109) do
					i_44.CFrame = v_43.InitialState.CFrame
				end
			end
			for i_45, v_44 in pairs(var109) do
				i_45:MakeJoints()
				RestoreJoints(v_44.Joints)
				i_45.Anchored = v_44.InitialState.Anchored
			end
		end
	end;
	SyncResize = function(arg1) -- Line 280
		local tbl_6 = {}
		for _, v_5 in pairs(arg1) do
			if v_5.Part then
				table.insert(tbl_6, v_5.Part)
			end
		end
		if not ArePartsSelectable(tbl_6) then
		else
			local Security_GetPermissions_result1_5 = Security.GetPermissions(Security.GetSelectionAreas(tbl_6), Player)
			if Security.ArePartsViolatingAreas(tbl_6, Player, true, Security_GetPermissions_result1_5) then return end
			local tbl_25 = {}
			for _, v_45 in pairs(arg1) do
				if v_45.Part then
					v_45.InitialState = {
						Anchored = v_45.Part.Anchored;
						Size = v_45.Part.Size;
						CFrame = v_45.Part.CFrame;
					}
					tbl_25[v_45.Part] = v_45
				end
			end
			for i_47, v_46 in pairs(tbl_25) do
				i_47.Anchored = true
				i_47:BreakJoints()
				i_47.Velocity = Vector3.new()
				i_47.RotVelocity = Vector3.new()
				i_47.Size = v_46.Size
				i_47.CFrame = v_46.CFrame
			end
			if Security.ArePartsViolatingAreas(tbl_6, Player, false, Security_GetPermissions_result1_5) then
				for i_48, v_47 in pairs(tbl_25) do
					i_48.Size = v_47.InitialState.Size
					i_48.CFrame = v_47.InitialState.CFrame
				end
			end
			for i_49, v_48 in pairs(tbl_25) do
				i_49:MakeJoints()
				i_49.Anchored = v_48.InitialState.Anchored
			end
		end
	end;
	SyncRotate = function(arg1) -- Line 347
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local tbl_17 = {}
		for _, v_6 in pairs(arg1) do
			if v_6.Part then
				table.insert(tbl_17, v_6.Part)
			end
		end
		if not ArePartsSelectable(tbl_17) then
		else
			local Security_GetPermissions_result1_2 = Security.GetPermissions(Security.GetSelectionAreas(tbl_17), Player)
			if Security.ArePartsViolatingAreas(tbl_17, Player, true, Security_GetPermissions_result1_2) then return end
			local tbl_7 = {}
			for _, v_49 in pairs(arg1) do
				if v_49.Part then
					v_49.InitialState = {
						Anchored = v_49.Part.Anchored;
						CFrame = v_49.Part.CFrame;
					}
					tbl_7[v_49.Part] = v_49
				end
			end
			for i_51, v_50 in pairs(tbl_7) do
				v_50.Joints = PreserveJoints(i_51, tbl_7)
				local var211
			end
			for i_52, v_51 in pairs(var211) do
				i_52.Anchored = true
				i_52:BreakJoints()
				i_52.Velocity = Vector3.new()
				i_52.RotVelocity = Vector3.new()
				i_52.CFrame = v_51.CFrame
			end
			if Security.ArePartsViolatingAreas(tbl_17, Player, false, Security_GetPermissions_result1_2) then
				for i_53, v_52 in pairs(var211) do
					i_53.CFrame = v_52.InitialState.CFrame
				end
			end
			for i_54, v_53 in pairs(var211) do
				i_54:MakeJoints()
				RestoreJoints(v_53.Joints)
				i_54.Anchored = v_53.InitialState.Anchored
			end
		end
	end;
	SyncColor = function(arg1) -- Line 418
		local tbl_19 = {}
		for _, v_7 in pairs(arg1) do
			if v_7.Part then
				table.insert(tbl_19, v_7.Part)
			end
		end
		if not ArePartsSelectable(tbl_19) then
		else
			if Security.ArePartsViolatingAreas(tbl_19, Player, true, Security.GetPermissions(Security.GetSelectionAreas(tbl_19), Player)) then return end
			for _, v_54 in pairs(arg1) do
				if v_54.Part then
					({})[v_54.Part] = v_54
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			for i_56, v_55 in pairs({}) do
				i_56.Color = v_55.Color
				if i_56.ClassName == "UnionOperation" then
					i_56.UsePartColor = v_55.UnionColoring
				end
			end
		end
	end;
	SyncSurface = function(arg1) -- Line 465
		local tbl_10 = {}
		for _, v_8 in pairs(arg1) do
			if v_8.Part then
				table.insert(tbl_10, v_8.Part)
			end
		end
		if not ArePartsSelectable(tbl_10) then
		else
			if Security.ArePartsViolatingAreas(tbl_10, Player, true, Security.GetPermissions(Security.GetSelectionAreas(tbl_10), Player)) then return end
			for _, v_56 in pairs(arg1) do
				if v_56.Part then
					({})[v_56.Part] = v_56
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			for i_58, v_57 in pairs({}) do
				for i_59, v_58 in pairs(v_57.Surfaces) do
					i_58[i_59.."Surface"] = v_58
				end
			end
		end
	end;
	CreateLights = function(arg1) -- Line 509
		local tbl_4 = {}
		for _, v_9 in pairs(arg1) do
			if v_9.Part then
				table.insert(tbl_4, v_9.Part)
			end
		end
		if not ArePartsSelectable(tbl_4) then return end
		if Security.ArePartsViolatingAreas(tbl_4, Player, true, Security.GetPermissions(Security.GetSelectionAreas(tbl_4), Player)) then return end
		for _, v_10 in pairs(arg1) do
			if v_10.Part then
				({})[v_10.Part] = v_10
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		for i_11, v_11 in pairs({}) do
			if ({
				PointLight = true;
				SurfaceLight = true;
				SpotLight = true;
				})[v_11.LightType] then
				local any_3 = Instance.new(v_11.LightType, i_11)
				table.insert({}, any_3)
				CreatedInstances[any_3] = any_3
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end;
	SyncLighting = function(arg1) -- Line 569
		local tbl_13 = {}
		for _, v_12 in pairs(arg1) do
			if v_12.Part then
				table.insert(tbl_13, v_12.Part)
			end
		end
		if not ArePartsSelectable(tbl_13) then
		else
			if Security.ArePartsViolatingAreas(tbl_13, Player, true, Security.GetPermissions(Security.GetSelectionAreas(tbl_13), Player)) then return end
			for _, v_59 in pairs(arg1) do
				if v_59.Part then
					({})[v_59.Part] = v_59
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			for i_61, v_60 in pairs({}) do
				if ({
					PointLight = true;
					SurfaceLight = true;
					SpotLight = true;
					})[v_60.LightType] then
					local Support_GetChildOfClass_result1 = Support.GetChildOfClass(i_61, v_60.LightType)
					if Support_GetChildOfClass_result1 then
						if v_60.Range ~= nil then
							Support_GetChildOfClass_result1.Range = v_60.Range
						end
						if v_60.Brightness ~= nil then
							Support_GetChildOfClass_result1.Brightness = v_60.Brightness
						end
						if v_60.Color ~= nil then
							Support_GetChildOfClass_result1.Color = v_60.Color
						end
						if v_60.Shadows ~= nil then
							Support_GetChildOfClass_result1.Shadows = v_60.Shadows
						end
						if v_60.Face ~= nil then
							Support_GetChildOfClass_result1.Face = v_60.Face
						end
						if v_60.Angle ~= nil then
							Support_GetChildOfClass_result1.Angle = v_60.Angle
						end
					end
				end
			end
		end
	end;
	CreateDecorations = function(arg1) -- Line 644
		local tbl_11 = {}
		for _, v_13 in pairs(arg1) do
			if v_13.Part then
				table.insert(tbl_11, v_13.Part)
			end
		end
		if not ArePartsSelectable(tbl_11) then return end
		if Security.ArePartsViolatingAreas(tbl_11, Player, true, Security.GetPermissions(Security.GetSelectionAreas(tbl_11), Player)) then return end
		for _, v_14 in pairs(arg1) do
			if v_14.Part then
				({})[v_14.Part] = v_14
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		for i_15, v_15 in pairs({}) do
			if ({
				Smoke = true;
				Fire = true;
				Sparkles = true;
				})[v_15.DecorationType] then
				local any_2 = Instance.new(v_15.DecorationType, i_15)
				table.insert({}, any_2)
				CreatedInstances[any_2] = any_2
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end;
	SyncDecorate = function(arg1) -- Line 704
		local tbl_23 = {}
		for _, v_16 in pairs(arg1) do
			if v_16.Part then
				table.insert(tbl_23, v_16.Part)
			end
		end
		if not ArePartsSelectable(tbl_23) then
		else
			if Security.ArePartsViolatingAreas(tbl_23, Player, true, Security.GetPermissions(Security.GetSelectionAreas(tbl_23), Player)) then return end
			for _, v_61 in pairs(arg1) do
				if v_61.Part then
					({})[v_61.Part] = v_61
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			for i_63, v_62 in pairs({}) do
				if ({
					Smoke = true;
					Fire = true;
					Sparkles = true;
					})[v_62.DecorationType] then
					local Support_GetChildOfClass_result1_2 = Support.GetChildOfClass(i_63, v_62.DecorationType)
					if Support_GetChildOfClass_result1_2 then
						if v_62.Color ~= nil then
							Support_GetChildOfClass_result1_2.Color = v_62.Color
						end
						if v_62.Opacity ~= nil then
							Support_GetChildOfClass_result1_2.Opacity = v_62.Opacity
						end
						if v_62.RiseVelocity ~= nil then
							Support_GetChildOfClass_result1_2.RiseVelocity = v_62.RiseVelocity
						end
						if v_62.Size ~= nil then
							Support_GetChildOfClass_result1_2.Size = v_62.Size
						end
						if v_62.Heat ~= nil then
							Support_GetChildOfClass_result1_2.Heat = v_62.Heat
						end
						if v_62.SecondaryColor ~= nil then
							Support_GetChildOfClass_result1_2.SecondaryColor = v_62.SecondaryColor
						end
						if v_62.SparkleColor ~= nil then
							Support_GetChildOfClass_result1_2.SparkleColor = v_62.SparkleColor
						end
					end
				end
			end
		end
	end;
	CreateMeshes = function(arg1) -- Line 782
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local tbl_8 = {}
		for _, v_17 in pairs(arg1) do
			if v_17.Part then
				table.insert(tbl_8, v_17.Part)
			end
		end
		if not ArePartsSelectable(tbl_8) then return end
		if Security.ArePartsViolatingAreas(tbl_8, Player, true, Security.GetPermissions(Security.GetSelectionAreas(tbl_8), Player)) then return end
		for _, v_18 in pairs(arg1) do
			if v_18.Part then
				({})[v_18.Part] = v_18
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		for i_19, _ in pairs({}) do
			local SpecialMesh = Instance.new("SpecialMesh", i_19)
			table.insert({}, SpecialMesh)
			CreatedInstances[SpecialMesh] = SpecialMesh
			local var391
		end
		return var391
	end;
	SyncMesh = function(arg1) -- Line 834
		local tbl_14 = {}
		for _, v_20 in pairs(arg1) do
			if v_20.Part then
				table.insert(tbl_14, v_20.Part)
			end
		end
		if not ArePartsSelectable(tbl_14) then
		else
			if Security.ArePartsViolatingAreas(tbl_14, Player, true, Security.GetPermissions(Security.GetSelectionAreas(tbl_14), Player)) then return end
			for _, v_63 in pairs(arg1) do
				if v_63.Part then
					({})[v_63.Part] = v_63
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			for i_65, v_64 in pairs({}) do
				local Support_GetChildOfClass_result1_4 = Support.GetChildOfClass(i_65, "SpecialMesh")
				if Support_GetChildOfClass_result1_4 then
					if v_64.VertexColor ~= nil then
						Support_GetChildOfClass_result1_4.VertexColor = v_64.VertexColor
					end
					if v_64.MeshType ~= nil then
						Support_GetChildOfClass_result1_4.MeshType = v_64.MeshType
					end
					if v_64.Scale ~= nil then
						Support_GetChildOfClass_result1_4.Scale = v_64.Scale
					end
					if v_64.Offset ~= nil then
						Support_GetChildOfClass_result1_4.Offset = v_64.Offset
					end
					if v_64.MeshId ~= nil then
						Support_GetChildOfClass_result1_4.MeshId = v_64.MeshId
					end
					if v_64.TextureId ~= nil then
						Support_GetChildOfClass_result1_4.TextureId = v_64.TextureId
					end
				end
			end
		end
	end;
	CreateTextures = function(arg1) -- Line 901
		local tbl_18 = {}
		for _, v_21 in pairs(arg1) do
			if v_21.Part then
				table.insert(tbl_18, v_21.Part)
			end
		end
		if not ArePartsSelectable(tbl_18) then return end
		if Security.ArePartsViolatingAreas(tbl_18, Player, true, Security.GetPermissions(Security.GetSelectionAreas(tbl_18), Player)) then return end
		for _, v_22 in pairs(arg1) do
			if v_22.Part then
				({})[v_22.Part] = v_22
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		for i_23, v_23 in pairs({}) do
			if ({
				Texture = true;
				Decal = true;
				})[v_23.TextureType] then
				local any = Instance.new(v_23.TextureType, i_23)
				any.Face = v_23.Face
				table.insert({}, any)
				CreatedInstances[any] = any
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end;
	SyncTexture = function(arg1) -- Line 962
		local tbl_22 = {}
		for _, v_24 in pairs(arg1) do
			if v_24.Part then
				table.insert(tbl_22, v_24.Part)
			end
		end
		if not ArePartsSelectable(tbl_22) then
		else
			if Security.ArePartsViolatingAreas(tbl_22, Player, true, Security.GetPermissions(Security.GetSelectionAreas(tbl_22), Player)) then return end
			for _, v_65 in pairs(arg1) do
				if v_65.Part then
					({})[v_65.Part] = v_65
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			for i_67, v_66 in pairs({}) do
				if ({
					Texture = true;
					Decal = true;
					})[v_66.TextureType] then
					for _, v_67 in pairs(i_67:GetChildren()) do
						if v_67.ClassName == v_66.TextureType and v_67.Face == v_66.Face then
							if v_66.Texture ~= nil then
								v_67.Texture = v_66.Texture
							end
							if v_66.Transparency ~= nil then
								v_67.Transparency = v_66.Transparency
							end
							if v_66.StudsPerTileU ~= nil then
								v_67.StudsPerTileU = v_66.StudsPerTileU
							end
							if v_66.StudsPerTileV ~= nil then
								v_67.StudsPerTileV = v_66.StudsPerTileV
							end
						end
					end
				end
			end
		end
	end;
	SyncAnchor = function(arg1) -- Line 1030
		local tbl_3 = {}
		for _, v_25 in pairs(arg1) do
			if v_25.Part then
				table.insert(tbl_3, v_25.Part)
			end
		end
		if not ArePartsSelectable(tbl_3) then
		else
			if Security.ArePartsViolatingAreas(tbl_3, Player, true, Security.GetPermissions(Security.GetSelectionAreas(tbl_3), Player)) then return end
			for _, v_68 in pairs(arg1) do
				if v_68.Part then
					({})[v_68.Part] = v_68
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			for i_70, v_69 in pairs({}) do
				i_70.Anchored = v_69.Anchored
			end
		end
	end;
	SyncCollision = function(arg1) -- Line 1069
		local tbl_5 = {}
		for _, v_26 in pairs(arg1) do
			if v_26.Part then
				table.insert(tbl_5, v_26.Part)
			end
		end
		if not ArePartsSelectable(tbl_5) then
		else
			if Security.ArePartsViolatingAreas(tbl_5, Player, true, Security.GetPermissions(Security.GetSelectionAreas(tbl_5), Player)) then return end
			for _, v_70 in pairs(arg1) do
				if v_70.Part then
					({})[v_70.Part] = v_70
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			for i_72, v_71 in pairs({}) do
				i_72.CanCollide = v_71.CanCollide
			end
		end
	end;
	SyncMaterial = function(arg1) -- Line 1108
		local tbl_2 = {}
		for _, v_27 in pairs(arg1) do
			if v_27.Part then
				table.insert(tbl_2, v_27.Part)
			end
		end
		if not ArePartsSelectable(tbl_2) then
		else
			if Security.ArePartsViolatingAreas(tbl_2, Player, true, Security.GetPermissions(Security.GetSelectionAreas(tbl_2), Player)) then return end
			for _, v_72 in pairs(arg1) do
				if v_72.Part then
					({})[v_72.Part] = v_72
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			for i_74, v_73 in pairs({}) do
				if v_73.Material ~= nil then
					i_74.Material = v_73.Material
				end
				if v_73.Transparency ~= nil then
					i_74.Transparency = v_73.Transparency
				end
				if v_73.Reflectance ~= nil then
					i_74.Reflectance = v_73.Reflectance
				end
			end
		end
	end;
	CreateWelds = function(arg1, arg2) -- Line 1155
		if not ArePartsSelectable(arg1) then return end
		if Security.ArePartsViolatingAreas(arg1, Player, true, Security.GetPermissions(Security.GetSelectionAreas(arg1), Player)) then return end
		for _, v_28 in pairs(arg1) do
			if v_28 ~= arg2 then
				local Weld = Instance.new("Weld")
				Weld.Name = "BTWeld"
				Weld.Part0 = arg2
				Weld.Part1 = v_28
				Weld.C1 = v_28.CFrame:toObjectSpace(arg2.CFrame)
				Weld.Archivable = true
				Weld.Parent = arg2
				CreatedInstances[Weld] = Weld
				table.insert({}, Weld)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end;
	RemoveWelds = function(arg1) -- Line 1203
		local tbl_16 = {}
		local _, pairs_result2_46, pairs_result3_50 = pairs(arg1)
		local var523
		for _, v_29 in var523, pairs_result2_46, pairs_result3_50 do
			if v_29.ClassName ~= "Weld" then return end
			table.insert(tbl_16, v_29.Part0)
			table.insert(tbl_16, v_29.Part1)
		end
		var523 = ArePartsSelectable(tbl_16)
		if not var523 then return end
		var523 = 0
		local Security_GetPermissions_result1_4 = Security.GetPermissions(Security.GetSelectionAreas(tbl_16), Player)
		for _, v_30 in pairs(arg1) do
			if not Security.ArePartsViolatingAreas({v_30.Part0}, Player, true, Security_GetPermissions_result1_4) or not Security.ArePartsViolatingAreas({v_30.Part1}, Player, true, Security_GetPermissions_result1_4) then
				CreatedInstances[v_30] = v_30
				LastParents[v_30] = v_30.Parent
				var523 += 1
				v_30.Parent = nil
			end
		end
		return var523
	end;
	UndoRemovedWelds = function(arg1) -- Line 1258
		-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
		local tbl_20 = {}
		local var539
		for _, v_31 in pairs(arg1) do
			var539 = v_31.ClassName
			if var539 ~= "Weld" then return end
			var539 = LastParents[v_31]
			if not var539 then return end
			var539 = table.insert
			var539(tbl_20, v_31.Part0)
			var539 = table.insert
			var539(tbl_20, v_31.Part1)
		end
		if not ArePartsSelectable(tbl_20) then return end
		local Security_GetPermissions_result1_3 = Security.GetPermissions(Security.GetSelectionAreas(tbl_20), Player)
		local pairs_result1, pairs_result2_9, pairs_result3 = pairs(arg1)
		if Security.ArePartsViolatingAreas({var539.Part0}, Player, false, Security_GetPermissions_result1_3) then
			if not Security.ArePartsViolatingAreas({var539.Part0}, Player, false, Security_GetPermissions_result1_3) then
				-- KONSTANTERROR: [91] 61. Error Block 21 start (CF ANALYSIS FAILED)
				LastParents[var539] = var539.Parent
				CreatedInstances[var539] = var539
				var539.Parent = LastParents[var539]
				-- KONSTANTERROR: [91] 61. Error Block 21 end (CF ANALYSIS FAILED)
			end
			-- KONSTANTWARNING: GOTO [59] #41
		end
		-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [91] 61. Error Block 21 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [91] 61. Error Block 21 end (CF ANALYSIS FAILED)
	end;
	Export = function(arg1) -- Line 1316
		local RunService = game:GetService("RunService")
		local var552
		if RunService:IsClient() and not RunService:IsStudio() then
			var552 = SyncAPl
			return var552.ServerEndPoint:InvokeServer("Export", arg1)
		end
		if type(arg1) ~= "table" then
			var552 = false
		else
			var552 = true
		end
		assert(var552, "Invalid item table")
		if #arg1 == 0 then
		else
			var552 = arg1
			if not ArePartsSelectable(var552) then return end
			var552 = Security
			var552 = Security.GetSelectionAreas(arg1)
			var552 = Security.ArePartsViolatingAreas(arg1, Player, true, var552.GetPermissions(var552, Player))
			if var552 then return end
			var552 = Support.CloneTable(arg1)
			for _, v_74 in pairs(arg1) do
				Support.ConcatTable(var552, Support.GetAllDescendants(v_74))
			end
			local HttpService = game:GetService("HttpService")
			local tbl_15 = {
				data = Serialization.SerializeModel(var552);
				version = 3;
			}
			local Player_3 = Player
			if Player_3 then
				Player_3 = Player.UserId
			end
			tbl_15.userId = Player_3
			local any_JSONDecode_result1 = HttpService:JSONDecode(HttpService:PostAsync("http://f3xteam.com/bt/export", HttpService:JSONEncode(tbl_15), Enum.HttpContentType.ApplicationJson, true))
			if any_JSONDecode_result1.success then
				return any_JSONDecode_result1.id
			end
			error("Export failed due to server-side error", 2)
		end
	end;
	IsHttpServiceEnabled = function() -- Line 1373
		if RunService:IsClient() and not RunService:IsStudio() then
			return SyncAPl.ServerEndPoint:InvokeServer("IsHttpServiceEnabled")
		end
		if ToolMode == "Tool" and IsHttpServiceEnabled ~= nil then
			return IsHttpServiceEnabled
		end
		local pcall_result1, pcall_result2 = pcall(function() -- Line 1387
			return HttpService:GetAsync("http://google.com")
		end)
		if not pcall_result1 and pcall_result2:match("Http requests are not enabled") then
			IsHttpServiceEnabled = false -- Setting global
		elseif pcall_result1 then
			IsHttpServiceEnabled = true -- Setting global
		end
		return IsHttpServiceEnabled
	end;
	ExtractMeshFromAsset = function(arg1) -- Line 1403
		local var565
		if RunService:IsClient() and not RunService:IsStudio() then
			var565 = SyncAPl
			return var565.ServerEndPoint:InvokeServer("ExtractMeshFromAsset", arg1)
		end
		if type(arg1) ~= "number" then
			var565 = false
		else
			var565 = true
		end
		assert(var565, "Invalid asset ID")
		return HttpService:JSONDecode(HttpService:GetAsync("http://f3xteam.com/bt/getFirstMeshData/"..arg1))
	end;
	ExtractImageFromDecal = function(arg1) -- Line 1421
		if RunService:IsClient() and not RunService:IsStudio() then
			return SyncAPl.ServerEndPoint:InvokeServer("ExtractImageFromDecal", arg1)
		end
		return HttpService:GetAsync("http://f3xteam.com/bt/getDecalImageID/"..arg1)
	end;
	SetMouseLockEnabled = function(arg1) -- Line 1434
		if RunService:IsClient() and not RunService:IsStudio() then
			return SyncAPl.ServerEndPoint:InvokeServer("SetMouseLockEnabled", arg1)
		end
	end;
} -- Setting global
function ArePartsSelectable(arg1) -- Line 1449
	for _, v_32 in pairs(arg1) do
		if not v_32:IsA("BasePart") or v_32.Locked then
			return false
		end
	end
	return true
end
local GetConnectedParts_upvr = Instance.new("Part").GetConnectedParts
function GetPartJoints(arg1, arg2) -- Line 1468
    --[[ Upvalues[1]:
        [1]: GetConnectedParts_upvr (readonly)
    ]]
	local module = {}
	for i_33, v_33 in pairs(SearchJoints(arg1, arg1, arg2)) do
		module[i_33] = v_33
	end
	for _, v_34 in pairs(GetConnectedParts_upvr(arg1)) do
		for i_35, v_35 in pairs(SearchJoints(v_34, arg1, arg2)) do
			module[i_35] = v_35
		end
	end
	return module
end
local GetChildren_upvr = script.GetChildren
local Support_FlipTable_result1_upvr = Support.FlipTable({"Weld", "ManualWeld", "ManualGlue", "Motor", "Motor6D"})
function SearchJoints(arg1, arg2, arg3) -- Line 1493
    --[[ Upvalues[2]:
        [1]: GetChildren_upvr (readonly)
        [2]: Support_FlipTable_result1_upvr (readonly)
    ]]
	for _, v_36 in pairs(GetChildren_upvr(arg1)) do
		if Support_FlipTable_result1_upvr[v_36.ClassName] and arg3[v_36.Part0] and arg3[v_36.Part1] then
			({})[v_36] = v_36.Parent
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function RestoreJoints(arg1) -- Line 1517
	for i_37, v_37 in pairs(arg1) do
		i_37.Parent = v_37
	end
end
function PreserveJoints(arg1, arg2) -- Line 1527
	local GetPartJoints_result1 = GetPartJoints(arg1, arg2)
	for i_38 in pairs(GetPartJoints_result1) do
		i_38.Parent = nil
	end
	return GetPartJoints_result1
end
if ToolMode == "Tool" then
	if Tool.Parent and Tool.Parent:IsA("Backpack") then
		Player = Tool.Parent.Parent -- Setting global
	elseif Tool.Parent and Tool.Parent:IsA("Model") then
		Player = Players:GetPlayerFromCharacter(Tool.Parent) -- Setting global
	else
		Player = nil -- Setting global
	end
	Tool.AncestryChanged:Connect(function(arg1, arg2) -- Line 1560
		if arg1 ~= Tool then
		else
			if arg2 and arg2:IsA("Backpack") then
				Player = arg2.Parent -- Setting global
				return
			end
			if arg2 and arg2:IsA("Model") then
				Player = Players:GetPlayerFromCharacter(arg2) -- Setting global
				return
			end
			Player = nil -- Setting global
		end
	end)
end
return {
	Options = Options;
	PerformAction = function(arg1, arg2, ...) -- Line 1591, Named "PerformAction"
		local var616 = Actions[arg2]
		if not var616 then return end
		if ToolMode == "Tool" then
			local Player_2 = Player
			if Player_2 then
				if arg1 ~= Player then
					Player_2 = false
				else
					Player_2 = true
				end
			end
			assert(Player_2, "Permission denied for client")
		end
		return var616(...)
	end;
}
