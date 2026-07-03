/*!
 * Copyright (c) 2020 Aleksej Komarov
 * SPDX-License-Identifier: MIT
 */

/**
 * tgui state: hands_state
 *
 * Checks that the src_object is in the user's hands.
 */

GLOBAL_DATUM_INIT(hands_state, /datum/topic_state/hands_state, new)

/datum/topic_state/hands_state/can_use_topic(src_object, mob/user)
	. = user.shared_ui_interaction(src_object)
	if(. > STATUS_CLOSE)
		return min(., user.hands_can_use_topic(src_object))

/mob/proc/hands_can_use_topic(src_object)
	return STATUS_CLOSE

/mob/living/hands_can_use_topic(src_object)
	if(!is_holding(src_object))
		message_admins("[src_object] holding check failed")
		return STATUS_CLOSE
	return STATUS_INTERACTIVE
