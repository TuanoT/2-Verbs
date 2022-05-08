// Load game
function scr_game_save() {
	ini_open("savedata.ini");
	for (var i = 0; i < array_length(global.level_state); i++) {
		ini_write_real("Levels", string(i), global.level_state[i])	
	}
	ini_close();
	
	show_debug_message("Loaded: " + string(global.level_state));
}


function scr_game_load() {
	ini_open("savedata.ini");
	var key = 0;
	while ini_key_exists("Levels", string(key)) {
		global.level_state[key] = ini_read_real("Levels", string(key), 0)
		key++;	
	}
	ini_close();
	
	show_debug_message("Saved: " + string(global.level_state));
}
