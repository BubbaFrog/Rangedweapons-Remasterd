minetest.register_craftitem("rangedweapons:flare", {
	stack_max= 100,
	wield_scale = {x=0.4,y=0.4,z=1.2},
		description = "" ..core.colorize("#35cdff","Flare Gun Ammo\n")..core.colorize("#FFFFFF", "Bullet damage: 1 \n") ..core.colorize("#FFFFFF", "Bullet crit efficiency: 0.4 \n") ..core.colorize("#FFFFFF", "Bullet crit chance: 2% \n") ..core.colorize("#FFFFFF", "Bullet velocity: 35 \n") ..core.colorize("#FFFFFF", "Bullet knockback: 3 \n")    ..core.colorize("#FFFFFF", "Ammunition for the flare gun"),
	inventory_image = "rangedweapons_flaregunammo.png",
	RW_ammo_capabilities = {
		ammo_damage = {fleshy=2,knockback=4},
		ammo_projectile_multiplier = 1.5,
		ammo_critEffc = 0.15,
		ammo_crit = 1,
		ammo_velocity = 20,
		ammo_glass_breaking = 1,
		ammo_entity = "rangedweapons:shot_bullet",
		ammo_visual = "sprite",
		ammo_texture = "rangedweapons_flare.png",
		shell_entity = "rangedweapons:empty_shell",
		shell_visual = "wielditem",
		shell_texture = "rangedweapons:shell_incendiarydrop",
		ammo_gravity = 5,
		ammo_projectile_size = 0.00175,
		ammo_projectile_glow = 5,
		has_sparks = 1,
		ignites_explosives = 1,
	},
})
