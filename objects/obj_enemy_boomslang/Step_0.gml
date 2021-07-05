/// @description Insert description here
// You can write your code in this editor
event_inherited();


timerforx += 1;
  if( timerforx == 2)
{
	xmove = x;
	ymove = y;
	
}
if (timerforx == 80)
{
  xmove2 = x;
  ymove2 = y;
}
if(timerforx == 500)
{
	stuck = false;
	timerforx = 0;
	
}
if(timerforx > 81 && floor(xmove) == floor(xmove2) && floor(ymove) == floor(ymove2) && state != "ATTACKING" )
{
	
	stuck = true
	
}

 if (distance_to_object(obj_player)<60  )
{
	
	state = "HOMING_IN";
	if(distance_to_object(obj_player)<5){
	
	state = "ATTACKING";
	vx = 0;
	vy = 0;
	}
	else
	{
		
		state = "HOMING_IN"	
		sprite_index = spr_boomslang_move
	}
	
}

else{

state = "MOVING";
sprite_index = spr_boomslang_move



}		




switch(state)
{
	
	case "MOVING":
	{
	
		switch(facing)
		
		{
		case enum_facing.up:
		{
			
			image_speed = 0.2;
				sprite_index = spr_boomslang_move;
				vy =  enemy_speed;
				vx = 0;
				image_angle = 270;
				break;
		}
	
		case enum_facing.down:
		{
						

			image_speed = 0.2;
				sprite_index = spr_boomslang_move;
				vy = - enemy_speed;
				vx = 0;
				image_angle = 90
				break;
	
		}
		case enum_facing.left:
		{	
						

			image_speed = 0.2;
				sprite_index = spr_boomslang_move;
				vy = 0
				vx = - enemy_speed
				image_angle = 180
				break;
	
		}
		case enum_facing.right:
		{
						

			image_speed = 0.2;
				sprite_index = spr_boomslang_move;
				vy = 0
				vx =  enemy_speed;
				image_angle = 0;
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
		
		image_speed = 0.1
		sprite_index = spr_boomslang_attack;
		direction = point_direction(x, y, obj_player.x, obj_player.y)   // get direction of the player



//if(vx > 0 && vy > 0){
	
//	vx = 0;
//	vy = 0;
	
	
//}
	


if(direction >45 && direction<160)
{
	
	image_angle = 90;
	position_facing = "UP";
	
	
}
if(direction >225 && direction < 340){
	
	image_angle = 270;
	position_facing = "DOWN";
	
	
}
if(direction > 160 && direction <= 210){
	
	position_facing = "LEFT";
	image_angle = 180;
	
	
}
if(direction == 0 || direction > 340 && direction <360 || direction > 0 && direction < 45)
{
image_angle = 0;
	position_facing = "RIGHT";
	
}
	
		switch(position_facing)
		{	
			
			case "UP":
			{
				if(obj_player.x < x)
				{
				
				image_angle = 110;
				}
				 else if(obj_player.x>x)
				{
					image_angle = 70
					vx = -0.5
					
				}
				else
				{
					image_angle = 90;
				}
				break
				
			}
			case "DOWN":
			{
						if(obj_player.x < x)
				{
					
				image_angle = 250;
				vx = 0.5
				}
				 else if(obj_player.x>x)
				{
					image_angle = 300
					vx = -0.5
					
				}
				else
				{
				image_angle = 280;
				
				}
				break
			}
			case "RIGHT":
			{
						if(obj_player.y < y)
				{
					
				image_angle = 20;
				vx = 0.5
				}
				 else if(obj_player.y>y)
				{
					image_angle = 340
					vx = -0.5
					
				}
				else
				{
				image_angle = 0;
				
				}
				break
				
			}
			case "LEFT":
			{
			
					if(obj_player.y < y)
				{
					
				image_angle = 160;
				vx = 0.5
				}
				 else if(obj_player.y>y)
				{
					image_angle = 200
					vx = -0.5
					
				}
				else
				{
				image_angle = 180;
				
				}
				
		
		
		break;
		
		
		}
		}
		break;
		
	}
	case "HOMING_IN":
		{
			
			direction = point_direction(x, y, obj_player.x, obj_player.y)   // get direction of the player



//if(vx > 0 && vy > 0){
	
//	vx = 0;
//	vy = 0;
	
	
//}
	


if(direction >45 && direction<160)
{
	
	image_angle = 90;
	position_facing = "UP";
	
	
}
if(direction >225 && direction < 340){
	
	image_angle = 270;
	position_facing = "DOWN";
	
	
}
if(direction > 160 && direction <= 210){
	
	position_facing = "LEFT";
	image_angle = 180;
	
	
}
if(direction == 0 || direction > 340 && direction <360 || direction > 0 && direction < 45)
{
image_angle = 0;
	position_facing = "RIGHT";
	
}
if(direction < 70)
{
	vx = 0.5;
	vy = 0;




}




else if (direction < 160)
{
vx = 0;
vy = -0.5;



}
else if (direction < 250)
{
vx = - 0.5;
vy = 0;



}
else 
{

vx = 0;
vy = 0.5;


}

 //if (direction >= 45 and direction <= 145)  { 
   // y=-y-1
	//x = 0;
	//vx= 0;
	//vy = -0.5;
    //canmove=false
	

     
   // }

//else if (direction >= 225 and direction <= 315) {
    //y=y+1
	//x = 0;
	//vx= 0;
	//vy = 0.5;
    //canmove=false
		
	
		

    
    //}

//else if (direction > 145 and direction <= 224)  {
    //x=x-1
	//y = 0;
//	vx= -0.5;
//	vy = 0;
  //  canmove=false
	
		

	
    
    //}

//else if (direction > 315 and direction <= 360)  {
    //x=x+1
	//y = 0;
//	vx= 0.5;
//	vy = 0;
  //  canmove=false
		

    
    //}

//else if (direction >= 0 and direction < 45) {
    //x=x+1
	//y = 0;
//	vx= 0.5;
//	vy = 0;
	
		

  //  canmove=false
   
    //}

	
				cx = vx;
				cy = vy;
				newvx = round(cx);
				newvy = round(cy);
				cx = vx - newvx;
				cy = vy - newvy;
				
		
			if(check_collision_all(cx,cy,obj_solid) && !stuck )
				{   
				
					
				
				
				facing = choose(enum_facing.up, enum_facing.down, enum_facing.left, enum_facing.right);
				smooth_move(cx,cy)
				
				
				}
				else if(stuck )
				{   
				
					
				
				
				facing = choose(enum_facing.up, enum_facing.down, enum_facing.left, enum_facing.right);
				smooth_moving2(cx,cy)
				
				
				}
				
				
				
				
				
				
			
	
				
	
	break;
		}
	


}