/**
 * General parameters for minimap.
 * Общие параметры миникарты. Видео по некоторым аспектам редактирования http://www.youtube.com/watch?feature=player_embedded&v=NBJcqWuEoLo
 */
{
  "minimap": {
    "$ref": { "file": "minimap.xc", "path":"minimap" },
    
    "labels": {
        "units": {
          "format": {
              // Союзник.
              "ally":           "<span class='mm_a'>{{nick%.7s}}</span>",
              // Тимкиллер.
              "teamkiller":     "<span class='mm_t'>{{nick%.7s}}</span>",
              // Враг.
              "enemy":          "<span class='mm_e'>{{nick%.7s}}</span>"
            }
        }
    }
  }
}
