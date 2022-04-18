/// @description Init

// Auto orientate
if place_meeting(x, y-32, obj_solid) && !place_meeting(x, y-32, obj_door) {
	image_angle = 90;
	y += 32;
} else if place_meeting(x-32, y, obj_solid) && !place_meeting(x-32, y, obj_door)  {
	image_angle = 180;
	x += 32;
	y += 32;
} else if place_meeting(x, y+32, obj_solid) && !place_meeting(x, y+32, obj_door)  {
	image_angle = 270;
	x += 32;
}
