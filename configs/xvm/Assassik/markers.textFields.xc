{
	// Template
	"template": {
		//"name": "",
		//"format": "",                 // Text format (see description of macros in the readme-en.txt)
		"enabled": true,                // false - Disable
		"x": 0,                         // Position on the X axis
		"y": 0,                         // Position on the Y axis
		"alpha": 100,                   // Opacity (dynamic transparency allowed, see readme-en.txt)
		"color": null,                  // Color (dynamic colors allowed, see readme-en.txt)
		// Font options.
		// Параметры шрифта.
		"textFormat": {
			"name": "$FieldFont",         //   Font name
			"size": 13,                   //   Font size
			"align": "center",            //   Text alignment (left, center, right)
			"bold": false,                //   Normal (false) or bold (true)
			"italic": false               //   Normal (false) or italic (true)
		},
		// Shadow options.
        // Параметры тени.
		"shadow": {                     // Shadow options
            // false - no shadow
            // false - без тени
            "enabled": true,
            "distance": 0,                  // (in pixels)     / offset distance / дистанция смещения
			"angle": 45,                    // (0.0 .. 360.0)  / offset angle    / угол смещения
			"color": "0x000000",            // "0xXXXXXX"      / color           / цвет
			"alpha": 100,                   // (0 .. 100)      / opacity         / прозрачность
			"blur": 3,                      // (0.0 .. 255.0)  / blur            / размытие
			"strength": 2                   // (0.0 .. 255.0)  / intensity       / интенсивность
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
		"textFormat": {
			"$ref": { "path":"template.textFormat" },
			"size": 11
		},
		"shadow": {
			"$ref": { "path":"template.shadow" },
			"strength": 1
		},
		"format": "{{hp}} / {{hp-max}}"
	},

	// Text field with the percentage of remaining health
	"remainHp": {
		"$ref": { "path":"tankHp" },
		"name": "Remain HP",
		"format": "{{hp-ratio}}%"
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
        "format": "<font color='{{c:r}}'>{{r}}</font> | <font color='{{c:xte}}'>{{xte}}%</font> / <font color='{{c:t-battles}}'>{{t-battles}}</font>"
	}
}