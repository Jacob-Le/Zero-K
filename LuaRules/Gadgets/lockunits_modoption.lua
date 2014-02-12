function gadget:GetInfo()
	return {
		name = "LockOptions",
		desc = "Modoption for locking units. 90% Copypasted from game_perks.lua",
		author = "Storage",
		license = "Public Domain",
		layer = -1,
		enabled = true,
	}
end



local disabledunitsstring = Spring.GetModOptions().disabledunits
local disabledunits = { }
local defenceunits = {"corrl", "corllt", "armdeva", "armartic", "armpb", "corhlt", "corrazor", "missiletower", "corflak", "armcir", "screamer", "corgrav", "cortl", "cordoom", "armanni", "corjamt" }

--Different lock modoptions are compatible
if tobool(Spring.GetModOptions().noair) then
	table.insert(disabledunits,"factoryplane")
	table.insert(disabledunits,"factorygunship")
end

if tobool(Spring.GetModOptions().nodef) then
	for i in pairs(defenceunits) do
		table.insert(disabledunits,defenceunits[i])
	end
end

if (disabledunits == nil) then
	return
end

--------------------------------------------------------------------------------
--SYNCED
--------------------------------------------------------------------------------
if (gadgetHandler:IsSyncedCode()) then
	for i in string.gmatch(disabledunitsstring, '([^,]+)') do
		--I should check whether the unit name actually exists, but it seems UnitDefNames hasn't been created at this stage yet
		disabledunits[#disabledunits+1] = i
	end

	
	local function UnlockUnit(unitID, lockDefID, team)
		local cmdDescID = Spring.FindUnitCmdDesc(unitID, -lockDefID)
		if (cmdDescID) then
			local cmdArray = {disabled = false}
			Spring.EditUnitCmdDesc(unitID, cmdDescID, cmdArray)
		end
	end
	

	local function LockUnit(unitID, lockDefID, team)
		local cmdDescID = Spring.FindUnitCmdDesc(unitID, -lockDefID)
		if (cmdDescID) then
			local cmdArray = {disabled = true}
			Spring.EditUnitCmdDesc(unitID, cmdDescID, cmdArray)
		end
	end
	
	
	local function SetBuildOptions(unitID, unitDefID, team)
		local unitDef = UnitDefs[unitDefID]
		if (unitDef.isBuilder) then
			for _, buildoptionID in pairs(unitDef.buildOptions) do
				for _,unit in pairs(disabledunits) do
					if (UnitDefNames[unit]) then 
						LockUnit(unitID, UnitDefNames[unit].id, team)
					end
				end
			
			end
		end
	end
	
	
	function gadget:UnitCreated(unitID, unitDefID, team)
		SetBuildOptions(unitID, unitDefID, team)
	end
	
	
	
end