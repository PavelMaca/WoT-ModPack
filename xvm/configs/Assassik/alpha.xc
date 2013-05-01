/**
 * Options for dynamic transparency
 */
{
  "alpha": {
    // Dynamic transparency by remaining health
    "hp": [
      { "value": 200,  "alpha": 100 },
      { "value": 400,  "alpha": 80 },
      { "value": 1000, "alpha": 60 },
      { "value": 9999, "alpha": 40 }
    ],
    // Dynamic transparency by percentage of remaining health
    "hp_ratio": [
      { "value": 10,  "alpha": 100 },
      { "value": 25,  "alpha": 80 },
      { "value": 50,  "alpha": 60 },
      { "value": 101, "alpha": 40 }
    ],
    // Dynamic transparency by effectiveness (only with xvm-stat)
    "eff": [
      { "value": 900,  "alpha": 100 },
      { "value": 1200, "alpha": 100 },
      { "value": 9999, "alpha": 100 }
    ],
    // Dynamic transparency by victory percentage (only with xvm-stat)
    "rating": [
      { "value": 49,  "alpha": 100 },
      { "value": 53,  "alpha": 100 },
      { "value": 101, "alpha": 100 }
    ],
    // Dynamic transparency by the number of thousands of battles ("kilo-battles") (only with xvm-stat)
    "kb": [
      { "value": 2,   "alpha": 100 },
      { "value": 10,  "alpha": 100 },
      { "value": 999, "alpha": 100 }
    ]
  }
}
