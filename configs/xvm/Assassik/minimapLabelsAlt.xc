/**
 * Minimap labels.
 * Надписи на миникарте.
 */
{
  // Textfields for units on minimap.
  // Текстовые поля юнитов на миникарте.
  "labels": {
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
