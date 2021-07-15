/// @description Insert description here
// You can write your code in this editor

x -= projectile_speed;
y += projectile_speed2;

timer++
if(place_meeting(x,y,obj_solid || place_meeting(x,y,obj_parent_enemy)))
{timer +=1
	
	image_speed = 0.7;
	
	if(image_index == 4)
	{
	image_speed = 0;
	
	
	
	if(timer == 40)
	{
		instance_destroy(self);
		
		
	}
	}
}


