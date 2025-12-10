var w = room_width;
var h = room_height;

var _videoData   = video_draw()
var _videoStatus = _videoData[0]

if _videoStatus == 0
{
	draw_surface_stretched(_videoData[1], 0, 0, w, h);
}

if video_get_status() == video_status_closed
{
	room_goto(rm_fase_3)
} else
{
	if keyboard_check_pressed(vk_enter)
	{
		room_goto(rm_fase_3)
	}
}