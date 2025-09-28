/datum/random_map/automata/cave_system/manor
	descriptor          = "Magnolia Estate caves"
	floor_type          = /turf/floor/rock/basalt
	wall_type           = /turf/wall/natural/basalt/manor
	sparse_mineral_turf = /turf/wall/natural/random/basalt/manor
	rich_mineral_turf   = /turf/wall/natural/random/high_chance/basalt/manor

/datum/random_map/noise/manor
	abstract_type = /datum/random_map/noise/manor
	smoothing_iterations = 1
	smooth_single_tiles  = TRUE
	target_turf_type = /turf/unsimulated/mask

/datum/random_map/noise/manor/swamp
	descriptor           = "Magnolia Estate swamp"

/datum/random_map/noise/manor/swamp/get_appropriate_path(var/value)
	value = noise2value(value)
	if(value <= 3)
		return /turf/floor/mud/water/deep
	if(value <= 5)
		return /turf/floor/mud/water
	if(value <= 7)
		return /turf/floor/mud
	return /turf/floor/grass

/datum/random_map/noise/manor/woods
	descriptor = "Magnolia Estate Woods"

/datum/random_map/noise/manor/woods/get_appropriate_path(var/value)
	value = noise2value(value)
	if(value <= 6)
		return /turf/floor/grass/wild
	return /turf/floor/grass

// TODO
/datum/random_map/noise/forage/manor
	abstract_type = /datum/random_map/noise/forage/manor

/datum/random_map/noise/forage/manor/grassland/New()
	forage["grass"] |= list(
		"yarrow",
		"valerian"
	)
	..()

/datum/random_map/noise/forage/manor/swamp
	tree_weight = 4
	trees = list(
		/obj/structure/flora/tree/hardwood/walnut = 1,
		/obj/structure/flora/tree/dead/walnut = 2,
		/obj/structure/flora/bush = 4,
		/obj/structure/flora/bush/leafybush = 5,
		/obj/structure/flora/bush/grassybush = 5,
		/obj/structure/flora/bush/stalkybush = 5,
		/obj/structure/flora/bush/reedbush = 6,
		/obj/structure/flora/bush/fernybush = 6,
	)

/datum/random_map/noise/forage/manor/swamp/New()
	forage["grass"] |= list(
		"aloe",
		"foxglove"
	)
	forage["riverbed"] = list(
		// the swamp doesn't really have enough flowing water for molluscs to live here or for flint to wash up
		"algae"
	)
	forage["riverbank"] = list(
		"harebells",
		"lavender",
		"nettle",
		"algae",
		"mushrooms"
	)
	return ..()

/datum/random_map/noise/forage/manor/woods
	tree_weight = 7
	trees = list(
		/obj/structure/flora/tree/hardwood/walnut = 8,
		/obj/structure/flora/tree/hardwood/yew = 8,
		/obj/structure/flora/tree/hardwood/mahogany = 8,
		/obj/structure/flora/bush/pointybush = 3,
		/obj/structure/flora/tree/dead/walnut = 1,
		/obj/structure/flora/tree/dead/yew = 1,
		/obj/structure/flora/tree/dead/mahogany = 1,
		/obj/structure/flora/stump/tree/walnut = 1,
		/obj/structure/flora/stump/tree/yew = 1,
		/obj/structure/flora/stump/tree/mahogany = 1,
		/obj/structure/flora/bush/genericbush = 1,
		/obj/structure/flora/bush/grassybush = 1,
		/obj/structure/flora/bush/stalkybush = 1,
		/obj/structure/flora/bush/reedbush = 1,
		/obj/structure/flora/bush/fernybush = 1,
		/atom/movable/spawn_litter = 1,
	)

/datum/random_map/noise/forage/manor/woods/New()
	forage["grass"] |= list(
		"ginseng",
		"foxglove",
		/atom/movable/spawn_litter
	)
	forage["riverbank"] = list(/atom/movable/spawn_litter)
	..()

/// Helper type to spawn random forest litter.
/atom/movable/spawn_litter
	name = "forest litter spawner"
	is_spawnable_type = FALSE
	simulated = FALSE
	var/list/spawn_type = list(
		/obj/effect/decal/cleanable/plant_bits = 5,
		/atom/movable/spawn_boulder/rock = 2,
		/obj/item/rock/flint = 2,
		/atom/movable/spawn_boulder = 1
	)

/atom/movable/spawn_litter/Initialize()
	..()
	if(isturf(loc))
		if(islist(spawn_type))
			spawn_type = pickweight(spawn_type)
		if(spawn_type)
			new spawn_type(loc)
	return INITIALIZE_HINT_QDEL