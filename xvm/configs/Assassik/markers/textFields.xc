{
	// Template
	"template": {
		//"name": "",
		//"format": "",                 // Text format (see description of macros in the readme-en.txt)
		"visible": true,                // false - Disable
		"x": 0,                         // Position on the X axis
		"y": 0,                         // Position on the Y axis
		"alpha": 100,                   // Opacity (dynamic transparency allowed, see readme-en.txt)
		"color": null,                  // Color (dynamic colors allowed, see readme-en.txt)
		"font": {                       // Font options
			"name": "$FieldFont",         //   Font name
			"size": 13,                   //   Font size
			"align": "center",            //   Text alignment (left, center, right)
			"bold": false,                //   Normal (false) or bold (true)
			"italic": false               //   Normal (false) or italic (true)
		},
		"shadow": {                     // Shadow options
			"alpha": 100,                 //   Opacity
			"color": "0x000000",          //   Color
			"angle": 45,                  //   Offset angle
			"distance": 0,                //     Offset distance
			"size": 6,                    //     Size
			"strength": 200               //     Intensity
		}
	},
	
	// Text field with the name of the vehicle
	"tankName": {
		"$ref": { "path":"template" },
		"name": "Tank name",
		"y": -36,
		"format": "{{vehicle}}{{turret}}"
    },
	
	"tankNameDead": {
		"$ref": { "path":"tankName" },
		"y": -20
    },
	
    // Text field with the remaining / maximum health
    "tankHp": {
		"$ref": { "path":"template" },
		"name": "Tank HP",
		"y": -20,
		"color": "0xFCFCFC",
		"font": {
			"$ref": { "path":"template.font" },
			"size": 11
		},
		"shadow": {
			"$ref": { "path":"template.shadow" },
			"strength": 100
		},
		"format": "{{hp}} / {{hp-max}}"
	},
	
	// Text field with the percentage of remaining health
	"remainHp": {
		"$ref": { "path":"tankHp" },
		"name": "Remain HP",
		// Percent symbol - \u0025
		"format": "{{hp-ratio}}\u0025"
	},
	
	// Text field with the name of the player
	"playerName": {
		"$ref": { "path":"template" },
        "name": "Player name",
		"y": -36,
		"format": "{{nick}}"
	},
				
	// Text field with win ratio
    "globalWinRate": {
		"$ref": { "path":"template" },
		"name": "Global Win Rate",
		"y": -50,
		"format": "<font color='{{c:t-rating}}'>{{t-rating}}</font>  <font color='{{c:t-battles}}'>{{t-battles}}</font> <font color='{{c:kb}}'>({{kb}})</font>"
	}
}