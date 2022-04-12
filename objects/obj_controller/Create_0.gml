/// @description Init game

// Don't let 2 controllers exist
if instance_number(obj_controller) > 1 {
	instance_destroy();
	exit;
}

randomize();
game_set_speed(60, gamespeed_fps);
//cursor_sprite = spr_cursor;  Mouse input not allowed
//display_set_gui_maximise(2, 2);  Not needed in fullscreen

// Global Vars
global.rockets = -1;
global.ram = -1;
global.kill_count = -1;
global.kill_count_target = -1;
global.current_level_id = -1;
global.current_level_completed =-false;
