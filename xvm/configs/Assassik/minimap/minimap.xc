/**
 *
 */
{
  // Minimap
  "minimap": {
    // Hint: minimap size can be changed by "-" and "=" keyboard buttons.
    // Fields can load images from disk by HTML:
    //   "format": { "ally": "<img src='img://../icons/bzz.png' width='8' height='8'>"}, ...
    //   While file is at WoT\res_mods\icons\bzz.png
    //
    "enabled": true,                // false - Disable
    "mapBackgroundImageAlpha": 100, // Map image transparency.
    "selfIconAlpha": 100,           // Self icon transparency. White pointing arrow.
    "cameraAlpha": 100,             // Camera transparency and its attached geometry. Green triangle.
    "iconScale": 1,                 // Vehicles icon size.
                                    // Does not affect attached geometry and textfields.
                                    // Floating point allowed: 0.7 1.4.
    "zoom": { // Map zoom by key pressing. Key is defined at "keys" upper level section.
      "pixelsBack": 160,  // Number of pixels to get back from maximum size
      "centered": true    // Center zoomed minimap at display center
    },
    "labels": ${"minimapLabels.xc":"labels"},
    "circles": ${"minimapCircles.xc":"circles"},
    "lines": ${"minimapLines.xc":"lines"},
    "square" : { // Square with 1000m side. Shows maximum unit draw distance.
      "enabled": true,
      "artilleryEnabled": false, // Show square if using artillery\SPG vehicle
      "thickness": 0.7,
      "alpha": 40,
      "color": "0xFFFFFF"
    }
  }
}
