/// @description Move

// Update x pos
if place_meeting(x+xspeed, y, obj_solid) {
	var wall = instance_place(x+xspeed, y, obj_solid)
	if !wall.solid || wall.object_index == obj_fence {
		x += xspeed;
	} else {
		xspeed = 0;
	}
} else {
	x += xspeed;
}

// Update y pos
if place_meeting(x, y+yspeed, obj_solid) {
	var wall = instance_place(x, y+yspeed, obj_solid)
	if !wall.solid || wall.object_index == obj_fence {
		y += yspeed;
	} else {
		yspeed = 0;
	}
} else {
	y += yspeed;
}

// Apply friction
if abs(xspeed) > friction {
	xspeed -= sign(xspeed) * friction;
} else {
	xspeed = 0;	
}

if abs(yspeed) > friction {
	yspeed -= sign(yspeed) * friction;
} else {
	yspeed = 0;	
}

// Blood trail
if abs(xspeed) > 4 || abs(yspeed) > 4 && irandom(1) == 1 {
	var inst = instance_create_depth(x, y, 10, obj_blood_small);
	inst.image_index = irandom(1);
	inst.x += random_range(-2, 2);
	inst.y += random_range(-2, 2);
}

// Rotate
angle += (xspeed + yspeed);

// Flash
if image_index >= 1 && !prev_image_index {
	audio_play_sound(snd_bomb_beep, 1, false);
}
prev_image_index = image_index >= 1;
