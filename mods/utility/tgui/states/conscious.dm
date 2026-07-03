/*!
 * Copyright (c) 2020 Aleksej Komarov
 * SPDX-License-Identifier: MIT
 */

/**
 * tgui state: conscious_state
 *
 * Only checks if the user is conscious.
 */

GLOBAL_DATUM_INIT(conscious_state, /datum/topic_state/conscious_state, new)

/datum/topic_state/conscious_state/can_use_topic(src_object, mob/user)
	if(user.stat == CONSCIOUS)
		return STATUS_INTERACTIVE
	return STATUS_CLOSE
