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

if (mouse_check_button_pressed(mb_left)) {
    if (!instance_exists(obj_gancho)) {

        var h = instance_create_layer(x, y, "Instances", obj_gancho);

        h.sub = id;

        h.direction = point_direction(x, y, mouse_x, mouse_y);
    }
}


move_and_collide(velX, velY, oBlocoCima)
move_and_collide(velX, velY, oBlocoMeio)
