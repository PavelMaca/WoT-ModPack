/**
 *
 */
{
	"def":{
		"white": "0xFCFCFC",
		"yellow": "0xF8F400",
		"gold": "0xFFCC33",
		
		"orange": "0xFE7903",
		"lightOrange": "0xFFB964",
		
		"red": "0xF50800", 
		"darkRed": "0xCC3333",
		
		"lightBlue": "0x00EAFF",
		"lightGreen": "0x96FF00",
		
		"turquoise": "0x02C9B3",
		"purple": "0xD042F3"
		
	},
	
	"ranking": {
	  "error": 		${"def.white"},
      "veryBad": 	${"def.red"},
      "bad":		${"def.orange"},
      "normal":		${"def.yellow"},
      "good":		${"def.lightGreen"},
      "veryGood":	${"def.turquoise"},
      "unique":		${"def.purple"}
	},
		
   // Color settings
  "colors": {
    // System colors
    "system": {
	  "ally_alive_normal": ${"def.lightGreen"},             // Ally - alive
      "ally_alive_blind": ${"def.lightGreen"},              // Ally - alive - color blind mode
      "ally_dead_normal": "0x009900",              // Ally - dead
      "ally_dead_blind": "0x009900",               // Ally - dead - color blind mode
      "ally_blowedup_normal": "0x007700",          // Ally - blown-up
      "ally_blowedup_blind": "0x007700",           // Ally - blown-up - color blind mode
      "squadman_alive_normal": ${"def.lightOrange"},         // Platoon member - alive
      "squadman_alive_blind": "0xFFFF00",          // Platoon member - alive - color blind mode
      "squadman_dead_normal": "0xCA7000",          // Platoon member - dead
      "squadman_dead_blind": "0xAAAA00",           // Platoon member - dead - color blind mode
      "squadman_blowedup_normal": "0xA45A00",      // Platoon member - blown-up
      "squadman_blowedup_blind": "0x888800",       // Platoon member - blown-up - color blind mode
      "teamKiller_alive_normal": ${"def.lightBlue"},       // Team killer - alive
      "teamKiller_alive_blind": ${"def.lightBlue"},        // Team killer - alive - color blind mode
      "teamKiller_dead_normal": "0x097783",        // Team killer - dead
      "teamKiller_dead_blind": "0x097783",         // Team killer - dead - color blind mode
      "teamKiller_blowedup_normal": "0x096A75",    // Team killer - blown-up
      "teamKiller_blowedup_blind": "0x096A75",     // Team killer - blown-up - color blind mode
      "enemy_alive_normal": ${"def.red"},            // Enemy - alive
      "enemy_alive_blind": "0x8379FE",             // Enemy - alive - color blind mode
      "enemy_dead_normal": "0x840500",             // Enemy - dead
      "enemy_dead_blind": "0x47407A",              // Enemy - dead - color blind mode
      "enemy_blowedup_normal": "0x5A0401",         // Enemy - blown-up
      "enemy_blowedup_blind": "0x3B365F"           // Enemy - blown-up - color blind mode
    },
    // Color for damage text animation
    //   src_dst_type
    //   src: ally, squadman, enemy, unknown, player
    //   dst: ally, squadman, allytk, enemytk, enemy
    //   type: hit, kill, blowup
    "damage": ${"colorsDamage.xc":"damage"},
    // Damage kind
    "dmg_kind": {
      "attack": "0xFFAA55",                        // attack
      "fire": "0xFF6655",                          // fire
      "ramming": "0x998855",                       // ramming
      "world_collision": "0x228855",               // world_collision
      "other": "0xCCCCCC"                          // other
    },
    // Dynamic color by vehicle type
    "vtype": {
      "LT":  "0xA2FF9A",                           // Color for light tanks
      "MT":  "0xFFF198",                           // Color for medium tanks
      "HT":  "0xFFACAC",                           // Color for heavy tanks
      "SPG": "0xEFAEFF",                           // Color for arty
      "TD":  "0xA0CFFF",                           // Color for tank destroyers
      "premium": "0xFFCC66",                       // Color for premium tanks
      "usePremiumColor": false                     // Enable/disable premium color usage
    },
    // Dynamic color by remaining absolute health
    "hp": [
      { "value": 201,  "color": ${"def.red"} },    // Color for health less than 201
      { "value": 401,  "color": ${"def.darkRed"} },    // Color for health less than 401
      { "value": 1001, "color": ${"def.gold"} },    // Color for health less than 1001
      { "value": 9999, "color": ${"def.white"} }     // Color for health 1000 and more
    ],
    // Dynamic color by remaining health percent
    "hp_ratio": [
      { "value": 10,  "color": ${"def.red"} },    // Color for health less than 10 prercent
      { "value": 25,  "color": ${"def.darkRed"} },    // Color for health less than 25 prercent
      { "value": 50,  "color": ${"def.gold"} },    // Color for health less than 50 prercent
      { "value": 101, "color": ${"def.white"} }     // Color for health 50 prercent and more
    ],
    // Dynamic color for XVM Scale (only with xvm-stat)
    // http://www.koreanrandom.com/forum/topic/2625-xvm-scale
    "x": [
      { "value": 17,  "color": ${"ranking.veryBad"} },   // 00   - 16.5 - very bad   (20% of players)
      { "value": 34,  "color": ${"ranking.bad"} },   // 16.5 - 33.5 - bad        (better then 20% of players)
      { "value": 53,  "color": ${"ranking.normal"} },   // 33.5 - 52.5 - normal     (better then 60% of players)
      { "value": 76,  "color": ${"ranking.good"} },   // 52.5 - 75.5 - good       (better then 90% of players)
      { "value": 93,  "color": ${"ranking.veryGood"} },   // 75.5 - 92.5 - very good  (better then 99% of players)
      { "value": 999, "color": ${"ranking.unique"} }    // 92.5 - XX   - unique     (better then 99.9% of players)
    ],
    // Dynamic color by efficiency (only with xvm-stat)
    "eff": [
      { "value": 645,  "color": ${"ranking.veryBad"} },   //    0 - 644  - very bad
      { "value": 875,  "color": ${"ranking.bad"} },   //  645 - 869  - bad
      { "value": 1155, "color": ${"ranking.normal"} },   //  870 - 1149 - normal
      { "value": 1470, "color": ${"ranking.good"} },   // 1150 - 1464 - good
      { "value": 1740, "color": ${"ranking.veryGood"} },   // 1465 - 1724 - very good
      { "value": 9999, "color": ${"ranking.unique"} }    // 1725 - *    - unique
    ],
    // Dynamic color by WN6 rating (only with xvm-stat)
    "wn": [
      { "value": 435,  "color": ${"ranking.veryBad"} },   //    0 - 434  - very bad
      { "value": 805,  "color": ${"ranking.bad"} },   //  435 - 799  - bad
      { "value": 1200, "color": ${"ranking.normal"} },   //  800 - 1194 - normal
      { "value": 1595, "color": ${"ranking.good"} },   // 1195 - 1584 - good
      { "value": 1900, "color": ${"ranking.veryGood"} },   // 1585 - 1879 - very good
      { "value": 9999, "color": ${"ranking.unique"} }    // 1880 - *    - unique
    ],
    "e": [
      { "value": 0.01, "color": ${"ranking.error"} },
      { "value": 2,    "color": ${"ranking.veryBad"} },
      { "value": 4,    "color": ${"ranking.bad"} },
      { "value": 5,    "color": ${"ranking.normal"} },
      { "value": 7,    "color": ${"ranking.good"} },
      { "value": 9,    "color": ${"ranking.veryGood"} },
      { "value": 20,   "color": ${"ranking.unique"} }
    ],
    // Dynamic color by win percent (only with xvm-stat)
    "rating": [
      { "value": 47,  "color": ${"ranking.veryBad"} },   //  0   - 46.5  - very bad
      { "value": 49,  "color": ${"ranking.bad"} },   // 46.5 - 48.5  - bad
      { "value": 52,  "color": ${"ranking.normal"} },   // 48.5 - 51.5  - normal
      { "value": 57,  "color": ${"ranking.good"} },   // 51.5 - 56.5  - good
      { "value": 64,  "color": ${"ranking.veryGood"} },   // 56.5 - 63.5  - very good
      { "value": 101, "color": ${"ranking.unique"} }    // 63.5 - 100   - unique
    ],
    // Dynamic color by TWR (T-Calc) (only with xvm-stat)
    "twr": [
      { "value": 47,  "color": ${"ranking.veryBad"} },   //  0   - 46.5  - very bad
      { "value": 49,  "color": ${"ranking.bad"} },   // 46.5 - 48.5  - bad
      { "value": 52,  "color": ${"ranking.normal"} },   // 48.5 - 51.5  - normal
      { "value": 57,  "color": ${"ranking.good"} },   // 51.5 - 56.5  - good
      { "value": 62,  "color": ${"ranking.veryGood"} },   // 56.5 - 61.5  - very good
      { "value": 101, "color": ${"ranking.unique"} }    // 61.5 - 100   - unique
    ],
    // Dynamic color by kilo-battles (only with xvm-stat)
    "kb": [
      { "value": 2,   "color": ${"ranking.veryBad"} },   //  0 - 1
      { "value": 5,   "color": ${"ranking.bad"} },   //  2 - 4
      { "value": 9,   "color": ${"ranking.normal"} },   //  5 - 8
      { "value": 14,  "color": ${"ranking.good"} },   //  9 - 13
      { "value": 20,  "color": ${"ranking.veryGood"} },   // 14 - 19
      { "value": 999, "color": ${"ranking.unique"} }    // 20 - *
    ],
    // Dynamic color by battles on current tank (only with xvm-stat)
    "t_battles": [
      { "value": 100,   "color": ${"ranking.veryBad"} }, //    0 - 99
      { "value": 250,   "color": ${"ranking.bad"} }, //  100 - 249
      { "value": 500,   "color": ${"ranking.normal"} }, //  250 - 499
      { "value": 1000,  "color": ${"ranking.good"} }, //  500 - 999
      { "value": 1800,  "color": ${"ranking.veryGood"} }, // 1000 - 1799
      { "value": 99999, "color": ${"ranking.unique"} }  // 1800 - *
    ],
    "tdb": [
      { "value": 1,    "color": ${"ranking.error"} },
      { "value": 500,  "color": ${"ranking.veryBad"} },
      { "value": 1000, "color": ${"ranking.normal"} },
      { "value": 2000, "color": ${"ranking.good"} }
    ],
    "tdv": [
      { "value": 0.01, "color": ${"ranking.error"} },
      { "value": 0.6,  "color": ${"ranking.veryBad"} },
      { "value": 0.8,  "color": ${"ranking.bad"} },
      { "value": 1.0,  "color": ${"ranking.normal"} },
      { "value": 1.3,  "color": ${"ranking.good"} },
      { "value": 2.0,  "color": ${"ranking.veryGood"} },
      { "value": 15,   "color": ${"ranking.unique"} }
    ],
    "tfb": [
      { "value": 0.01, "color": ${"ranking.error"} },
      { "value": 0.6,  "color": ${"ranking.veryBad"} },
      { "value": 0.8,  "color": ${"ranking.bad"} },
      { "value": 1.0,  "color": ${"ranking.normal"} },
      { "value": 1.3,  "color": ${"ranking.good"} },
      { "value": 2.0,  "color": ${"ranking.veryGood"} },
      { "value": 15,   "color": ${"ranking.unique"} }
    ],
    "tsb": [
      { "value": 0.01, "color": ${"ranking.error"} },
      { "value": 0.6,  "color": ${"ranking.veryBad"} },
      { "value": 0.8,  "color": ${"ranking.bad"} },
      { "value": 1.0,  "color": ${"ranking.normal"} },
      { "value": 1.3,  "color": ${"ranking.good"} },
      { "value": 2.0,  "color": ${"ranking.veryGood"} },
      { "value": 15,   "color": ${"ranking.unique"} }
    ]
  }
}
