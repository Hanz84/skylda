// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function projectile_stuck_and_shoot(){
	
	var projectile = argument[0];
	
	if(place_meeting(x+1,y,projectile) && obj_input.button_c || place_meeting(x-1,y,projectile) && obj_input.button_c || place_meeting(x,y+1,projectile) && obj_input.button_c || place_meeting(x,y-1,projectile)  && obj_input.button_c)
	{	not_shooting = true;
		hit = true;
		
		global.projectile_stuck_on_shield = true;
		with(projectile)
		{
			
			projectile_speed = 0;
			projectile_speed2 = 0;
			
			
			}
			if(facing == 0)
			{
				
				with(projectile)
		    {
			
			x = obj_player.x
			y = obj_player.y -6;
			
			
			}
			
			}
			 else if (facing = 2 && place_meeting(x,y,obj_player))
			 {
				 
				 with(projectile)
		     {
			
			x = obj_player.x
			y = obj_player.y +6;
			
			
			 }
				
			
			 }
					 else if (facing = 1 && place_meeting(x,y,obj_player))
			 {
				 
				 with(projectile)
		     {
			
			x = obj_player.x+6
			y = obj_player.y;
			
			
			 }
				
			
			 }
					 else if (facing = 3 && place_meeting(x,y,obj_player))
			 {
				 
				 with(projectile)
		     {
			
			x = obj_player.x-6;
			y = obj_player.y ;
			
			
			 }
				
			
			 }
				
		}
		
			if (hit)
			{
				timer_projectile_stuck_before_explode += 1;
			if(not_shooting)
			{
									collision = true;

			if(facing == 0)
			{
				
				with(projectile)
		    {
			
			x = obj_player.x
			y = obj_player.y -9;
			
			
			}
			
			
			}
			if(facing == 1)
			{
				
				with(projectile)
		    {
			
			x = obj_player.x+9;
			y = obj_player.y ;
			
			}
			
			
			
			}
			if(facing == 2)
			{
				
				with(projectile)
		    {
			
			x = obj_player.x
			y = obj_player.y +9;
			
			
			}
			
			}
			if(facing == 3)
			{
				
				with(projectile)
		    {
			
			x = obj_player.x-9;
			y = obj_player.y 
			
			
			}
			
			}
			}
			if(obj_input.button_a)
				{	
					
					
					not_shooting = false;
					launch = true;
					if(facing == 0)
					
					{
					with(projectile)
					{
						projectile_speed2 =	-2
						
					}
					}
					if(facing == 1)
					
					{
					with(projectile)
					{
						projectile_speed =	-2
						
					}
					}
					if(facing == 2)
					
					{
					with(projectile)
					{
						projectile_speed2 =	2
						
					}
					}
					if(facing == 3)
					
					{
					with(projectile)
					{
						projectile_speed =	2
						
					}
					
					}	
				}
				if (launch)
				{
					
					wait_for_projectile_launch += 1;
					
				}
				
			
				if(wait_for_projectile_launch == 14)
				{
					
					collision = false;
					launched = true;
					wait_for_projectile_launch = 0;
					global.projectile_stuck_on_shield = false;	
					launch = false;
					
				}
			
				if(timer_projectile_stuck_before_explode == 500)
				{
						timer_projectile_stuck_before_explode = 0;			
				    global.projectile_stuck_on_shield = false;
					instance_destroy(projectile)
				}
				if(place_meeting(x,y, projectile  ))
{
	
 
 if (collision )
 {
	player_hp -=0;
 }
 else if (collision == false && launch == false)
 
 { 
	 invincibility = 20;
	 
	player_hp -=5;
	collision = true;
 }




  

}
				
				
			}
		
	

}
