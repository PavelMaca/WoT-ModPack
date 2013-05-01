/**
 *
 */
{
  // Capture bar
  "captureBar": {
    "enabled": true, // On/off switch
    "primaryTitleOffset": 7, // Upper textfield offset in case of big font size
    "appendPlus" : true, // Append plus to three capturers. Cant calculate more than three.
    // Capture format (macros allowed, see readme-en.txt)
    "enemy": {
      "primaryTitleFormat":   "<font size='15' color='#00CC00'>Obsazování nepřátelské základny! {{extra}}</font>", // Upper textfield
      "secondaryTitleFormat": "<font size='15' color='#FFFFFF'>{{points}}</font>",                    // Lower textfield
      "captureDoneFormat":    "<font size='17' color='#FFCC66'>Nepřátelská základna obsazena!</font>",          // Full capture text
      "extra": "Obsazujicích: <b><font color='#FFCC66'>{{tanks}}</font></b> Zbývá: <b><font color='#FFCC66'>{{time}}</font><b>", // Extra text available after necessary calculations
      "shadow": {            // Fields shadow
        "color": "0x000000", // Color
        "alpha": 70,         // Alpha 0-100
        "blur": 6,           // Blur 0-255; 6 is recommended
        "strength": 3        // Strength 0-255; 3 is recommended
      }
    },
    "ally": {
      "primaryTitleFormat":   "<font size='15' color='#FF0000'>Obsazování spojenecké základny! {{extra}}</font>",
      "secondaryTitleFormat": "<font size='15' color='#FFFFFF'>{{points}}</font>",
      "captureDoneFormat":    "<font size='17' color='#FFCC66'>Spojenecká základna obsazena!</font>",
      "extra": "Obsazujicích: <b><font color='#FFCC66'>{{tanks}}</font></b> Zbývá: <b><font color='#FFCC66'>{{time}}</font><b>",
      "shadow": {
        "color": "0x000000",
        "alpha": 70,
        "blur": 6,
        "strength": 3
      }
    }
  }
}
