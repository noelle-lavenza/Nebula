/area/manor/caves/entrance
	name = "\improper Surface Tunnels"
	color = COLOR_GRAY80

/area/manor/caves/unexplored
	name = "\improper Trackless Deeps - North"
	color = COLOR_GRAY20
	ambience = list(
		'sound/ambience/ominous1.ogg',
		'sound/ambience/ominous2.ogg',
		'sound/ambience/ominous3.ogg',
	)

// Area coherency test hates that the unexplored area is split by a tunnel.
/area/manor/caves/unexplored/south
	name = "\improper Trackless Deeps - South"

/area/manor/caves/river
	name = "\improper Silent River"
	color = COLOR_GRAY20
	description = "The silent, black water catches whatever sparse light survives in the depths, glittering like a river of stars."
	area_blurb_category = /area/manor/caves/river
	ambience = list(
		'sound/ambience/ominous1.ogg',
		'sound/ambience/ominous2.ogg',
		'sound/ambience/ominous3.ogg',
	)
	// hopefully the sound environment makes this sound nicer?
	forced_ambience = list('sound/ambience/shore.ogg')

/area/manor/outside/poi
	name = "Deep Grassland"

/area/manor/outside/river
	name = "River"
	color = COLOR_BLUE
	description = "The soft susurration of running water mingles with the hum of insects and croak of frogs."
	area_blurb_category = /area/manor/outside/river
	forced_ambience = list('sound/ambience/shore.ogg')

/area/manor/outside/river/get_additional_fishing_results()
	var/static/list/additional_fishing_results = list(
		/mob/living/simple_animal/aquatic/fish/large        = 5,
		/mob/living/simple_animal/aquatic/fish/large/salmon = 5,
		/mob/living/simple_animal/aquatic/fish/large/trout  = 5,
		/mob/living/simple_animal/aquatic/fish/large/pike   = 3
	)
	return additional_fishing_results

/area/manor/caves
	name = "\improper Deep Tunnels"
	color = COLOR_GRAY40
	is_outside = OUTSIDE_NO
	description = "The deep dark brings distant, whispering echoes to your ears."
	ambience = list(
		'sound/ambience/ambimine.ogg',
		'sound/ambience/song_game.ogg'
	)
	area_blurb_category = /area/manor/caves
	sound_env = CAVE
	area_flags = AREA_FLAG_IS_BACKGROUND
	fishing_results = list(
		/mob/living/simple_animal/aquatic/fish/large/cave    = 13,
		/mob/living/simple_animal/aquatic/fish/large/lantern = 7,
		/obj/item/mollusc                              = 5,
		/obj/item/mollusc/barnacle/fished              = 5,
		/obj/item/mollusc/clam/fished/pearl            = 3,
		/obj/item/trash/mollusc_shell/clam             = 1,
		/obj/item/trash/mollusc_shell/barnacle         = 1,
		/obj/item/trash/mollusc_shell                  = 1
	)

/area/manor/caves/deep
	name = "\improper Deep Caverns"

/area/manor/caves/deep/poi
	name = "\improper Deepest Caverns"
