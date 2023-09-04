/*
	===== Randomizer_Create =====
*/

// This script should be placed on the PreCreate event of "oplayer"

// !!!!! PLACE FOLLOWING CODE IN SCRIPT & SAVE, THEN COPY COMPLETE CODE !!!!!

function generate_rando_from_seed(argument0) {}
function rando_define_locations() {}
function rando_define_progression(argument0) {}
function rando_define_upgrades(argument0) {}
function rando_place_progression() {}
function rando_place_upgrades() {}
function rando_check_placement(argument0, argument1) {}

// Complete Code

show_debug_message("===== CREATING ARRAYS FOR RANDOMIZER USE =====")
global.randoLocations = array_create(64, "")
global.randoProgression = array_create(5, -1)
global.randoUpgrades = array_create(60, -1)
show_debug_message("===== ENABLE RAIL GUN? + SNIPER ONLY MP REFILL ALARM =====")
alarm[10] = 1
show_debug_message("===== INITIALIZING RANDOMIZER =====")
if (global.speedrun_mode_ == 1)
{
    if (ds_map_exists(global.save_data, "rando_seed") == 0)
    {
        ds_map_set(global.save_data, "rando_seed", (date_current_datetime() * 10000000))
        ds_map_set(global.save_data, "rando_debug_regen_seed", 1)
    }
    if (ds_map_find_value(global.save_data, "rando_debug_regen_seed") == 1)
    {
        generate_rando_from_seed(ds_map_find_value(global.save_data, "rando_seed"))
        ds_map_set(global.save_data, "rando_debug_regen_seed", 0)
    }
}
function generate_rando_from_seed(argument0) //gml_Script_generate_rando_from_seed
{
    random_set_seed(argument0)
    show_debug_message("===== SETTING THE RANDOM WEAPON ON SEED START =====")
    var startWeapon = round(random_range(-0.49, 5.49))
    global.weapon_data[startWeapon].found = 1
    global.current_weapon_ = startWeapon
    for (var itr = 0; itr < 6; itr++)
    {
        if (itr != startWeapon)
            global.weapon_data[itr].found = 0
    }
    ds_map_set(global.save_data, "rando_start_weapon", startWeapon)
    ds_map_set(global.save_data, "rando_found_railgun", startWeapon == 0)
    rando_define_locations()
    rando_define_progression(startWeapon)
    rando_define_upgrades(startWeapon)
    rando_place_progression()
    rando_place_upgrades()
}

