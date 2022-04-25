/// @description Init game

// Don't let 2 controllers exist
if instance_number(obj_controller) > 1 {
	instance_destroy();
	exit;
}

randomize();
window_set_fullscreen(true);
//display_set_gui_maximise(2, 2);  Not needed in fullscreen

// Global Vars
global.debug_mode = false;  // Turn off
global.rockets = -1;
global.ram = -1;
global.kill_count = -1;
global.kill_count_target = -1;
global.current_level_id = -1;
global.current_level_completed = false;
global.audio_em = audio_emitter_create();
global.key_pressed = false;
//global.gore = true;
//global.music_em = audio_emitter_create();
