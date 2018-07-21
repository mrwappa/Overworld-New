/// @description Insert description here
// You can write your code in this editor
draw_text(display_get_gui_width()-5, 160, delta);

if(instance_exists(oPlayer))
{
	draw_text(display_get_gui_width()-5, 260, oPlayer.depth);
	draw_text(display_get_gui_width()-5, 280, oPlayer.x);
	draw_text(display_get_gui_width()-5, 300, oPlayer.y);
}
