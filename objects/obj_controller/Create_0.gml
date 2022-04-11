/// @description Init game

// Don't let 2 controllers exist
if instance_number(obj_controller) > 1 {
	instance_destroy();
}

randomize();
cursor_sprite = spr_cursor;
//display_set_gui_maximise(2, 2);  Not needed in fullscreen

// Global Vars
global.rockets = 20;
global.ram = 10;
