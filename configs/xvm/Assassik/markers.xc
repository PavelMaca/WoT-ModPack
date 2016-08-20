/**
 *
 */
{
	"markers": {
		// false - use standard client vehicle markers.
		// false - использовать стандартные маркеры клиента.
		"enabled": true,
         // {{turret}} marker display strings.
        // Отображаемые строки {{turret}} маркера.
        "turretMarkers": {
          // Subject has stock turret and top gun can not be mounted. Subject is highly vulnerable.
          // Субъект имеет стоковую башню и топ орудие не может быть установлено. Субъект сильно уязвим.
          "highVulnerability": " <font face='Wingdings' size='11' color='#E15858'>ý</font>",
          // Subject has stock turret and top gun can be mounted. Subject is somewhat vulnerable.
          // Субъект имеет стоковую башню и топ орудие может быть установлено. Субъект немного уязвим.
          "lowVulnerability": " <font face='Wingdings' size='11' color='#79BE7E'>ţ</font>"
        },
		"ally": ${"ally-enemy"},
		"enemy": ${"ally-enemy"}
	},

	"ally-enemy": {
		"alive": {
			// alive - normal mode (without 'Alt')
			"normal": {
				"$ref": { "path":"sectionTemplate" },
				"textFields": [
					${"markers.textFields.xc":"tankName"},
					${"markers.textFields.xc":"tankHp"},
					${"markers.textFields.xc":"rating"},
					${"markers.textFields.xc":"xmqpEvent"}
				]
			},
			// alive - alternative mode (pressing 'Alt')
			"extended": {
				"$ref": { "path":"sectionTemplate" },
				//"contourIcon": {
				//	"$ref": { "path":"sectionTemplate.contourIcon" },
				//	"enabled": false
				//},
				"textFields": [
					${"markers.textFields.xc":"playerName"},
					${"markers.textFields.xc":"remainHp"},
					${"markers.textFields.xc":"rating"},
					${"markers.textFields.xc":"globalWinRate"}
				]
			}
		},
		"dead": {
			// dead - normal mode (without 'Alt')
			"normal": {
				"$ref": { "path":"sectionTemplate" },
				"healthBar": {
					"$ref": { "path":"sectionTemplate.healthBar" },
					"enabled": false
				},
				"textFields": []
			},
			// dead - alternative mode (pressing 'Alt')
			"extended": {
				"$ref": { "path":"sectionTemplate" },
				"healthBar": {
					"$ref": { "path":"sectionTemplate.healthBar" },
					"enabled": false
				},
				"textFields": [
					${"markers.textFields.xc":"playerName"},
					${"markers.textFields.xc":"tankNameDead"}
				]
			}
		}
	},
	
	"sectionTemplate":{
		"vehicleIcon": ${"def.vehicleIcon"},
		"healthBar": ${"def.healthBar"},
		"damageText": ${"def.damageText"},
		"damageTextPlayer": ${"def.damageText"},
		"damageTextSquadman": ${"def.damageText"},
		"contourIcon": ${"def.contourIcon"},
		"clanIcon": ${"defines.xc":"clanIcon"},
		"levelIcon": ${"def.levelIcon"},
		"actionMarker": ${"def.actionMarker"}
	},
		
	"def": {
		  "vehicleIcon": {                    // "Type of vehicle" icon (HT / MT / LT / TD / Arty)
            "enabled": true,                  //   false - Disable
            "showSpeaker": false,             //   true - Show speaker even if visible=false
            "x": 0,                           //   Position on the X axis
            "y": -16,                         //   Position on the Y axis
            "alpha": 100,                     //   Opacity
			// Maximum scale (default is 100).
			// Максимальный масштаб (по умолчанию 100).
            "maxScale": 100,
			// Offset along the X axis (?)
			// Смещение по оси X (?)
			"offsetX": 0,
			// Offset along the Y axis (?)
			// Смещение по оси Y (?)
			"offsetY": 0
          },
		  "healthBar": {                      // Health indicator
            "enabled": true,                  //   false - Disable
            "x": -37,                         //   Position on the X axis
            "y": -33,                         //   Position on the Y axis
            "alpha": 100,                     //   Opacity (dynamic transparency allowed, see readme-en.txt)
            "color": null,                    //   Primary color (dynamic colors allowed, see readme-en.txt)
            "lcolor": null,                   //   Optional color (for the gradient)
            "width": 80,                      //   Width of health bar
            "height": 12,                     //   Height of health bar
            "border": {                       //   Options for substrate and border
              "alpha": 30,                    //     Opacity
              "color": "0x000000",            //     Color
              "size": 1                       //     Border size
            },
            "fill": {                         //   Options for remaining health
              "alpha": 30                     //     Opacity
            },                                //
            "damage": {                       //   Options for animation of health loss
              "alpha": 80,                    //     Opacity
              "color": null,                  //     Color
              "fade": 1                       //     Fade time in seconds
            }
          },
		  "damageText": {                     // Floating damage values
            "enabled": true,                  //   false - Disable
            "x": 0,                           //   Position on the X axis
            "y": -67,                         //   Position on the Y axis
            "alpha": 100,                     //   Opacity (dynamic transparency allowed, see readme-en.txt)
            "color": null,                    //   Color (dynamic colors allowed, see readme-en.txt)
            "textFormat": {                         //   Font options
              "name": "$FieldFont",           //     Font name
              "size": 18,                     //     Font size
              "align": "center",              //     Text alignment (left, center, right)
              "bold": false,                  //     Normal (false) or bold (true)
              "italic": false                 //     Normal (false) or italic (true)
            },
			"shadow": {                     // Shadow options
				// false - no shadow
				// false - без тени
				"enabled": true,
				"distance": 0,                  // (in pixels)     / offset distance / дистанция смещения
				"angle": 45,                    // (0.0 .. 360.0)  / offset angle    / угол смещения
				"color": "0x000000",            // "0xXXXXXX"      / color           / цвет
				"alpha": 100,                   // (0 .. 100)      / opacity         / прозрачность
				"blur": 3,                      // (0.0 .. 255.0)  / blur            / размытие
				"strength": 1                   // (0.0 .. 255.0)  / intensity       / интенсивность
			},
            "speed": 2,                       //   Rising speed of displayed damage (float up speed)
            "maxRange": 40,                   //   Maximimum distance of target for which damage rises
            "damageMessage": "{{dmg}}",       //   Text for normal damage (see description of macros in the readme-en.txt)
            "blowupMessage": "{{l10n:blownUp}}\n{{dmg}}"        //   Text for ammo rack explosion (see description of macros in the readme-en.txt)
          },
		  "contourIcon": {                    // Vehicle icon
            "enabled": false,                 //   false - Disable
            "x": 6,                           //   Position on the X axis
            "y": -85,                         //   Position on the Y axis
            "alpha": 100,                     //   Opacity (dynamic transparency allowed, see readme-en.txt)
            "color": null,              //   Color (dynamic colors allowed, see readme-en.txt)
            "amount": 100                     //   Color intensity from 0 to 100. The default is 0 (off).
          },
          "levelIcon": {                      // Vehicle tier
            "enabled": false,                 //   false - Disable
            "x": 0,                           //   Position on the X axis
            "y": -21,                         //   Position on the Y axis
            "alpha": 100                      //   Opacity
          },
          "actionMarker": {                   // Markers "Help!" and "Attack!"
            "enabled": true,                  //   false - Disable
            "x": 0,                           //   Position on the X axis
            "y": -67,                         //   Position on the Y axis
            "alpha": 100                      //   Opacity
          }
	}
}