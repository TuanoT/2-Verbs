/// @description Comsume RAM

if ram > 0 && alive {
	ram--;
	audio_play_sound(snd_hack, 1, false);
}
