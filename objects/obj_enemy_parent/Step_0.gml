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


// Look at Player
if instance_exists(obj_player) {
	dir = point_direction(x, y, obj_player.x, obj_player.y);
	if point_distance(x, y, obj_player.x, obj_player.y) < 64 && xspeed == 0 && yspeed == 0 {
		angle = dir;	
	}
	
	// Snap angle
	angle = round(angle/90) * 90;
}
