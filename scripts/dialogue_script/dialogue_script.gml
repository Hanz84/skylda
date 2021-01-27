// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dialogue_script(){
	
	
	// captures values from user 
	var dialogue_part = []; 
	var dialogue_text = ""; if (argument_count >= 1){ dialogue_text = argument[0]}
	var dialogue_continue = false; if (argument_count >= 2){ dialogue_continue = argument[1]}
	var dialogue_person = ""; if (argument_count >= 3){ dialogue_person = argument[2]}
	var dialogue_left_facing = true; if (argument_count >= 4){ dialogue_left_facing = argument[3]}
	// fills up array with values
	dialogue_part[0] = dialogue_text;
	dialogue_part[1] = dialogue_continue;
	dialogue_part[2] = dialogue_person;
	dialogue_part[3] = dialogue_left_facing;
	
	dialogue[dialogue_line] = dialogue_part;
	dialogue_line += 1;
	
	
	
	

}