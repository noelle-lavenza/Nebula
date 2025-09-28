/obj/abstract/map_data/manor
	height = 2

/datum/level_data/main_level/manor
	use_global_exterior_ambience = FALSE
	base_area = null
	base_turf = /turf/floor/dirt
	abstract_type = /datum/level_data/main_level/manor
	ambient_light_level = 1
	ambient_light_color = "#f3e6ca"
	strata = /decl/strata/manor
	exterior_atmosphere = list(
		/decl/material/gas/oxygen =   MOLES_O2STANDARD,
		/decl/material/gas/nitrogen = MOLES_N2STANDARD
	)
	daycycle_type = /datum/daycycle/manor
	daycycle_id = "daycycle_manor"
	template_edge_padding = 0 // we use a strictly delineated subarea, no need for this guard

/datum/daycycle/manor
	cycle_duration = 2 HOURS // 1 hour of daylight, 1 hour of night

// Randomized time of day to start at.
/datum/daycycle/manor/New()
	time_in_cycle = rand(cycle_duration)
	..()

/datum/level_data/main_level/manor/grassland
	name = "Shaded Hills - Grassland"
	level_id = "manor_grassland"
	level_generators = list(
		/datum/random_map/automata/cave_system/manor,
		/datum/random_map/noise/ore/poor,
		/datum/random_map/noise/forage/manor/grassland
	)
	connected_levels = list(
		"manor_woods"     = NORTH,
		"manor_swamp"     = SOUTH,
		"manor_downlands" = EAST
	)
	subtemplate_budget = 5
	subtemplate_category = MAP_TEMPLATE_CATEGORY_FANTASY_GRASSLAND
	subtemplate_area = /area/manor/outside/poi

/datum/level_data/main_level/manor/grassland/get_mobs_to_populate_level()
	var/static/list/mobs_to_spawn = list(
		list(
			list(
				/mob/living/simple_animal/passive/mouse        = 9,
				/mob/living/simple_animal/passive/rabbit       = 3,
				/mob/living/simple_animal/passive/rabbit/brown = 3,
				/mob/living/simple_animal/passive/rabbit/black = 3,
				/mob/living/simple_animal/opossum              = 5
			),
			/turf/floor/grass,
			10
		)
	)
	return mobs_to_spawn

/datum/level_data/main_level/manor/swamp
	name = "Shaded Hills - Swamp"
	level_id = "manor_swamp"
	connected_levels = list(
		"manor_grassland" = NORTH
	)
	level_generators = list(
		/datum/random_map/noise/manor/swamp,
		/datum/random_map/noise/forage/manor/swamp
	)
	subtemplate_budget = 5
	subtemplate_category = MAP_TEMPLATE_CATEGORY_FANTASY_SWAMP
	subtemplate_area = /area/manor/outside/swamp/poi

/datum/level_data/main_level/manor/swamp/get_mobs_to_populate_level()
	var/static/list/mobs_to_spawn = list(
		list(
			list(
				/mob/living/simple_animal/passive/mouse        = 6,
				/mob/living/simple_animal/passive/rabbit       = 2,
				/mob/living/simple_animal/passive/rabbit/brown = 2,
				/mob/living/simple_animal/passive/rabbit/black = 2,
				/mob/living/simple_animal/frog                 = 3,
				/mob/living/simple_animal/frog/brown           = 2,
				/mob/living/simple_animal/frog/yellow          = 2,
				/mob/living/simple_animal/frog/purple          = 1
			),
			/turf/floor/grass,
			5
		),
		list(
			list(
				/mob/living/simple_animal/frog                 = 3,
				/mob/living/simple_animal/frog/brown           = 2,
				/mob/living/simple_animal/frog/yellow          = 2,
				/mob/living/simple_animal/frog/purple          = 1
			),
			/turf/floor/mud,
			10
		)
	)
	return mobs_to_spawn

/datum/level_data/main_level/manor/woods
	name = "Shaded Hills - Woods"
	level_id = "manor_woods"
	connected_levels = list(
		"manor_grassland" = SOUTH
	)
	level_generators = list(
		/datum/random_map/noise/manor/woods,
		/datum/random_map/noise/forage/manor/woods
	)
	subtemplate_budget = 5
	subtemplate_category = MAP_TEMPLATE_CATEGORY_FANTASY_WOODS
	subtemplate_area = /area/manor/outside/woods/poi

/datum/level_data/main_level/manor/woods/get_mobs_to_populate_level()
	var/static/list/mobs_to_spawn = list(
		list(
			list(
				/mob/living/simple_animal/passive/mouse        = 6,
				/mob/living/simple_animal/passive/rabbit       = 2,
				/mob/living/simple_animal/passive/rabbit/brown = 2,
				/mob/living/simple_animal/passive/rabbit/black = 2,
				/mob/living/simple_animal/opossum              = 2
			),
			/turf/floor/grass,
			10
		),
		list(
			list(
				/mob/living/simple_animal/passive/deer         = 1
			),
			/turf/floor/grass,
			5
		)
	)
	return mobs_to_spawn

/datum/level_data/main_level/manor/downlands
	name = "Shaded Hills - Downlands"
	level_id = "manor_downlands"
	level_generators = list(
		/datum/random_map/noise/manor/woods,
		/datum/random_map/noise/forage/manor/grassland
	)
	connected_levels = list(
		"manor_grassland" = WEST
	)
	subtemplate_budget = 5
	subtemplate_category = MAP_TEMPLATE_CATEGORY_FANTASY_DOWNLANDS
	subtemplate_area = /area/manor/outside/downlands/poi

/datum/level_data/main_level/manor/caverns
	name = "Shaded Hills - Caverns"
	level_id = "manor_caverns"
	connected_levels = list(
		"manor_dungeon" = EAST
	)
	subtemplate_budget = 5
	subtemplate_category = MAP_TEMPLATE_CATEGORY_FANTASY_CAVERNS
	subtemplate_area = /area/manor/caves/deep/poi
	level_generators = list(
		/datum/random_map/automata/cave_system/manor,
		/datum/random_map/noise/ore/rich
	)
	base_turf = /turf/floor/rock/basalt

/datum/level_data/main_level/manor/dungeon
	name = "Shaded Hills - Dungeon"
	level_id = "manor_dungeon"
	connected_levels = list(
		"manor_caverns" = WEST
	)
	subtemplate_budget = 5
	subtemplate_category = MAP_TEMPLATE_CATEGORY_FANTASY_DUNGEON
	subtemplate_area = /area/manor/caves/dungeon/poi
	base_turf = /turf/floor/rock/basalt

/obj/abstract/level_data_spawner/manor_grassland
	level_data_type = /datum/level_data/main_level/manor/grassland

/obj/abstract/level_data_spawner/manor_swamp
	level_data_type = /datum/level_data/main_level/manor/swamp

/obj/abstract/level_data_spawner/manor_woods
	level_data_type = /datum/level_data/main_level/manor/woods

/obj/abstract/level_data_spawner/manor_downlands
	level_data_type = /datum/level_data/main_level/manor/downlands

/obj/abstract/level_data_spawner/manor_caverns
	level_data_type = /datum/level_data/main_level/manor/caverns

/obj/abstract/level_data_spawner/manor_dungeon
	level_data_type = /datum/level_data/main_level/manor/dungeon
