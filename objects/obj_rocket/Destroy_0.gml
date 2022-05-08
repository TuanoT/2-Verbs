/// @description Explode

instance_create_depth(x, y, depth-1, obj_explosion);
audio_play_sound_on(global.audio_em, snd_rocket_explode, false, 1);

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
		instance_create_depth(enemy.x, enemy.y, 10, obj_blood);
		
		// Apply knockback
		if !enemy.armoured {
			var dir = point_direction(x, y, enemy.x, enemy.y);
			enemy.xspeed += lengthdir_x(knockback, dir);
			enemy.yspeed += lengthdir_y(knockback, dir);
		}
	}
}

// Move gibs
for (var i = 0; i < instance_number(obj_gib); ++i;) {
    var gib = instance_find(obj_gib, i);
	if point_distance(x, y, gib.x, gib.y) < explosion_radius {
		
		// Apply knockback
		if gib.stopped {
			gib.stopped = false;
			var dir = point_direction(x, y, gib.x, gib.y);
			gib.xspeed += lengthdir_x(knockback/2, dir);
			gib.yspeed += lengthdir_y(knockback/2, dir);
		}
	}
}
