/// @description Move

// Update x pos
if place_free(x+xspeed, y) {
	x += xspeed;
} else {
	xspeed = -xspeed/2;
}

// Update y pos
if place_free(x, y+yspeed) {
	y += yspeed;
} else {
	yspeed = -yspeed/2;
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

if !crate_frag {

	// Blood trail
	if abs(xspeed) > 4 || abs(yspeed) > 4 && irandom(1) == 1 {
		var inst = instance_create_depth(x, y, 10, obj_blood_small);
		inst.image_index = irandom(1);
		inst.x += random_range(-2, 2);
		inst.y += random_range(-2, 2);
	}

	// Medium Blood
	if !stopped && (xspeed == 0 && yspeed == 0) {
		var inst = instance_create_depth(x, y, 10, obj_blood_medium);
		inst.x += random_range(-4, 4);
		inst.y += random_range(-4, 4);
		stopped = true;
	}
} else {
	
	// Rotate
	image_angle += (xspeed+yspeed) * rot_dir;
}
