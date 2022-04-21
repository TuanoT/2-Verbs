/// @description Kill Player

if place_meeting(x, y, obj_player) && obj_player.alive {
	obj_player.alive = false;
	obj_player.xspeed += lengthdir_x(5, point_direction(x+16, y+16, obj_player.x, obj_player.y));
	obj_player.yspeed += lengthdir_y(5, point_direction(x+16, y+16, obj_player.x, obj_player.y));
	audio_play_sound_on(global.audio_em, snd_flesh_impact, false, 1);
}
