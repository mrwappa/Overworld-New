/// @param XSpeed
/// @param Object
var brickx = instance_place(x + argument0,y,argument1);
if(brickx)
{
	for(var i = 0; i < abs(argument0); i++)
	{
		if(place_meeting(x+sign(argument0),y,brickx)) then break;
			x+=sign(argument0);
	}
	return brickx;
}

return noone;