/// @description Insert description here
// You can write your code in this editor
if(instance_place(x,y,oPlayer))
{
	with(solidObj)
	{
		image_alpha = DLerp(image_alpha,0.35,0.00000001);	
	}
}
else
{
	with(solidObj)
	{
		image_alpha = DLerp(image_alpha,1,0.001);	
	}
}