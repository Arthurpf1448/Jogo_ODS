if instance_exists(obj_player_1)
{
	var px = obj_player_1.x;
	var _y = irandom_range(256, 416) 
	var _x = irandom_range(max(px - 50, 192), min(px + 300, 1920)) 
	
	var ok = false
	var rpt = 100
	if (global.pause) rpt = 0
	repeat(rpt)
	{
	if !collision_circle(_x, _y, 20, obj_bolha, false, false)
	{
		instance_create_layer(_x, _y, layer, obj_bolha)
		ok = true
	}
	if ok == true
	{
		break
	}
	}
	alarm[0] = 3 * room_speed
}