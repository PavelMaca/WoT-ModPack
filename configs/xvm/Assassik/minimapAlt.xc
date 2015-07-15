/**
 * General parameters for minimap.
 * Общие параметры миникарты. Видео по некоторым аспектам редактирования http://www.youtube.com/watch?feature=player_embedded&v=NBJcqWuEoLo
 */
{
	"minimap" : {
		"$ref" : {
			"file" : "minimap.xc",
			"path" : "minimap"
		},

		"labels" : {
			"units" : {
				"format" : {
					"ally" : "<span class='mm_a'>{{nick%.7s}}</span>",
					"teamkiller" : "<span class='mm_t'>{{nick%.7s}}</span>",
					"enemy" : "<span class='mm_e'>{{nick%.7s}}</span>",
					"lostally" : "<span class='mm_dot'>{{vehicle-class}}</span><span class='mm_la'><i>{{nick%.7s}}</i></span>",
					"lostteamkiller" : "<span class='mm_dot'>{{vehicle-class}}</span><span class='mm_lt'><i>{{nick%.7s}}</i></span>",
					"lost" : "<span class='mm_dot'>{{vehicle-class}}</span><span class='mm_l'><i>{{nick%.7s}}</i></span>"
				}
			}
		}
	}
}