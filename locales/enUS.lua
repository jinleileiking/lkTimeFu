-------------------------------------------------------------------------------
-- Localization                                                              --
-------------------------------------------------------------------------------

local L = AceLibrary("AceLocale-2.2"):new("FuBar_LoginTimerFu")

-- based on fenlis' translation
L:RegisterTranslations("enUS", function() return {
	["Hour"] = "Hour",
	["Minute"] = "Minute",
	["Second"] = "Second",
	["Loginat"] = "Login at",
	["Total"] = "Totally played today"
} end)

