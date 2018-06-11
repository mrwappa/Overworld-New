
event_inherited();

PlayerMove();

imgSpeed = 0;
if(xSpeed != 0 or ySpeed != 0)
{
	imgSpeed = 7;	
}
if(imgSpeed == 0)
{
	imgCounter = DLerp(imgCounter,1,0.05);
	if(imgCounter >= 0.6)
	{
		imgIndex = 0;	
	}
}

depth = -y -8;
//image_xscale = mouse_x > x ? SpriteScale : -SpriteScale;
if(ySpeed < 0)
{
	sprite_index = sElfBack;
}
else if(ySpeed > 0)
{
	sprite_index = sElf;
}