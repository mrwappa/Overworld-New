
viewZoom = 1;
idealWidth = 0;
idealHeight = 360;//540,450,360
correspondingWidth = 640;//960,800,640

globalvar DisplayWidth;
globalvar DisplayHeight;

DisplayWidth = display_get_width();
DisplayHeight = display_get_height();

aspectRatio = DisplayWidth / DisplayHeight;

idealWidth = round(idealHeight * aspectRatio);

//Pixel Scaling
if(DisplayWidth mod idealWidth != 0)
{
	var d = round(DisplayWidth/idealWidth);
	idealWidth = DisplayWidth/d;
}

if(DisplayHeight mod idealHeight != 0)
{
	var d = round(DisplayHeight/idealHeight);
	idealHeight = DisplayHeight/d;
}

//Check for odd numbers
if(idealWidth & 1)
{
	idealWidth++;	
}
if(idealHeight & 1)
{
	idealHeight++;	
}

widthDifference = abs(idealWidth/correspondingWidth);

window_set_size(DisplayWidth,DisplayHeight);
surface_resize(application_surface,idealWidth/widthDifference,idealHeight/widthDifference);

alarm[0] = 1;

mainCamera = camera_create();
globalvar ViewX,ViewY,ViewW,ViewH;
ViewX = 0;
ViewY = 0;
ViewW = idealWidth/widthDifference;
ViewH = idealHeight/widthDifference;

//if you want to have a "Max Zoom"
maxZoom = floor(DisplayWidth/idealWidth)-1;
viewMaxZoom = ViewW/ViewH;
MaxZoomPan = ViewH/ViewW;
display_set_gui_size(DisplayWidth/2,DisplayHeight/2);

globalvar DisplayScale;
globalvar GuiMouseX;
globalvar GuiMouseY;

DisplayScale = (display_get_gui_width()/ViewW);
GuiMouseX = (mouse_x - ViewX)*DisplayScale;
GuiMouseY = (mouse_y - ViewY)*DisplayScale;

followObject = oPlayer;

room_goto_next();