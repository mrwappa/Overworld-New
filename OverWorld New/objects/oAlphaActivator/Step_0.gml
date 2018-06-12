/// @description Insert description here
// You can write your code in this editor
if(instance_place(x,y,oPlayer))
{
	with(solidObj)
	{
		image_alpha = DLerp(image_alpha,0.5,0.001);	
	}
}
else
{
	with(solidObj)
	{
		image_alpha = DLerp(image_alpha,1,0.001);	
	}
}

