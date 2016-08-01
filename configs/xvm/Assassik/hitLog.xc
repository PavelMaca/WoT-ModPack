/**
 * Hit log (my hits calculator).
 * Лог попаданий (счетчик своих попаданий).
 */
{
  "hitLog": {
    // false - Disable.
    // false - отключить.
    "enabled": true,
    // Group hits by players name.
    // Группировать попадания по имени игрока.
    "groupHitsByPlayer": true,
    // Insert order: begin - insert new values to begin, end - add to end.
    // Сортировка попаданий: begin - новые значения добавляются сверху, end - снизу.
    "insertOrder": "end",
    // Substitution for {{hitlog.dead}} macro when tank is dead.
    // Подстановка для макроса {{hitlog.dead}}, когда танк умирает.
    "deadMarker": "<font face='Wingdings'>N</font>",
    "blowupMarker": "<font face='Wingdings'>M</font>",
    // Default header format (before first hit). Only localization macros are allowed, see macros.txt.
    // Формат заголовка по умолчанию (до первого попадания). Допускаются только макросы перевода, см. macros.txt.
    "defaultHeader":  "{{l10n:Hits}}: <font size='13'>#0</font>",
    // Hits header format, including last hit (macros allowed, see macros.txt).
    // Формат заголовка (допускаются макроподстановки, см. macros.txt).
    "formatHeader":  "{{l10n:Hits}}: <font size='13'>{{hitlog.n}}</font> | {{l10n:Total}}: <b>{{hitlog.dmg-total}}</b> | {{l10n:Last}}: <font color='{{c:dmg-kind}}'><b>{{dmg}}</b> {{hitlog.dead}}</font>",
    // List of hits format (macros allowed, see macros.txt).
    // Формат лога попаданий (допускаются макроподстановки, см. macros.txt)
    "formatHistory": "<textformat tabstops='[18,70,135,205]'><font size='12'>×{{hitlog.n-player}}<tab>&nbsp;<font color='{{c:dmg-kind}}'>{{dmg-kind}}</font><tab>&nbsp;<font color='{{c:dmg-kind}}'>-{{dmg}}</font>&nbsp;</font>({{hitlog.dmg-player}})<tab>&nbsp;<font color='{{c:vtype}}'>{{vehicle}}<tab>&nbsp;<font size='12'>{{nick}}</font>&nbsp;{{dead}}</font></textformat>"
  }
}
