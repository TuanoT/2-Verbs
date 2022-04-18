/// @description Draw Laser (expensive)

for (var len = 0; len < max_len; len++) {
	var xx = x_start + lengthdir_x(len, image_angle);
	var yy = y_start + lengthdir_y(len, image_angle);
	
	// Check for collisions with walls
	if place_meeting(xx, yy, obj_solid) {
		if instance_place(xx, yy, obj_solid).solid {
			break;
		}
	}
	
	// Regular laser collisions
	if !anti_rocket {
		
		// Collision with enemy
		if place_meeting(xx, yy, obj_enemy_parent) {
			with instance_place(xx, yy, obj_enemy_parent) {
				hp -= other.damage;
				if round(hp) % 25 == 0 {
					instance_create_depth(x, y, 10, obj_blood);
				}
			}
			break;
		}
	
		// Collision with player
		if place_meeting(xx, yy, obj_player) {
			obj_player.alive = false;
		}
	} else {
		
		// Destory Rockets
		if place_meeting(xx, yy, obj_rocket) {
			instance_destroy(instance_place(xx, yy, obj_rocket), false);
			// Zap effects here
		}
	}
}


// DRAW LASER

// Get colours
if anti_rocket {
	inner_colour = make_color_rgb(100, 255, 255);
	outer_colour = make_color_rgb(0, 200, 200);
}

// Draw beam
depth--;
draw_set_color(outer_colour);
draw_line_width(x_start, y_start, xx, yy, 3);
draw_set_color(inner_colour);
draw_line(x_start, y_start, xx, yy);
depth++;
draw_self();

// Create start particles
if irandom(1) == 0 {
	var range = 12;
	var part = instance_create_depth(x_start+random_range(-range, range), y_start+random_range(-range, range), depth+irandom_range(-1, 1), obj_laser_particle);
	part.image_blend = outer_colour;
	part.image_angle = point_direction(part.x, part.y, x_start, y_start);
	part.target_len = point_distance(part.x, part.y, x_start, y_start);
}

// Create end particles
if irandom(1) == 0 {
	var part = instance_create_depth(xx, yy, depth+1, obj_laser_particle);
	part.image_blend = outer_colour;
	part.image_angle = random(360);
	part.target_len = 8;
	part.shrink = true;
}
