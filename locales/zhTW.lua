-------------------------------------------------------------------------------
-- Localization                                                              --
-------------------------------------------------------------------------------

local L = AceLibrary("AceLocale-2.2"):new("FuBar_LoginTimerFu")

-- based on fenlis' translation
L:RegisterTranslations("znTW", function() return {
	["Hour"] = "小時",
	["Minute"] = "分鐘",
	["Second"] = "秒",
	["Loginat"] = "登錄時間",
	["Total"] = "今天總計"
} end)
