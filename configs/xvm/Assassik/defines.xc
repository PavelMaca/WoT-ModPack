/**
 *
 */
{
  // Display format for the left column (macros allowed, see readme-en.txt)
  "formatLeft": "<textformat tabstops='[43,73,103,128,163]'>&nbsp;<tab><font color='{{c:rating}}'>{{rating%2d~%|--%}}</font>&nbsp;<tab><font color='{{c:r}}'>{{r}}</font>&nbsp;<tab><font color='{{c:kb}}'>{{kb%2d~k|--k}}</font>&nbsp;<tab>|&nbsp;<font color='{{c:t-battles}}'>{{t-battles%4d|----}}</font><tab>&nbsp;</textformat>",

  // -3 in tabstops='[40,70,100,123,163]
  "formatLeft_loading": "<textformat tabstops='[40,70,100,123,163]'>&nbsp;<tab><font color='{{c:rating}}'>{{rating%2d~%|--%}}</font>&nbsp;<tab><font color='{{c:r}}'>{{r}}</font>&nbsp;<tab><font color='{{c:kb}}'>{{kb%2d~k|--k}}</font>&nbsp;<tab>|&nbsp;<font color='{{c:t-battles}}'>{{t-battles%4d|----}}</font><tab>&nbsp;</textformat>",

  // Display format for the right column (macros allowed, see readme-en.txt)
  "formatRight": "<textformat tabstops='[25,55,85]'><font color='{{c:t-battles}}'>{{t-battles%4d|----}}</font>&nbsp;<tab>|&nbsp;<font color='{{c:kb}}'>{{kb%2d~k|--k}}</font><tab>&nbsp;<font color='{{c:r}}'>{{r}}</font><tab>&nbsp;<font color='{{c:rating}}'>{{rating%2d~%|--%}}</font></textformat>",

  // Display options for Team/Clan logos (see battleLoading above)
  "clanIcon": {                               // Display options for Team/Clan logos
      "show": false,                             //   false - Disable Team/Clan logos in Battle Loading Screen
      "x": 0,                                   //   Position on the X axis, relative to the vehicle icon
      "y": 6,                                   //   Position on the Y axis, relative to the vehicle icon
      "xr": 0,                                  //   Position on the X axis for right side (positive values run to the *inside* of the table)
      "yr": 6,                                  //   Position on the Y axis for right side
      "w": 16,                                  //   Width of the Team/Clan logo
      "h": 16,                                  //   Height of the Team/Clan logo
      "alpha": 90                               //   Transparency of the Team/Clan logo
  }
}
