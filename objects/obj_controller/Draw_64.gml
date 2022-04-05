/// @description Draw GUI

if instance_exists(obj_player) {
	
	// Ammo
	var xx = 16;
	var yy = 540-16-64;
	
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(xx, yy, xx+128, yy+64, false);
	draw_sprite_ext(spr_rocket, 0, xx+32, yy+32, 2, 2, 0, c_white, 1);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(fnt_main);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(xx+96, yy+32, obj_player.rockets);
}