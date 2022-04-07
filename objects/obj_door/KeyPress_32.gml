/// @description Toggle open

if obj_player.ram > 0 {
	if open {
		open = false;
		solid = true;
	} else {
		open = true;
		solid = false;
	}
}
