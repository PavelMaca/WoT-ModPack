/**
 * Minimap labels.
 * Надписи на миникарте.
 */
{
  // Textfields for units on minimap.
  // Текстовые поля юнитов на миникарте.
  // TODO: documentation
  //  {
  //    Если не указаны "ally", "squadman", "player", "enemy", "teamKiller", то они не используются.
  //    Если не указаны "lost" и "spotted", то используются оба - и "lost", и "spotted".
  //    Если не указаны "alive", "dead", то используются оба - и "alive", и "dead".
  //    "flags": [ "player", "ally", "squadman", "enemy", "teamKiller", "lost", "spotted", "alive", "dead" ],
  //    "format": "...",
  //    "shadow": { ... },
  //    "alpha": "...",
  //    "x": { ... },
  //    "y": { ... },
  //    "antiAliasType": "normal" // normal/advanced
  //  }
  "labels": {
    "enabled": true,
    // Format set
    // Набор форматов
    "formats": [
	  {
        "$ref": { "file": "minimapLabelsTemplates.xc", "path": "def.vehicleSpotted" },
        "format": "<font size='8' color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'>{{name%.7s}}</font>"
      },
      ${ "minimapLabelsTemplates.xc":"def.vtypeLost" },
	  {
        "$ref": { "file": "minimapLabelsTemplates.xc", "path": "def.vehicleLost" },
        "format": "<font size='8' color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'><i>{{name%.7s}}</i></font>"
      },
      ${ "minimapLabelsTemplates.xc":"def.vtypeDead" },
	  {
        "$ref": { "file": "minimapLabelsTemplates.xc", "path": "def.vehicleDead" },
		"flags": [ "ally", "enemy", "squadman", "teamKiller", "dead" ],
        "format": "<font size='8' color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'><i>{{name%.7s}}</i></font>"
      }
    ]
  }
}
