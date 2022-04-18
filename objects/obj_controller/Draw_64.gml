/// @description Draw GUI

if instance_exists(obj_player) {
	
	// Ammo
	var xx = 16;
	var yy = 540-16-64;
	
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(xx, yy, xx+128, yy+64, false);
	draw_set_alpha(1);
	
	draw_sprite_ext(spr_rocket, 0, xx+32, yy+32, 2, 2, 0, c_white, 1);
	draw_set_color(c_white);
	draw_set_font(fnt_main);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(xx+96, yy+32, obj_player.rockets);
	
	// RAM
	xx = 32+128;
	
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(xx, yy, xx+128, yy+64, false);
	draw_set_alpha(1);
	
	draw_sprite_ext(spr_GUI_ram, 0, xx+32, yy+32, 2, 2, 0, c_white, 1);
	draw_set_color(c_white);
	draw_text(xx+96, yy+32, obj_player.ram);
	
	// Targets
	xx = 960-16-196;
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(xx, yy, xx+196, yy+64, false);
	draw_set_alpha(1);
	
	draw_set_color(c_white);
	draw_sprite_ext(spr_GUI_target, 0, xx+32, yy+32, 2, 2, 0, c_white, 1);
	draw_text(xx+128, yy+32, string(global.kill_count) + "/" + string(global.kill_count_target));
	
	// Level complete message
	if global.current_level_completed {
		draw_sprite(spr_GUI_level_complete, 0, 480, 270);
	} else if !obj_player.alive {
		draw_sprite(spr_GUI_restart_dead, 0, 480, 270);
	} else if obj_player.rockets == 0 && !(instance_exists(obj_explosion) || instance_exists(obj_rocket)) {
		draw_sprite(spr_GUI_restart_rockets, 0, 480, 270);
	}
}

// FPS
draw_set_halign(fa_left);
draw_set_font(fnt_small);
draw_set_color(c_lime);
draw_text(0, 532, fps);