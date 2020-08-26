
local ruta = "Interface\\Addons\\Critical_H\\Sonidos\\h"
local playerGUID = UnitGUID("player")

local critico = CreateFrame("Frame")
critico:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
critico:SetScript("OnEvent", function(self, event)
	-- pass a variable number of arguments
	self:OnEvent(event, CombatLogGetCurrentEventInfo())
end)

function critico:OnEvent(event, ...)
	local timestamp, subevent, _, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags = ...
	local spellId, spellName, spellSchool
	local amount, overkill, school, resisted, blocked, absorbed, critical, glancing, crushing, isOffHand

	if subevent == "SWING_DAMAGE" then
		amount, overkill, school, resisted, blocked, absorbed, critical, glancing, crushing, isOffHand = select(12, ...)
	elseif subevent == "SPELL_DAMAGE" then
		spellId, spellName, spellSchool, amount, overkill, school, resisted, blocked, absorbed, critical, glancing, crushing, isOffHand = select(12, ...)
	elseif subevent == "SPELL_HEAL" then
		spellId, spellName, spellSchool, amount, overhealing, absorbed, critical = select(12, ...)
	end

	if critical and sourceGUID == playerGUID then
		local random_h = math.random(19);
		local action = spellId and GetSpellLink(spellId) or MELEE
		PlaySoundFile(ruta..random_h..".ogg", "Master")
	end
end