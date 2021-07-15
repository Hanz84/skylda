/// @description Insert description here
// You can write your code in this editor





			 if(image_index == 2)
			{
				image_speed = 0;
				
			}
if(place_meeting(x,y,obj_projectile_to_hit_lever))
{
	
	hit = true;
	
	
	
		
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
	if(self = obj_button_lever_1_dungeon2)
	{
		button1_dungeon2 = true;
		
		
	}
	else if(self = obj_button_lever_2_dungeon_2)
	{
		
		button2_dungeon2 = true;
		
	}
		if(hit)
		{
			image_speed = 0.2
			hit = false;
			
			
		}
	}
	
