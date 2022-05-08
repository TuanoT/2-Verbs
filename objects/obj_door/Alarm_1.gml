/// @description Tick

if timer_index < 4 {
	alarm[1] = 60;
	timer_index++;
	
	// Play tick sound
	if !audio_is_playing(snd_tick_1) {
		audio_play_sound(snd_tick_1, 1, false);
		alarm[2] = 30;
	}
} else {
	timer_index = 0;
	
	// Toggle door
	if open {
		// Close door
		open = false;
		alarm[0] = 2;
	} else {
		// Open door
		open = true;
	}
	
	// Player slide sound
	if !audio_is_playing(snd_door) {
		audio_play_sound_on(global.audio_em, snd_door, false, 1);
	}
}