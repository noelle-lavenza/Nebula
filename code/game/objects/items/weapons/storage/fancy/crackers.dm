/*
 * Cracker Packet
 */
/obj/item/box/fancy/crackers
	name = "bag of crackers"
	icon = 'icons/obj/food/containers/crackerbag.dmi'
	icon_state = ICON_STATE_WORLD
	w_class = ITEM_SIZE_SMALL
	key_type = /obj/item/chems/food/cracker
	use_single_icon_overlay_state = "crackerbag"
	storage_type = /datum/extension/storage/box/crackers

/obj/item/box/fancy/crackers/adjust_contents_overlay(var/overlay_index, var/image/overlay)
	overlay?.pixel_x = -(overlay_index)
	return overlay

/obj/item/box/fancy/crackers/WillContain()
	return list(/obj/item/chems/food/cracker = 6)

/obj/item/box/fancy/crackers/update_icon_state()
	icon_state = get_world_inventory_state()

/obj/item/box/fancy/crackers/on_update_icon()
	. = ..()
	var/datum/extension/storage/storage = get_extension(src, /datum/extension/storage)
	if(storage?.opened)
		add_overlay("[icon_state]_open")
	else
		add_overlay("[icon_state]_closed")
