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
		"textFormat": {
			"$ref": { "path":"template.textFormat" },
			"size": 11,
			"color": "0xFCFCFC"
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
	},
	
	// Text field with rating.
    // Текстовое поле с рейтингом.
    "rating": {
		"$ref": { "path":"template" },
		"name": "Rating",
		"x": -33,
		"y": -20,
		"alpha": "{{xvm-stat?100|0}}",
		"textFormat": {
			"font": "xvm",
			"size": 16,
			"color": "{{c:r|#999999}}",
			"align": "right",
			"bold": false,
			"italic": false
		},
		"shadow": {
			"enabled": true,
			"distance": 0,
			"angle": 45,
			"color": "0x000000",
			"alpha": 100,
			"blur": 2,
			"strength": 1
		},
		"format": "&#x115;"
    },
	 // Text field with the XMQP event marker.
    // Текстовое поле с маркером события XMQP.
    "xmqpEvent": {
      "name": "xmqp event",           //  название текстового поля, ни на что не влияет
      "enabled": true,                //  false - не отображать
      "x": 0,                         //  положение по оси X
      "y": "{{battletype?-71|{{squad?-71|-56}}}}",  //  положение по оси Y
      "alpha": 100,                   //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
      // Font options.
      // Параметры шрифта.
      "textFormat": {
        "font": "xvm",                //  название
        "size": 23,                   //  размер
        "color": "0xFFBB00",          //  цвет (допускается использование динамического цвета, см. macros.txt)
        "align": "center",            //  выравнивание текста (left, center, right)
        "bold": false,                //  обычный (false) или жирный (true)
        "italic": false               //  обычный (false) или курсив (true)
      },
      // Shadow options.
      // Параметры тени.
      "shadow": {
        // false - no shadow
        // false - без тени
        "distance": 0,                //  дистанция смещения
        "angle": 45,                  //  угол смещения
        "color": "0x000000",          //  цвет
        "alpha": 100,                 //  прозрачность
        "blur": 4,                    //  размытие
        "strength": 1                 //  интенсивность
      },
      "format": "<font color='{{x-spotted?#FFBB00|#FFFFFF}}' alpha='{{x-spotted?#FF|#80}}'>{{x-spotted?&#x70;|{{x-sense-on?&#x70;}}}}</font> {{x-overturned?&#x112;}}"  //  формат текста. См. описание макросов в macros.txt
    }
}