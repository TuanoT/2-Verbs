/// @description Init

speed = 20;
damage = 50;
explosion_radius = 48;
knockback = 20;

// Sound
audio_emitter_pitch(global.audio_em, random_range(.8, 1.2));
audio_play_sound_on(global.audio_em, snd_rocket_fire, false, 1);
