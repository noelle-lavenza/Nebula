/**
 * tgui state: powered_machinery_state
 *
 * Checks that the machinery is operable, user isn't incapacitated, and that their loc is a turf
 */
GLOBAL_DATUM_INIT(powered_machinery_state, /datum/topic_state/powered_machinery_state, new)

/datum/topic_state/powered_machinery_state
	var/turf_check = FALSE

/datum/topic_state/powered_machinery_state/New(loc, no_turfs = FALSE)
	..()
	turf_check = no_turfs

/datum/topic_state/powered_machinery_state/can_use_topic(src_object, mob/user)
	. = STATUS_CLOSE
	if(user.stat != CONSCIOUS)
		return STATUS_CLOSE
	var/dist = get_dist(src_object, user)
	if(user.is_mob_incapacitated(TRUE) || (turf_check && !isturf(user.loc)) || (dist > 1))
		return STATUS_CLOSE
	// We're just assuming we're properly being called on machinery
	var/obj/structure/machinery/src_machinery = src_object
	if(src_machinery.inoperable())
		return STATUS_CLOSE
	return STATUS_INTERACTIVE
