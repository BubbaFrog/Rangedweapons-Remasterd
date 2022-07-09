------------reload--------------------
minetest.register_tool("rangedweapons:flintlock_r", {
	stack_max= 1,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	description = "",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	rw_next_reload = "rangedweapons:flintlock_rr",
	load_sound = "rangedweapons_handgun_mag_in",
	inventory_image = "rangedweapons_flintlock.png",
})
minetest.register_tool("rangedweapons:flintlock_rr", {
	stack_max= 1,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	description = "",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	rw_next_reload = "rangedweapons:flintlock_rrr",
	load_sound = "rangedweapons_reload_a",
	inventory_image = "rangedweapons_flintlock.png",
})
minetest.register_tool("rangedweapons:flintlock_rrr", {
	stack_max= 1,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	description = "",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	rw_next_reload = "rangedweapons:flintlock",
	load_sound = "rangedweapons_reload_b",
	inventory_image = "rangedweapons_flintlock_rld.png",
})
minetest.register_tool("rangedweapons:flintlock_rld", {
	stack_max= 1,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	description = "",
	range = 0,
	loaded_gun = "rangedweapons:flintlock",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_flintlock_rld.png",
})
-----------------gun--------------

minetest.register_tool("rangedweapons:flintlock", {
		description = "" ..core.colorize("#35cdff","flintlock \n") ..core.colorize("#FFFFFF", "Ranged damage: 4\n")..core.colorize("#FFFFFF", "Accuracy: 92%\n")  ..core.colorize("#FFFFFF", "Gun knockback: 3\n") ..core.colorize("#FFFFFF", "Critical chance: 10%\n") ..core.colorize("#FFFFFF", "Critical efficiency: 2x\n") ..core.colorize("#FFFFFF", "Ammunition: 9x19mm parabellum\n")..core.colorize("#FFFFFF", "Reload delay: 1.0\n")..core.colorize("#FFFFFF", "Clip size: 8\n") ..core.colorize("#FFFFFF", "Rate of fire: 0.625\n") ..core.colorize("#FFFFFF", "Gun type: Handgun\n") ..core.colorize("#FFFFFF", "Bullet velocity: 20"),
	range = 0,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	inventory_image = "rangedweapons_flintlock.png",
	RW_gun_capabilities = {
		gun_damage = {fleshy=4,knockback=3},
		gun_crit = 10,
		gun_critEffc = 2.0,
		suitable_ammo = {{"rangedweapons:762mm",1}},
		gun_skill = {"handgun_skill",40},
		gun_magazine = "rangedweapons:handgun_mag_black",
		gun_icon = "rangedweapons_flintlock_icon.png",
		gun_unloaded = "rangedweapons:flintlock_r",
		gun_cooling = "rangedweapons:flintlock_rld",
		gun_velocity = 20,
		gun_accuracy = 92,
		gun_cooldown = 0.625,
		gun_reload = 1.0/4,
		gun_projectiles = 1,
		has_shell = 1,
		gun_durability = 600,
		gun_smokeSize = 5,
		gun_unload_sound = "rangedweapons_handgun_mag_out",
		gun_sound = "rangedweapons_flintlock",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_reload_gun(itemstack, user)
return itemstack
end,
	on_use = function(itemstack, user, pointed_thing)
rangedweapons_shoot_gun(itemstack, user)
return itemstack
	end,
})

