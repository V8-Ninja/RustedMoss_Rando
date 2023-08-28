/*
	==== gml_GlobalScript_dialouge_load =====
*/

// Insert after Line 142
if (argument0 == "Speedrun_text")
{
    switch argument1
    {
        case 0:
            return "Randomizer";
        case 1:
            return "(ALPHA v0.0.3) Speedrun Mode changes + Randomizes weapon, trinket, & stat up placements";
    }

}

/*
	===== gml_Object_oplayer_Alarm_10 =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

if (global.speedrun_mode_ == 1)
{
    global.weapon_data[0].found = ds_map_find_value(global.save_data, "rando_found_railgun") == 1
    var rifleFound = global.weapon_data[0].found
    var shotgunFound = global.weapon_data[1].found
    var boltFound = global.weapon_data[2].found
    var sniperFound = global.weapon_data[3].found
    var rocketFound = global.weapon_data[4].found
    var pistolFound = global.weapon_data[5].found
    if (rifleFound == 0 && shotgunFound == 0 && boltFound == 0 && sniperFound == 1 && rocketFound == 0 && pistolFound == 0)
    {
        if (global.mp < global.stat_max_mp)
            global.mp++
        alarm[10] = 240
    }
}

/*
	===== gml_Object_par_shop_PreCreate_0 =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

alarm[10] = 1

/*
	===== gml_Object_par_shop_Alarm_10 =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

if (global.speedrun_mode_ && ds_map_exists(global.save_data, "rando_shop_intro_0"))
{
    for (var itr = 0; itr < 3; itr++)
        shop_data[itr].index = (ds_map_find_value(global.save_data, ("rando_shop_intro_" + string(itr))) - 6)
}

/*
	===== gml_Object_oshop_lake_PreCreate_0 =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

alarm[11] = 2

/*
	===== gml_Object_oshop_lake_Alarm_11 =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

if (global.speedrun_mode_ && ds_map_exists(global.save_data, "rando_shop_lake_0"))
{
    for (var itr = 0; itr < 3; itr++)
        shop_data[itr].index = (ds_map_find_value(global.save_data, ("rando_shop_lake_" + string(itr))) - 6)
}

/*
	===== gml_Object_oshop_fae_PreCreate_0 =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

alarm[11] = 2

/*
	===== gml_Object_oshop_fae_Alarm_11 =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

if (global.speedrun_mode_ && ds_map_exists(global.save_data, "rando_shop_fae_0"))
{
    for (var itr = 0; itr < 3; itr++)
        shop_data[itr].index = (ds_map_find_value(global.save_data, ("rando_shop_fae_" + string(itr))) - 6)
}

/*
	===== gml_Object_opickup_gun_PreCreate_0 =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

if global.speedrun_mode_
{
    var randoItem = instance_create_depth(x, y, depth, opickup_rando)
    randoItem.save_name = ("pickup_weapon_" + room_get_name(room))
    instance_destroy()
}

/*
	===== gml_Object_opickup_trinket_PreCreate_0 =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

if global.speedrun_mode_
{
    var randoItem = instance_create_depth(x, y, depth, opickup_rando)
    randoItem.save_name = ("pickup_trinket_" + room_get_name(room))
    instance_destroy()
}

/*
	===== gml_Object_opickup_hp_PreCreate_0 =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

if global.speedrun_mode_
{
    var randoItem = instance_create_depth(x, y, depth, opickup_rando)
    randoItem.save_name = ("pickup_hp_" + room_get_name(room))
    instance_destroy()
}

/*
	===== gml_Object_opickup_mp_PreCreate_0 =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

if global.speedrun_mode_
{
    var randoItem = instance_create_depth(x, y, depth, opickup_rando)
    randoItem.save_name = ("pickup_mp_" + room_get_name(room))
    instance_destroy()
}

/*
	===== gml_Object_opickup_tp_PreCreate_0 =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

if global.speedrun_mode_
{
    var randoItem = instance_create_depth(x, y, depth, opickup_rando)
    randoItem.save_name = ("pickup_tp_" + room_get_name(room))
    instance_destroy()
}
