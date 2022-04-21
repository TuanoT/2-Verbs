/// @description

if !other.armoured {
	instance_destroy();
} else {
	
	// Bounce of armoured enemies
	if other.xspeed == 0 && other.yspeed == 0 {
		other.xspeed = lengthdir_x(10, direction);
		other.yspeed = lengthdir_y(10, direction);
		direction += 180;
		image_angle = direction;
		audio_play_sound_on(global.audio_em, snd_metal_impact, false, 1);
	}
}
