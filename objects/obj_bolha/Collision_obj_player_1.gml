if colidiu == false
{
	if other.ox < 50
	{
		var restante = 50 - other.ox
		other.ox += min(20, restante)
	}
	sprite_index = spr_bolha_pop
	alarm[0] = room_speed / 2
	colidiu = true
}