
event_inherited();

PlayerMove();

//Image Speed and image_index control
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

sprite_index = sElf;
if(mouse_y < y)
{
	sprite_index = sElfBack;
}

if(mouse_check_button_pressed(mb_left) and playerAttack == noone)
{
	playerAttack = InstanceCreate(x,y,oPlayerAttack);
	with(playerAttack)
	{
		image_angle = point_direction(other.x,other.y,mouse_x,mouse_y);
		image_yscale = choose(1.25,-1.25);
		image_xscale = 1.25;
		color = c_purple;
	}
}

if(instance_exists(playerAttack))
{
	with(playerAttack)
	{
		var length = 10;
		x = other.x + lengthdir_x(length,image_angle);
		y = other.y + lengthdir_y(length,image_angle);
	}
}