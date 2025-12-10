if instance_exists(obj_boss)
{
	var _x = 704
	var _y = irandom_range(128, 384)

	instance_create_layer(_x, _y, layer, obj_ataque)

	alarm[0] = room_speed
}