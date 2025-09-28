/datum/job/manor/caves
	abstract_type           = /datum/job/manor/caves

/datum/job/manor/caves/dweller
	title                   = "Cave Dweller"
	spawn_positions         = -1
	total_positions         = -1
	outfit_type             = /decl/outfit/job/manor/cave_dweller
	max_skill               = list(
		SKILL_MEDICAL       = SKILL_MAX,
		SKILL_ANATOMY       = SKILL_MAX,
		SKILL_CHEMISTRY     = SKILL_MAX,
	)
	skill_points            = 24

/obj/abstract/landmark/start/manor/cave_dweller
	name                    = "Cave Dweller"