math.randomseed(os.time())

local ruta = "Interface\\Addons\\Fancy"
local random_fondos = math.random(1,9);
local canciones = {"\\fancy.ogg","\\moreandmore.ogg","\\feelspecial.ogg","\\likey.ogg","\\tt.ogg","\\trickit.ogg","\\lovefoolish.ogg","\\happyhappy.ogg","\\bdz.ogg"}
local fondos = {"\\momo.tga","\\mina.tga","\\sana.tga","\\tzuyu.tga","\\dahyun.tga","\\chae.tga","\\jeong.tga","\\jihyo.tga","\\nayeon.tga"}

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LEVEL_UP")
f:SetFrameStrata("BACKGROUND");
f:SetClampedToScreen(true)
f:SetAllPoints(UIParent)


local t = f:CreateTexture(nil, "BACKGROUND");
t:SetTexture(ruta .. fondos[random_fondos]);
t:SetAlpha(0.4);
t:SetAllPoints(frame);


f:Hide();

f:SetScript("OnEvent",
	function(self, event, ...)
		local random_musica = math.random(1,9);
		PlaySoundFile(ruta .. canciones[random_musica], "Master")
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
