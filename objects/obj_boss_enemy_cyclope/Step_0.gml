/// @description Insert description here
// You can write your code in this editor
event_inherited()		 
	switch(state)
	{
		case "MOVING" :
		{
			switch(facing)
			{
				case enum_facing.left:
				{
					attack_once = false;
					sprite_index = spr_boss_cyclope_walk
					image_speed = 0.7;
					vy = 0
					vx = -0.5
				if(irandom(1000)<2)
			{
				timer = 0;
				state = "ATTACKING"
					timer_endattack = 0;	
			}
					
				
						break;
					
				}
				case enum_facing.right:
				{
					attack_once = false;
					sprite_index = spr_boss_cyclope_walk
					image_speed = 0.7;
					vy = 0
					vx = 0.5;
					if(irandom(500)<2)
					{
						
						timer = 0;
						state = "ATTACKING"
						timer_endattack = 0;
					}
					
					
				
					break;
				} 
			
			
			
			}	
			break
			
		}
			
			
					
		case "ATTACKING" :
		{
			
			
			
			
			
			sprite_index = spr_boss_cyclope_attack;
			if(timer == 0)
			{
				image_index = 0;
			
			
			}
			
			
			vy = 0;
			vx = 0;
			
		
			
			image_speed = 0.1;
			
				if (timer == 60)
				{
					direction = point_direction(x, y, obj_player.x, obj_player.y);
					if(direction > 110 && direction < 260)
					{
					 	instance_create_layer(x,y+82,"Instances_room1",obj_boss_enemy_cyclope_laser)
						with(obj_boss_enemy_cyclope_laser)
						{
							image_angle = choose(320,350)	
							if(image_angle > 310 && image_angle <= 330)
							
							{
								obj_boss_enemy_cyclope_laser.x = obj_boss_enemy_cyclope_laser.x - 56 
								obj_boss_enemy_cyclope_laser.y = obj_boss_enemy_cyclope_laser.y - 16
								
							}
							else
							{
									obj_boss_enemy_cyclope_laser.x = obj_boss_enemy_cyclope_laser.x - 16;
											
							
							}
						}
						
					}
					
					
				}	
				if(timer == 140){
				state = "ATTACK_END"
				timer_endattack = 0;
				instance_destroy(obj_boss_enemy_cyclope_laser);
				
				
				}
					timer++;
			
			break;
			
			
			
		}
			 
			
			
		case "ATTACK_END":
		{	
			
			image_index = 0;
			image_speed = 0;
			
			
			if(timer_endattack == 40)
			{
				attack_once = true;
				
				state = "MOVING";
				break;
			}
			timer_endattack++
			break;
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
					facing = choose(enum_facing.left, enum_facing.right)
					
				}
				