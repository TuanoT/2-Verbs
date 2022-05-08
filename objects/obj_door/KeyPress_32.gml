/// @description Toggle open

if obj_player.ram > 0 && obj_player.alive {
	if open {
		// Close door
		open = false;
		alarm[0] = 2;
		
		// Start Timer
		if timed {
			timer_index = 1;
			alarm[1] = 60;
			
			// Play tick sound
			if !audio_is_playing(snd_tick_1) {
				audio_play_sound(snd_tick_1, 1, false);
				alarm[2] = 30;
			}
		}
	} else {
		// Open door
		open = true;
		
		// Start Timer
		if timed {
			timer_index = 1;
			alarm[1] = 60;
			
			// Play tick sound
			if !audio_is_playing(snd_tick_1) {
				audio_play_sound(snd_tick_1, 1, false);
				alarm[2] = 30;
			}
		}
	}
	
	// Player slide sound
	if !audio_is_playing(snd_door) {
		audio_play_sound_on(global.audio_em, snd_door, false, 1);
	}
}
