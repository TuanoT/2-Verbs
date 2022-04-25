/// @description Explode

instance_destroy();
var rocket = instance_create_depth(x, y, depth-1, obj_rocket);
rocket.damage = 100;
instance_destroy(rocket);
