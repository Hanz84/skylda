/// @description Insert description here
// You can write your code in this editor
if (!fetch )
{
	
	draw_set_font(obj_gold_font);
	
	var x_offset = 0
	if(dialogue_avatar != "") 
	if(dialogue_left_facing)
	{
		x_offset = -32;
		
		
		
	}else
	{
		x_offset = 32;	
		
	}
	
	var xpos = camera_get_view_width(view_camera[0]) / 2 - 168 - x_offset;
	var ypos = camera_get_view_height(view_camera[0]) + 70;
	draw_set_halign(fa_left);
	draw_sprite(spr_dialogue_box,0,xpos,ypos);
		draw_text_ext(xpos + 10,ypos + 6,string_hash_to_newline(dialogue_output),14,150);


	
	
	

}	
	
	
