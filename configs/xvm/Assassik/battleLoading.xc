/**
 * Parameters of the Battle Loading screen.
 * Параметры экрана загрузки боя.
 */
{
  "battleLoading": {
    // Format of clock on the Battle Loading Screen.
    // Формат часов на экране загрузки боя.
    // http://php.net/date
    "clockFormat": "H:i:s",
    // true - enable display of battle tier.
    // true - включить отображение уровня боя.
    "showBattleTier": true,
    // true - disable Platoon icons. This blank space can house, for example, clan logos.
    // true - убрать отображение иконки взвода. На пустое поле можно вывести, например, иконку клана.
    "removeSquadIcon": false,
	// true - disable vehicle level indicator.
    // true - убрать отображение уровня танка.
    "removeVehicleLevel": true,
    // true - disable vehicle type icon. This space will be used for formatted vehicle field.
    // true - убрать отображение типа танка. Пустое место будет использовано под форматируемое поле.
    "removeVehicleTypeIcon": true,
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
    // Display options for Team/Clan logos.
    // Параметры отображения иконки игрока/клана.
    "clanIcon": ${"defines.xc":"clanIcon"},
    // false - disable highlight of icons during battle start depends on ready state.
    // false - отключить затемнение иконки не загрузившегося игрока.
    "darkenNotReadyIcon": false,
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftNick": "<img src='xvm://res/icons/flags/{{flag|default}}.png' width='16' height='13'> {{name%.15s~..}} <font alpha='#A0'>{{clan}}</font>",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightNick": "{{name%.15s~..}} <font alpha='#A0'>{{clan}}</font> <img src='xvm://res/icons/flags/{{flag|default}}.png' width='16' height='13'>",
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftVehicle": ${"defines.xc":"formatLeft_loading"},
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightVehicle": ${"defines.xc":"formatRight"}
  }
}
