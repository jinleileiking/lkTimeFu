-------------------------------------------------------------------------------
-- Localization                                                              --
-------------------------------------------------------------------------------

local L = AceLibrary("AceLocale-2.2"):new("FuBar_LoginTimerFu")

-- based on fenlis' translation
L:RegisterTranslations("koKR", function() return {
	["Hour"] = "시",
	["Minute"] = "분",
	["Second"] = "초",
	["Loginat"] = "로그인 시각"
} end)

