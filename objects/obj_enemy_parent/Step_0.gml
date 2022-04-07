/// @description

// Check if dead
if hp <= 0 {
	instance_destroy();	
}


// ENEMY MOVEMENT

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
