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
if (hp >= 100) hp = 100
if (ox >= 50) ox = 50
input_player()
damage()