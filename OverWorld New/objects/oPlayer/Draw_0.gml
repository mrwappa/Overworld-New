/// @description Insert description here
// You can write your code in this editor
if(image_xscale < 0)
{
	//DrawRectShadow(-6,13,18,10);
	//DrawCircleShadow(2,20,1.6,0.8);
}
else
{
	//DrawRectShadow(-12,13,18,10);
	//DrawCircleShadow(-4,20,1.6,0.8);
}


draw_sprite_ext(sprite_index,image_index,round(x),round(y),
				image_xscale,image_yscale,image_angle,color,image_alpha);
				
