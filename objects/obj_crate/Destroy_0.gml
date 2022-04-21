/// @description Create fragments

	audio_play_sound_on(global.audio_em, snd_crate_break_high, false, 1);

	// Create gibs
	repeat 6 {
		var gib = instance_create_depth(x+16, y+16, 5, obj_gib);
		var spd = random_range(10, 15);
		dir += random_range(-90, 90);
		gib.xspeed = lengthdir_x(spd, dir);
		gib.yspeed = lengthdir_y(spd, dir);
		gib.sprite_index = spr_crate_frag;
		gib.image_index = irandom(gib.image_number-1);
		gib.crate_frag = true;
	}
