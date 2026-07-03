/*!
 * Copyright (c) 2020 Aleksej Komarov
 * SPDX-License-Identifier: MIT
 */

/**
 * tgui state: interactive_topic_state
 *
 * Always grants the user STATUS_INTERACTIVE. Period.
 */

GLOBAL_DATUM_INIT(interactive_topic_state, /datum/topic_state/interactive_topic_state, new)

/datum/topic_state/interactive_topic_state/can_use_topic(src_object, mob/user)
	return STATUS_INTERACTIVE
