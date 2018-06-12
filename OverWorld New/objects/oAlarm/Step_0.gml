/// @description
timer -= delta;
trigger = false;
if(timer <= 0 and prevTimer > 0)
{
	trigger = true;	
}

prevTimer = timer;