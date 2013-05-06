/**
 * Parameters of the Battle Loading screen.
 * Параметры экрана загрузки боя.
 */
{
  "battleLoading": {
    // Format of clock on the Battle Loading Screen. Format: Y:year, M:month, D:day, H:hour, N:minutes, S:seconds. "" - remove clock.
    // Формат часов на экране загрузки боя. Формат: Y:год, M:месяц, D:день, H:часы, N:минуты, S:секунды. "" - убрать часы.
    "clockFormat": "H:N:S",
    // true - Enable display of "chance to win" (only with xvm-stat) Read more: http://www.koreanrandom.com/forum/topic/1663-/
    // true - включить отображение шансов на победу (только с xvm-stat). Прочитать подробней: http://www.koreanrandom.com/forum/topic/1663-/
    "showChances": true,
    // Show experimental "chance to win" formula.
    // Показывать экспериментальную формулу расчета шансов.
    "showChancesExp": false,
    // true - Disable Platoon icons. This blank space can house, for example, clan logos.
    // true - убрать отображение иконки взвода. На пустое поле можно вывести, например, иконку клана.
    "removeSquadIcon": false,
    // Display options for Team/Clan logos.
    // Параметры отображения иконки игрока/клана.
    "clanIcon": ${"defines.xc":"clanIcon"},
    // Display format for the left Players Panel (macros allowed, see readme-en.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatLeft": ${"defines.xc":"formatLeft_loading"},
    // Display format for the right Players Panel (macros allowed, see readme-en.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatRight": ${"defines.xc":"formatRight"}
  }
}
