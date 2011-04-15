-------------------------------------------------------------------------------
-- Localization                                                              --
-------------------------------------------------------------------------------

local L = AceLibrary("AceLocale-2.2"):new("FuBar_LoginTimerFu")

-- Thanks <solidar@herren-der-ordnung.de> for this locale
L:RegisterTranslations("deDE", function() return {
    ["Hour"] = "Stunde",
    ["Minute"] = "Minute",
    ["Second"] = "Sekunde",
    ["Loginat"] = "Eingelogt um",
    ["Total"] = "Totale Spielzeit heute"
} end)
