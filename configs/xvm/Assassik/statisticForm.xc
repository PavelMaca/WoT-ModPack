/**
 * Parameters of the Battle Statistics form.
 * Параметры окна статистики по клавише Tab.
 */
{
  "statisticForm": {
    // true - Enable display of battle tier.
    // true - включить отображение уровня боя.
    "showBattleTier": true,
    // true - Disable Platoon icons.
    // true - убрать отображение иконки взвода.
    "removeSquadIcon": false,
	// true - disable vehicle level indicator.
    // true - убрать отображение уровня танка.
    "removeVehicleLevel": false,
    // true - disable vehicle type icon. This space will be used for formatted vehicle field.
    // true - убрать отображение типа танка. Пустое место будет использовано под форматируемое поле.
    "removeVehicleTypeIcon": false,
    // X offset for allies squad icons
    // Cмещение по оси X значка взвода для союзников
    "squadIconOffsetXLeft": 0,
    // X offset for enemies squad icons field
    // Cмещение по оси X значка взвода для противников
    "squadIconOffsetXRight": 0,
    // X offset for allies player names field
    // Cмещение по оси X поля ника для союзников
    "nameFieldOffsetXLeft": 0,
    // X offset for enemies player names field
    // Cмещение по оси X поля ника для противников
    "nameFieldOffsetXRight": 0,
    // X offset for "formatLeftVehicle" field
    // Cмещение по оси X поля названия танка для союзников
    "vehicleFieldOffsetXLeft": 0,
    // X offset for "formatRightVehicle" field
    // Cмещение по оси X поля названия танка для противников
    "vehicleFieldOffsetXRight": 0,
    // X offset for allies vehicle icons
    // Смещение по оси X иконки танка для союзников
    "vehicleIconOffsetXLeft": 0,
    // X offset for enemies vehicle icons
    // Смещение по оси X иконки танка для противников
    "vehicleIconOffsetXRight": 0,
    // Display options for Team/Clan logos (see battleLoading.xc).
    // Параметры отображения иконки игрока/клана (см. battleLoading.xc).
    "clanIcon": ${"defines.xc":"clanIcon"},
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftNick": "<img src='xvm://res/icons/flags/{{flag|default}}.png' width='16' height='13'> {{name%.15s~..}} <font alpha='#A0'>{{clan}}</font>",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightNick": "{{name%.15s~..}} <font alpha='#A0'>{{clan}}</font> <img src='xvm://res/icons/flags/{{flag|default}}.png' width='16' height='13'>",
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftVehicle": ${"defines.xc":"formatLeft"},
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightVehicle": ${"defines.xc":"formatRight"}
  }
}
