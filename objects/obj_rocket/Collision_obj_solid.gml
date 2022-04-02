/// @description Explode

instance_destroy();
instance_create_depth(x, y, depth-1, obj_explosion);

// Player knockback
if point_distance(x, y, obj_player.x, obj_player.y) < 32 {
	var dir = point_direction(x, y, obj_player.x, obj_player.y);
	obj_player.xspeed += lengthdir_x(obj_player.knockback_amount, dir);
	obj_player.yspeed += lengthdir_y(obj_player.knockback_amount, dir);
}