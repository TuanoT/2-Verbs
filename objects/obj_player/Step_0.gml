/// @description Shoot

// Get keyboard inputs
var up = keyboard_check(ord("W")) || keyboard_check(vk_up);
var down = keyboard_check(ord("S")) || keyboard_check(vk_down);
var left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var right = keyboard_check(ord("D")) || keyboard_check(vk_right);

// Find rocket direction
var xdir = right - left;
var ydir = down - up;

if (xdir != 0 ^^ ydir != 0) && alarm[0] <= 0 {
	
	// Create rocket
	var r = instance_create_depth(x, y, depth+1, obj_rocket);
	r.direction = point_direction(0, 0, xdir, ydir);
	r.image_angle = r.direction;
	alarm[0] = fire_rate;
	angle = r.direction;
	
	// Recoil
	if !bracing {
		xspeed += -xdir * recoil_amount;
		yspeed += -ydir * recoil_amount;
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
var fric = friction + bracing_friction * real(bracing);
if abs(xspeed) > fric {
	xspeed -= sign(xspeed) * fric;
} else {
	xspeed = 0;	
}

if abs(yspeed) > fric {
	yspeed -= sign(yspeed) * fric;
} else {
	yspeed = 0;	
}

// Brace
if keyboard_check(vk_space) {
	bracing = true;
} else {
	bracing = false;	
}