/// @description Insert description here
// You can write your code in this editor






if(place_meeting(x,y,obj_dungeon_stream_lit_up))
{
	image_speed = 0.2
if(image_index==7)
{
flame_start = false;	
	
}
if(!flame_start)
{
	image_index = 1;
	flame_start = true;
	
}
if(once == false)
{
instance_create_layer(364,118,"Instances_room1",obj_room_transition_dungeon1_secret_room);

once = true;
var lay_id = layer_get_id("Tiles_3");
var map_id = layer_tilemap_get_id(lay_id);
tilemap_set(map_id, 396, 22, 5);
tilemap_set(map_id, 396, 22, 6);
}
}