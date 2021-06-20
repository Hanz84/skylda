/// @description Insert description here
// You can write your code in this editor




if(place_meeting(x,y,obj_dungeon_stream))
{
	time_to_live += 1;
	with(obj_dungeon_stream)
	{
		instance_destroy();
		instance_create_layer(x,y,"Instances_room1",obj_dungeon_stream_lit_up)
		
	}
	
	
}
if(place_meeting(x,y,obj_boss_flammable_pool))
{
	time_to_live += 1;
	with(obj_boss_flammable_pool)
	{
		instance_destroy();
		instance_create_layer(x,y,"Instances_room1",obj_boss_flammable_pool_lit_up)
		
	}
	
	
}
if(instance_exists(obj_boss_flammable_pool_lit_up))
{
	
	with(obj_boss_flammable_pool_lit_up)
	{
	counter ++

if (counter == 100 && !instance_exists(obj_dungeon_flaming_lightable_piedestal))
{
	
	instance_create_layer(x,y,"Instances_room1",obj_boss_flammable_pool)
	instance_destroy();
	
	
	
}

}
	
	
	
}


with(obj_dungeon_stream_lit_up)
{
	counter ++

if (counter == 100 && !instance_exists(obj_dungeon_flaming_lightable_piedestal))
{
	
	instance_create_layer(x,y,"Instances_room1",obj_dungeon_stream)
	instance_destroy();
	
	
	
}

}
if(time_to_live == 3 )
{
	x = 156
	y = 128;
	time_to_live = 0;
	
}
 if (y>obj_player.y)
{
	
	if(place_meeting(x,y,obj_sword))
	{
		y += 2;
		
	}
	
}
else if ( y<obj_player.y && y+32<obj_player.y)
{
	if(place_meeting(x,y,obj_sword))
	{
		y -= 2;
		
	}
	
}



	
	
else if (x < obj_player.x  )
{
	if(place_meeting(x,y,obj_sword))
	{
		x -= 2;
		
	}
	
}
 else if(x>obj_player.x)
{
	if(place_meeting(x,y,obj_sword))
	{
		x += 2;
		
	}
	
}



	


		
