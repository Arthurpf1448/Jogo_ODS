event_inherited();

if instance_exists(obj_msg_sobre)
{
	instance_destroy(obj_msg_sobre)
}

else
{
	instance_create_layer(room_width / 2 + 200, room_height / 2, layer, obj_msg_sobre)
}