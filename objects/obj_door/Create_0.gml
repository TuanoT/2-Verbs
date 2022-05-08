/// @description Init

depth = -5;
timer_index = 0;

// Auto orientate
if place_meeting(x, y-32, obj_solid) && !(place_meeting(x, y-32, obj_door) || place_meeting(x, y-32, obj_crate)) {
	image_angle = 90;
	y += 32;
} else if place_meeting(x-32, y, obj_solid) && !(place_meeting(x-32, y, obj_door) || place_meeting(x-32, y, obj_crate)) {
	image_angle = 180;
	x += 32;
	y += 32;
} else if place_meeting(x, y+32, obj_solid) && !(place_meeting(x, y+32, obj_door) || place_meeting(x, y+32, obj_crate)) {
	image_angle = 270;
	x += 32;
}
