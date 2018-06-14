/// @description Insert description here
// You can write your code in this editor
depth =-y;

imgSpeed = 5.5;

var target = oPlayer;

if(instance_exists(target))
{
	var dir = point_direction(x,y,target.x,target.y);
	x += lengthdir_x(50*delta,dir);
	y += lengthdir_y(50*delta,dir);
}