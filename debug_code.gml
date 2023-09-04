/*
	===== gml_Object_oplayer_Step_1 (BeginStep) =====
	
	!!! This script must be created via the Undertale Mod Tool UI !!!
*/

if (variable_global_exists("rando_debug_all_weapons") == 0)
{
    global.rando_debug_all_weapons = 0
    global.rando_debug_low_gravity = 0
    global.rando_debug_no_barriers = 0
}
if global.speedrun_mode_
{
    if keyboard_check_pressed(vk_f1)
    {
        show_debug_message("===== ALL WEAPONS CHEAT (+ GRENADE) =====")
        if (global.rando_debug_all_weapons == 0)
        {
            for (var itr = 0; itr < 6; itr++)
                global.weapon_data[itr].found = 1
            global.HOOK_UPGRADE_2_ = 1
            if ds_map_exists(global.save_data, "rando_found_railgun")
                ds_map_set(global.save_data, "rando_found_railgun", 1)
            global.rando_debug_all_weapons = 1
        }
        else
        {
            for (itr = 0; itr < 6; itr++)
                global.weapon_data[itr].found = ds_map_find_value(global.save_data, ("wep_" + string(itr)))
            global.HOOK_UPGRADE_2_ = ds_map_find_value(global.save_data, "hook_upgrade_2")
            if ds_map_exists(global.save_data, "rando_found_railgun")
                ds_map_set(global.save_data, "rando_found_railgun", 0)
            global.rando_debug_all_weapons = 0
        }
    }
    if keyboard_check_pressed(vk_f2)
    {
        show_debug_message("===== LOW GRAVITY CHEAT =====")
        if (global.rando_debug_low_gravity == 0)
        {
            global.world_grav_ = 0.5
            global.rando_debug_low_gravity = 1
        }
        else
        {
            global.world_grav_ = 1
            global.rando_debug_low_gravity = 0
        }
    }
    if (global.rando_debug_low_gravity == 1 && global.world_grav_ == 1)
        global.world_grav_ = 0.5
    if keyboard_check_pressed(vk_f4)
    {
        show_debug_message("===== NO BARRIERS CHEAT =====")
        if (global.rando_debug_no_barriers == 0)
        {
            ds_map_set(global.save_data, "target_rm_underhang_b30", 1)
            ds_map_set(global.save_data, "target_rm_catacombs_save_3", 1)
            ds_map_set(global.save_data, "target_rm_catacombs_right_shortcut", 1)
            ds_map_set(global.save_data, "target_rfae_c2", 1)
            ds_map_set(global.save_data, "target_rm_forest_core_0", 1)
            ds_map_set(global.save_data, "target_rm_lake_under_3_alt", 1)
            ds_map_set(global.save_data, "target_rm_mount_5_right", 1)
            ds_map_set(global.save_data, "target_rm_sea_mid_right_1", 1)
            ds_map_set(global.save_data, "target_rm_catacombs_tunnel_1", 1)
            ds_map_set(global.save_data, "target_rm_forest_core_2", 1)
            ds_map_set(global.save_data, "target_rm_catacombs_3", 1)
            ds_map_set(global.save_data, "target_rm_lab_save_right_6", 1)
            ds_map_set(global.save_data, "target_rm_sea_6", 1)
            ds_map_set(global.save_data, "target_rm_hook_tutorial_5", 1)
            ds_map_set(global.save_data, "target_rm_catacombs_right_8", 1)
            ds_map_set(global.save_data, "target_rm_catacombs_right_6", 1)
            ds_map_set(global.save_data, "target_rm_lake_0", 1)
            ds_map_set(global.save_data, "target_rm_lake_under_2", 1)
            ds_map_set(global.save_data, "target_rm_forest_core_6", 1)
            ds_map_set(global.save_data, "target_rfae_c4", 1)
            ds_map_set(global.save_data, "target_rm_moss_top_2", 1)
            ds_map_set(global.save_data, "target_rm_forest_tutorial_2", 1)
            ds_map_set(global.save_data, "target_rm_sleep_c_2", 1)
            ds_map_set(global.save_data, "target_rm_underhang_b20", 1)
            ds_map_set(global.save_data, "target_rm_lab_red_8", 1)
            ds_map_set(global.save_data, "target_rm_lab_bleft_3", 1)
            ds_map_set(global.save_data, "target_rm_lab_red_alt", 1)
            ds_map_set(global.save_data, "target_rm_forest_branch_4_3", 1)
            ds_map_set(global.save_data, "target_rm_moss_top_hidden_4", 1)
            ds_map_set(global.save_data, "target_rm_mount_4_half_right", 1)
            ds_map_set(global.save_data, "target_rm_sleep_c_6", 1)
            ds_map_set(global.save_data, "target_rm_lab_upper_w_3", 1)
            ds_map_set(global.save_data, "target_rm_forest_boss_after_to_side", 1)
            ds_map_set(global.save_data, "target_rm_mount_9_right", 1)
            ds_map_set(global.save_data, "target_rm_lab_red_4", 1)
            ds_map_set(global.save_data, "target_rm_mount_alt_begin", 1)
            ds_map_set(global.save_data, "target_rm_sleep_c_4", 1)
            ds_map_set(global.save_data, "target_rm_underhang_core_2", 1)
            ds_map_set(global.save_data, "target_rm_lab_red_0", 1)
            ds_map_set(global.save_data, "target_rm_lab_bleft_1", 1)
            ds_map_set(global.save_data, "target_rm_forest_core_5", 1)
            ds_map_set(global.save_data, "target_rfae_right_0", 1)
            ds_map_set(global.save_data, "target_rm_lake_boss_after_0", 1)
            ds_map_set(global.save_data, "target_rm_lab_save_right_1", 1)
            ds_map_set(global.save_data, "target_rm_catacombs_2_2", 1)
            ds_map_set(global.save_data, "target_rm_sea_top_extra_2", 1)
            ds_map_set(global.save_data, "target_rm_forest_core_1", 1)
            ds_map_set(global.save_data, "target_rfae_c3", 1)
            ds_map_set(global.save_data, "target_rm_lab_to_boss_4", 1)
            ds_map_set(global.save_data, "target_rm_lake_under_29", 1)
            ds_map_set(global.save_data, "target_rm_sea_new_3", 1)
            ds_map_set(global.save_data, "target_rm_mount_right_alt_1", 1)
            ds_map_set(global.save_data, "target_rfae_c52", 1)
            ds_map_set(global.save_data, "target_rm_forest_core_3", 1)
            ds_map_set(global.save_data, "target_rm_sea_mid_left_0", 1)
            ds_map_set(global.save_data, "target_rm_hook_tutorial_4", 1)
            ds_map_set(global.save_data, "target_rm_sea_to_boss_save", 1)
            ds_map_set(global.save_data, "target_rm_underhang_core_1", 1)
            ds_map_set(global.save_data, "target_rfae_h2", 1)
            ds_map_set(global.save_data, "target_rm_lake_save_0", 1)
            ds_map_set(global.save_data, "target_rm_lab_red_3", 1)
            ds_map_set(global.save_data, "target_rm_sleep_c_7", 1)
            ds_map_set(global.save_data, "target_rm_forest_tutorial_3", 1)
            ds_map_set(global.save_data, "target_rm_sleep_c_3", 1)
            ds_map_set(global.save_data, "target_rm_catacombs_0_0", 1)
            ds_map_set(global.save_data, "target_rm_sea_7_new", 1)
            ds_map_set(global.save_data, "target_rm_lake_core_old", 1)
            ds_map_set(global.save_data, "target_rm_lab_to_cat_6", 1)
            ds_map_set(global.save_data, "target_rm_sea_new_save_bot_alt", 1)
            ds_map_set(global.save_data, "target_rm_forest_branch_4_0", 1)
            ds_map_set(global.save_data, "target_rfae_31", 1)
            ds_map_set(global.save_data, "target_rm_sleep_c_5", 1)
            ds_map_set(global.save_data, "target_rm_lab_bleft_0", 1)
            ds_map_set(global.save_data, "target_rm_test_6_shortcut", 1)
            ds_map_set(global.save_data, "target_rm_snow_0", 1)
            ds_map_set(global.save_data, "target_rm_lab_to_cat_0", 1)
            ds_map_set(global.save_data, "target_rm_lab_bleft_4", 1)
            ds_map_set(global.save_data, "target_rfae_h4", 1)
            ds_map_set(global.save_data, "target_rm_underhang_core_7", 1)
            ds_map_set(global.save_data, "target_rm_sleep_c_1", 1)
            ds_map_set(global.save_data, "switch_key_white", 1)
            ds_map_set(global.save_data, "switch_key_purple", 3)
            ds_map_set(global.save_data, "switch_key_purple_rm_lab_bleft_5", 1)
            ds_map_set(global.save_data, "switch_key_purple_rm_lab_save_right_6", 1)
            ds_map_set(global.save_data, "switch_key_purple_rm_lab_red_7", 1)
            ds_map_set(global.save_data, "switch_key_aqua", 1)
            ds_map_set(global.save_data, "switch_key_lime", 1)
            global.rando_debug_no_barriers = 1
        }
        else
        {
            ds_map_delete(global.save_data, "target_rm_underhang_b30")
            ds_map_delete(global.save_data, "target_rm_catacombs_save_3")
            ds_map_delete(global.save_data, "target_rm_catacombs_right_shortcut")
            ds_map_delete(global.save_data, "target_rfae_c2")
            ds_map_delete(global.save_data, "target_rm_forest_core_0")
            ds_map_delete(global.save_data, "target_rm_lake_under_3_alt")
            ds_map_delete(global.save_data, "target_rm_mount_5_right")
            ds_map_delete(global.save_data, "target_rm_sea_mid_right_1")
            ds_map_delete(global.save_data, "target_rm_catacombs_tunnel_1")
            ds_map_delete(global.save_data, "target_rm_forest_core_2")
            ds_map_delete(global.save_data, "target_rm_catacombs_3")
            ds_map_delete(global.save_data, "target_rm_lab_save_right_6")
            ds_map_delete(global.save_data, "target_rm_sea_6")
            ds_map_delete(global.save_data, "target_rm_hook_tutorial_5")
            ds_map_delete(global.save_data, "target_rm_catacombs_right_8")
            ds_map_delete(global.save_data, "target_rm_catacombs_right_6")
            ds_map_delete(global.save_data, "target_rm_lake_0")
            ds_map_delete(global.save_data, "target_rm_lake_under_2")
            ds_map_delete(global.save_data, "target_rm_forest_core_6")
            ds_map_delete(global.save_data, "target_rfae_c4")
            ds_map_delete(global.save_data, "target_rm_moss_top_2")
            ds_map_delete(global.save_data, "target_rm_forest_tutorial_2")
            ds_map_delete(global.save_data, "target_rm_sleep_c_2")
            ds_map_delete(global.save_data, "target_rm_underhang_b20")
            ds_map_delete(global.save_data, "target_rm_lab_red_8")
            ds_map_delete(global.save_data, "target_rm_lab_bleft_3")
            ds_map_delete(global.save_data, "target_rm_lab_red_alt")
            ds_map_delete(global.save_data, "target_rm_forest_branch_4_3")
            ds_map_delete(global.save_data, "target_rm_moss_top_hidden_4")
            ds_map_delete(global.save_data, "target_rm_mount_4_half_right")
            ds_map_delete(global.save_data, "target_rm_sleep_c_6")
            ds_map_delete(global.save_data, "target_rm_lab_upper_w_3")
            ds_map_delete(global.save_data, "target_rm_forest_boss_after_to_side")
            ds_map_delete(global.save_data, "target_rm_mount_9_right")
            ds_map_delete(global.save_data, "target_rm_lab_red_4")
            ds_map_delete(global.save_data, "target_rm_mount_alt_begin")
            ds_map_delete(global.save_data, "target_rm_sleep_c_4")
            ds_map_delete(global.save_data, "target_rm_underhang_core_2")
            ds_map_delete(global.save_data, "target_rm_lab_red_0")
            ds_map_delete(global.save_data, "target_rm_lab_bleft_1")
            ds_map_delete(global.save_data, "target_rm_forest_core_5")
            ds_map_delete(global.save_data, "target_rfae_right_0")
            ds_map_delete(global.save_data, "target_rm_lake_boss_after_0")
            ds_map_delete(global.save_data, "target_rm_lab_save_right_1")
            ds_map_delete(global.save_data, "target_rm_catacombs_2_2")
            ds_map_delete(global.save_data, "target_rm_sea_top_extra_2")
            ds_map_delete(global.save_data, "target_rm_forest_core_1")
            ds_map_delete(global.save_data, "target_rfae_c3")
            ds_map_delete(global.save_data, "target_rm_lab_to_boss_4")
            ds_map_delete(global.save_data, "target_rm_lake_under_29")
            ds_map_delete(global.save_data, "target_rm_sea_new_3")
            ds_map_delete(global.save_data, "target_rm_mount_right_alt_1")
            ds_map_delete(global.save_data, "target_rfae_c52")
            ds_map_delete(global.save_data, "target_rm_forest_core_3")
            ds_map_delete(global.save_data, "target_rm_sea_mid_left_0")
            ds_map_delete(global.save_data, "target_rm_hook_tutorial_4")
            ds_map_delete(global.save_data, "target_rm_sea_to_boss_save")
            ds_map_delete(global.save_data, "target_rm_underhang_core_1")
            ds_map_delete(global.save_data, "target_rfae_h2")
            ds_map_delete(global.save_data, "target_rm_lake_save_0")
            ds_map_delete(global.save_data, "target_rm_lab_red_3")
            ds_map_delete(global.save_data, "target_rm_sleep_c_7")
            ds_map_delete(global.save_data, "target_rm_forest_tutorial_3")
            ds_map_delete(global.save_data, "target_rm_sleep_c_3")
            ds_map_delete(global.save_data, "target_rm_catacombs_0_0")
            ds_map_delete(global.save_data, "target_rm_sea_7_new")
            ds_map_delete(global.save_data, "target_rm_lake_core_old")
            ds_map_delete(global.save_data, "target_rm_lab_to_cat_6")
            ds_map_delete(global.save_data, "target_rm_sea_new_save_bot_alt")
            ds_map_delete(global.save_data, "target_rm_forest_branch_4_0")
            ds_map_delete(global.save_data, "target_rfae_31")
            ds_map_delete(global.save_data, "target_rm_sleep_c_5")
            ds_map_delete(global.save_data, "target_rm_lab_bleft_0")
            ds_map_delete(global.save_data, "target_rm_test_6_shortcut")
            ds_map_delete(global.save_data, "target_rm_snow_0")
            ds_map_delete(global.save_data, "target_rm_lab_to_cat_0")
            ds_map_delete(global.save_data, "target_rm_lab_bleft_4")
            ds_map_delete(global.save_data, "target_rfae_h4")
            ds_map_delete(global.save_data, "target_rm_underhang_core_7")
            ds_map_delete(global.save_data, "target_rm_sleep_c_1")
            ds_map_delete(global.save_data, "switch_key_white")
            ds_map_delete(global.save_data, "switch_key_purple")
            ds_map_delete(global.save_data, "switch_key_purple_rm_lab_bleft_5")
            ds_map_delete(global.save_data, "switch_key_purple_rm_lab_save_right_6")
            ds_map_delete(global.save_data, "switch_key_purple_rm_lab_red_7")
            ds_map_delete(global.save_data, "switch_key_aqua")
            ds_map_delete(global.save_data, "switch_key_lime")
            global.rando_debug_no_barriers = 0
        }
    }
    if keyboard_check_pressed(vk_f6)
    {
        show_debug_message("===== ELI QUEST CHEAT =====")
        var eli_quest = 0
        if ds_map_exists(global.save_data, "story_string_eli_meet_first")
            eli_quest += ds_map_find_value(global.save_data, "story_string_eli_meet_first") == 1
        if ds_map_exists(global.save_data, "story_string_eli_meet_second")
            eli_quest += ds_map_find_value(global.save_data, "story_string_eli_meet_second") == 1
        if ds_map_exists(global.save_data, "story_string_eli_meet_third")
            eli_quest += ds_map_find_value(global.save_data, "story_string_eli_meet_third") == 1
        if ds_map_exists(global.save_data, "story_string_eli_meet_forth")
            eli_quest += ds_map_find_value(global.save_data, "story_string_eli_meet_forth") == 1
        if ds_map_exists(global.save_data, "story_string_eli_meet_fifth")
            eli_quest += ds_map_find_value(global.save_data, "story_string_eli_meet_fifth") == 1
        if ds_map_exists(global.save_data, "story_string_eli_meet_sixth")
            eli_quest += ds_map_find_value(global.save_data, "story_string_eli_meet_sixth") == 1
        switch eli_quest
        {
            case 0:
                ds_map_set(global.save_data, "story_string_eli_meet_first", 1)
                break
            case 1:
                ds_map_set(global.save_data, "story_string_eli_meet_second", 1)
                break
            case 2:
                ds_map_set(global.save_data, "story_string_eli_meet_third", 1)
                break
            case 3:
                ds_map_set(global.save_data, "story_string_eli_meet_forth", 1)
                break
            case 4:
                ds_map_set(global.save_data, "story_string_eli_meet_fifth", 1)
                break
            case 5:
                ds_map_set(global.save_data, "story_string_eli_meet_sixth", 1)
                break
            case 6:
                ds_map_set(global.save_data, "story_string_eli_meet_first", 0)
                ds_map_set(global.save_data, "story_string_eli_meet_second", 0)
                ds_map_set(global.save_data, "story_string_eli_meet_third", 0)
                ds_map_set(global.save_data, "story_string_eli_meet_forth", 0)
                ds_map_set(global.save_data, "story_string_eli_meet_fifth", 0)
                ds_map_set(global.save_data, "story_string_eli_meet_sixth", 0)
                break
        }

    }
    if keyboard_check_pressed(vk_f7)
    {
        show_debug_message("===== NELL QUEST CHEAT =====")
        var nell_quest = 0
        if ds_map_exists(global.save_data, "story_string_nell_meet_first")
            nell_quest += ds_map_find_value(global.save_data, "story_string_nell_meet_first") == 1
        if ds_map_exists(global.save_data, "story_string_nell_meet_second")
            nell_quest += ds_map_find_value(global.save_data, "story_string_nell_meet_second") == 1
        if ds_map_exists(global.save_data, "story_string_nell_meet_third")
            nell_quest += ds_map_find_value(global.save_data, "story_string_nell_meet_third") == 1
        if ds_map_exists(global.save_data, "story_string_nell_meet_forth")
            nell_quest += ds_map_find_value(global.save_data, "story_string_nell_meet_forth") == 1
        if ds_map_exists(global.save_data, "story_string_nell_meet_fifth")
            nell_quest += ds_map_find_value(global.save_data, "story_string_nell_meet_fifth") == 1
        if ds_map_exists(global.save_data, "story_string_nell_meet_sixth")
            nell_quest += ds_map_find_value(global.save_data, "story_string_nell_meet_sixth") == 1
        switch nell_quest
        {
            case 0:
                ds_map_set(global.save_data, "story_string_nell_meet_first", 1)
                break
            case 1:
                ds_map_set(global.save_data, "story_string_nell_meet_second", 1)
                break
            case 2:
                ds_map_set(global.save_data, "story_string_nell_meet_third", 1)
                break
            case 3:
                ds_map_set(global.save_data, "story_string_nell_meet_forth", 1)
                break
            case 4:
                ds_map_set(global.save_data, "story_string_nell_meet_fifth", 1)
                break
            case 5:
                ds_map_set(global.save_data, "story_string_nell_meet_sixth", 1)
                break
            case 6:
                ds_map_set(global.save_data, "story_string_nell_meet_first", 0)
                ds_map_set(global.save_data, "story_string_nell_meet_second", 0)
                ds_map_set(global.save_data, "story_string_nell_meet_third", 0)
                ds_map_set(global.save_data, "story_string_nell_meet_forth", 0)
                ds_map_set(global.save_data, "story_string_nell_meet_fifth", 0)
                ds_map_set(global.save_data, "story_string_nell_meet_sixth", 0)
                break
        }

    }
    if keyboard_check_pressed(vk_f8)
    {
        show_debug_message("===== BOX-CHAN QUEST CHEAT =====")
        var boxchan_quest = 0
        if ds_map_exists(global.save_data, "story_string_face_gotten")
            boxchan_quest = ds_map_find_value(global.save_data, "story_string_face_gotten")
        switch boxchan_quest
        {
            case 0:
                ds_map_set(global.save_data, "story_string_face_gotten", 1)
                break
            case 1:
                ds_map_set(global.save_data, "story_string_face_gotten", 2)
                break
            case 2:
                ds_map_set(global.save_data, "story_string_face_gotten", 3)
                break
            case 3:
                ds_map_set(global.save_data, "story_string_face_gotten", 0)
                break
        }

    }
	if keyboard_check_pressed(vk_f9)
        global.munney += 10
}
