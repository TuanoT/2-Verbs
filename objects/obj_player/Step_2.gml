/// @description Comsume RAM
// Doors open and close first

if keyboard_check_pressed(vk_space) && ram > 0 && alive {
	ram--;
	audio_play_sound(snd_hack, 1, false);
	hack_image = 1;
}
