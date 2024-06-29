AntiCheatNamecall = hookmetamethod(game, "__namecall", newcclosure(function(Self, ...)
	local Arguments = {...}
	local AntiCheats = {"BreathingHAMON", "TeleportDetect", "JJARC", "TakePoisonDamage", "CHECKER_1", "CHECKER", "GUI_CHECK", "OneMoreTime", "checkingSPEED", "BANREMOTE", "PERMAIDBAN", "KICKREMOTE", "BR_KICKPC", "FORCEFIELD", "Christmas_Sock", "VirusCough", "Symbiote", "Symbioted", "RequestAFKDisplay"}

	if table.find(AntiCheats, Arguments[1]) and getnamecallmethod() == "FireServer" then
		return
	end

	return AntiCheatNamecall(Self, ...)
end))
