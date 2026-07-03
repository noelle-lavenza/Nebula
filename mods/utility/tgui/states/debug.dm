GLOBAL_DATUM_INIT(debug_state, /datum/topic_state/debug_state, new)

/datum/topic_state/debug_state/can_use_topic(src_object, mob/user)
	if(check_rights_for(user.client, R_DEBUG))
		return STATUS_INTERACTIVE
	return STATUS_CLOSE
