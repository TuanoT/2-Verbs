/// @description Create blood
// Create blood
var inst = instance_create_depth(x, y, depth, obj_blood_small);
if blood < 2 {
	inst.image_index = 1;	
}
blood--;

// Destroy
if blood == 0 || !place_free(x, y) {
	instance_destroy();	
}
