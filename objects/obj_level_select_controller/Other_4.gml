/// @description Get states of level select buttons

// I probably could of done all of this way better
if !variable_global_exists("level_state") {	
	global.level_state = [];
} else {
	
	// Update level buttons from level_state
	for (var i = 0; i < instance_number(obj_level_button); ++i;) {
		var inst = instance_find(obj_level_button, i);
		inst.image_index = global.level_state[i];
		
		// Check for level just completed
		if global.current_level_completed && global.current_level_id == inst.id {
			inst.image_index = 2;
		}
		
		// Check if pred just cmopleted
		if global.current_level_completed && inst.pred == global.current_level_id{
			inst.image_index = 1;	
		}
	}
	global.current_level_completed = false;
}

// Update level_state
for (var i = 0; i < instance_number(obj_level_button); ++i;) {
	var inst = instance_find(obj_level_button, i);
	global.level_state[i] = inst.image_index;
}
