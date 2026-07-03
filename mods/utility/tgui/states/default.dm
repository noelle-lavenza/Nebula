/*!
 * Copyright (c) 2020 Aleksej Komarov
 * SPDX-License-Identifier: MIT
 */

/**
 * tgui state: default_state
 *
 * Checks a number of things -- mostly physical distance for humans
 * and view for robots.
 */

GLOBAL_DATUM_INIT(default_state, /datum/topic_state/default, new)

/datum/topic_state/default/can_use_topic(src_object, mob/user)
	return user.default_can_use_topic(src_object) // Call the individual mob-overridden procs.

/mob/proc/default_can_use_topic(src_object)
	return STATUS_CLOSE // Don't allow interaction by default.

/mob/living/default_can_use_topic(src_object)
	. = shared_ui_interaction(src_object)
	if(. > STATUS_CLOSE && loc) //must not be in nullspace.
		. = min(., shared_living_ui_distance(src_object)) // Check the distance...
	//if(. == STATUS_INTERACTIVE && !src.IsAdvancedToolUser())) // unhandy living mobs can only look, not touch.
	// return STATUS_UPDATE

