﻿/**
 * Capture bar.
 * Полоса захвата.
 */
{
  "captureBar": {
    // false - Disable.
    // false - отключить.
    "enabled": true,
    // Upper textfield offset in case of big font size.
    // Смещение верхнего поля вверх на случай больших размеров шрифтов.
    "primaryTitleOffset": 7,
    // Append plus to three capturers. Cant calculate more than three.
    // Дописывать плюс к тройке захватчиков. Невозможно рассчитать более трёх.
    "appendPlus" : true,
    // Capture format (macros allowed, see readme-en.txt).
    // Формат захвата (допускаются макроподстановки, см. readme-ru.txt).
    "enemy": { // Вражеской.
      // Upper textfield.
      // Верхнее текстовое поле.
      "primaryTitleFormat": "<font size='15' color='#00CC00'>{{l10n:enemyBaseCapture}} {{extra}}</font>",
      // Lower textfield.
      // Нижнее текстовое поле.
      "secondaryTitleFormat": "<font size='15' color='#FFFFFF'>{{points}}</font>",
      // Full capture text.
      // Текст полного захвата.
      "captureDoneFormat":    "<font size='17' color='#FFCC66'>{{l10n:enemyBaseCaptured}}</font>",
      // Extra text available after necessary calculations.
      // Дополнительный текст после необходимого расчета.
      "extra": "{{l10n:Capturers}}: <b><font color='#FFCC66'>{{tanks}}</font></b> {{l10n:Timeleft}}: <b><font color='#FFCC66'>{{time}}</font><b>",
      // Fields shadow
      // Тень полей.
      "shadow": {
        // Цвет.
        "color": "0x000000",
        // Opacity 0-100.
        // Прозрачность 0-100.
        "alpha": 70,
        // Blur 0-255; 6 is recommended.
        // Размытие 0-255; 6 рекомендовано.
        "blur": 6,
        // Intensity 0-255; 3 is recommended.
        // Интенсивность 0-255; 3 рекомендовано.
        "strength": 3
      }
    },
    "ally": { // Союзников.
      "primaryTitleFormat":   "<font size='15' color='#FF0000'>{{l10n:allyBaseCapture}} {{extra}}</font>",
      "secondaryTitleFormat": "<font size='15' color='#FFFFFF'>{{points}}</font>",
      "captureDoneFormat":    "<font size='17' color='#FFCC66'>{{l10n:allyBaseCaptured}}</font>",
      "extra": "{{l10n:Capturers}}: <b><font color='#FFCC66'>{{tanks}}</font></b> {{l10n:Timeleft}}: <b><font color='#FFCC66'>{{time}}</font><b>",
      "shadow": {
        "color": "0x000000",
        "alpha": 70,
        "blur": 6,
        "strength": 3
      }
    }
  }
}
