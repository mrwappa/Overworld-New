/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,round(x),round(y) + 2,SpriteScale,SpriteScale ,0,c_black,0.6);


event_inherited();
//DrawBBox();
DrawHPBar();
/*draw_rectangle_color(x - 10, y - sprite_height /2 -2, x + 10,y - sprite_height /2 ,
					 EnemyHPColor,EnemyHPColor,EnemyHPColor,EnemyHPColor,false);
draw_rectangle_color(x - 10, y - sprite_height /2 -2, x + 10,y - sprite_height /2 ,
EnemyHPBkgrColor,EnemyHPBkgrColor,EnemyHPBkgrColor,EnemyHPBkgrColor,false);*/
//draw_text(round(x+10),round(y),string(xKnockback*100) +  " " + string(yKnockback*100));
//draw_text(round(x+10),round(y),HP);