 function check_input_all() {


		 if(global.menu_active)
		{
		
		
			if (location == -2)
			
			{
				if (obj_input_menu.up)
				{
					obj_player.x = obj_options.x;
					obj_player.y = obj_options.y+10;
					location = -1;
				}
				if (obj_input_menu.down)
				{
					
					
				}
			}
		
			else if (location == 0)
			{
			    
				   
				if (obj_input_menu.button_a && global.begin_intro == false)
				{
					global.begin_intro = true;
					room_goto_next(); // start the game and goto intro
				
					obj_player.x = 0;
					obj_player.y = 0;
					location = 1;
				}	
				if (obj_input_menu.up)
				{
					obj_player.x = obj_exit.x;
				    obj_player.y = obj_exit.y + 10;
					location = -2;
				}
				if(obj_input_menu.down) 
				{
			
				 obj_player.x = obj_options.x;
				 obj_player.y = obj_options.y + 10;
				 location = -1;
				}
				
			}
			else if (location == -1)
			{
			
				if (obj_input_menu.up)
				{
				
					obj_player.x = obj_start.x;
				    obj_player.y = obj_start.y + 10;
					location = 0;
				}
				if(obj_input_menu.down)
				{
				
					obj_player.x = obj_exit.x;
				    obj_player.y = obj_exit.y + 10;
					location = -2;
				 }
			}
			else if (location == 1)
			{
		
			}
		
		}	
		if(global.inventory_select && global.inventory_menu_location == "MENU")
		{
		
			if(obj_inventory_select_square.x >100)
			{
				if(obj_input_menu.right)
				{
					instance_destroy(obj_selection_arrow)
					global.show_text = false;
					global.currenttext_name = ""
					global.currenttext_description = ""
				}
				else if (obj_input_menu.left)
				{
					global.show_text = false;
					obj_inventory_select_square.x -= 24
					obj_inventory_select_square.y = 104
					global.currenttext_name = ""
					global.currenttext_description = ""
					global.menu_select -=1;
				instance_destroy(obj_selection_arrow)
				}
				else if (obj_input.button_c)
				{
					//obj_inventory_select_square.x = 300
					//obj_inventory_select_square.y = 30
					global.inventory_menu_location = "MAGIC_BUTTON_MAPPING";
				
				
				}
			}
			else if (obj_inventory_select_square.x <= 45)
			{
				startinglocation_menu = true;
				if(obj_input_menu.right)
				{instance_destroy(obj_selection_arrow)
					startinglocation_menu = false;
				    global.currenttext_name = ""
					global.currenttext_description = ""
				obj_inventory_select_square.x += 24
				obj_inventory_select_square.y = 104
				global.menu_select += 1;
				global.show_text = false;
				}
				 else if(obj_input_menu.left)
				{
					global.currenttext_name = ""
					global.currenttext_description = ""
					global.show_text = false;
					instance_destroy(obj_selection_arrow)
				
				}	
				else if (obj_input_menu.button_c)
				{
					//obj_inventory_select_square.x = 270
					//obj_inventory_select_square.y = 30
					global.inventory_menu_location = "MAGIC_BUTTON_MAPPING";
				
				
				}
			}
			else if (startinglocation_menu == false)
			{
			
				if(obj_input_menu.right)
				{
					obj_inventory_select_square.x += 24;
				    obj_inventory_select_square.y = 104;
					global.currenttext_name = ""
					global.currenttext_description = ""
					global.show_text = false;
					global.menu_select += 1;
					instance_destroy(obj_selection_arrow)
				}
				 else if (obj_input_menu.left)
				{
					obj_inventory_select_square.x -= 24;
					obj_inventory_select_square.y = 104;
					global.currenttext_name = ""
					global.currenttext_description = ""
					global.show_text = false;
					global.menu_select -=1;
					instance_destroy(obj_selection_arrow)
				}
				else if (obj_input.button_c)
				{
					//obj_inventory_select_square.x = 300
					//obj_inventory_select_square.y = 30
					global.inventory_menu_location = "MAGIC_BUTTON_MAPPING";
				
				
				}
			} 
		}
	switch (global.inventory_menu_location)
	 
	 { 
		
		 
		 
		 case "MAGIC_BUTTON_MAPPING":
		 {
			  
			 if (instance_exists(obj_inventory_select_square) && selection_position_m_item == 0)
			{
				 instance_deactivate_object(obj_inventory_select_square);
				newselect =  instance_create_layer(obj_magic_slot_item.x+32,obj_magic_slot_item.y+6,"Instances_menucollide",obj_inventory_select_square)
				selection_position_m_item =  1;
				break;
			}
			
			
			
			if(variable_instance_exists(obj_magic_slot_item,"iexist"))
			 {
				 
				 
				 if(obj_input_menu.right)
				 {
					 obj_inventory_select_square.x = obj_magic_slot_item.x + 54;
					 selection_position_m_item = 2;
				 }
				if(selection_position_m_item == 1)
				 {
					 
					 if(obj_input_menu.button_a)
					 {
						 global.inventory_menu_location = "MAGIC_BUTTON_MAPPING_SELECT";
						 break;
						 
					 }
					 
				 }
				 else if(selection_position_m_item == 2)
				 {
					 	 if(obj_input_menu.button_a)
					 {
						 global.inventory_menu_location = "MAGIC_BUTTON_MAPPING_SELECT";
						 break;
						 
					 }
					 
					 
					 
				 }
				 else if(obj_input_menu.start){
				 
				 selection_position_m_item = 0;
				 global.inventory_menu_location = "MENU"
				 obj_inventory_select_square.x = obj_slot.x;
				 obj_inventory_select_square.y = obj_slot.y;
				  global.menu_select = 0;
				   break;
				 }
					 
					 
			 }
			
			break;
			 
			 
			 
		 }
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 case "MAGIC_BUTTON_MAPPING_SELECT":
		 {	
		
			
			
					 
			 if(obj_input.left)	 
		    {
				
				obj_inventory_select_square.x = 304
				obj_inventory_select_square.y = 30
				if(obj_input.button_a )
				{
					
					if (selection_position_m_item == 1)
						{
							if(slot1_set == magicslots.lightning)
								{
										show_debug_message("yaaay")
									break;
								}
								else if (slot1_set == magicslots.cloud ){
										
										
										instance_destroy(object1);
										
										show_debug_message("kuken");
										object1 = instance_create_layer(294,20,"Instances_Inventory",obj_magic_slot_item);
								       with(obj_magic_slot_item)
								{
									depth = -100	
								}
								
									   
									   
									   slot1_set = magicslots.lightning;
							            object1.var_slot = 1;
										menu_item_once = true;
										
										
										break;
											
								}
									
									
						
						}
						else if(selection_position_m_item == 2 ){
									
									if(instance_number(object1)<= 1){ // set var slot check to 2 to create correct item
								 object1 = instance_create_layer(294,20,"Instances_Inventory",obj_magic_slot_item);
								with(obj_magic_slot_item)
								{
									depth = -100	
								}
								
								
								slot1_set = magicslots.cloud;
								
							object1.var_slot = 2;
							break;
									}
									
						}
				}
			 
			 
		    }
			 else if(obj_input.right)
			 {
				 obj_inventory_select_square.x = 334
				 obj_inventory_select_square.y = 30
				 if(obj_input.button_a )
				{
					
					
                   

                    
					
						if (selection_position_m_item == 1)
						{
							if(slot1_set == magicslots.lightning)
								{
										
									
								}
								else if (slot1_set == magicslots.cloud){
										
										
										
										instance_destroy(item1);
										var item1 = instance_create_layer(294,20,"Instances_menucollide",obj_magic_slot_item);
							            slot1_set = magicslots.lightning;
							            item1.var_slot = 1;
									
									
								}
								
								
								
								
								else{
								
								var item1 = instance_create_layer(294,20,"Instances_menucollide",obj_magic_slot_item);
							
							item1.var_slot = 1;
								
								
								
								
								}
							
								
							
						
						}
						else if(selection_position_m_item == 2){
																
									
								var item2 = instance_create_layer(294,20,"Instances_menucollide",obj_magic_slot_item);
								slot1_set = magicslots.cloud
							item2.var_slot = 2;
							
							
						}
				}
			 }
			 else if (obj_input_menu.button_b)
			 {
				 
				 global.inventory_menu_location = "MENU"
				 obj_inventory_select_square.x = obj_slot.x;
				 obj_inventory_select_square.y = obj_slot.y;
				 global.menu_select = 0;
				 selection_position_m_item = 0;
				 instance_destroy(newselect);
				 instance_activate_object(obj_inventory_select_square);
				  break;
			 }else if(obj_input_menu.start){
				 
				 selection_position_m_item = 0;
				 global.inventory_menu_location = "MENU"
				 obj_inventory_select_square.x = obj_slot.x;
				 obj_inventory_select_square.y = obj_slot.y;
				  global.menu_select = 0;
				   break;
			 }
			 else
			 {
				  menu_item_once = false;
				  obj_inventory_select_square.x = 319
				 obj_inventory_select_square.y = 30
			 break;
			 }
		
		 
			}
			case "NOT_MENU":
			{
		
			if(obj_input.down){state = "DOWN";  show_debug_message("anal")}
			if (obj_input.right) state = "MOVE_RIGHT";
			if(obj_input.left) state = "MOVE_LEFT";
			if(obj_input.up) state = "UP";
			
			if(obj_input.button_b && slot1_set == magicslots.cloud)
			{
			
				state = "ATTACK_START";
			
			}
			else if(obj_input.button_b && slot1_set == magicslots.lightning) state = "LIGHTNING_ATTACK";
			if(obj_input.button_a) state = "ATTACK_START";
		
			if(!obj_input.right && !obj_input.left&&! obj_input.up&& !obj_input.down&& !obj_input.button_a &&!obj_input.button_b&&!obj_input.button_c&&!obj_input.select) state = "IDLE";
		    }
		 
		 }
		
	 		
		
	
	


}
