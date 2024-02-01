/obj/item/tool/weldingtool/use_tool(mob/living/user, atom/target, base_time, required_quality, fail_chance, required_stat, instant_finish_tier = 110, forced_sound = null, sound_repeat = 2.5 SECONDS)
	var/mutable_appearance/welding_sparks = mutable_appearance('zzzz_modular_equinox/icons/effects/welding_effect.dmi', "welding_sparks", GASFIRE_LAYER, FLOAT_PLANE + (ABOVE_LIGHTING_PLANE - target.original_plane))
	target.add_overlay(welding_sparks)
	. = ..()
	target.overlays -= welding_sparks

/obj/item/tool/weldingtool/advanced/use_tool(mob/living/user, atom/target, base_time, required_quality, fail_chance, required_stat, instant_finish_tier = 110, forced_sound = null, sound_repeat = 2.5 SECONDS)
	var/mutable_appearance/welding_sparks = mutable_appearance('zzzz_modular_equinox/icons/effects/welding_effect.dmi', "welding_sparks", GASFIRE_LAYER, FLOAT_PLANE + (ABOVE_LIGHTING_PLANE - target.original_plane))
	target.add_overlay(welding_sparks)
	. = ..()
	target.overlays -= welding_sparks

/obj/item/tool/weldingtool/onestar/use_tool(mob/living/user, atom/target, base_time, required_quality, fail_chance, required_stat, instant_finish_tier = 110, forced_sound = null, sound_repeat = 2.5 SECONDS)
	var/mutable_appearance/exp_welding_sparks = mutable_appearance('zzzz_modular_equinox/icons/effects/welding_effect.dmi', "exp_welding_sparks", GASFIRE_LAYER, FLOAT_PLANE + (ABOVE_LIGHTING_PLANE - target.original_plane))
	target.add_overlay(exp_welding_sparks)
	. = ..()
	target.overlays -= exp_welding_sparks

/obj/item/tool/weldingtool/hivemind/use_tool(mob/living/user, atom/target, base_time, required_quality, fail_chance, required_stat, instant_finish_tier = 110, forced_sound = null, sound_repeat = 2.5 SECONDS)
	var/mutable_appearance/exp_welding_sparks = mutable_appearance('zzzz_modular_equinox/icons/effects/welding_effect.dmi', "exp_welding_sparks", GASFIRE_LAYER, FLOAT_PLANE + (ABOVE_LIGHTING_PLANE - target.original_plane))
	target.add_overlay(exp_welding_sparks)
	. = ..()
	target.overlays -= exp_welding_sparks



