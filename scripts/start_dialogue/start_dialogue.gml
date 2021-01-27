// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function start_dialogue(){
	if !(instance_exists(obj_dialogue_controller))
	instance_create_depth(0,0,0,obj_dialogue_controller)
	obj_dialogue_controller.dialogue_lines = argument[0].dialogue;
	obj_dialogue_controller.dialogue_line = argument[1];
	obj_dialogue_controller.fetch = true;

}