if (global.pause)
{
	image_speed = 0
	exit
}
if hp <= 0
{
	instance_destroy()
	room_restart()
}
input_player()
damage()