/// @description Insert description here
// You can write your code in this editor

current_x = x
current_y = y
event_inherited();
switch (state) 

{	
	case "MOVING":
	{
		switch (facing)
		
		{
			case enum_facing.up:
			
			{
				vx = 0;
				vy = - enemy_speed;
				image_speed = anim_speed;
			    
				break;
			}
			case enum_facing.left:
			
			{
				vx = -enemy_speed;
				vy = 0;
				image_speed = anim_speed;
				break;
			}
			case enum_facing.right:
			
			{
				vx = enemy_speed;
				vy = 0;
			    image_speed = anim_speed;
				break;
			}
			case enum_facing.down:
			
			{
				vx = 0;
				vy = enemy_speed;
			    image_speed = anim_speed;
				break;
			}
			
		}
		if (irandom(100)<1) facing = choose(enum_facing.up, enum_facing.down, enum_facing.left, enum_facing.right);
		if (irandom(200)<1) 
		{
		
		
			state = "ATTACK";
			timer = 0;
			
	    }
			image_angle = facing - 90;
			break;
	  }
	
			
		
	case "ATTACK" : 
	
	{
			vx = 0;
			vy = 0;
			timer = 15;
			state = "ATTACK_START";
			
	}
	case "ATTACK_START": 

		
		{
			
			if (timer==9)
			
			 
				switch (facing)
				{
			
					case (enum_facing.up):
			
					{
			
						with(instance_create_layer(x,y-10,"Instances_room1",obj_insect_fang))
						{
							image_angle = 0;
							facing = 90;
							break;	
							
						}
						break;
					}	
					case (enum_facing.left):
				
					{
			
						with(instance_create_layer(x-10,y,"Instances_room1",obj_insect_fang))
						{
							image_angle = 90;
							facing = 180;
							break;	
						}
						break;
				     }
					case (enum_facing.right):
			
			
					{
			
			        	with(instance_create_layer(x+10,y,"Instances_room1",obj_insect_fang))
					{
						image_angle = 270;
						facing = 0;
							break;
						}
					    break;
				}
				case (enum_facing.down):
			
				{
			
					with(instance_create_layer(x,y+10,"Instances_room1",obj_insect_fang))
					{
							image_angle = 180;
							facing = 270
						    break;
					}
					break;	
				}
			}
				if (timer>0)
			
				{
					timer--;
				}
		
				else 
		
				{
		
					state = "MOVING";
					
				}
			

			}	
				
		} 
		

	
	
			
		
		
			
		
				
			    cx = vx;
				cy = vy;
				newvx = round(cx);
				newvy = round(cy);
				cx = vx - newvx;
				cy = vy - newvy;
				if(check_collision_all(cx,cy,obj_solid))
				{
					facing = choose(enum_facing.up, enum_facing.down, enum_facing.left, enum_facing.right);
					
				}
				