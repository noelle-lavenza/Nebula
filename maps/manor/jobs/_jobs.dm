/datum/map/manor
	allowed_jobs = list(
		/datum/job/manor/visitor/traveller,
		/datum/job/manor/visitor/traveller/learned,
		/datum/job/manor/visitor/beggar_knight,
		/datum/job/manor/local/miner,
		/datum/job/manor/local/herbalist,
		/datum/job/manor/local/forester,
		/datum/job/manor/inn/storekeeper,
		/datum/job/manor/inn/innkeeper,
		/datum/job/manor/inn/inn_worker,
		/datum/job/manor/inn/bartender,
		/datum/job/manor/inn/farmer,
		/datum/job/manor/caves/dweller,
		/datum/job/manor/shrine/keeper,
		/datum/job/manor/shrine/attendant,
		/datum/job/manor/visitor/traveller/cleric
	)
	default_job_type = /datum/job/manor/visitor/traveller
	default_department_type = /decl/department/manor/visitors
	species_to_job_whitelist = list(
		/decl/species/grafadreka = list(
			/datum/job/manor/caves/dweller,
			/datum/job/manor/visitor/traveller
		)
	)
	job_to_species_blacklist = list(
		/datum/job/manor/caves/dweller = list(
			/decl/species/human,
			/decl/species/hnoll
		),
	)
	species_to_job_blacklist = list(
		/decl/species/kobaloi = list(
			/datum/job/manor/visitor/beggar_knight,
			/datum/job/manor/inn/innkeeper,
			/datum/job/manor/shrine/keeper,
			/datum/job/manor/visitor/traveller/cleric
		)
	)

/decl/department/manor
	abstract_type           = /decl/department/manor
	noun                    = "faction"
	noun_adj                = "faction"
	announce_channel        = null

/datum/job/manor
	abstract_type           = /datum/job/manor
	hud_icon_state          = "hudblank"
	department_types        = list(
		/decl/department/manor/locals
	)
	min_skill               = list()
	// if you consider adding something like literacy to this list to make it rarer/more exclusive
	// consider making the higher levels cost more points instead
	max_skill               = list(
		SKILL_CHEMISTRY     = SKILL_BASIC, // this is the domain of the herbalist
	)
	skill_points            = 20
