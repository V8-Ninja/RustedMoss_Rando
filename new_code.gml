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
            return "(ALPHA v0.0.2) Speedrun Mode changes + Shuffles weapon and trinket placements";
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
	===== gml_Object_opickup_gun_PreCreate_0 =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

alarm[10] = 1

/*
	===== gml_Object_opickup_gun_Alarm_10 =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

if (global.speedrun_mode_ && ds_map_exists(global.save_data, ("rando_" + name)))
    index = ds_map_find_value(global.save_data, ("rando_" + name))
	
/*
	===== gml_Object_opickup_gun_CleanUp_0 =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

if variable_instance_exists(id, "index")
{
    if (index == 0)
        ds_map_set(global.save_data, "rando_found_railgun", 1)
}

/*
	===== gml_Object_opickup_trinket_PreCreate_0 =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

alarm[10] = 1

/*
	===== gml_Object_opickup_trinket_Alarm_10 =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

if (global.speedrun_mode_ && ds_map_exists(global.save_data, ("rando_" + name)))
    index = ds_map_find_value(global.save_data, ("rando_" + name))

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
        shop_data[itr].index = ds_map_find_value(global.save_data, ("rando_shop_intro_" + string(itr)))
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
        shop_data[itr].index = ds_map_find_value(global.save_data, ("rando_shop_lake_" + string(itr)))
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
        shop_data[itr].index = ds_map_find_value(global.save_data, ("rando_shop_fae_" + string(itr)))
}