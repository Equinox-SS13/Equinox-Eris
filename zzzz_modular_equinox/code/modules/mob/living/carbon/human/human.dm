/mob/living/carbon/human
	var/show_title = TRUE

/mob/living/carbon/human/get_id_rank()
	. = ..()
	if(show_title == FALSE)
		return ""

//this module toggles between showing job title on the entity's name
/mob/living/carbon/human/verb/toggle_title()
	set name = "Toggle Title"
	set desc = "Shows or hides your title."
	set category = "IC"
	show_title = !show_title
	to_chat(usr, "You change your mind about showing your title.")
