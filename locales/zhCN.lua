-------------------------------------------------------------------------------
-- Localization                                                              --
-------------------------------------------------------------------------------

local L = AceLibrary("AceLocale-2.2"):new("FuBar_LoginTimerFu")

-- based on fenlis' translation
L:RegisterTranslations("znCN", function() return {
	["Hour"] = "小时",
	["Minute"] = "分钟",
	["Second"] = "秒",
	["Loginat"] = "登录时间",
	["Total"] = "今天总计"
} end)

