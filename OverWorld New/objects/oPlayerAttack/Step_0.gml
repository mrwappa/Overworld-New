/// @description Insert description here
// You can write your code in this editor

if(imgIndex == image_number - 1)
{
	if(instance_exists(oPlayer))
	{
		oPlayer.playerAttack = noone;	
	}
	instance_destroy();	
}