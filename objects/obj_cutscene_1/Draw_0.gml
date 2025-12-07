var w = surface_get_width(application_surface);
var h = surface_get_height(application_surface);

var _videoData   = video_draw()
var _videoStatus = _videoData[0]

if _videoStatus == 0
{
	draw_surface_stretched(_videoData[1], 0, 0, w, h);
}

if video_get_status() == video_status_closed
{
	room_goto(Room1)
}