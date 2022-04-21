/// @description Init

image_speed = 0;
image_index = irandom(image_number-1);
image_angle = irandom(3) * 90;
crate_frag = false;
rot_dir = choose(-1, 1);

stopped = false;
xspeed = 0;
yspeed = 0;
friction = .5;
