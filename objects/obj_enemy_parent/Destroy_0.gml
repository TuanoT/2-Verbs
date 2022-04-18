/// @description Die

global.kill_count++;

// Create gibs
repeat gib_count {
	var gib = instance_create_depth(x, y, 5, obj_gib);
	var spd = random_range(10, 15);
	var dir = random(360);
	gib.xspeed = lengthdir_x(spd, dir);
	gib.yspeed = lengthdir_y(spd, dir);
	gib.sprite_index = gib_sprite;
}
