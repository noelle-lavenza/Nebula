/*!
 * Copyright (c) 2020 Aleksej Komarov
 * SPDX-License-Identifier: MIT
 */

/**
 * tgui state: self_state
 *
 * Only checks that the user and src_object are the same.
 */

GLOBAL_DATUM_INIT(self_state, /datum/topic_state/self_state, new)

/datum/topic_state/self_state/can_use_topic(src_object, mob/user)
	if(src_object != user)
		return STATUS_CLOSE
	return user.shared_ui_interaction(src_object)
