/**
 *
 */
{
  // Hit log (my hits calculator)
  "hitLog": {
    "visible": true,      // On/off switch
    "x": 370,             // X position (negative values - bind to right side of screen)
    "y": 5,               // Y position (negative values - bind to bottom side of screen)
    "w": 500,             // Width
    "h": 1000,            // Height
    "lines": 5,           // Number of lines with hits. Old lines will be pushed out
    "direction": "down",  // Log direction: up - lines will be added from up to down, down - from down to up.
    "groupHitsByPlayer": true, // Group hits by players name
	"insertOrder": "end", // Insert order: begin - insert new values to begin, end - add to end
    // Substitution for {{dead}} macro when tank is dead
    "deadMarker": "<font face='Wingdings'>N</font>",
    "blowupMarker": "<font face='Wingdings'>M</font>",
    // Default header format (before first hit). Macros IS NOT allowed.
    "defaultHeader":  "<font color='#FFFFFF'>Zásahů:</font> <font size='13'>0</font>",
    // Hits header format, including last hit (macros allowed, see readme-en.txt)
    "formatHeader": "<font color='#FFFFFF'>Zásahů:</font> <font size='13'>{{n}}</font> | <font color='#FFFFFF'>Poškození:</font> <b>{{dmg-total}}</b> | <font color='#FFFFFF'>Poslední:</font> <font color='{{c:dmg-kind}}'><b>{{dmg}}</b> {{dead}}</font>",
    // List of hits format (macros allowed, see readme-en.txt)
    "formatHistory": "<textformat tabstops='[18,70,135,205]'><font size='12'>×{{n-player}}<tab>&nbsp;<font color='{{c:dmg-kind}}'>{{dmg-kind}}</font><tab>&nbsp;<font color='{{c:dmg-kind}}'>-{{dmg}}</font>&nbsp;</font>({{dmg-player}})<tab>&nbsp;<font color='{{c:vtype}}'>{{vehicle}}<tab>&nbsp;<font size='12'>{{nick}}</font>&nbsp;{{dead}}</font></textformat>",
    "shadow": {                       //   Shadow options
      "alpha": 100,                   //     Opacity
      "color": "0x000000",            //     Color
      "angle": 45,                    //     Offset angle
      "distance": 0,                  //     Offset distance
      "size": 5,                      //     Size
      "strength": 150                 //     Intensity
    }
  }
}
