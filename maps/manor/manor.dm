#if !defined(USING_MAP_DATUM)

	#include "../../mods/content/matchmaking/_matchmaking.dme"
	#include "../../mods/content/dungeon_loot/_dungeon_loot.dme"
	#include "../../mods/content/mouse_highlights/_mouse_highlight.dme"
	#include "../../mods/content/scaling_descriptors.dm"
	#include "../../mods/content/item_sharpening/_item_sharpening.dme"
	#include "../../mods/content/fantasy/_fantasy.dme"
	#include "../../mods/content/blacksmithy/_blacksmithy.dme"

	#include "areas/_areas.dm"
	#include "areas/downlands.dm"
	#include "areas/grassland.dm"
	#include "areas/swamp.dm"
	#include "areas/woods.dm"

	#include "jobs/_jobs.dm"
	#include "jobs/caves.dm"
	#include "jobs/inn.dm"
	#include "jobs/shrine.dm"
	#include "jobs/visitors.dm"
	#include "jobs/wilderness.dm"

	#include "levels/_levels.dm"
	#include "levels/random_map.dm"
	#include "levels/strata.dm"

	#include "outfits/_outfits.dm"
	#include "outfits/caves.dm"
	#include "outfits/inn.dm"
	#include "outfits/shrine.dm"
	#include "outfits/visitors.dm"
	#include "outfits/wilderness.dm"

	#include "manor_currency.dm"
	#include "manor_events.dm"
	#include "manor_locks.dm"
	#include "manor_map.dm"
	#include "manor_skills.dm"
	#include "manor_testing.dm"
	#include "manor_turfs.dm"

	// Caverns are below grassland and must be compiled in that order for multiz.
	#include "manor-caverns.dmm"
	#include "manor-grassland.dmm"
	// Dungeon is under inn and must be compiled in that order for multiz.
	#include "manor-dungeon.dmm"
	#include "manor-inn.dmm"
	// Other levels are lateral and compile order doesn't matter.
	#include "manor-swamp.dmm"
	#include "manor-woods.dmm"

	#define USING_MAP_DATUM /datum/map/manor

#elif !defined(MAP_OVERRIDE)
	#warn A map has already been included, ignoring Shaded Hills
#endif
