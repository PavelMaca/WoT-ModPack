/**
 *
 */
{
  // Parameters of the Battle Loading Screen
  "battleLoading": {
    "clockFormat": "H:N:S",                     // Format of clock on the Battle Loading Screen. Format: Y:year, M:month, D:day, H:hour, N:minutes, S:seconds. "" - remove clock.
    "showChances": true,                       // true - Enable display of "chance to win" (only with xvm-stat) Read more: http://www.koreanrandom.com/forum/topic/1663-
    "showChancesExp": false,                    // Show experimental "chance to win" formula
    "removeSquadIcon": false,                   // true - Disable Platoon icons. This blank space can house, for example, clan logos
    // Display options for Team/Clan logos
	"clanIcon": ${"defines.xc":"clanIcon"},
    // Display format for the left Players Panel (macros allowed, see readme-en.txt)
    "formatLeft": ${"defines.xc":"formatLeft_loading"},
    // Display format for the right Players Panel (macros allowed, see readme-en.txt)
    "formatRight": ${"defines.xc":"formatRight"}
  }
}
