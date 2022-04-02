/// @description Move to player

if instance_exists(obj_player) {
    x += (obj_player.x - x) * .1;
    y += (obj_player.y - y) * .1;
}