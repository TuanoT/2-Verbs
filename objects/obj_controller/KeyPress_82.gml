/// @description Restart Room

if instance_exists(obj_player) {
	room_restart();
	audio_play_sound_on(global.audio_em, snd_hack_beep, false, 1);
}
