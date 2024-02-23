/*
 * Egg Box
 */

/obj/item/box/fancy/egg_box
	name = "egg box"
	icon = 'icons/obj/food/containers/eggbox.dmi'
	icon_state = ICON_STATE_WORLD
	item_state = null
	w_class = ITEM_SIZE_NORMAL
	key_type = /obj/item/chems/food/egg
	use_single_icon_overlay_state = "eggbox"
	storage_type = /datum/extension/storage/box/egg

/obj/item/box/fancy/egg_box/update_icon_state()
	var/datum/extension/storage/storage = get_extension(src, /datum/extension/storage)
	icon_state = get_world_inventory_state()
	if(storage?.opened)
		icon_state = "[icon_state]_open"

/obj/item/box/fancy/egg_box/add_contents_overlays()
	var/datum/extension/storage/storage = get_extension(src, /datum/extension/storage)
	return storage?.opened && ..()

/obj/item/box/fancy/egg_box/adjust_contents_overlay(var/overlay_index, var/image/overlay)
	if(overlay)
		overlay.pixel_x = (overlay_index % 6) * 4
		if(overlay_index >= 6)
			overlay.pixel_y = 3
	return overlay

/obj/item/box/fancy/egg_box/WillContain()
	return list(/obj/item/chems/food/egg = 12)

// Subtypes below.
/obj/item/box/fancy/egg_box/assorted/WillContain()
	return list(
		/obj/item/chems/food/egg         = 1,
		/obj/item/chems/food/egg/blue    = 1,
		/obj/item/chems/food/egg/green   = 1,
		/obj/item/chems/food/egg/mime    = 1,
		/obj/item/chems/food/egg/orange  = 1,
		/obj/item/chems/food/egg/purple  = 1,
		/obj/item/chems/food/egg/rainbow = 1,
		/obj/item/chems/food/egg/red     = 1,
		/obj/item/chems/food/egg/yellow  = 1,
		/obj/item/chems/food/boiledegg   = 1,
		/obj/item/chems/food/egg/lizard  = 1
	)

/obj/item/box/fancy/egg_box/empty/WillContain()
	return
