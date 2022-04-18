/// @description Init

image_alpha = .75;

// Create medium blood
repeat irandom_range(2, 4) {
	instance_create_depth(x+irandom_range(-12, 12), y+irandom_range(-12, 12), depth, obj_blood_medium);	
}

// Create emitters
repeat irandom_range(2, 4) {
	var inst = instance_create_depth(x, y, depth, obj_blood_emitter);
	inst.speed = random_range(6, 10);
	inst.direction = random(360);
}
