/**
 * Parameters of the Players Panels ("ears").
 * Параметры панелей игроков ("ушей").
 */
{
  "def": {
    "nick": "<font color='{{c:r}}' alpha='{{alive?#FF|#80}}'>{{nick%.23s}}</font>",
    "vehicle": "<font color='{{c:t-battles}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font>"
  },
  
  // Enemy spotted status marker format for substitutions in extra fields.
  // Подстановка для дополнительного поля с маркером статуса засвета
  "enemySpottedMarker": {
    // Opacity percentage of spotted markers in the panels. 0 - transparent (disabled) ... 100 - opaque.
    // Прозрачность в процентах маркеров засвета в ушах. 0 - полностью прозрачные (отключены), 100 - не прозрачные.
    "alpha": 100,
    // x position.
    // положение по горизонтали.
    "x": 5,
    // y position.
    // положение по вертикали.
    "y": 0,
    // Horizontal alignment
    // Выравнивание по горизонтали
    "align": "center",
    // true - x position is binded to vehicle icon, false - binded to edge of the screen.
    // true - положение по горизонтали отсчитывается от иконки танка, false - от края экрана.
    "bindToIcon": true,
    // enemy spotted status marker format.
    // формат маркера статуса засвета.
    "format": "{{spotted}}",
    // shadow (see below).
    // настройки тени (см. ниже).
    "shadow": {}
  },
  // Parameters of the Players Panels ("ears").
  // Параметры панелей игроков ("ушей").
  "playersPanel": {
    // Opacity percentage of the panels. 0 - transparent, 100 - opaque.
    // Прозрачность в процентах ушей. 0 - прозрачные, 100 - не прозрачные.
    "alpha": 60,
    // Opacity percentage of icons in the panels. 0 - transparent ... 100 - opaque.
    // Прозрачность в процентах иконок в ушах. 0 - прозрачные, 100 - не прозрачные.
    "iconAlpha": 100,
    // true - disable background of the selected player.
    // true - убрать подложку выбранного игрока.
    "removeSelectedBackground": false,
    // true - Remove the Players Panel mode switcher (buttons for changing size).
    // true - убрать переключатель режимов ушей мышкой.
    "removePanelsModeSwitcher": false,
    // Start panels mode. Possible values: "none", "short", "medium", "medium2", "large".
    // Начальный режим ушей. Возможные значения: "none", "short", "medium", "medium2", "large".
    "startMode": "large",
    // Alternative panels mode. Possible values: null, "none", "short", "medium", "medium2", "large".
    // Альтернативный режим ушей. Возможные значения: null, "none", "short", "medium", "medium2", "large".
    "altMode": null,
    // Display options for Team/Clan logos (see battleLoading.xc).
    // Параметры отображения иконки игрока/клана (см. battleLoading.xc).
    "clanIcon": ${"defines.xc":"clanIcon"},    
    // Options for the "none" panels - empty panels.
    // Режим ушей "none" - пустые уши.
    "none": {
      // false - disable (отключить)
      "enabled": true,
      // Layout ("vertical" or "horizontal")
      // Размещение ("vertical" - вертикально, или "horizontal" - горизонтально)
      "layout": "vertical",
      // Extra fields.
      // Дополнительные поля.
      "extraFields": {
        "leftPanel": {
          "x": 0, // from left side of screen
          "y": 65,
          "width": 350,
          "height": 25,
          // Set of formats for left panel
          // Набор форматов для левой панели
          // example:
          // "format": [
          //   // simple format (just a text)
          //   "{{nick}}",
          //   "<img src='xvm://res/img/panel-bg-l-{{alive|dead}}.png' width='318' height='28'>",
          //   // extended format
          //   { "x": 20, "y": 10, "borderColor": "0xFFFFFF", "format": "{{nick}}" },
          //   { "x": 200, "src": "xvm://res/contour/{{vehiclename}}.png" }
          // ]
          //
          // types of formats available for extended format:
          //   - MovieClip (for loading image)
          //   - TextField (for writing text and creating rectangles)
          // if "src" field is present, MovieClip format will be used
          // if "src" field is absent, TextField format will be used
          //
          // fields available for extended format:
          //   "src" - resource path ("xvm://res/contour/{{vehiclename}}.png")
          //   "format" - text format (macros allowed)
          //
          // fields available for both MovieClip and TextField formats:
          //   "enabled" - enable/disable field creation (global macros allowed)
          //   "x" - x position (macros allowed)
          //   "y" - y position (macros allowed)
          //   "w" - width (macros allowed)
          //   "h" - height (macros allowed)
          //   "bindToIcon" - if enabled, x position is binded to vehicle icon (default false)
          //   "alpha" - transparency in percents (0..100) (macros allowed)
          //   "rotation" - rotation in degrees (0..360) (macros allowed)
          //   "align" - horizontal alignment ("left", "center", "right")
          //      for left panel default value is "left"
          //      for right panel default value is "right"
          //   "scaleX", "scaleY" - scaling (use negative values for mirroring)
          //
          // fields available for TextField format only:
          //   "valign" - vertical alignment ("top", "center", "bottom")
          //      default value is "top"
          //   "borderColor" - if set, draw border with specified color (macros allowed)
          //   "bgColor" - if set, draw background with specified color (macros allowed)
          //   "antiAliasType" - anti aliasing mode ("advanced" or "normal")
          //   "shadow": {
          //     "distance" (in pixels)
          //     "angle"    (0.0 .. 360.0)
          //     "color"    "0xXXXXXX"
          //     "alpha"    (0.0 .. 1.0)
          //     "blur"     (0.0 .. 255.0)
          //     "strength" (0.0 .. 255.0)
          //    }
          //
          // fields available for MovieClip format only:
          //     "highlight" - highlight icon depending on the player state, default false
          //
          // * all fields are optional
          //
          "formats": []
        },
        "rightPanel": {
          "x": 0, // from right side of screen
          "y": 65,
          "width": 350,
          "height": 25,
          // Set of formats for right panel (extended format supported, see above)
          // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
          "formats": []
        }
      }
    },
    // Options for the "short" panels - panels with frags and vehicle icon.
    // Режим ушей "short" - короткие уши (фраги и иконка танка).
    "short": {
      // false - disable (отключить)
      "enabled": true,
      // Minimum width of the column, 0-250. Default is 0.
      // Минимальная ширина поля, 0-250. По умолчанию: 0.
      "width": 0,
      // true - disable platoon icons
      // true - убрать отображение иконок взвода
      "removeSquadIcon": false,
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
        // enemy spotted status marker (see above).
        // маркер статуса засвета (см. выше).
        ${"enemySpottedMarker"}
      ]
    },
    // Options for the "medium" panels - the first of the medium panels.
    // Режим ушей "medium" - первые средние уши в игре.
    "medium": {
      // false - disable (отключить)
      "enabled": true,
      // Minimum width of the player's name column, 0-250. Default is 46.
      // Минимальная ширина поля имени игрока, 0-250. По умолчанию: 46.
      "width": 46,
      // true - disable platoon icons
      // true - убрать отображение иконок взвода
      "removeSquadIcon": false,
      // Display format for the left panel (macros allowed, see macros.txt).
      // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
      "formatLeft": ${"def.nick"},
      // Display format for the right panel (macros allowed, see macros.txt).
      // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
      "formatRight": ${"def.nick"},
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
        // enemy spotted status marker (see above).
        // маркер статуса засвета (см. выше).
        ${"enemySpottedMarker"}
      ]
    },
    // Options for the "medium2" panels - the second of the medium panels.
    // Режим ушей "medium2" - вторые средние уши в игре.
    "medium2": {
      // false - disable (отключить)
      "enabled": true,
      // Maximum width of the vehicle name column, 0-250. Default is 65.
      // Максимальная ширина поля названия танка, 0-250. По умолчанию: 65.
      "width": 65,
      // true - disable platoon icons
      // true - убрать отображение иконок взвода
      "removeSquadIcon": false,
      // Display format for the left panel (macros allowed, see macros.txt).
      // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
      "formatLeft": ${"def.vehicle"},
      // Display format for the right panel (macros allowed, see macros.txt).
      // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
      "formatRight": ${"def.vehicle"},
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
        // enemy spotted status marker (see above).
        // маркер статуса засвета (см. выше).
        ${"enemySpottedMarker"}
      ]
    },
    // Options for the "large" panels - the widest panels.
    // Режим ушей "large" - широкие уши в игре.
    "large": {
      // false - disable (отключить)
      "enabled": true,
      // Minimum width of the player's name column, 0-250. Default is 170.
      // Минимальная ширина поля имени игрока, 0-250. По умолчанию: 170.
      "width": 125,
      // true - disable platoon icons
      // true - убрать отображение иконок взвода
      "removeSquadIcon": false,
      // Display format for player nickname (macros allowed, see macros.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. macros.txt).
      "nickFormatLeft": ${"def.nick"},
      "nickFormatRight": ${"def.nick"},
      // Display format for vehicle name (macros allowed, see macros.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. macros.txt).
      "vehicleFormatLeft": ${"def.vehicle"},
      "vehicleFormatRight": ${"def.vehicle"},
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [
            { "x": 0, "y": 22, "valign": "left", "h": 3, "w": 220, "bgColor": 0, "alpha": "{{alive?30|0}}" },
            { "x": 0, "y": 22, "valign": "left", "h": 3, "w": "{{hp-ratio:220}}", "bgColor": "{{c:system}}", "alpha": "{{alive?38|0}}" }
      ],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
            { "x": 0, "y": 22, "valign": "right", "h": 3, "w": 220, "bgColor": 0, "alpha": "{{alive?30|0}}" },
            { "x": 0, "y": 22, "valign": "right", "h": 3, "w": "{{hp-ratio:220}}", "bgColor": "{{c:system}}", "alpha": "{{alive?38|0}}" },
            ${"enemySpottedMarker"}
      ]
    }
  }
}