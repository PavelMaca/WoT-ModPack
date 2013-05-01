/**
 *
 */
{
	"markers": {
		"ally": ${"ally-enemy"},
		"enemy": ${"ally-enemy"}
	},
  
	"ally-enemy": {
		"alive": {
			// alive - normal mode (without 'Alt')
			"normal": {
				"$ref": { "path":"sectionTemplate" },
				"textFields": [
					${"textFields.xc":"tankName"},
					${"textFields.xc":"tankHp"}
				]
			},
			// alive - alternative mode (pressing 'Alt')
			"extended": {
				"$ref": { "path":"sectionTemplate" },
				"contourIcon": { 
					"$ref": { "path":"sectionTemplate.contourIcon" },
					"visible": true
				},
				"textFields": [
					${"textFields.xc":"playerName"},
					${"textFields.xc":"remainHp"},
					${"textFields.xc":"globalWinRate"}
				]
			}
		},
		"dead": {
			// dead - normal mode (without 'Alt')
			"normal": {
				"$ref": { "path":"sectionTemplate" },
				"healthBar": {
					"$ref": { "path":"sectionTemplate.healthBar" },
					"visible": false
				},
				"textFields": []
			},
			// dead - alternative mode (pressing 'Alt')
			"extended": {
				"$ref": { "path":"sectionTemplate" },
				"healthBar": {
					"$ref": { "path":"sectionTemplate.healthBar" },
					"visible": false
				},
				"textFields": [
					${"textFields.xc":"playerName"},
					${"textFields.xc":"tankNameDead"}
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
		"clanIcon": ${"../defines.xc":"clanIcon"},
		"levelIcon": ${"def.levelIcon"},
		"actionMarker": ${"def.actionMarker"}
	},
		
	"def": {
		  "vehicleIcon": {                    // "Type of vehicle" icon (HT / MT / LT / TD / Arty)
            "visible": true,                  //   false - Disable
            "showSpeaker": false,             //   true - Show speaker even if visible=false
            "x": 0,                           //   Position on the X axis
            "y": -16,                         //   Position on the Y axis
            "alpha": 100,                     //   Opacity
            "color": null,                    //   Color (currently not in use)
            "maxScale": 100,                  //   Maximum scale (default is 100)
            "scaleX": 0,                      //   Offset along the X axis (?)
            "scaleY": 16,                     //   Offset along the Y axis (?)
            "shadow": {                       //   Shadow options
              "alpha": 100,                   //     Opacity
              "color": "0x000000",            //     Color
              "angle": 45,                    //     Offset angle
              "distance": 0,                  //     Offset distance
              "size": 6,                      //     Size
              "strength": 200                 //     Intensity
            }
          },
		  "healthBar": {                      // Health indicator
            "visible": true,                  //   false - Disable
            "x": -41,                         //   Position on the X axis
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
            "visible": true,                  //   false - Disable
            "x": 0,                           //   Position on the X axis
            "y": -67,                         //   Position on the Y axis
            "alpha": 100,                     //   Opacity (dynamic transparency allowed, see readme-en.txt)
            "color": null,                    //   Color (dynamic colors allowed, see readme-en.txt)
            "font": {                         //   Font options
              "name": "$FieldFont",           //     Font name
              "size": 18,                     //     Font size
              "align": "center",              //     Text alignment (left, center, right)
              "bold": false,                  //     Normal (false) or bold (true)
              "italic": false                 //     Normal (false) or italic (true)
            },
            "shadow": {                       //   Shadow options
              "alpha": 100,                   //     Opacity
              "color": "0x000000",            //     Color
              "angle": 45,                    //     Offset angle
              "distance": 0,                  //     Offset distance
              "size": 6,                      //     Size
              "strength": 200                 //     Intensity
            },
            "speed": 2,                       //   Rising speed of displayed damage (float up speed)
            "maxRange": 40,                   //   Maximimum distance of target for which damage rises
            "damageMessage": "{{dmg}}",       //   Text for normal damage (see description of macros in the readme-en.txt)
            "blowupMessage": "Munice!"        //   Text for ammo rack explosion (see description of macros in the readme-en.txt)
          },
		  "contourIcon": {                    // Vehicle icon
            "visible": false,                 //   false - Disable
            "x": 0,                           //   Position on the X axis
            "y": -74,                         //   Position on the Y axis
            "alpha": 100,                     //   Opacity (dynamic transparency allowed, see readme-en.txt)
            "color": null,                    //   Color (dynamic colors allowed, see readme-en.txt)
            "amount": 0                       //   Color intensity from 0 to 100. The default is 0 (off).
          },
          "levelIcon": {                      // Vehicle tier
            "visible": false,                 //   false - Disable
            "x": 0,                           //   Position on the X axis
            "y": -21,                         //   Position on the Y axis
            "alpha": 100                      //   Opacity
          },
          "actionMarker": {                   // Markers "Help!" and "Attack!"
            "visible": true,                  //   false - Disable
            "x": 0,                           //   Position on the X axis
            "y": -67,                         //   Position on the Y axis
            "alpha": 100                      //   Opacity
          }
	}  
}