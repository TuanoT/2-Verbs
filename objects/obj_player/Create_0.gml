/// @description Init

xspeed = 0;
yspeed = 0;
friction = 1;
bracing_friction = 3;
angle = 0;
bracing = false;
recoil_amount = 10;
knockback_amount = 20;
fire_rate = 20;

instance_create_depth(x, 0, 0, obj_view_controller);  // Create view controller at the top of the screen