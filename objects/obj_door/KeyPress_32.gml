/// @description Toggle open

if obj_player.ram > 0 && obj_player.alive {
	if open {
		// Close door
		open = false;
		alarm[0] = 2;
	} else {
		// Open door
		open = true;
	}
}
