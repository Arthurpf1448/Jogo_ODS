if ox < 50
{
	var restante = 50 - ox
	ox += min(20, restante)
}
instance_destroy(other)