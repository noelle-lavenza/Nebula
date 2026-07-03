/**
 * tgui state: new_player_state
 *
 * Checks that the user is a new_player, or if user is an admin
 */

GLOBAL_DATUM_INIT(new_player_state, /datum/topic_state/new_player_state, new)

/datum/topic_state/new_player_state/can_use_topic(src_object, mob/user)
	if(isnewplayer(user) || check_rights_for(user.client, R_ADMIN))
		return STATUS_INTERACTIVE
	return STATUS_CLOSE

