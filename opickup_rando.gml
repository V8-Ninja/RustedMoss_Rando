/*
	=========================
	===== opickup_rando =====
	=========================
	
	!!!!! This object and its events must be created via the Undertale Mod Tool UI !!!!!
	
	Sprite			= spickup_special
	Visible			= true
	Parent			= par_pickup
	Collision Shape	= box
	Group			= 1
	Is Awake		= true
*/

/*
	===== Create 0 =====
*/
event_inherited()
alarm[0] = 1
pickup_collected = 0
item_type = -1
slice = -1
event_inherited()

/*
	===== Alarm 0 =====
*/
if ds_map_exists(global.save_data, save_name)
    instance_destroy()
item_type = ds_map_find_value(global.save_data, ("rando_" + save_name))
switch item_type
{
    case 40:
        sprite_index = shp_up
        break
    case 41:
        sprite_index = smp_up
        break
    case 42:
        sprite_index = strinket_point_pickup
        break
}

/*
	===== Step 0 =====
*/
if variable_instance_exists(id, "save_name")
{
    if (pickup_collected == 0)
    {
        if place_meeting(x, y, oplayer)
        {
            global.invis = 2
            oplayer.state = (2 << 0)
            global.gamestate = (3 << 0)
            switch item_type
            {
                case 40:
                    global.current_pickup = 0
                    global.stat_max_hp += 1
                    global.hp = max(1, global.stat_max_hp)
                    break
                case 41:
                    global.current_pickup = 2
                    global.stat_max_mp += 2
                    global.mp = max(1, global.stat_max_mp)
                    break
                case 42:
                    global.current_pickup = 3
                    global.max_trinkets_points_ += 2
                    global.hp = max(1, global.stat_max_hp)
                    break
            }

            global.upgrades_found_++
            var biome_save_name = ("pickups_found_in" + string(global.current_biome_))
            var biome_pickups = 0
            if ds_map_exists(global.save_data, biome_save_name)
                biome_pickups = ds_map_find_value(global.save_data, biome_save_name)
            ds_map_set(global.save_data, biome_save_name, (biome_pickups + 1))
            ds_map_set(global.save_data, save_name, 1)
            global.gamestate = (27 << 0)
            visible = false
            pickup_collected = 1
        }
    }
    else if (pickup_collected == 1)
    {
        global.invis = 0
        oplayer.state = (0 << 0)
        instance_destroy()
    }
}

/*
	===== Draw (subtype "Draw") =====
*/
scr_draw_pickup();