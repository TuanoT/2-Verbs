/// @description Check if level completed

if !instance_exists(obj_enemy_parent) && instance_exists(obj_player) {
	global.current_level_completed = true;
	
	// Exit Level
	if keyboard_check_pressed(vk_space) {
		room = rm_menu;
	}
}
