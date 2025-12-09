if (global.pause){
	image_speed = 0
	exit
}
var _colx, _coly
_colx = instance_place(x + velh, y, obj_solido)
_coly = instance_place(x, y + velv, obj_solido)

if _colx
{
	if velh > 0
	{
		x = _colx.bbox_left + x - bbox_right
	}
	if velh < 0
	{
		x = _colx.bbox_right + x - bbox_left
	}
	velh = 0
}

if _coly
{
	if velv > 0
	{
		y = _coly.bbox_top + y - bbox_bottom
	}
	if velv < 0
	{
		y = _coly.bbox_bottom + y - bbox_top
	}
	velv = 0
}

x += velh
y += velv

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);