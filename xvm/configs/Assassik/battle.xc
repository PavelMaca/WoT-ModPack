/**
 * General parameters for the battle interface
 */
{
  "battle": {
    "mirroredVehicleIcons": false,               // false - Disable tank icon mirroring (good for alternative icons). True by default.
    "showPostmortemTips": true,                 // false - Disable pop-up panel at the bottom after death. True by default.
    "removePanelsModeSwitcher": false,          // true - Remove the Players Panel mode switcher (buttons for changing size)
    "highlightVehicleIcon": true,               // false - disable highlighting of own vehicle icon and squad
    "clockFormat": "H:N",                       // Format of clock on the Debug Panel (near FPS). Format: Y:year, M:month, D:day, H:hour, N:minutes, S:seconds. "" - remove clock.
    "useStandardMarkers": false,                // true - use standard client vehicle markers
    "clanIconsFolder": "clanicons"     // path to clan icons folder relative to res_mods/[GAME VERSION]/gui/flash
  },
  // Frag counter panel at top side of battle windows interface
  "fragCorrelation": {
    "hideTeamTextFields": true // true - hide textfields "Allies | Enemies"
  }
}
