/// @description Init

xspeed = 0;
yspeed = 0;
friction = 1;
angle = 0;
recoil_amount = 10;
fire_rate = 20;
image_speed = 0;

rockets = global.rockets;
ram = global.ram;

instance_create_depth(x, 0, 0, obj_view_controller);  // Create view controller at the top of the screen