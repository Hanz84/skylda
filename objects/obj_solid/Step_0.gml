/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_projectile_to_hit_lever))
{
	with(obj_projectile_to_hit_lever)
	{
	timer +=1
	
	image_speed = 2;
	
	if(image_index == 4)
	{
	image_speed = 0;
	instance_destroy(self);
	
	
	if(timer == 10)
	{
		instance_destroy(self);
		
		
	}
	
	
	}
	}
}