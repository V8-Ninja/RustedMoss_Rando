/*
	===== Randomizer_Create =====
*/

// This script should be placed on the PreCreate event of "oplayer"

// !!!!! PLACE FOLLOWING CODE IN SCRIPT & SAVE, THEN COPY COMPLETE CODE !!!!!

function generate_rando_from_seed(argument0) {}
function rando_place_weapons(argument0) {}
function rando_place_trinkets() {}
function rando_place_stat_upgrades() {}

// Complete Code

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
    rando_place_weapons(startWeapon)
    rando_place_trinkets()
}

function rando_place_weapons(argument0) //gml_Script_rando_place_weapons
{
    show_debug_message("===== SHUFFLING WEAPON PLACEMENTS =====")
    var currentWeapon = argument0
    var weaponsPlaced = array_create(6, 0)
    weaponsPlaced[currentWeapon] = 1
    show_debug_message("===== RANDOMIZING FIRST WEAPON =====")
    while (weaponsPlaced[currentWeapon] == 1)
        currentWeapon = round(random_range(-0.49, 5.49))
    ds_map_set(global.save_data, "rando_pickup_weapon_rm_moss_top_cave", currentWeapon)
    weaponsPlaced[currentWeapon] = 1
    show_debug_message("===== RANDOMIZING SECOND WEAPON =====")
    while (weaponsPlaced[currentWeapon] == 1)
        currentWeapon = round(random_range(-0.49, 5.49))
    ds_map_set(global.save_data, "rando_pickup_weapon_rm_catacombs_right_extra", currentWeapon)
    weaponsPlaced[currentWeapon] = 1
    show_debug_message("===== RANDOMIZING THIRD WEAPON =====")
    while (weaponsPlaced[currentWeapon] == 1)
        currentWeapon = round(random_range(-0.49, 5.49))
    ds_map_set(global.save_data, "rando_pickup_weapon_rm_forest_extra_4", currentWeapon)
    weaponsPlaced[currentWeapon] = 1
    show_debug_message("===== RANDOMIZING FOURTH WEAPON =====")
    while (weaponsPlaced[currentWeapon] == 1)
        currentWeapon = round(random_range(-0.49, 5.49))
    ds_map_set(global.save_data, "rando_pickup_weapon_rm_lake_hidden_2", currentWeapon)
    weaponsPlaced[currentWeapon] = 1
    show_debug_message("===== RANDOMIZING FIFTH WEAPON =====")
    while (weaponsPlaced[currentWeapon] == 1)
        currentWeapon = round(random_range(-0.49, 5.49))
    ds_map_set(global.save_data, "rando_pickup_weapon_rm_mount_top_boss", currentWeapon)
    weaponsPlaced[currentWeapon] = 1
}

function rando_place_trinkets() //gml_Script_rando_place_trinkets
{
    show_debug_message("===== SHUFFLING TRINKET PLACEMENTS =====")
    var currentTrinket = round(random_range(-0.49, 33.49))
    var trinketsPlaced = array_create(34, 0)
    show_debug_message("===== RANDOMIZING TRINKETS IN ROOMS (0->9) =====")
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_mount_top_left_4_alt", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_snow_7", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_sea_8_alt", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_lab_red_alt", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_tea_party", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_lab_bed_2", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_forest_lilly", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_catacombs_extra_5", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_sea_mid_2_alt", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_lake_extra_6", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    show_debug_message("===== RANDOMIZING TRINKETS IN ROOMS (10->19) =====")
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_sea_arena_reward", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_forest_extra_2", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_moss_hidden_0", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_test_hidden_2", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_underhang_boss_after", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_lab_main_left_0", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_mount_right_alt_2", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_meadow_to_snow_0", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rfae_h0", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_catacombs_alt_secret", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    show_debug_message("===== RANDOMIZING TRINKETS IN ROOMS (20->24) =====")
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_forest_cafe_2", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_hell_garden_alt", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_moss_top_hidden_4", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_mount_ameli_1", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_pickup_trinket_rm_test_5", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    show_debug_message("===== RANDOMIZING THE SHOP TRINKETS =====")
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_shop_intro_0", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_shop_intro_1", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_shop_intro_2", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_shop_lake_0", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_shop_lake_1", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_shop_lake_2", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_shop_fae_0", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_shop_fae_1", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.save_data, "rando_shop_fae_2", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
}

function rando_place_stat_upgrades() //gml_Script_rando_place_stat_upgrades
{
    show_debug_message("===== FILLING ARRAY OF UPGRADE LOCATIONS =====")
    var locations = array_create(25, "")
    array_set(locations, 0, "pickup_hp_rm_test_hidden_3")
    array_set(locations, 1, "pickup_hp_rm_mount_4_half_right")
    array_set(locations, 2, "pickup_hp_rm_test_hidden")
    array_set(locations, 3, "pickup_hp_rm_forest_cafe_3")
    array_set(locations, 4, "pickup_hp_rm_sea_extra_2")
    array_set(locations, 5, "pickup_hp_rm_test_before_boss_alt")
    array_set(locations, 6, "pickup_hp_rm_underhang_b20")
    array_set(locations, 7, "pickup_mp_rm_lake_hidden_3")
    array_set(locations, 8, "pickup_mp_rm_forest_extra_3")
    array_set(locations, 9, "pickup_mp_rm_sea_left_2")
    array_set(locations, 10, "pickup_mp_rm_catacombs_extra_1")
    array_set(locations, 11, "pickup_mp_rm_sea_2")
    array_set(locations, 12, "pickup_mp_rm_moss_hidden_1")
    array_set(locations, 13, "pickup_mp_rm_4_hidden")
    array_set(locations, 14, "pickup_mp_rm_mount_intro_begin")
    array_set(locations, 15, "pickup_mp_rm_test_alt_alt")
    array_set(locations, 16, "pickup_tp_rm_moss_8")
    array_set(locations, 17, "pickup_tp_rm_lake_hidden_4")
    array_set(locations, 18, "pickup_tp_rm_forest_extra_0")
    array_set(locations, 19, "pickup_tp_rm_hidden_4")
    array_set(locations, 20, "pickup_tp_rm_catacombs_extra_3")
    array_set(locations, 21, "pickup_tp_rm_moss_3")
    array_set(locations, 22, "pickup_tp_rm_mount_10_alt")
    array_set(locations, 23, "pickup_tp_rm_underhang_extra_2")
    array_set(locations, 24, "pickup_tp_rm_moss_top_cave")
    show_debug_message("===== FILLING ARRAY OF STAT UPGRADES =====")
    var upgrades_available = array_create(25, 0)
    for (itr = 0; itr < 7; itr++)
        array_set(upgrades_available, itr, 40)
    for (itr = 0; itr < 9; itr++)
        array_set(upgrades_available, (itr + 7), 41)
    for (itr = 0; itr < 9; itr++)
        array_set(upgrades_available, (itr + 16), 42)
    show_debug_message("===== CHOOSING RANDOM LOCATIONS FOR UPGRADES TO BE PLACED =====")
    var loc_index = 0
    var up_index = 0
    while (array_length(upgrades_available) > 0)
    {
        loc_index = random_range(-0.49, (array_length(locations) - 0.51))
        up_index = random_range(-0.49, (array_length(upgrades_available) - 0.51))
        ds_map_set(global.save_data, ("rando_" + array_get(locations, loc_index)), array_get(upgrades_available, up_index))
        array_delete(locations, loc_index, 1)
        array_delete(upgrades_available, up_index, 1)
    }
}