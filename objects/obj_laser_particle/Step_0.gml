/// @description Move

// Move towards target
spd += .1;
x += lengthdir_x(spd, image_angle);
y += lengthdir_y(spd, image_angle);

// Change subimage
image_index = floor(spd*2);
if shrink {
	image_index = image_index * -1 + 3;	
}

// Destory on reaching target
if point_distance(xstart, ystart, x, y) > target_len {
	instance_destroy();	
}
