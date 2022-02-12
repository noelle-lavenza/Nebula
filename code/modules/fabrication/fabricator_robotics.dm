/obj/machinery/fabricator/robotics
	name = "robotics fabricator"
	desc = "A complex and flexible nanofabrication system for producing electronics and robotics."
	icon = 'icons/obj/machines/fabricators/robotics.dmi'
	icon_state = "robotics"
	base_icon_state = "robotics"
	idle_power_usage = 20
	active_power_usage = 5000
	base_type = /obj/machinery/fabricator/robotics
	fabricator_class = FABRICATOR_CLASS_ROBOTICS
	base_storage_capacity = list(
		/decl/material/solid/metal/steel =      SHEET_MATERIAL_AMOUNT * 100,
		/decl/material/solid/metal/aluminium =  SHEET_MATERIAL_AMOUNT * 100,
		/decl/material/solid/plastic =          SHEET_MATERIAL_AMOUNT * 100,
		/decl/material/solid/glass =            SHEET_MATERIAL_AMOUNT * 100,
		/decl/material/solid/fiberglass =       SHEET_MATERIAL_AMOUNT * 100,
		/decl/material/solid/metal/gold =       SHEET_MATERIAL_AMOUNT * 100,
		/decl/material/solid/metal/silver =     SHEET_MATERIAL_AMOUNT * 100,
		/decl/material/solid/metal/uranium =    SHEET_MATERIAL_AMOUNT * 100,
		/decl/material/solid/gemstone/diamond = SHEET_MATERIAL_AMOUNT * 100
	)
	var/picked_prosthetic_species

/obj/machinery/fabricator/robotics/make_order(datum/fabricator_recipe/recipe, multiplier)
	var/datum/fabricator_build_order/order = ..()
	LAZYSET(order.data, "picked_prosthetic_species", picked_prosthetic_species)
	return order

/obj/machinery/fabricator/robotics/do_build(datum/fabricator_build_order/order)
	. = ..()
	var/decl/species/S = LAZYACCESS(order.data, "picked_prosthetic_species")
	for(var/obj/item/organ/O in .)
		if(S)
			O.set_species(S)
		O.status |= ORGAN_CUT_AWAY

/obj/machinery/fabricator/robotics/OnTopic(user, href_list, state)
	if(href_list["pick_prosthetic_species"])
		var/chosen_specie = input(user, "Choose a specie to produce prosthetics for", "Target Species", null) in get_all_species()
		if(chosen_specie)
			picked_prosthetic_species = chosen_specie
		. = TOPIC_REFRESH
	. = ..()

/obj/machinery/fabricator/robotics/ui_data(mob/user, ui_key)
	. = ..()
	LAZYSET(., "picked_prosthetic_species", picked_prosthetic_species)

/obj/machinery/fabricator/robotics/get_nano_template()
	return "fabricator_robot.tmpl"

/obj/machinery/fabricator/robotics/get_extra_templates()
	. = ..()
	LAZYSET( ., "fab", "fabricator.tmpl")