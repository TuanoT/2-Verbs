/// @description Shoot

// Get keyboard inputs
var up = keyboard_check(ord("W")) || keyboard_check(vk_up);
var down = keyboard_check(ord("S")) || keyboard_check(vk_down);
var left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var right = keyboard_check(ord("D")) || keyboard_check(vk_right);

// Find rocket direction
var xdir = right - left;
var ydir = down - up;

if (xdir != 0 ^^ ydir != 0) && alarm[0] <= 0 && rockets > 0 && alive {
	
	// Create rocket
	var r = instance_create_depth(x, y, depth+1, obj_rocket);
	r.direction = point_direction(0, 0, xdir, ydir);
	r.image_angle = r.direction;
	alarm[0] = fire_rate;
	angle = r.direction;
	rockets--;
	image_index = 0
	image_speed = 1;  // Not tied to fire_rate
	
	// Recoil
	xspeed += -xdir * recoil_amount;
	yspeed += -ydir * recoil_amount;
}

// Update image
if rockets > 0 {
	if alarm[0] <= 0 {
		image_index = 4;
		image_speed = 0;
	}
} else {
	image_index = 0;	
}

// Update hack light image
if hack_image != 0 {
	hack_image += .5;
	if sprite_get_number(spr_player_hack) == hack_image {
		hack_image = 0;	
	}
}


// PLAYER MOVEMENT

// Update x pos
if place_free(x+xspeed, y) {
	x += xspeed;
} else {
	// Step towards solid and stop
	while place_free(x+sign(xspeed), y) {
		x += sign(xspeed);
	}
	xspeed = 0;
}

// Update y pos
if place_free(x, y+yspeed) {
	y += yspeed;
} else {
	// Step towards solid and stop
	while place_free(x, y+sign(yspeed)) {
		y += sign(yspeed);
	}
	yspeed = 0;
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


// DIE

if !alive {
	if sprite_index = spr_player {
		sprite_index = spr_player_dead;
		instance_create_depth(x, y, 10, obj_blood);
	
		// Create gibs
		repeat 2 {
			var gib = instance_create_depth(x, y, 5, obj_gib);
			var spd = random_range(10, 15);
			var dir = random(360);
			gib.xspeed = lengthdir_x(spd, dir);
			gib.yspeed = lengthdir_y(spd, dir);
			gib.sprite_index = spr_player_gib;
		}
	}
	
	// Rotate
	angle += (xspeed + yspeed);
	
	// Create blood
	if abs(xspeed) > 2 || abs(yspeed) > 2 && irandom(1) == 1 {
		var inst = instance_create_depth(x, y, 10, obj_blood_small);
		inst.image_index = irandom(1);
		inst.x += random_range(-2, 2);
		inst.y += random_range(-2, 2);
	}
	
	// Medium Blood
	if xspeed == 0 && yspeed == 0 && !place_meeting(x, y, obj_blood_medium) {
		repeat 2 {
			var inst = instance_create_depth(x, y, 10, obj_blood_medium);
			inst.x += random_range(-8, 8);
			inst.y += random_range(-8, 8);
		}
	}
}
