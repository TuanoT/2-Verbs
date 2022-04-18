/// @description Change selected level

if selected and !global.key_pressed {

	var xdir = (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right)) - (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left));
	var ydir = (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)) - (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up));

	// Check x
	if xdir != 0 {
		var inst = instance_place(x+(xdir*96), y, obj_level_button);
		if inst && inst.image_index != 0 && (inst.pred == id || pred == inst.id) {
			inst.selected = true;
			selected = false;
			
			// Key press once per frame
			global.key_pressed = true;
			obj_controller.alarm[0] = 1;
		}
	}
	
		// Check y
	if ydir != 0 {
		var inst = instance_place(x, y+(ydir*96), obj_level_button);
		if inst && inst.image_index != 0 && (inst.pred == id || pred == inst.id) {
			inst.selected = true;
			selected = false;
			
						
			// Key press once per frame
			global.key_pressed = true;
			obj_controller.alarm[0] = 1;
		}
	}
}
