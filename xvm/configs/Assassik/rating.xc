/**
 * Управление статистикой
 * Работает только с xvm-stat
 */
{
  "rating": {
    "showPlayersStatistics": ${ "defines.xc":"stats.enabled" },              // true - Toggle player statistics on/off. Global setting - without the statistics module, this is always disabled
    "loadEnemyStatsInFogOfWar": true,           // true - Enable downloading of data on opponents in the "fog of war"
    "enableStatisticsLog": false,               // true - Enable saving statistics to "xvm-stat.log" file
    "enableUserInfoStatistics": true,           // true - Enable statistics in the user info window
    "enableCompanyStatistics": true             // true - Enable statistics in the company window
  }
}
