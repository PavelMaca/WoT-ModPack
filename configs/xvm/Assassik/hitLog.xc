/**
 * Hit log (my hits calculator).
 * Лог попаданий (счетчик своих попаданий).
 */
{
  "hitLog": {
    // false - Disable.
    // false - отключить.
    "visible": true,

    // Show enemy HP left by Alt press
    // Destroyed enemies and enemies HP gets updated only when it markers become visible.
    // Markers are visible only inside 564m circle.
    // Circle with 564 meters radius is game engine restriction. Maximum marker show distance.
    // Particular enemy data will not be updated while you cant see this enemy marker or its wreck.

    // Показывать оставшееся HP врагов по нажатию Alt
    // Уничтоженные враги и вражеское HP обновляется только, когда маркеры становятся видимыми.
    // Маркеры видимы только в круге радиусом 564м.
    // Круг радиусом 564 метров - это ограничение игрового движка. Максимальная дистанция отрисовки маркеров.
    // Данные по конкретному врагу не могут быть обновлены пока не видно его маркер или обломки.
    "hpLeft": {
        // false - Disable.
        // false - отключить.
        "enabled": true,
        // Header - Only localization macros are allowed, see macros.txt.
        // Заголовок - допускаются только макросы перевода, см. macros.txt.
        "header": "<font color='#FFFFFF'>{{l10n:hpLeftTitle}}</font>",
        // Row in HP list (macros allowed, see macros.txt).
        // Строка в списке попаданий (допускаются макроподстановки, см. macros.txt)
        "format": "<textformat tabstops='[40,110]'><font color='{{c:hp-ratio}}'>{{hp}}</font><tab> <font color='{{c:vtype}}'>{{vehicle}}<tab> <font size='12'>{{nick}}</font></font></textformat>"
    },

    // X position (negative values - bind to right side of screen).
    // Позиция X (отрицательные значения - привязать к правой стороне экрана).
    "x": 370,
    // Y position (negative values - bind to bottom side of screen).
    // Позиция Y (отрицательные значения - привязать к нижней стороне экрана).
    "y": 5,
    // Width.
    // Ширина.
    "w": 500,
    // Height.
    // Высота.
    "h": 1000,
    // Number of lines with hits. Old lines will be pushed out.
    // Количество строк с попаданиями. Устаревшие данные выталкиваются.
    "lines": 5,
    // Log direction: up - lines will be added from up to down, down - from down to up.
    // Направление лога: up - строки добавляются сверху, down - снизу.
    "direction": "down",
    // Group hits by players name.
    // Группировать попадания по имени игрока.
    "groupHitsByPlayer": true,
    // Insert order: begin - insert new values to begin, end - add to end.
    // Сортировка попаданий: begin - новые значения добавляются сверху, end - снизу.
    "insertOrder": "end",
    // Substitution for {{dead}} macro when tank is dead.
    // Подстановка для макроса {{dead}}, когда танк умирает.
    "deadMarker": "<font face='Wingdings'>N</font>",
    "blowupMarker": "<font face='Wingdings'>M</font>",
    // Default header format (before first hit). Only localization macros are allowed, see macros.txt.
    // Формат заголовка по умолчанию (до первого попадания). Допускаются только макросы перевода, см. macros.txt.
    "defaultHeader":  "<font color='#FFFFFF'>{{l10n:Hits}}:</font> <font size='13'>#0</font>",
    // Hits header format, including last hit (macros allowed, see macros.txt).
    // Формат заголовка (допускаются макроподстановки, см. macros.txt).
    "formatHeader":  "<font color='#FFFFFF'>{{l10n:Hits}}:</font> <font size='13'>{{n}}</font> | <font color='#FFFFFF'>{{l10n:Total}}:</font> <b>{{dmg-total}}</b> | <font color='#FFFFFF'>{{l10n:Last}}:</font> <font color='{{c:dmg-kind}}'><b>{{dmg}}</b> {{dead}}</font>",
    // List of hits format (macros allowed, see macros.txt).
    // Формат лога попаданий (допускаются макроподстановки, см. macros.txt)
    "formatHistory": "<textformat tabstops='[18,70,135,205]'><font size='12'>×{{n-player}}<tab>&nbsp;<font color='{{c:dmg-kind}}'>{{dmg-kind}}</font><tab>&nbsp;<font color='{{c:dmg-kind}}'>-{{dmg}}</font>&nbsp;</font>({{dmg-player}})<tab>&nbsp;<font color='{{c:vtype}}'>{{vehicle}}<tab>&nbsp;<font size='12'>{{nick}}</font>&nbsp;{{dead}}</font></textformat>",
    // Shadow options.
    // Параметры тени.
    "shadow": {
      // Opacity.
      // Прозрачность.
      "alpha": 100,
      // Цвет.
      "color": "0x000000",
      // Offset angle.
      // Угол смещения.
      "angle": 45,
      // Offset distance.
      // Дистанция смещения.
      "distance": 0,
      // Размер.
      "size": 5,
      // Intensity.
      // Интенсивность.
      "strength": 150
    }
  }
}
