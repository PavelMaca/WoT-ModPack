/**
 * Normal carousel cells settings
 * Настройки ячеек карусели обычного размера
 */
{
  // Definitions
  // Шаблоны
  "def": {
    // Text fields shadow.
    // Тень текстовых полей.
    "textFieldShadow": { "enabled": true, "color": "{{v.premium?0x994400|0x000000}}", "alpha": 80, "blur": 2, "strength": 2, "distance": 0, "angle": 0 }
  },
  "normal": {
    // Cell width
    // Ширина ячейки
    "width": 160,
    // Cell height
    // Высота ячейки
    "height": 100,
    // Spacing between carousel cells.
    // Отступ между ячейками карусели.
    "gap": 10,
    // Standard cell elements.
    // Стандартные элементы ячеек.
    "fields": {
      // "enabled"  - the visibility of the element / видимость элемента
      // "dx"       - horizontal shift              / смещение по горизонтали
      // "dy"       - vertical shift                / смещение по вертикали
      // "alpha"    - transparency                  / прозрачность
      // "scale"    - scale                         / масштаб
      //
      // Vehicle class icon.
      // Иконка типа техники.
      "tankType": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle level.
      // Уровень техники
      "level":    { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Double XP icon
      // Иконка не сбитого опыта за первую победу в день.
      "xp":       { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle name.
      // Название танка.
      "tankName": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle rent info text.
      // Инфо текст аренды танка.
      "rentInfo": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Info text (Crew incomplete, Repairs required)
      // Инфо текст (Неполный экипаж, Требуется ремонт).
      "info":     { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Info text for "Buy vehicle" and "Buy slot" slots.
      // Инфо текст для слотов "Купить машину" и "Купить слот".
      "infoBuy":  { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Clan lock timer
      // Таймер блокировки танка
      "clanLock": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Price
      // Цена
      "price":    { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Action price
      // Акционная цена
      "actionPrice": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 }
    },
    // Extra cell fields (see playersPanel.xc).
    // Дополнительные поля ячеек (см. playersPanel.xc).
    "extraFields": [
	  // Elite status
      { 
	    "x": 155, "y": 15, "w": 50, "h": 20, 
		"align": "right", 
		"format": "{{v.xpToElite?{{v.xpToEliteLeft%'d}}}}", 
		"shadow": ${ "def.textFieldShadow" } 
      },
      // Sight of mastery
      { 
	    "x": 4, "y": 15, "w": 25, "h": 25, 
	    "src": "img://gui/maps/icons/library/proficiency/class_icons_{{v.mastery}}.png"
	  },
	  // Marks on gun icon
      { 
	    "x": 30, "y": 20, 
		"src": "cfg://Assassik/img/marksOnGun/{{v.marksOnGun|x}}.png"
      },
	  // DMG rating
	  { 
	    "x": 45, "y": 18, 
	    "format": "<b><font size='12' color='#C8C8B5'><font face='Arial'>{{v.damageRating%.1d~%}}</font></b>",
	    "shadow": ${ "def.textFieldShadow" }
      }, 
	  //  Marks on gun text
      { 
	    "x": 37, "y": "{{v.marksOnGun?18|17}}", "align": "center",
        "format": "<b><font size='9' color='#C8C8B5'>{{v.marksOnGun|x}}</font></b>",
        "shadow": ${ "def.textFieldShadow" }
      },
      { 
	    "x": 21, "y": 0,
        "format": "<b><font size='12' color='#C8C8B5'><font face='Arial'>{{v.rlevel}}</font>  {{v.battletiermin}}-{{v.battletiermax}}</font></b>",
        "shadow": ${ "def.textFieldShadow" }
      },
	  // // Vehicle name
      {
		"x": 158, "y": 77, "align": "right", "alpha": "100",
        "format": "<font size='15' color='{{v.premium?#FEA659|#C8C8B5}}'>{{v.name}}</font>",
        "shadow": { "color": "{{v.premium?0xFC3700|0x73734C}}", "alpha": "{{v.premium?1|0.8}}", "blur": 6, "strength": 2, "distance": 0, "angle": 0 }
      },
      { 
	    "x": -2, "y": -1, "h": 100, "w": "164", 
		"bgColor": "{{v.selected?#FFA759|#000000}}", "alpha": "{{v.selected?5|0}}"
      }
    ]
  }
}
