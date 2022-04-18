/// @description Animation
if open {
	
	// Stop animation if open
	if image_index == 4 {
		image_speed = 0;	
	} else {
		image_speed = 1;
	}
} else {
	
	// Stop animation if closed
	if image_index == 0 {
		image_speed = 0;	
	} else {
		image_speed = -1;
	}
}

// Update Solid
solid = !open;
