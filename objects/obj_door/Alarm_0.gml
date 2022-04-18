/// @description Kill Player

if place_meeting(x, y, obj_player) {
	obj_player.xspeed += lengthdir_x(5, point_direction(x+16, y+16, obj_player.x, obj_player.y));
	obj_player.yspeed += lengthdir_y(5, point_direction(x+16, y+16, obj_player.x, obj_player.y));
	obj_player.alive = false;
}
