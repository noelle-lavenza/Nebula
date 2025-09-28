// An area for places that are off-limits, e.g. outside the bounds of the fence.
/area/manor/outside/exterior
	name = "Outside"

/area/manor/outside/downlands/poi
	name = "Deep Downlands"

/area/manor/inn
	name = "\improper Inn"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM
	turf_initializer = /decl/turf_initializer/spiderwebs

/decl/turf_initializer/combo/kitchen_webs
	initialisers = list(
		/decl/turf_initializer/spiderwebs,
		/decl/turf_initializer/kitchen
	)

/area/manor/inn/kitchen
	name = "\improper Inn Kitchen"
	turf_initializer = /decl/turf_initializer/combo/kitchen_webs

/area/manor/inn/porch
	name = "\improper Inn Porch"
	interior_ambient_light_modifier = -0.4 // night is pitch-black on the porch
	sound_env = FOREST

/area/manor/stable
	name = "\improper Stable"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM
	turf_initializer = /decl/turf_initializer/spiderwebs

/area/manor/farmhouse
	name = "\improper Farmhouse"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM
	turf_initializer = /decl/turf_initializer/spiderwebs

/area/manor/farmhouse/porch
	name = "\improper Farmhouse Porch"
	interior_ambient_light_modifier = -0.4 // night is pitch-black on the porch
	sound_env = FOREST

/area/manor/slaughterhouse
	name = "\improper Slaughterhouse"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM
	turf_initializer = /decl/turf_initializer/spiderwebs

/area/manor/storehouse
	name = "\improper Storehouse"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM
	turf_initializer = /decl/turf_initializer/spiderwebs

/area/manor/general_store
	name = "\improper General Store"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM
	turf_initializer = /decl/turf_initializer/spiderwebs

/area/manor/general_store/porch
	name = "\improper General Store Porch"
	interior_ambient_light_modifier = -0.4 // night is pitch-black on the porch
	sound_env = FOREST

/area/manor/shrine
	name = "\improper Shrine"
	fishing_failure_prob = 100
	fishing_results = list()
	area_flags = AREA_FLAG_HOLY
	sound_env = ROOM
	turf_initializer = /decl/turf_initializer/spiderwebs

/area/manor/shrine/kitchen
	name = "\improper Shrine Kitchen"
	turf_initializer = /decl/turf_initializer/combo/kitchen_webs

/area/manor/outside/shrine
	name = "\improper Shrine Grounds"

/area/manor/caves/dungeon
	name = "\improper Deep Dungeon"

/area/manor/caves/dungeon/inn
	name = "\improper Root Cellar"

/area/manor/caves/dungeon/poi
	name = "\improper Deepest Dungeon"