function rando_define_locations() //gml_Script_rando_define_locations
{
    show_debug_message("===== LOCATIONS FOR WEAPONS =====")
    array_set(global.randoLocations, 0, "pickup_weapon_rm_moss_top_cave")
    array_set(global.randoLocations, 1, "pickup_weapon_rm_catacombs_right_extra")
    array_set(global.randoLocations, 2, "pickup_weapon_rm_forest_extra_4")
    array_set(global.randoLocations, 3, "pickup_weapon_rm_lake_hidden_2")
    array_set(global.randoLocations, 4, "pickup_weapon_rm_mount_top_boss")
    show_debug_message("===== LOCATIONS FOR TRINKETS =====")
    array_set(global.randoLocations, 5, "pickup_trinket_rm_mount_top_left_4_alt")
    array_set(global.randoLocations, 6, "pickup_trinket_rm_snow_7")
    array_set(global.randoLocations, 7, "pickup_trinket_rm_sea_8_alt")
    array_set(global.randoLocations, 8, "pickup_trinket_rm_lab_red_alt")
    array_set(global.randoLocations, 9, "pickup_trinket_rm_tea_party")
    array_set(global.randoLocations, 10, "pickup_trinket_rm_lab_bed_2")
    array_set(global.randoLocations, 11, "pickup_trinket_rm_forest_lilly")
    array_set(global.randoLocations, 12, "pickup_trinket_rm_catacombs_extra_5")
    array_set(global.randoLocations, 13, "pickup_trinket_rm_sea_mid_2_alt")
    array_set(global.randoLocations, 14, "pickup_trinket_rm_lake_extra_6")
    array_set(global.randoLocations, 15, "pickup_trinket_rm_sea_arena_reward")
    array_set(global.randoLocations, 16, "pickup_trinket_rm_forest_extra_2")
    array_set(global.randoLocations, 17, "pickup_trinket_rm_moss_hidden_0")
    array_set(global.randoLocations, 18, "pickup_trinket_rm_test_hidden_2")
    array_set(global.randoLocations, 19, "pickup_trinket_rm_underhang_boss_after")
    array_set(global.randoLocations, 20, "pickup_trinket_rm_lab_main_left_0")
    array_set(global.randoLocations, 21, "pickup_trinket_rm_mount_right_alt_2")
    array_set(global.randoLocations, 22, "pickup_trinket_rm_meadow_to_snow_0")
    array_set(global.randoLocations, 23, "pickup_trinket_rfae_h0")
    array_set(global.randoLocations, 24, "pickup_trinket_rm_catacombs_alt_secret")
    array_set(global.randoLocations, 25, "pickup_trinket_rm_forest_cafe_2")
    array_set(global.randoLocations, 26, "pickup_trinket_rm_hell_garden_alt")
    array_set(global.randoLocations, 27, "pickup_trinket_rm_moss_top_hidden_4")
    array_set(global.randoLocations, 28, "pickup_trinket_rm_mount_ameli_1")
    array_set(global.randoLocations, 29, "pickup_trinket_rm_test_5")
    array_set(global.randoLocations, 30, "shop_intro_0")
    array_set(global.randoLocations, 31, "shop_intro_1")
    array_set(global.randoLocations, 32, "shop_intro_2")
    array_set(global.randoLocations, 33, "shop_lake_0")
    array_set(global.randoLocations, 34, "shop_lake_1")
    array_set(global.randoLocations, 35, "shop_lake_2")
    array_set(global.randoLocations, 36, "shop_fae_0")
    array_set(global.randoLocations, 37, "shop_fae_1")
    array_set(global.randoLocations, 38, "shop_fae_2")
    show_debug_message("===== LOCATIONS FOR HP / MP / TP UPGRADES =====")
    array_set(global.randoLocations, 39, "pickup_hp_rm_test_hidden_3")
    array_set(global.randoLocations, 40, "pickup_hp_rm_mount_4_half_right")
    array_set(global.randoLocations, 41, "pickup_hp_rm_test_hidden")
    array_set(global.randoLocations, 42, "pickup_hp_rm_forest_cafe_3")
    array_set(global.randoLocations, 43, "pickup_hp_rm_sea_extra_2")
    array_set(global.randoLocations, 44, "pickup_hp_rm_test_before_boss_alt")
    array_set(global.randoLocations, 45, "pickup_hp_rm_underhang_b20")
    array_set(global.randoLocations, 46, "pickup_mp_rm_lake_hidden_3")
    array_set(global.randoLocations, 47, "pickup_mp_rm_forest_extra_3")
    array_set(global.randoLocations, 48, "pickup_mp_rm_sea_left_2")
    array_set(global.randoLocations, 49, "pickup_mp_rm_catacombs_extra_1")
    array_set(global.randoLocations, 50, "pickup_mp_rm_sea_2")
    array_set(global.randoLocations, 51, "pickup_mp_rm_moss_hidden_1")
    array_set(global.randoLocations, 52, "pickup_mp_rm_4_hidden")
    array_set(global.randoLocations, 53, "pickup_mp_rm_mount_intro_begin")
    array_set(global.randoLocations, 54, "pickup_mp_rm_test_alt_alt")
    array_set(global.randoLocations, 55, "pickup_tp_rm_moss_8")
    array_set(global.randoLocations, 56, "pickup_tp_rm_lake_hidden_4")
    array_set(global.randoLocations, 57, "pickup_tp_rm_forest_extra_0")
    array_set(global.randoLocations, 58, "pickup_tp_rm_hidden_4")
    array_set(global.randoLocations, 59, "pickup_tp_rm_catacombs_extra_3")
    array_set(global.randoLocations, 60, "pickup_tp_rm_moss_3")
    array_set(global.randoLocations, 61, "pickup_tp_rm_mount_10_alt")
    array_set(global.randoLocations, 62, "pickup_tp_rm_underhang_extra_2")
    array_set(global.randoLocations, 63, "pickup_tp_rm_moss_top_cave")
}

