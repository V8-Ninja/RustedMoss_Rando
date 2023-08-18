/*
	===== Randomizer_Create =====
*/

// This script should be placed on the PreCreate event of "oplayer"

// !!!!! PLACE FOLLOWING CODE IN SCRIPT & SAVE, THEN COPY COMPLETE CODE !!!!!

function generate_rando_from_seed(argument0) {}
function rando_place_weapons(argument0) {}
function rando_place_trinkets() {}
function save_rando() {}

// Complete Code

show_debug_message("===== ENABLE RAIL GUN? + SNIPER ONLY MP REFILL ALARM =====")
alarm[10] = 1
show_debug_message("===== INITIALIZING RANDOMIZER =====")
if (global.speedrun_mode_ == 1)
{
    if (variable_global_exists("rando_data") == 0)
        global.rando_data = ds_map_create()
    if (ds_map_exists(global.save_data, "randomizer_seed") == 0)
        ds_map_set(global.save_data, "randomizer_seed", (date_current_datetime() * 10000000))
    generate_rando_from_seed(ds_map_find_value(global.save_data, "randomizer_seed"))
}
function generate_rando_from_seed(argument0) //gml_Script_generate_rando_from_seed
{
    random_set_seed(argument0)
    show_debug_message("===== SETTING THE RANDOM WEAPON ON SEED START =====")
    var startWeapon = round(random_range(-0.49, 5.49))
    if (ds_map_exists(global.save_data, "randomizer_start_weapon") == 0)
    {
        global.weapon_data[startWeapon].found = 1
        global.current_weapon_ = startWeapon
        for (var itr = 0; itr < 6; itr++)
        {
            if (itr != startWeapon)
                global.weapon_data[itr].found = 0
        }
        ds_map_set(global.save_data, "randomizer_start_weapon", startWeapon)
    }
    if (ds_map_exists(global.rando_data, "randomizer_weapons_placed") == 0)
        rando_place_weapons(startWeapon)
    if (ds_map_exists(global.rando_data, "randomizer_trinkets_placed") == 0)
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
    ds_map_set(global.rando_data, "pickup_weapon_rm_moss_top_cave", currentWeapon)
    weaponsPlaced[currentWeapon] = 1
    show_debug_message("===== RANDOMIZING SECOND WEAPON =====")
    while (weaponsPlaced[currentWeapon] == 1)
        currentWeapon = round(random_range(-0.49, 5.49))
    ds_map_set(global.rando_data, "pickup_weapon_rm_catacombs_right_extra", currentWeapon)
    weaponsPlaced[currentWeapon] = 1
    show_debug_message("===== RANDOMIZING THIRD WEAPON =====")
    while (weaponsPlaced[currentWeapon] == 1)
        currentWeapon = round(random_range(-0.49, 5.49))
    ds_map_set(global.rando_data, "pickup_weapon_rm_forest_extra_4", currentWeapon)
    weaponsPlaced[currentWeapon] = 1
    show_debug_message("===== RANDOMIZING FOURTH WEAPON =====")
    while (weaponsPlaced[currentWeapon] == 1)
        currentWeapon = round(random_range(-0.49, 5.49))
    ds_map_set(global.rando_data, "pickup_weapon_rm_lake_hidden_2", currentWeapon)
    weaponsPlaced[currentWeapon] = 1
    show_debug_message("===== RANDOMIZING FIFTH WEAPON =====")
    while (weaponsPlaced[currentWeapon] == 1)
        currentWeapon = round(random_range(-0.49, 5.49))
    ds_map_set(global.rando_data, "pickup_weapon_rm_mount_top_boss", currentWeapon)
    weaponsPlaced[currentWeapon] = 1
    show_debug_message("===== SETTING RANDOMIZER FLAG TO NOT RE-GENERATE WEAPON PLACEMENTS =====")
    ds_map_set(global.rando_data, "randomizer_weapons_placed", 1)
}

function rando_place_trinkets() //gml_Script_rando_place_trinkets
{
    show_debug_message("===== SHUFFLING TRINKET PLACEMENTS =====")
    var currentTrinket = round(random_range(-0.49, 33.49))
    var trinketsPlaced = array_create(34, 0)
    show_debug_message("===== RANDOMIZING TRINKETS IN ROOMS (0->9) =====")
    ds_map_set(global.rando_data, "pickup_trinket_rm_mount_top_left_4_alt", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_snow_7", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_sea_8_alt", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_lab_red_alt", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_tea_party", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_lab_bed_2", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_forest_lilly", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_catacombs_extra_5", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_sea_mid_2_alt", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_lake_extra_6", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    show_debug_message("===== RANDOMIZING TRINKETS IN ROOMS (10->19) =====")
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_sea_arena_reward", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_forest_extra_2", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_moss_hidden_0", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_test_hidden_2", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_underhang_boss_after", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_lab_main_left_0", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_mount_right_alt_2", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_meadow_to_snow_0", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rfae_h0", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_catacombs_alt_secret", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    show_debug_message("===== RANDOMIZING TRINKETS IN ROOMS (20->24) =====")
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_forest_cafe_2", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_hell_garden_alt", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_moss_top_hidden_4", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_mount_ameli_1", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "pickup_trinket_rm_test_5", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    show_debug_message("===== RANDOMIZING THE SHOP TRINKETS =====")
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "shop_intro_0", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "shop_intro_1", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "shop_intro_2", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "shop_lake_0", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "shop_lake_1", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "shop_lake_2", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "shop_fae_0", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "shop_fae_1", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    while (trinketsPlaced[currentTrinket] == 1)
        currentTrinket = round(random_range(-0.49, 33.49))
    ds_map_set(global.rando_data, "shop_fae_2", currentTrinket)
    trinketsPlaced[currentTrinket] = 1
    show_debug_message("===== SETTING RANDOMIZER FLAG TO NOT RE-GENERATE TRINKET PLACEMENTS =====")
    ds_map_set(global.rando_data, "randomizer_trinkets_placed", 1)
}

function save_rando() //gml_Script_save_rando
{
    show_debug_message("===== PLACEHOLDER FOR SAVING =====")
}
