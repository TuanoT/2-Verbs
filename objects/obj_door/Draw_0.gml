/// @description Draw timer

draw_self();
if timed {
	draw_sprite_ext(spr_door_timer, 0, xstart+16, ystart+16, 1, 1, image_angle, c_white, 1);
}
