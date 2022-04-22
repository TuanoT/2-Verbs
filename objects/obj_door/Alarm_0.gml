/// @description Kill Player

// Kill player
if place_meeting(x, y, obj_player) && obj_player.alive {
	obj_player.alive = false;
	audio_play_sound_on(global.audio_em, snd_flesh_impact, false, 1);
}

// Kill enemy
if place_meeting(x, y, obj_enemy_parent) {
	var enemy = instance_place(x, y, obj_enemy_parent);
	enemy.hp = 0;
	
	// Create blood if armoured (armoured enemies create blood on death)
	if !enemy.armoured {
		instance_create_depth(x, y, 10, obj_blood);
	}
}
