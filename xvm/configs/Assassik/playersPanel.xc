/**
 * Parameters of the Players Panels
 */
{
  "def": {
    "nick": "<font color='{{c:wn}}'>{{nick}}</font>",
    "vehicle": "<font color='{{c:twr}}'>{{vehicle}}</font>"
  },
  
  "playersPanel": {
    "alpha": 60,       // Opacity percentage of the panels. (0 - transparent ... 100 - opaque)
    "iconAlpha": 100,  // Opacity percentage of icons in the panels. (0 - transparent ... 100 - opaque)
    "removeSquadIcon": false, // true - Disable Platoon icons.
    // Display options for Team/Clan logos (see battleLoading above).
    "clanIcon": ${"defines.xc":"clanIcon"},
    // Enemy spotted status marker at right side panel
    "enemySpottedMarker": {
      "enabled": false,
      "Xoffset": 15, // Offset relative to level icon
      "Yoffset": 0,
      "format": {
        // Never seen this enemy
        "neverSeen": "<font face='$FieldFont' size='24' color='#DEDEDE'>*</font>",
        // This enemy was seen atleast once
        "lost": "",
        // Enemy currently revealed at minimap
        "revealed": "",
		// Dead enemy
        "dead": "",
        // Artillery specific values
        "artillery": {
          "neverSeen": "",
          "lost": "",
          "revealed": "",
          "dead": ""
        }
      }
    },
    // Options for the "medium" panels - the first of the medium panels
    "medium": {
      "width": 46,    // 0..250 - Width of the player's name column. Default is 46.
      // Display format for the left panel (macros allowed, see readme-en.txt)
      "formatLeft": ${"def.nick"},
      // Display format for the right panel (macros allowed, see readme-en.txt)
      "formatRight": ${"def.nick"}
    },
    // Options for the "medium2" panels - the second of the medium panels
    "medium2": {
      "width": 65,    // 0..250 - Width of the player's name column. Default is 65.
      // Display format for the left panel (macros allowed, see readme-en.txt)
      "formatLeft": ${"def.vehicle"},
      // Display format for the right panel (macros allowed, see readme-en.txt)
      "formatRight": ${"def.vehicle"}
    },
    // Options for the "large" panels - the widest panels
    "large": {
      "width": 170,  // 0..250 - Width of the player's name column. Default is 170.
      // Display format for player nickname (macros allowed, see readme-en.txt)
      "nickFormatLeft": ${"def.nick"},
      "nickFormatRight": ${"def.nick"},
      // Display format for vehicle name (macros allowed, see readme-en.txt)
      "vehicleFormatLeft": ${"def.vehicle"},
      "vehicleFormatRight": ${"def.vehicle"}
    }
  }
}
