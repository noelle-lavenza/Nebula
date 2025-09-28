/datum/map/manor
	name          = "manor"
	full_name     = "Magnolia Estate"
	path          = "manor"
	station_name  = "Magnolia Estate"
	station_short = "Estate"
	dock_name     = "the Highlands"
	boss_name     = "the Magnolia Estate"
	boss_short    = "the Estate"
	company_name  = "the Magnolia family"
	company_short = "the family"
	system_name   = "the Downlands"
	default_spawn = /decl/spawnpoint/arrivals
	allowed_latejoin_spawns = list(
		/decl/spawnpoint/arrivals
	)
	map_tech_level       = MAP_TECH_LEVEL_MEDIEVAL
	survival_box_choices = list()
	passport_type        = null
	_available_backpacks = list(
		/decl/backpack_outfit/sack,
		/decl/backpack_outfit/backpack/crafted,
		/decl/backpack_outfit/haversack
	)
	lobby_tracks = list(
		/decl/music_track/dhaka,
		/decl/music_track/teller,
		/decl/music_track/suonatore,
		/decl/music_track/adventure,
	)
	credit_sound = list(
		'sound/music/Miris-Magic-Dance.ogg'
	)
	game_year = -265 // roughly around 1760
	security_state = /decl/security_state/none

	char_preview_bgstate_options = list(
		"000",
		"midgrey",
		"FFF",
		"wood"  = /turf/floor/wood::color,
		"mud",
		"grass" = /turf/floor/grass::color,
		"rock"  = /turf/floor/rock/basalt::color,
		"brick" = /turf/wall/brick/sandstone::color
	)
	default_ui_style = /decl/ui_style/underworld

/decl/backpack_outfit/sack
	is_default = TRUE

/datum/map/manor/get_map_info()
	return "You're at the <b>[station_name]</b>, owned by [company_name], a noble and prestigious house tracing its lineage back to old, <em>old</em> money."

/datum/map/manor/get_available_submap_archetypes()
	return null // Return list of decl instances when relevant submaps exist.
