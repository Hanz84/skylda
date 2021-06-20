/// @description Insert description here
// You can write your code in this editor





event_inherited();

	
		


	
	
if(place_meeting(x,y,obj_player))
	global.progression_main_char = "first_act"

 if (distance_to_object(obj_player)<200  )
{
	
	state = "HOMING_IN";
	if(distance_to_object(obj_player)<5){
	move_towards_point(obj_player.x, obj_player.y,0.1)
	state = "ATTACKING";
	}
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
		
		image_speed = 0.1
		sprite_index = spr_lighningcrab_attack;
		
		if(position_facing == "UP")
		{
		
		if(irandom(300)<2 )
		{
			if(!instance_exists(obj_lightning_crab_projectile))
				instance_create_layer(x,y-16,"Instances_room1",obj_lightning_crab_projectile);
				
				with(obj_lightning_crab_projectile)
				image_angle = 0;
			
			
		}
		}
		else if(position_facing == "LEFT")
		{
			
			if(irandom(300)<2 )
		{
			if(!instance_exists(obj_lightning_crab_projectile))
				instance_create_layer(x-16,y,"Instances_room1",obj_lightning_crab_projectile);
				with(obj_lightning_crab_projectile)
				image_angle = 90;
				
			
			
			
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
	
	image_angle = 0;
	position_facing = "UP";
	
}
if(direction >225 && direction < 340){
	
	image_angle = 180;
	position_facing = "RIGHT";
	
	
}
if(direction > 160 && direction <= 210){
	
	position_facing = "LEFT";
	image_angle = 90;
	
	
}
if(direction == 0 || direction > 340 && direction <360 || direction > 0 && direction < 45)
{
image_angle = 270;
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
				
		
			if(check_collision_all(cx,cy,obj_solid) )
				{   
				
				
				
				
				facing = choose(enum_facing.up, enum_facing.down, enum_facing.left, enum_facing.right);
				smooth_move(cx,cy)
				
				
				}
				
				
				
				
				
				
			
	
				
	
	break;
		}



}



