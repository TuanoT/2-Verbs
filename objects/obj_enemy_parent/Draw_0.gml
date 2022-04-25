/// @description

// Draw self
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, angle, c_white, 1);

// Draw health bar
if hp != max_hp {
	draw_healthbar(x-16, y+16, x+16, y+18, (hp/max_hp) * 100, c_black, c_red, c_lime, 0, true, false);
}
