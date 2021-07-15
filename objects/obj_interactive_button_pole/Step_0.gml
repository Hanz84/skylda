/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_sword) && image_index == 0)
{
	if(instance_exists(obj_interactive_button_pole))
	{
	with(inst_button1)
{
	if(place_meeting(x,y,obj_sword))
	{
		image_speed = 0.4;
		button_switch1 = true
	}

}
	with(inst_button2)
{
	if(place_meeting(x,y,obj_sword))
	{
		image_speed = 0.4;
		button_switch2 = true
	}
	
}
	
	}
}
if(image_index == 3)
{
	
image_speed = 0;	
	
	
} 




