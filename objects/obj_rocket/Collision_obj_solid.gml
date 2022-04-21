/// @description

// Check that doors are closed
if other.solid {
	instance_destroy();
}

// Destroy Crates
if other.object_index == obj_crate {
	other.dir = direction;
	instance_destroy(other);
}
