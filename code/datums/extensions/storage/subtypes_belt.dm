/datum/extension/storage/belt
	storage_slots = 7
	max_w_class = ITEM_SIZE_NORMAL

/datum/extension/storage/belt/utility
	can_hold = list(
		///obj/item/combitool,
		/obj/item/crowbar,
		/obj/item/screwdriver,
		/obj/item/weldingtool,
		/obj/item/wirecutters,
		/obj/item/wrench,
		/obj/item/multitool,
		/obj/item/flashlight,
		/obj/item/stack/cable_coil,
		/obj/item/t_scanner,
		/obj/item/scanner/gas,
		/obj/item/inducer/,
		/obj/item/robotanalyzer,
		/obj/item/minihoe,
		/obj/item/hatchet,
		/obj/item/scanner/plant,
		/obj/item/stack/tape_roll,
		/obj/item/chems/spray/extinguisher/mini,
		/obj/item/marshalling_wand,
		/obj/item/geiger,
		/obj/item/hand_labeler,
		/obj/item/clothing/gloves
	)

/datum/extension/storage/belt/medical
	can_hold = list(
		/obj/item/scanner/health,
		/obj/item/scanner/breath,
		/obj/item/chems/dropper,
		/obj/item/chems/glass/beaker,
		/obj/item/chems/glass/bottle,
		/obj/item/chems/pill,
		/obj/item/chems/syringe,
		/obj/item/flame/fuelled/lighter/zippo,
		/obj/item/box/fancy/cigarettes,
		/obj/item/storage/pill_bottle,
		/obj/item/stack/medical,
		/obj/item/flashlight/pen,
		/obj/item/clothing/mask/surgical,
		/obj/item/clothing/head/surgery,
		/obj/item/clothing/gloves/latex,
		/obj/item/chems/hypospray,
		/obj/item/chems/inhaler,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/crowbar,
		/obj/item/flashlight,
		/obj/item/stack/tape_roll,
		/obj/item/chems/spray/extinguisher/mini,
		/obj/item/storage/med_pouch,
		/obj/item/bodybag,
		/obj/item/clothing/gloves
	)

/datum/extension/storage/belt/security
	can_hold = list(
		/obj/item/crowbar,
		/obj/item/grenade,
		/obj/item/chems/spray/pepper,
		/obj/item/handcuffs,
		/obj/item/flash,
		/obj/item/clothing/glasses,
		/obj/item/ammo_casing/shotgun,
		/obj/item/ammo_magazine,
		/obj/item/chems/food/donut/,
		/obj/item/baton,
		/obj/item/telebaton,
		/obj/item/flame/fuelled/lighter,
		/obj/item/flashlight,
		/obj/item/modular_computer/pda,
		/obj/item/radio/headset,
		/obj/item/hailer,
		/obj/item/megaphone,
		/obj/item/energy_blade,
		/obj/item/baton,
		/obj/item/stack/tape_roll,
		/obj/item/holowarrant,
		/obj/item/magnetic_ammo,
		/obj/item/binoculars,
		/obj/item/clothing/gloves,
		/obj/item/cell/gun
	)

/datum/extension/storage/belt/general
	can_hold = list(
		/obj/item/flash,
		/obj/item/telebaton,
		/obj/item/taperecorder,
		/obj/item/folder,
		/obj/item/paper,
		/obj/item/clipboard,
		/obj/item/modular_computer/tablet,
		/obj/item/flashlight,
		/obj/item/modular_computer/pda,
		/obj/item/radio/headset,
		/obj/item/megaphone,
		/obj/item/stack/tape_roll,
		/obj/item/magnetic_tape,
		/obj/item/holowarrant,
		/obj/item/radio,
		/obj/item/pen,
		/obj/item/stamp,
		/obj/item/stack/package_wrap,
		/obj/item/binoculars,
		/obj/item/marshalling_wand,
		/obj/item/camera,
		/obj/item/hand_labeler,
		/obj/item/destTagger,
		/obj/item/clothing/glasses,
		/obj/item/clothing/head/soft,
		/obj/item/hand_labeler,
		/obj/item/clothing/gloves,
		/obj/item/crowbar
	)

/datum/extension/storage/belt/janitor
	can_hold = list(
		/obj/item/grenade/chem_grenade,
		/obj/item/lightreplacer,
		/obj/item/flashlight,
		/obj/item/chems/spray/cleaner,
		/obj/item/soap,
		/obj/item/holosign_creator,
		/obj/item/clothing/gloves,
		/obj/item/assembly/mousetrap,
		/obj/item/crowbar,
		/obj/item/plunger
	)

/datum/extension/storage/belt/archaeology
	can_hold = list(
		/obj/item/core_sampler,
		/obj/item/pinpointer/radio,
		/obj/item/radio/beacon,
		/obj/item/gps,
		/obj/item/measuring_tape,
		/obj/item/flashlight,
		/obj/item/tool,
		/obj/item/depth_scanner,
		/obj/item/camera,
		/obj/item/paper,
		/obj/item/photo,
		/obj/item/folder,
		/obj/item/pen,
		/obj/item/folder,
		/obj/item/clipboard,
		/obj/item/anodevice,
		/obj/item/clothing/glasses,
		/obj/item/wrench,
		/obj/item/storage/excavation,
		/obj/item/anobattery,
		/obj/item/ano_scanner,
		/obj/item/stack/tape_roll/barricade_tape/research,
		/obj/item/pickaxe/xeno/hand
	)

/datum/extension/storage/belt/soulstone
	can_hold = list(
		/obj/item/soulstone
	)

/datum/extension/storage/belt/champion
	storage_slots = null
	max_storage_space = ITEM_SIZE_SMALL
	can_hold = list(
		/obj/item/clothing/mask/luchador
	)

/datum/extension/storage/holster/security/tactical
	storage_slots = 10

/datum/extension/storage/belt/waistpack
	storage_slots = null
	max_w_class = ITEM_SIZE_SMALL
	max_storage_space = ITEM_SIZE_SMALL * 4

/datum/extension/storage/belt/waistpack/big
	max_w_class = ITEM_SIZE_NORMAL
	max_storage_space = ITEM_SIZE_NORMAL * 4

/datum/extension/storage/belt/firefighter
	storage_slots = 6
	can_hold = list(
		/obj/item/grenade/chem_grenade/water,
		/obj/item/chems/spray/extinguisher/mini,
		/obj/item/inflatable,
		/obj/item/inflatable/door
	)
