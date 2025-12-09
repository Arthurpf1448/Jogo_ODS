if doente
{
	if escurecendo
	{
		image_alpha -= 0.01
		if (image_alpha <= 0.4) escurecendo = false;
	}
	else
	{
		image_alpha += 0.01
		if (image_alpha >= 1) escurecendo = true;
	}
}
else
{
	image_alpha = 1
	escurecendo = false
}

if !doente and y > 350
{
	y -= random_range(1, 2)
}

if !doente and y <= 350
{
	if image_xscale == 1
	{
		x += random_range(1, 2)
	}
	else
	{
		x -= random_range(1, 2)
	}
}
