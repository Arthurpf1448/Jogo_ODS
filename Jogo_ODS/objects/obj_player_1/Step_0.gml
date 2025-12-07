if (global.pause)
{
	image_speed = 0
	exit
}
if hp <= 0
{
	instance_destroy()
	instance_create_layer(128, 352, layer, obj_player_1)
}
input_player()
damage()