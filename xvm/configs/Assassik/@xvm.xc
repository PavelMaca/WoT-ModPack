/**
 * Full configuration file (hereinafter - the configuration) with all possible
 * options, default configuration.
 *
 * Attention! You must NOT use the percent symbol in this file.
 * Instead, the percent symbol should be written: \u0025
 */
{
   // Version of the config. Do not remove or change it unnecessarily.
  "configVersion": "4.0.0",

  // Version of the editor.
  "editorVersion": "0.50",

  // Common config options. All settings information in the mod not being used.
  "definition": {
    // сonfig author
    "author": "Assassik",

    // config description
    "description": "Special config for modified XVM files by Assassik",

    // address to config updates
    "url": "https://github.com/PavelMaca/WOT-XVM",

    // config last modified
    "date": "01.05.2013",

    // supported version of the game
    "gameVersion": "0.8.5",

    // minimum required version of the XVM mod
    "modMinVersion": "4.0.0"
  },

  // Parametrs of the Hangar
  "hangar": ${"hangar.xc":"hangar"},

  // Achievements window
  "userInfo": ${"hangar.xc":"userInfo"},

  // General parameters for the battle interface
  "battle": ${"battle.xc":"battle"},

  // Frag counter panel at top side of battle windows interface
  "fragCorrelation": ${"battle.xc":"fragCorrelation"},

  // Options for player statistics (only with xvm-stat)
  "rating": ${"rating.xc":"rating"},

  // Special XVM hotkeys
  "hotkeys": ${"hotkeys.xc":"hotkeys"},

  // Squad window
  "squad": ${"squad.xc":"squad"},

  // Parameters of the Battle Loading Screen
  "battleLoading": ${"battleLoading.xc":"battleLoading"},

  // Parameters of the Battle Statistics Form
  "statisticForm": ${"statisticForm.xc":"statisticForm"},

  // Parameters of the Players Panels
  "playersPanel": ${"playersPanel.xc":"playersPanel"},

  // Parameters of the After Battle Screen
  "finalStatistic": ${"finalStatistic.xc":"finalStatistic"},

  // {{turret}} marker display strings
  "turretMarkers": ${"turretMarkers.xc":"turretMarkers"},

  // Hit log (my hits calculator)
  "hitLog": ${"hitLog.xc":"hitLog"},

  // Capture bar
  "captureBar": ${"captureBar.xc":"captureBar"},

  // Minimap
  "minimap": ${"minimap/minimap.xc":"minimap"},

  // Over-target markers
  "markers": ${"markers/markers.xc":"markers"},

  // Color settings
  "colors": ${"colors.xc":"colors"},

  // Options for dynamic transparency
  "alpha": ${"alpha.xc":"alpha"},

  // Text substitutions
  "texts": ${"texts.xc":"texts"},

  // Icon sets
  "iconset": ${"iconset.xc":"iconset"},

  // Vehicle names mapping. null value for standard name.
  "vehicleNames": ${"vehicleNames.xc":"vehicleNames"}
}
