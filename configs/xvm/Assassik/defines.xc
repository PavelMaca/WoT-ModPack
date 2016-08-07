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
      "enabled": false,
      "x": 65, "y": 6, "width": 16, "height": 16, "align": "center", "alpha": 90, "bindToIcon": true,
      "src": "{{clanicon}}"
  }
}
