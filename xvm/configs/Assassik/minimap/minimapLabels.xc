/**
 *
 */
{
  "labels": {                     // Textfields. Basic HTML\CSS supported.
      "nickShrink": 5,              // Maximum nickname size for {{short-nick}} macro.
      "vehicleclassmacro": {        // {{vehicle-class}} macro substitutions by vehicle class.
        "light": "", // ♦
        "medium": "",
        "heavy": "",
        "td": "",    // ▼
        "spg": "■",  // Artillery
        "superh": "" // HT10 by gui_settings.xml
        // Special symbols website:
        //   http://www.fileformat.info/info/unicode/char/25a0/index.htm
        // Great symbolic font by Andrey_Hard for {{vehicle-class}}:
        //   http://goo.gl/d2KIj
      },
      "units": { // Textfields for tanks on minimap.
        "revealedEnabled":  true, // Textfields switch for revealed units.
        "lostEnemyEnabled": true, // Textfields switch for lost enemy units. Show last seen position.
        "format": {
          "ally":  "<span class='mm_a'>{{vehicle}}</span>",
          "enemy": "<span class='mm_e'>{{vehicle}}</span>",
          "squad": "<textformat leading='-1'><span class='mm_s'><i>{{short-nick}}</i>\n{{vehicle}}</span><textformat>",
          "lost":  "<span class='mm_dot'>\u2022</span><span class='mm_l'><i>{{vehicle}}</i></span>",  // Lost enemy units
          "oneself": ""  // For your own marker or spectated subject.
        },
        "css": { // CSS style.
          "ally":  ".mm_a{font-family:$FieldFont; font-size:8px; color:#C8FFA6;}",
          "enemy": ".mm_e{font-family:$FieldFont; font-size:8px; color:#FCA9A4;}",
          "squad": ".mm_s{font-family:$FieldFont; font-size:8px; color:#FFC099;}",
          "lost":  ".mm_l{font-family:$FieldFont; font-size:8px; color:#FCA9A4;} .mm_dot{font-family:Arial; font-size:17px; color:#FCA9A4;}",
          "oneself": ".mm_o{font-family:$FieldFont; font-size:8px; color:#FFFFFF;}"
        },
        "shadow": { // Fields shadow.
          "ally": {
            "enabled": true,
            "color": "0x000000",
            "distance": 0,
            "angle": 0,
            "alpha": 80,
            "blur": 3,
            "strength": 4
          },
          "enemy": {
            "enabled": true,
            "color": "0x000000",
            "distance": 0,
            "angle": 0,
            "alpha": 80,
            "blur": 3,
            "strength": 4
          },
          "squad": {
            "enabled": true,
            "color": "0x000000",
            "distance": 0,
            "angle": 0,
            "alpha": 80,
            "blur": 3,
            "strength": 4
          },
          "lost": {
            "enabled": true,
            "color": "0x000000",
            "distance": 0,
            "angle": 0,
            "alpha": 80,
            "blur": 6,
            "strength": 4
          },
          "oneself": {
            "enabled": true,
            "color": "0x000000",
            "distance": 0,
            "angle": 0,
            "alpha": 80,
            "blur": 3,
            "strength": 4
          }
        },
        "offset": {
          "ally":  {"x": 3, "y": -1},   // Field offset ralative to current icon.
          "enemy": {"x": 3, "y": -1},   // Field offset ralative to current icon.
          "squad": {"x": 3, "y": -2},   // Field offset ralative to current icon.
          "lost":  {"x": -6, "y": -10}, // Field offset ralative to enemy last seen position.
          "oneself": {"x": 0, "y": 0}   // Field offset ralative to current icon.
        },
        "alpha" : { // Transparency
          "ally":  100,
          "enemy": 100,
          "squad": 100,
          "lost":  70,
          "oneself": 100
        }
      },
      "mapSize": { // Textfield for map side size. 1000m, 700m, 600m. Works only with xvm-stat.exe if locale is not RU, EN or CH
        "enabled": true,
        "format": "<b>{{cellsize}}0 m</b>",
        "css": "font-size:10px; color:#FFCC66;",
        "alpha": 80,
        "offsetX": 0,
        "offsetY": 0,
        "shadow": {
          "enabled": true,
          "color": "0x000000",
          "distance": 0,
          "angle": 0,
          "alpha": 80,
          "blur": 2,
          "strength": 3
        },
        // Decrease sizes in case of map image weird shrinking while map resize.
        // Increase sizes in case of field being partially cut off.
        "width": 100,
        "height": 30
      }
    }
}