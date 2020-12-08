/// @description scr_add_weapon(item_ID, name, description, damage);
/// @function scr_add_weapon
/// @param item_ID
/// @param name
/// @param description
/// @param damage
function item_weapon_add(argument0, argument1, argument2, argument3) {

	var iid = argument0;
	global.item_index[# iid, item_stat.name] = argument1;
	global.item_index[# iid, item_stat.description] = argument2;
	global.item_index[# iid, item_stat.damage] = argument3;

	global.item_index[# iid, item_stat.type] = item_type.weapon;


}
