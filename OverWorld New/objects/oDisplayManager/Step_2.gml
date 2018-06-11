
//Zoom
if(mouse_wheel_down())
{
	viewZoom -= 162/2/ViewW;
}
if(mouse_wheel_up())
{
	viewZoom += 162/2/ViewW;
}

viewZoom = clamp(viewZoom,0.2,10);

//View Bounds
ViewW = round(idealWidth/widthDifference/viewZoom);
ViewH = round(idealHeight/widthDifference/viewZoom);

if(ViewW & 1)
{
	ViewW++;
}
if(ViewH & 1)
{
	ViewH++;
}

//Camera Position
if(instance_exists(followObject))
{
	ViewX = followObject.x - (ViewW /2);
	ViewY = followObject.y - (ViewH /2);
}

//Apply to surface and camera
surface_resize(application_surface,ViewW,ViewH);

camera_set_view_size(view_camera[0],ViewW,ViewH);

var _round = round(ViewW/surface_get_width(application_surface));
camera_set_view_pos(view_camera[0],RoundN(ViewX,_round),RoundN(ViewY,_round));

