ruta_canciones = "Interface\\Addons\\Fancy\\Musica"
ruta_fondos = "Interface\\Addons\\Fancy\\Fondos"
canciones = {"\\fancy.ogg","\\moreandmore.ogg","\\feelspecial.ogg","\\likey.ogg","\\tt1.ogg","\\tt2.ogg","\\trickit.ogg","\\lovefoolish.ogg","\\happyhappy.ogg","\\bdz.ogg"}
fondos = {"\\momo.tga","\\mina.tga","\\sana.tga","\\tzuyu.tga","\\dahyun.tga","\\chae.tga","\\jeong.tga","\\jihyo.tga","\\nayeon.tga"}

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LEVEL_UP")
f:SetFrameStrata("BACKGROUND");
f:SetClampedToScreen(true)
f:SetAllPoints(UIParent)
t = f:CreateTexture(nil, "BACKGROUND");
function set_fondo()
	f:Hide();
	t:SetAlpha(0.4);
	random_fondos = math.random(9);
	t:SetTexture(ruta_fondos .. fondos[random_fondos]);
	t:SetAlpha(0.4);
	t:SetAllPoints(frame);
	end

f:Hide();

f:SetScript("OnEvent",
	function(self, event, ...)
		set_fondo()
		local random_musica = math.random(10);
		PlaySoundFile(ruta_canciones .. canciones[random_musica], "Master")
		UIFrameFlash(f, 0.5, 0.5, 8, false);
		end)


local okaeri = CreateFrame("Frame")

okaeri:RegisterEvent("PLAYER_LOGIN")
okaeri:Hide();

okaeri:SetScript("OnEvent",
	function(self, event, ...)
		PlaySoundFile("Interface\\Addons\\Fancy\\okaeri.ogg", "Master")
		end)

local itterasshai = CreateFrame("Frame")

itterasshai:RegisterEvent("PLAYER_LEAVING_WORLD")
itterasshai:Hide();

itterasshai:SetScript("OnEvent",
	function(self, event, ...)
		PlaySoundFile("Interface\\Addons\\Fancy\\itterasshai.ogg", "Master")
		end)



local quest = CreateFrame("Frame")

quest:RegisterEvent("QUEST_COMPLETE")
quest:Hide();

quest:SetScript("OnEvent",
	function(self, event, ...)
		PlaySoundFile("Interface\\Addons\\Fancy\\quest.ogg", "Master")
		end)


local dead = CreateFrame("Frame")

dead:RegisterEvent("PLAYER_DEAD")
dead:Hide();

dead:SetScript("OnEvent",
	function(self, event, ...)
		PlaySoundFile("Interface\\Addons\\Fancy\\dead.ogg", "Master")
		end)

local atigatou = CreateFrame("Frame")

atigatou:RegisterEvent("RESURRECT_REQUEST")
atigatou:Hide();

dead:SetScript("OnEvent",
	function(self, event, ...)
		PlaySoundFile("Interface\\Addons\\Fancy\\atigatou.ogg", "Master")
		end)
