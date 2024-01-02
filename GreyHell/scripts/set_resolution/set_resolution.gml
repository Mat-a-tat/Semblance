// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_resolution(){
	var _check = true;
	var _rm = room_next(room);
	var  _rprev = _rm;
	VIEW_HEIGHT = 100
	VIEW_WIDTH = 100 

	while (_check = true)
	    {
	    var _cam = room_get_camera(_rm, 0);
	    camera_destroy(_cam);
	    var _newcam = camera_create_view((1024 - VIEW_WIDTH) div 2, (768 - VIEW_HEIGHT) div 2, VIEW_WIDTH, VIEW_HEIGHT);
	    room_set_camera(_rm, 0, _newcam);
	    room_set_viewport(_rm, 0, true, 0, 0, VIEW_WIDTH, VIEW_HEIGHT);
	    room_set_view_enabled(_rm, true);
	    if _rm = room_last
	        {
	        _check = false;
	        }
	    else
	        {
	        _rprev = _rm;
	        _rm = room_next(_rprev);
	        }
	    }

}