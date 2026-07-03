/*!
 * Base state and helpers for states. Just does some sanity checks,
 * implement a proper state for in-depth checks.
 *
 * Copyright (c) 2020 Aleksej Komarov
 * SPDX-License-Identifier: MIT
 */

/**
 * public
 *
 * Checks the UI state for a mob.
 *
 * required user mob The mob who opened/is using the UI.
 * required state datum/topic_state The state to check.
 *
 * return UI_state The state of the UI.
 */
/datum/proc/ui_status(mob/user, datum/topic_state/state)
	var/src_object = ui_host(user)
	. = STATUS_CLOSE
	if(!state)
		return

	if(isobserver(user))
		// If they turn on ghost AI control, admins can always interact.
		//if(isAdminGhostAI(user))
		// . = max(., STATUS_INTERACTIVE)

		// Regular ghosts can always at least view if in range.
		if(user.client)
			var/clientviewlist = getviewsize(user.client.view)
			if(get_dist(src_object, user) < max(clientviewlist[1], clientviewlist[2]))
				. = max(., STATUS_UPDATE)

	// Check if the state allows interaction
	var/result = state.can_use_topic(src_object, user)
	. = max(., result)

/**
 * public
 *
 * Standard interaction/sanity checks. Different mob types may have overrides.
 *
 * return UI_state The state of the UI.
 */
/mob/proc/shared_ui_interaction(src_object)
	// Close UIs if mindless.
	//if(!client && !HAS_TRAIT(src, TRAIT_PRESERVE_UI_WITHOUT_CLIENT))
	if(!client)
		return STATUS_CLOSE
	// Disable UIs if unconscious.
	else if(stat)
		return STATUS_DISABLED
	// Update UIs if incapicitated but conscious.
	else if(incapacitated())
		return STATUS_UPDATE
	return STATUS_INTERACTIVE

/* Not sure why this is here, it just breaks interactibility on inventory_state
/mob/living/shared_ui_interaction(src_object)
	. = ..()
	//if(!(mobility_flags & MOBILITY_UI) && . == STATUS_INTERACTIVE)
	if(. == STATUS_INTERACTIVE)
		return STATUS_UPDATE
*/

/**
 * public
 *
 * Distance versus interaction check.
 *
 * required src_object atom/movable The object which owns the UI.
 *
 * return UI_state The state of the UI.
 */
/mob/living/proc/shared_living_ui_distance(atom/movable/src_object, viewcheck = TRUE, allow_tk = TRUE)
	// If the object is obscured, close it.
	if(viewcheck && !(src_object in view(src)))
		return STATUS_CLOSE
	var/dist = get_dist(src_object, src)
	// Open and interact if 1-0 tiles away.
	if(dist <= 1)
		return STATUS_INTERACTIVE
	// View only if 2-3 tiles away.
	else if(dist <= 2)
		return STATUS_UPDATE
	// Disable if 5 tiles away.
	else if(dist <= 5)
		return STATUS_DISABLED
	// Otherwise, we got nothing.
	return STATUS_CLOSE

/**
 * public
 *
 * Check if in view. Can interact only if adjacent, updates within max distance, otherwise closes
 *
 * required src_object atom/movable The object which owns the UI.
 *
 * return UI_state The state of the UI.
 */
/mob/living/proc/shared_living_ui_in_view(atom/movable/src_object, viewcheck = TRUE, max_distance = 7)
	// If the object is obscured, close it.
	if(viewcheck && !(src_object in view(src)))
		return STATUS_CLOSE
	var/dist = get_dist(src_object, src)
	// Open and interact if 1-0 tiles away.
	if(dist <= 1)
		return STATUS_INTERACTIVE
	// View only if within distance.
	else if(dist <= max_distance)
		return STATUS_UPDATE
	// Otherwise, we got nothing.
	return STATUS_CLOSE
