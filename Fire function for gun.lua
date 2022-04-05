for _, GC_OBJECT in pairs(getgc(true)) do
	if type(GC_OBJECT) == "table" then
		local WeaponFireFunction = rawget(GC_OBJECT, "fire")
		
		if type(WeaponFireFunction) == "function" then
			if debug.getinfo(WeaponFireFunction).source:lower():find("rifle") then
				if #debug.getupvalues(WeaponFireFunction) >= 4 then
					print("Sheeesh")
				end
			end
		end
	end
end