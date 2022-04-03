/// @description Explode

instance_destroy();
instance_create_depth(x, y, depth-1, obj_explosion);

// Player knockback
if point_distance(x, y, obj_player.x, obj_player.y) < explosion_radius && !obj_player.bracing {
	var dir = point_direction(x, y, obj_player.x, obj_player.y);
	obj_player.xspeed += lengthdir_x(obj_player.knockback_amount, dir);
	obj_player.yspeed += lengthdir_y(obj_player.knockback_amount, dir);
}

// Hurt enemies within range
for (var i = 0; i < instance_number(obj_enemy_parent); ++i;) {
    var enemy = instance_find(obj_enemy_parent, i);
	if point_distance(x, y, enemy.x, enemy.y) < explosion_radius {
		enemy.hp -= damage;	
	}
}