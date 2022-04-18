/// @description Move

if stopped && (other.xspeed != 0 || other.yspeed != 0) {
	stopped = false;
	xspeed = other.xspeed/2 + random_range(-4, 4);
	yspeed = other.yspeed/2 + random_range(-4, 4);
}
