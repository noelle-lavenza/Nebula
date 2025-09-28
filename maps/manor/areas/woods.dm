// Woodland areas.
/area/manor/caves/river/woods
	name = "Northern Silent River"

/area/manor/outside/river/lake
	name = "Woodland Lake"
	forced_ambience = list('sound/ambience/shore.ogg')

/area/manor/outside/river/lake/get_additional_fishing_results()
	var/static/list/additional_fishing_results = list(
		/mob/living/simple_animal/aquatic/fish/large/bass    = 5,
		/mob/living/simple_animal/aquatic/fish/large/trout   = 5,
		/mob/living/simple_animal/aquatic/fish/large/javelin = 5,
		/mob/living/simple_animal/hostile/aquatic/carp       = 3,
		/mob/living/simple_animal/aquatic/fish/large/koi     = 1
	)
	return additional_fishing_results

/area/manor/outside/woods
	name = "Woodlands"
	sound_env = FOREST

/area/manor/outside/woods/poi
	name = "Deep Woodlands"

/area/manor/outside/river/woods
	name = "Woodland River"

/area/manor/caves/woods
	name = "Northern Deep Tunnels"

/area/manor/caves/unexplored/woods
	name = "Trackless Deeps - Far North"

/area/manor/forester_hut
	name = "\improper Foresters' Hut"
	sound_env = STANDARD_STATION
	fishing_failure_prob = 100
	fishing_results = list()
