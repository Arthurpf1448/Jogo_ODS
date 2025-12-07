key_up = keyboard_check(vk_up)
key_left = keyboard_check(vk_left)
key_right = keyboard_check(vk_right)


velX = 0

if key_left
{
	velX = -2
	image_xscale = -1
}

if key_right
{
	velX = 2
	image_xscale = 1
}

if !place_meeting(x + velX, y, oBlocoCima) and !place_meeting(x + velX, y, oBlocoMeio)
{
	x += velX
}

move_and_collide(velX, velY, oBlocoCima)
move_and_collide(velX, velY, oBlocoMeio)