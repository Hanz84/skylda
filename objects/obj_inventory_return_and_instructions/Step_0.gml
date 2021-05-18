/// @description Insert description here
// You can write your code in this edito

with(obj_player)
{
	
	image_alpha =	0;
	
}
with(obj_rain_cycle)
{
	
	image_alpha = 0;	
	
	
}

if (obj_input.start)

					

   {
	   	  
				 
				 with(obj_player)
				 selection_position_m_item = 0;
				 
				 obj_inventory_select_square.x = obj_slot.x;
				 obj_inventory_select_square.y = obj_slot.y;
				  global.menu_select = 0;
				 
				 
		global.inventory_menu_location = "NOT_MENU";
		global.inventory_select = false;
	   with(obj_player)
	   {
			instance_destroy(obj_wall_player)
			image_alpha = 1;   
			    room_transfer(global.previous_room); 
		   
		   
	   }
	   with(obj_rain_cycle)
{
	
	image_alpha = 1;	
	
	
}
if (obj_input.button_c)
{
	global.inventory_menu_location = "MAGIC_BUTTON_MAPPING";
	
	
}


		
		
	

	
   }