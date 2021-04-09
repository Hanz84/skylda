/// @description Insert description here
// You can write your code in this editor
var iid = global.attack_items[# var_slot, 0]; // initiated in 
var identifier = var_slot;
var description = global.attack_items[# var_slot, 1]

global.attack_items[# 1,1] = "Anal";
global.attack_items[# 2,1] = "sulan"
global.attack_items[# 1,0] = 1;
global.attack_items[# 2,0] = 2;

draw_text(x,y+20,description);


if (iid != attack_items.none )
{
	iexist = true;
	draw_sprite(spr_attack_items, iid, x, y);
	draw_text(x,y+20,description);
	
	
	
}