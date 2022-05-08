/// @description Get states of level select buttons

// I probably could of done all of this way better
if !variable_global_exists("level_state") {	
	global.level_state = [];
	scr_game_load();
	room_restart();
} else {
	
	// Update level buttons from level_state
	for (var i = 0; i < instance_number(obj_level_button); ++i;) {
		var inst = instance_find(obj_level_button, i);
		inst.image_index = global.level_state[i];
		
		// Update the selected level
		if global.current_level_id == inst.id {
			obj_level_button.selected = false;
			inst.selected = true;
			// Complete level
			if global.current_level_completed {
				inst.image_index = 2;
			}
		}
		
		// Check if pred just completed
		if global.current_level_completed && (inst.pred == global.current_level_id || inst.pred2 == global.current_level_id) && inst.image_index == 0 {
			inst.image_index = 1;	
		}
	}
	global.current_level_completed = false;
}

// Update level_state
for (var i = 0; i < instance_number(obj_level_button); ++i;) {
	var inst = instance_find(obj_level_button, i);
	global.level_state[i] = inst.image_index;
	if global.debug_mode && inst.image_index == 0 {
		global.level_state[i] = 1;
	}
}

scr_game_save();
