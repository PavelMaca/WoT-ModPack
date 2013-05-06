/**
 * Parameters of the Battle Statistics form.
 * Параметры окна статистики по клавише Tab.
 */
{
  "statisticForm": {
    // true - Enable display of "chance to win" (only with xvm-stat).
    // true - включить отображение шансов на победу (только с xvm-stat).
    "showChances": true,
    // true - Show experimental "chance to win" formula
    // true - показывать экспериментальную формулу расчета шансов.
    "showChancesExp": false,
    // true - Disable Platoon icons.
    // true - убрать отображение иконки взвода.
    "removeSquadIcon": false,
    // Display options for Team/Clan logos (see battleLoading.xc).
    // Параметры отображения иконки игрока/клана (см. battleLoading.xc).
    "clanIcon": ${"defines.xc":"clanIcon"},
    // Display format for the left panel (macros allowed, see readme-en.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatLeft": ${"defines.xc":"formatLeft"},
    // Display format for the right panel (macros allowed, see readme-en.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatRight": ${"defines.xc":"formatRight"}
  }
}