function rando_define_progression(argument0) //gml_Script_rando_define_progression
{
    show_debug_message("===== SHOTGUN + ROCKET LAUNCHER + SNIPER =====")
    if (argument0 != 1)
        array_set(global.randoProgression, 0, 1)
    if (argument0 != 3)
        array_set(global.randoProgression, 1, 3)
    if (argument0 != 4)
        array_set(global.randoProgression, 2, 4)
    show_debug_message("===== RUBY SLIPPERS + HEAVY AMMO =====")
    array_set(global.randoProgression, 3, 10)
    array_set(global.randoProgression, 4, 30)
    show_debug_message("===== DELETING PROGRESSION ARRAY INSTANCE IF STARTING WEAPON WAS PROGRESSION =====")
    var idsToDelete = array_create(0, -1)
    for (itr = 0; itr < array_length(global.randoProgression); itr++)
    {
        if (array_get(global.randoProgression, itr) == -1)
            array_push(idsToDelete, itr)
    }
    for (itr = 0; itr < array_length(idsToDelete); itr++)
        array_delete(global.randoProgression, (array_get(idsToDelete, itr) - itr), 1)
}

function rando_define_upgrades(argument0) //gml_Script_rando_define_upgrades
{
    show_debug_message("===== RAIL + BOLT DISPENSER + PISTOL =====")
    if (argument0 != 0)
        array_set(global.randoUpgrades, 0, 0)
    if (argument0 != 2)
        array_set(global.randoUpgrades, 1, 2)
    if (argument0 != 5)
        array_set(global.randoUpgrades, 2, 5)
    show_debug_message("===== ALL NON-PROGRESSION TRINKETS =====")
    array_set(global.randoUpgrades, 3, 6)
    array_set(global.randoUpgrades, 4, 7)
    array_set(global.randoUpgrades, 5, 8)
    array_set(global.randoUpgrades, 6, 9)
    array_set(global.randoUpgrades, 7, 11)
    array_set(global.randoUpgrades, 8, 12)
    array_set(global.randoUpgrades, 9, 13)
    array_set(global.randoUpgrades, 10, 14)
    array_set(global.randoUpgrades, 11, 15)
    array_set(global.randoUpgrades, 12, 16)
    array_set(global.randoUpgrades, 13, 17)
    array_set(global.randoUpgrades, 14, 18)
    array_set(global.randoUpgrades, 15, 19)
    array_set(global.randoUpgrades, 16, 20)
    array_set(global.randoUpgrades, 17, 21)
    array_set(global.randoUpgrades, 18, 22)
    array_set(global.randoUpgrades, 19, 23)
    array_set(global.randoUpgrades, 20, 24)
    array_set(global.randoUpgrades, 21, 25)
    array_set(global.randoUpgrades, 22, 26)
    array_set(global.randoUpgrades, 23, 27)
    array_set(global.randoUpgrades, 24, 28)
    array_set(global.randoUpgrades, 25, 29)
    array_set(global.randoUpgrades, 26, 31)
    array_set(global.randoUpgrades, 27, 32)
    array_set(global.randoUpgrades, 28, 33)
    array_set(global.randoUpgrades, 29, 34)
    array_set(global.randoUpgrades, 30, 35)
    array_set(global.randoUpgrades, 31, 36)
    array_set(global.randoUpgrades, 32, 37)
    array_set(global.randoUpgrades, 33, 38)
    array_set(global.randoUpgrades, 34, 39)
    show_debug_message("===== ALL HP UPGRADES =====")
    array_set(global.randoUpgrades, 35, 40)
    array_set(global.randoUpgrades, 36, 40)
    array_set(global.randoUpgrades, 37, 40)
    array_set(global.randoUpgrades, 38, 40)
    array_set(global.randoUpgrades, 39, 40)
    array_set(global.randoUpgrades, 40, 40)
    array_set(global.randoUpgrades, 41, 40)
    show_debug_message("===== ALL MP UPGRADES =====")
    array_set(global.randoUpgrades, 42, 41)
    array_set(global.randoUpgrades, 43, 41)
    array_set(global.randoUpgrades, 44, 41)
    array_set(global.randoUpgrades, 45, 41)
    array_set(global.randoUpgrades, 46, 41)
    array_set(global.randoUpgrades, 47, 41)
    array_set(global.randoUpgrades, 48, 41)
    array_set(global.randoUpgrades, 49, 41)
    array_set(global.randoUpgrades, 50, 41)
    show_debug_message("===== ALL TP UPGRADES =====")
    array_set(global.randoUpgrades, 51, 42)
    array_set(global.randoUpgrades, 52, 42)
    array_set(global.randoUpgrades, 53, 42)
    array_set(global.randoUpgrades, 54, 42)
    array_set(global.randoUpgrades, 55, 42)
    array_set(global.randoUpgrades, 56, 42)
    array_set(global.randoUpgrades, 57, 42)
    array_set(global.randoUpgrades, 58, 42)
    array_set(global.randoUpgrades, 59, 42)
    show_debug_message("===== DELETING UPGRADE ARRAY INSTANCE IF STARTING WEAPON WAS UPGRADE =====")
    idsToDelete = array_create(0, -1)
    for (itr = 0; itr < array_length(global.randoUpgrades); itr++)
    {
        if (array_get(global.randoUpgrades, itr) == -1)
            array_push(idsToDelete, itr)
    }
    for (itr = 0; itr < array_length(idsToDelete); itr++)
        array_delete(global.randoUpgrades, (array_get(idsToDelete, itr) - itr), 1)
}

