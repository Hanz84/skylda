/// @description Insert description here
// You can write your code in this editor





event_inherited();

if (distance_to_object(obj_player)<50  )
{
	
	state = "HOMING_IN";
	
}

else{

state = "MOVING";




}		




switch(state)
{
	
	case "MOVING":
	{
	
		switch(facing)
		
		{
		case enum_facing.up:
		{
			
			image_speed = 1;
				sprite_index = spr_lighningcrab_up;
				vy =  enemy_speed;
				vx = 0;
				image_angle = 180;
				break;
		}
	
		case enum_facing.down:
		{
						

			image_speed = 1;
				sprite_index = spr_lighningcrab_up;
				vy = - enemy_speed;
				vx = 0;
				image_angle = 0
				break;
	
		}
		case enum_facing.left:
		{	
						

			image_speed = 1;
				sprite_index = spr_lighningcrab_up;
				vy = 0
				vx = - enemy_speed
				image_angle = 90
				break;
	
		}
		case enum_facing.right:
		{
						

			image_speed = 1;
				sprite_index = spr_lighningcrab_up;
				vy = 0
				vx =  enemy_speed;
				image_angle = 270;
				break;
		
		
		
		
		
		}	
		
		break;
	} 
	
		  cx = vx;
				cy = vy;
				newvx = round(cx);
				newvy = round(cy);
				cx = vx - newvx;
				cy = vy - newvy;


if (irandom(100)<1) facing = choose(enum_facing.up, enum_facing.down, enum_facing.left, enum_facing.right);



		
				


if(check_collision_all(cx,cy,obj_solid))
				{   
					facing = choose(enum_facing.up, enum_facing.down, enum_facing.left, enum_facing.right);
				}

	
	break;
  } 
  
  case "ATTACKING":
	{
		vx = 0;
		vy = 0;
		image_speed = 0.5
		sprite_index = spr_lighningcrab_attack;
		
		
		
		
		break;
		
	
	
	}
	case "HOMING_IN":
		{
			direction = point_direction(x, y, obj_player.x, obj_player.y)   // get direction of the player

if (direction >= 45 and direction <= 145)  { 
   // y=-y-1
	//x = 0;
	vx= 0;
	vy = -0.5;
    canmove=false
	image_angle = 90
     
    }

if (direction >= 225 and direction <= 315) {
    //y=y+1
	//x = 0;
	vx= 0;
	vy = 0.5;
    canmove=false
		image_angle = 180

    
    }

else if (direction > 145 and direction <= 315)  {
    //x=x-1
	//y = 0;
	vx= -0.5;
	vy = 0;
    canmove=false
	image_angle = 0 ;
    
    }

if (direction > 315 and direction <= 360)  {
    //x=x+1
	//y = 0;
	vx= 0.5;
	vy = 0;
    canmove=false
	image_angle = 270
    
    }

if (direction >= 0 and direction <= 45) {
    //x=x+1
	//y = 0;
	vx= 0.5;
	vy = 0;
	image_angle = 0;
    canmove=false
   
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

	
				
	
	break;
		}



}



