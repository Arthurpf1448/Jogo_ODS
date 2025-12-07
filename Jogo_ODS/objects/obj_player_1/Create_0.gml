event_inherited()
audio_play_sound(snd_musica_1, 2, true)

vel        = 2
grv        = 0.03
forca_cima = 1.5
hp         = 100
hp_mx      = 100
ox         = 50
ox_mx      = 50

barra_hp_W = 106
barra_hp_H = 12
barra_hp_X = 32
barra_hp_Y = 60

barra_ox_W = 106
barra_ox_H = 12
barra_ox_X = 32
barra_ox_Y = 80

function input_player()
{
	var _left, _right, _up
	_left  = keyboard_check(ord("A"))
	_right = keyboard_check(ord("D"))
	_up    = keyboard_check_pressed(vk_space)
	
	_xDir = _right - _left
	
	velh = vel * (_right - _left)
	var _no_chao = place_meeting(x, y + 1, obj_bloco_areia)
	var _na_superficie = place_meeting(x, y - 1, obj_limite_nado)
	
	if _xDir != 0
	{
		image_xscale = _xDir
	}
	if !_no_chao
	{
		velv += grv
	}
	if velv > 0.5
	{
		velv = 0.5
	}
	if !_na_superficie and _up 
	{
		image_speed = 2.5
		velv = -forca_cima
		audio_play_sound(snd_nado_up, 1, false)
	}
	if _no_chao
	{
		image_speed = 0.5
	}
	if image_speed > 1
	{
		image_speed -= 0.05
	}
	if image_speed < 1
	{
		image_speed += 0.1
	}
}

function damage()
{
	_col_agua = place_meeting(x, y, obj_mar)
	if _col_agua and hp > 0 and ox == 0
	{
		hp -= 2.0 / room_speed
	}
	if _col_agua and ox > 0
	{
		ox -= 5.0 / room_speed
	}
}