/// @description Insert description here
// You can write your code in this editor


if(instance_exists(inst_button1))
{
if(inst_button1.button_switch1)
{
	
	dungeon_1_switch1 = true
	
	
}
if(dungeon_1_switch1)
{
	
	with(inst_button1)
	{
		image_index = 3;
		
	}
	
}

}
if(instance_exists(inst_button2))
{
if(inst_button2.button_switch2)
{
	
	dungeon_1_switch2 = true
	
	
}
if(dungeon_1_switch2)
{
	
	with(inst_button2)
	{
		image_index = 3;
		
	}
	
}


}
if(dungeon_1_switch1 && dungeon_1_switch2)
{
	if(instance_exists(inst_dungeon1_door_boss))
	{
		
		instance_destroy(inst_dungeon1_door_boss)
		instance_create_layer(180,26,"Instances_room1",obj_room_transition_dungeon1_boss)
		
	}
	
}
if(instance_exists(obj_button_lever_1_dungeon2 || instance_exists(obj_button_lever_2_dungeon_2)))
{
if(obj_button_lever_1_dungeon2.button1_dungeon2 && obj_button_lever_2_dungeon_2.button2_dungeon2)
{
	
	if(instance_exists(obj_dungeon2_door1))
	{
		with(other)
		{
			image_speed = 0.1
			if(image_index == 3)
			{
				
				image_speed = 0
			}
			
		}
		
		
	}
	
	
}

}