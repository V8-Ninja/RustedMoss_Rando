/*
	===== gml_Object_oplayer_Step_1 (BeginStep) =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

if (variable_global_exists("rando_debug_all_weapons") == 0)
{
    global.rando_debug_all_weapons = 0
    show_debug_message("placeholder")
}
if global.speedrun_mode_
{
    if keyboard_check_pressed(vk_f1)
    {
        if (global.rando_debug_all_weapons == 0)
        {
            for (var itr = 0; itr < 6; itr++)
                global.weapon_data[itr].found = 1
            global.HOOK_UPGRADE_2_ = 1
            ds_map_set(global.save_data, "rando_found_railgun", 1)
            global.rando_debug_all_weapons = 1
        }
        else
        {
            for (itr = 0; itr < 6; itr++)
                global.weapon_data[itr].found = ds_map_find_value(global.save_data, ("wep_" + string(itr)))
            global.HOOK_UPGRADE_2_ = ds_map_find_value(global.save_data, "hook_upgrade_2")
            ds_map_set(global.save_data, "rando_found_railgun", 0)
            global.rando_debug_all_weapons = 0
        }
    }
    if keyboard_check_pressed(vk_f2)
    {
        if (global.world_grav_ == 1)
            global.world_grav_ = 0.5
        else
            global.world_grav_ = 1
    }
}
