// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_dialogue(){
	if (fetch)
	
	{
		dialogue_output = "";
		dialogue_output_speed = 0;
		var dialogue_data = dialogue_lines[dialogue_line];
		
	
		
		dialogue_text = dialogue_data[0];
		dialogue_continue = dialogue_data[1];
		dialogue_avatar = dialogue_data[2];
		dialogue_left_facing = dialogue_data[3];
		
		fetch = false; // prevents this from looping repeatedly

	}
else
{
	dialogue_output = string_copy(dialogue_text,1,dialogue_output_speed);
	dialogue_output_speed += 0.8;
	
}


}