if instance_exists(obj_player_2)
{
	if obj_player_2.pontos >= 30
	{
		room_goto(rm_cutscene_3)
		instance_destroy(other)
	}
}