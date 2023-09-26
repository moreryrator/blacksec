
/obj/item/clothing/suit/reskin_obj(mob/M)
	. = ..()
	if(current_skin)
		var/datum/component/toggle_icon/toggler = GetComponent(/datum/component/toggle_icon)
		if(!toggler)
			return
		toggler.base_icon_state = unique_reskin[current_skin][RESKIN_ICON_STATE]

/obj/item/clothing/under/rank/security/skyrat/utility
	uses_advanced_reskins = TRUE
	unique_reskin = list(

        "Black Variant" = list(
			RESKIN_ICON = 'tff_modular/modules/blacksec/icons/obj/under_icon.dmi'
            RESKIN_ICON_STATE = 'under_black'
			RESKIN_WORN_ICON = 'tff_modular/modules/blacksec/icons/mob/under_worn.dmi'
            RESKIN_WORN_ICON_STATE = 'under_worn'
        )
	)

/obj/item/clothing/gloves/color/black/security/Initialize(mapload)
	. = ..()
	unique_reskin += list(
		"Tacical Gloves" = list(
			RESKIN_ICON = 'tff_modular/modules/blacksec/icons/obj/gloves_icon.dmi',
			RESKIN_ICON_STATE = "gloves_black",
			RESKIN_WORN_ICON = 'tff_modular/modules/blacksec/icons/mob/gloves_worn.dmi',
			RESKIN_WORN_ICON_STATE = "gloves_worn"
		),
	)

/obj/item/clothing/under/rank/security/officer/Initialize(mapload)
	. = ..()
	unique_reskin += list(
		"Black Variant" = list(
			RESKIN_ICON = 'tff_modular/modules/blacksec/under.dmi',
			RESKIN_ICON_STATE = "under_icon",
			RESKIN_WORN_ICON = 'tff_modular/modules/blacksec/under.dmi',
			RESKIN_WORN_ICON_STATE = "under_worn"
		),
	)

/obj/item/clothing/suit/armor/vest/alt/sec/Initialize(mapload)
	. = ..()
	unique_reskin += list(
		"Black Variant" = list(
			RESKIN_ICON = 'tff_modular/modules/blacksec/armor.dmi',
			RESKIN_ICON_STATE = "armor_icon",
			RESKIN_WORN_ICON = 'tff_modular/modules/blacksec/armor.dmi',
			RESKIN_WORN_ICON_STATE = "armor_worn"
		)
	)

/obj/item/clothing/helmet/security/blacksec
	name = "tactical security helmet"
	desc = "A lightweight helmet with a special tactical visor. The visor protects against various types of sprays. Helmet made in the style infiltrator by TerraGov. Flash protection and other visor improvements are not included in the kit."
	icon = 'tff_mofular/modules/blacksec/icons/obj/helmet_icon.dmi'
	worn_icon = 'tff_mofular/modules/blacksec/icons/mob/helmet_worn.dmi'
	icon_state = "helmet_black"
	base_icon_state = "peacekeeper_helmet"
	can_toggle = FALSE
	actions_types = null
	supports_variations_flags = CLOTHING_SNOUTED_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/rank/security/blacksec
	name = "tactical securiy uniform"
	desc = "converted tactical uniform TerraGov for security"
	icon = 'tff_mofular/modules/blacksec/icons/obj/under_icon.dmi'
	worn_icon = 'tff_mofular/modules/black_sec/icons/mob/under_worn.dmi'
	icon_state = "under_black"
	can_adjust = FALSE
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE

/obj/item/clothing/suit/armor/vest/blacksec
	name = "tactical securiy armor vest"
	desc = "Light tactical armor vest developed by TerraGov specifically for security officers"
	icon = 'tff_mofular/modules/blacksec/icons/obj/clothing/suits/armor_black.dmi'
	worn_icon = 'tff_mofular/modules/blacksec/icons/mob/clothing/suits/armor_black.dmi'
	icon_state = "armor_black"
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/gloves/combat/blacksec
	name = "tactical securiy gloves"
	desc = "These tactical gloves are fireproof."
	icon = 'tff_mofular/modules/blacksec/icons/obj/gloves_icon.dmi'
	worn_icon = 'tff_mofular/modules/blacksec/icons/mob/gloves_worn.dmi'
	icon_state = "gloves_black"
	worn_icon_state = "gloves_worn"
	siemens_coefficient = 0.5
	strip_delay = 20
	cold_protection = 0
	min_cold_protection_temperature = null
	heat_protection = 0
	max_heat_protection_temperature = null
	resistance_flags = FLAMMABLE
	armor_type = /datum/armor/none
	cut_type = null