function rando_place_progression() //gml_Script_rando_place_progression
{
    var rando_prog_idx = -1
    var rando_loc_idx = -1
    var prog_id = -1
    var loc_name = ""
    while (array_length(global.randoProgression) > 0)
    {
        rando_loc_idx = random_range(-0.49, (array_length(global.randoLocations) - 0.51))
        rando_prog_idx = random_range(-0.49, (array_length(global.randoProgression) - 0.51))
        loc_name = array_get(global.randoLocations, rando_loc_idx)
        prog_id = array_get(global.randoProgression, rando_prog_idx)
        if (rando_check_placement(loc_name, prog_id) == 1)
        {
            ds_map_set(global.save_data, ("rando_" + loc_name), prog_id)
            array_delete(global.randoLocations, rando_loc_idx, 1)
            array_delete(global.randoProgression, rando_prog_idx, 1)
        }
    }
}

function rando_place_upgrades() //gml_Script_rando_place_upgrades
{
    show_debug_message("===== PLACING TRINKETS IN SHOPS (AVOIDS INFINITE LOOP) =====")
    var rando_up_idx = -1
    rando_loc_idx = -1
    var up_id = -1
    loc_name = ""
    for (itr = 0; itr < array_length(global.randoLocations); itr++)
    {
        if (string_pos("shop_", array_get(global.randoLocations, itr)) == 1)
        {
            while (up_id == -1)
            {
                rando_up_idx = random_range(-0.49, (array_length(global.randoUpgrades) - 0.51))
                up_id = array_get(global.randoUpgrades, rando_up_idx)
                if (up_id < 6 || up_id > 39)
                    up_id = -1
            }
            loc_name = array_get(global.randoLocations, itr)
            ds_map_set(global.save_data, ("rando_" + loc_name), up_id)
            array_delete(global.randoLocations, itr, 1)
            array_delete(global.randoUpgrades, rando_up_idx, 1)
            up_id = -1
            loc_name = ""
            itr--
        }
    }
    show_debug_message("===== PLACING REMAINING UPGRADES EVERYWHERE ELSE =====")
    while (array_length(global.randoUpgrades) > 0)
    {
        rando_loc_idx = random_range(-0.49, (array_length(global.randoLocations) - 0.51))
        rando_up_idx = random_range(-0.49, (array_length(global.randoUpgrades) - 0.51))
        loc_name = array_get(global.randoLocations, rando_loc_idx)
        up_id = array_get(global.randoUpgrades, rando_up_idx)
        if (rando_check_placement(loc_name, up_id) == 1)
        {
            ds_map_set(global.save_data, ("rando_" + loc_name), up_id)
            array_delete(global.randoLocations, rando_loc_idx, 1)
            array_delete(global.randoUpgrades, rando_up_idx, 1)
        }
    }
}

function rando_check_placement(argument0, argument1) //gml_Script_rando_check_placement
{
    if (string_pos("shop_", argument0) == 0)
        return 1;
    else if (argument1 > 5 && argument1 < 40)
        return 1;
    else
        return 0;
}
