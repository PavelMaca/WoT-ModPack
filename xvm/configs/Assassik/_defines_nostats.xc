/**
 * 
 */
{
  // Complete disable / enable statistics
  "stats": {
	  "enabled": false,
	  "contourIconY": -65
  }
  
  // Display format for the left column (macros allowed, see readme-en.txt)
  "formatLeft": "{{vehicle}}",
   
  // Display format for the right column (macros allowed, see readme-en.txt)
  "formatRight": "{{vehicle}}",
  
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
