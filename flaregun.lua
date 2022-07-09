	minetest.register_tool("rangedweapons:flaregun", {
	stack_max= 1,
	wield_scale = {x=2.0,y=2.0,z=1.75},
		description = "" ..core.colorize("#35cdff","Flare Gun\n") ..core.colorize("#FFFFFF", "Ranged damage: 10\n") ..core.colorize("#FFFFFF", "accuracy: 100%\n") ..core.colorize("#FFFFFF", "projectiles: 6\n") ..core.colorize("#FFFFFF", "knockback: 0\n")  ..core.colorize("#FFFFFF", "Critical chance: 8%\n") ..core.colorize("#FFFFFF", "Critical efficiency: 2.2x\n")  ..core.colorize("#FFFFFF", "Power usage: 30\n") ..core.colorize("#FFFFFF", "Rate of fire: 0.1 (full-auto) \n") ..core.colorize("#FFFFFF", "Enemy penetration: 40%\n") ..core.colorize("#FFFFFF", "Gun type: power blaster\n") ..core.colorize("#FFFFFF", "Bullet velocity: 60"),
	range = 0,
	inventory_image = "rangedweapons_flaregun.png",
RW_powergun_capabilities = {
		power_damage = {fleshy=12,knockback=0},
		power_crit = 8,
		power_critEffc = 2.2,
		power_skill = {"",1},
		power_cooling = "rangedweapons:flaregun",
		power_velocity = 55,
		power_accuracy = 40,
		power_cooldown = 0.5,
		power_projectiles = 1,
		power_durability = 2000,
		power_sound = "rangedweapons_flaregun",
		power_glass_breaking = 1,
		power_door_breaking = 1,
		power_dps = 0,
		power_mob_penetration = 40,
		power_node_penetration = 0,
		power_dps = 0,
		power_consumption = 30,
		power_entity = "rangedweapons:shot_bullet",
		power_visual = "sprite",
		power_texture = "rangedweapons_flare.png",
		power_projectile_size = 0.005,
		power_projectiles = 1,
		has_sparks = 0,
		ignites_explosives = 1,
	},
	on_use = function(itemstack, user, pointed_thing)
rangedweapons_shoot_powergun(itemstack, user)
return itemstack
	end,

})
