/// @description Insert description here
// You can write your code in this editor


if (obj_input.select && global.currentroom != Room_Inventory)

	
   {	
	
	     vx = 0;
	     vy = 0;
	  //check_input_menu();
	  
	  room_persistent = true;
		global.previous_room = room; 
		room_goto(Room_Inventory);
	    

	
   }
   
