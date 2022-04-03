/// @description Init

// Auto orientate
if (place_meeting(x, y-32, obj_fence) || place_meeting(x, y+32, obj_fence)) {
	image_angle = 90;
	y += 32;
}