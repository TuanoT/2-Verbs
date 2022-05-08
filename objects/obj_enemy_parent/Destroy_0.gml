/// @description Die

global.kill_count++;
audio_play_sound_on(global.audio_em, snd_flesh_impact, false, 1);

// Create blood if armoured
if armoured {
	instance_create_depth(x, y, 10, obj_blood);
}

// Create gibs
repeat gib_count {
	var gib = instance_create_depth(x, y, 5, obj_gib);
	var spd = random_range(10, 15);
	var dir = random(360);
	gib.xspeed = lengthdir_x(spd, dir);
	gib.yspeed = lengthdir_y(spd, dir);
	gib.sprite_index = gib_sprite;
}

// Create bomb if a bomber
if bomber {
	var bomb = instance_create_depth(x, y, depth+1, obj_bomb);
	bomb.xspeed += xspeed;
	bomb.yspeed += yspeed;
}
