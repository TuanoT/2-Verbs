/// @description Draw shit

draw_self();

draw_set_font(fnt_small);
draw_set_valign(fa_center);

// Rockets
draw_set_halign(fa_left);
draw_set_color(c_red);
draw_text(x, y+40, rockets);

// "RAM"
draw_set_halign(fa_right);
draw_set_color(c_lime);
draw_text(x+32, y+40, ram);

// Seleceted
if selected {
	draw_sprite(spr_level_button_selector, 0, x, y);
}
