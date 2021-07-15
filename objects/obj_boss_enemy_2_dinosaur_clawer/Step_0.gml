/// @description Insert description here
// You can write your code in this editor

y += cy;
x += cx;
if (run == false )
{
	direction = point_direction(x,y,obj_player.x,obj_player.y)
if(direction >75 && direction<105)
{
	cx = 0;
	cy = 0;
	goup = true
	
	run = true
	image_angle =180;
	position_facing = "UP";
	
}
else if(direction >250 && direction < 290){
	
	cx = 0;
	cy = 0;
	godown = true
	run = true
	image_angle = 0;
	position_facing = "DOWN";
	
	
}
else if(direction > 160 && direction <= 200){
	
	cx = 0;
	cy = 0;
	run = true
	goleft = true;
	position_facing = "LEFT";
	image_angle = 270;
	
	
}
else if( direction > 340 && direction <=360 || direction >= 0 && direction < 20)
{
	cx = 0;
	cy = 0;
	run = true
	image_angle = 90;
	goright = true;
	position_facing = "RIGHT";
	
}
else
{
	image_angle = 0;
	run = false;
	cx = 0
	cy = 0
	image_index = 0;
	
	
}
}
if(run)
{

	
	image_speed = 0.1
	
	
	if(goright)
		{
			if(image_index == 2)
	{
		
		image_speed = 0.8
		
		
	}
	if (image_index == 5)
	{
		
		image_index = 2;
		
	}
			cy = 0
			cx = 1.5
			
		}
		if(goleft)
		{
					if(image_index == 2)
	{
		
		image_speed = 0.8
		
		
	}
	if (image_index == 5)
	{
		
		image_index = 2;
		
	}
			cy = 0
			cx = -1.5
			
		
			
			
		}
		if(godown)
		{
					if(image_index == 2)
	{
		
		image_speed = 0.8
		
		
	}
	if (image_index == 5)
	{
		
		image_index = 2;
		
	}
	
			
			cx = 0
			cy =1.5
		}
		if(goup)
		{
			
					if(image_index == 2)
	{
		
		image_speed = 0.8
		
		
	}
	if (image_index == 5)
	{
		
		image_index = 2;
		
	}
	
			
			cx = 0;
			cy = -1.5
			
		}
		

if(place_meeting(x,y+10,obj_solid) || place_meeting(x,y-10,obj_solid) || place_meeting(x+10,y,obj_solid) || place_meeting(x-10,y,obj_solid)  )
{
	cx = 0
	cy = 0
	run = false;
	goleft = false;
	goright = false;
	goup = false;
	godown = false;

	
}
				
	
	
}
	
	
	
	
	




			    