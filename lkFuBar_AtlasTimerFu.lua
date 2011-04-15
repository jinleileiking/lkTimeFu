AtlasTimerFu = AceLibrary("AceAddon-2.0"):new("FuBarPlugin-2.0", "AceEvent-2.0", "AceConsole-2.0", "AceDB-2.0")

local self = AtlasTimerFu

function AtlasTimerFu:OnInitialize()
	self.name = "LoginTimeFu"
	self.msgHour = "h"
	self.msgMinute = "m"
	self.msgSecond = "s"
	self.AtlasStart = GetTime()
	self.inInstance = false
	self.instanceType = ""
end

function AtlasTimerFu:OnEnable()
	self:RegisterEvent("WORLD_MAP_UPDATE", "OnGetInAtlas")
	self:ScheduleRepeatingEvent(self.name, self.Update, 1, self)
end

function AtlasTimerFu:OnDisable()
	self:CancelScheduledEvent(self.name)
end

function AtlasTimerFu:OnGetInAtlas()
	---- Here We Get Into the Atlas
	self.AtlasStart = GetTime()
--	self.inInstance, self.instanceType = IsInInstance()
--	if  self.inInstance == true then
--		self.AtlasStart = GetTime()
--		self:Update()
--	end
	
	return
end

function AtlasTimerFu:GetCurrentLoginTime()
	local sec = GetTime()-self.AtlasStart
	if(sec < 0) then
		sec = 0	
	end
	return self:FormatTime(sec)
end


function AtlasTimerFu:FormatTime(sec)
	if sec == nil then
		return ""
	end
	local s = math.floor(sec)
	local lhour = math.floor(s / 3600)
	s = s - lhour * 3600
	local lmin = math.floor(s / 60)
	local lsec = s - lmin * 60
	if lhour == 0 and lmin == 0 and lsec == 0 then
		return ""
	end
	if lhour == 0 then
		return ("%d " .. self.msgMinute .. " %d " .. self.msgSecond):format(lmin, lsec)
	end
	return ("%d " .. self.msgHour .. " %d " .. self.msgMinute .. " %d " .. self.msgSecond):format(lhour, lmin, lsec)
end

function AtlasTimerFu:OnTextUpdate()
		self:SetText("|cff00ff00".. self:GetCurrentLoginTime() .."|r")
end
