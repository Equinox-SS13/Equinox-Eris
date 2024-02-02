#define AUTODOC_SCAN_COST	50

/datum/autodoc/Process()
	if(!patient)
		stop()

	/*  OCCULUS EDIT START: Skip empty patchnotes. This is not the most ideal
		solution -- ideally, picked_patchnotes would not be populated with
		empty notes, but unfortunately the code is unintuitive and not
		programmed this way. I am not yet skilled enough to disentangle the
	    code to rewrite it properly. */

	if(current_step > picked_patchnotes.len)
		stop()
		to_chat(patient, SPAN_NOTICE("Operations complete."))	// OCCULUS EDIT: Tell the patient when it's over
		scan_user(patient, TRUE)				// OCCULUS EDIT - Autodoc won't charge for automatically rescanning during operation
	else

		var/datum/autodoc_patchnote/next_note = picked_patchnotes[current_step]

		if(!next_note.surgery_operations)
			current_step++
		else
			if(world.time > (start_op_time + processing_speed))
				start_op_time = world.time
				patient.updatehealth()
				if(process_note(next_note))
					current_step++

/datum/autodoc/capitalist_autodoc/scan_user(mob/living/carbon/human/human, no_charge = FALSE)	// OCCULUS EDIT - Autodoc won't charge for automatically rescanning during operation
	if(!no_charge && !charge(AUTODOC_SCAN_COST))						// OCCULUS EDIT ^
		return
	. = ..()
