/// @description Insert description here
// You can write your code in this editor



if(image_index == 3)
{
	
	touched_grass = false;
	image_index = 0;
	image_speed = 0;
	
	
}




if(place_meeting(x,y,obj_player))
{
	image_speed = 0;
	image_index = 1;
	touched_grass = true;
	
	
	
}
if (touched_grass && !place_meeting(x,y,obj_player ))
{
	
	image_speed = 0.05;
	
}


