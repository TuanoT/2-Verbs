/// @description

draw_self();

// Health bar
if hp != max_hp {
	draw_healthbar(x-16, y+16, x+16, y+18, (hp/max_hp) * 100, c_black, c_red, c_lime, 0, true, false);
}