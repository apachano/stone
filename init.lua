local modpath = minetest.get_modpath("stone")

function add_stone(name, opacity)

	minetest.register_node("stone:" .. name, {
		description = "" .. name,
		tiles = { name .. ".png"},
		groups = {cracky = 3, stone = 1},
		drop = 'stone:" .. name .. "_cobble',
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node("stone:" .. name .. "_cobble", {
		description = "" .. name .. " Cobblestone",
		tiles = { name .. ".png^(overlay_cobble.png^[opacity:" .. opacity .. "])"},
		is_ground_content = false,
		groups = {cracky = 3, stone = 2},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node("stone:" .. name .. "_brick", {
		description = "" .. name .. " Brick",
		paramtype2 = "facedir",
		place_param2 = 0,
		tiles = { name .. ".png^(overlay_brick.png^[opacity:" .. opacity .. ")"},
		is_ground_content = false,
		groups = {cracky = 2, stone = 1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node("stone:fancy_" .. name .. "_brick", {
		description = "Fancy " .. name .. " Brick",
		paramtype2 = "facedir",
		place_param2 = 0,
		tiles = { name .. ".png^(overlay_brick_fancy.png^[opacity:" .. opacity .. ")"},
		is_ground_content = false,
		groups = {cracky = 2, stone = 1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node("stone:mossy_" .. name .. "_brick", {
		description = "Mossy " .. name .. " Brick",
		paramtype2 = "facedir",
		place_param2 = 0,
		tiles = { name .. ".png^(overlay_brick.png^[opacity:" .. opacity .. ")^(overlay_moss.png^[opacity:256])"},
		is_ground_content = false,
		groups = {cracky = 2, stone = 1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node("stone:" .. name .. "_block", {
		description = "" .. name .. " Block",
		tiles = { name .. ".png^(overlay_block.png^[opacity:" .. opacity .. ")"},
		is_ground_content = false,
		groups = {cracky = 2, stone = 1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node("stone:" .. name .. "_mossycobble", {
		description = "Mossy " .. name .. " Cobblestone",
		tiles = { name .. ".png^(overlay_cobble.png^[opacity:" .. opacity .. ")^overlay_moss.png"},
		is_ground_content = false,
		groups = {cracky = 3, stone = 1},
		sounds = default.node_sound_stone_defaults(),
	})
	if advanced_tools then
		add_tools(name, modpath .. "/textures/" .. name .. ".png")
	end

end

add_stone("slate", 16)
add_stone("granite", 128)
add_stone("sandstone", 200)
add_stone("marble", 200)
add_stone("limestone", 200)