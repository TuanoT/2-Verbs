/// @description Explode

instance_create_depth(x, y, depth-1, obj_explosion);

// Player knockback
if point_distance(x, y, obj_player.x, obj_player.y) < explosion_radius {
	obj_player.xspeed += lengthdir_x(knockback, direction+180);
	obj_player.yspeed += lengthdir_y(knockback, direction+180);
}

// Hurt enemies within range
for (var i = 0; i < instance_number(obj_enemy_parent); ++i;) {
    var enemy = instance_find(obj_enemy_parent, i);
	if point_distance(x, y, enemy.x, enemy.y) < explosion_radius {
		enemy.hp -= damage;
		
		// Apply knockback
		var dir = point_direction(x, y, enemy.x, enemy.y);
		enemy.xspeed += lengthdir_x(knockback, dir);
		enemy.yspeed += lengthdir_y(knockback, dir);
	}
}