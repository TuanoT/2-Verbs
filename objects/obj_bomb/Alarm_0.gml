/// @description Explode

instance_destroy();
var rocket = instance_create_depth(x, y, depth-1, obj_rocket);
rocket.damage = 100;
rocket.direction = point_direction(obj_player.x, obj_player.y, x, y);
instance_destroy(rocket);
