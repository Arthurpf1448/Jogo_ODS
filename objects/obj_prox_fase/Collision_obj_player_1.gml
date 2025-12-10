if instance_exists(obj_player_1)
{
	if obj_player_1.pontos >= 30
	{
		room_goto(rm_cutscene_2)
		instance_destroy(other)
	}
}