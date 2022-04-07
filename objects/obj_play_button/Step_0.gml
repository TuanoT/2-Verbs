// Check if mouse over button
if position_meeting(mouse_x, mouse_y, self) {
	image_index = 1;	
	
	// Click button
	if mouse_check_button_pressed(mb_any) {
		room = rm_one;	
	}
} else {
	image_index = 0;	
}