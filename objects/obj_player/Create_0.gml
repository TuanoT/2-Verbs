/// @description Init

xspeed = 0;
yspeed = 0;
friction = 1;
angle = 0;
recoil_amount = 10;
fire_rate = 20;
image_speed = 0;
alive = true;

// Init room
rockets = global.rockets;
ram = global.ram
global.kill_count = 0;
global.kill_count_target = instance_number(obj_enemy_parent);

instance_create_depth(x, y, 0, obj_view_controller);  // Create view controller at the top of the screen