data:extend({
	{
		type = "container",
		name = "arcology",
		icon = "__base__/graphics/icons/lab.png",
    	flags = {"placeable-player", "player-creation"},
    	max_health = 150,
    	corpse = "big-remnants",
    	dying_explosion = "medium-explosion",
    	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    	picture = {
    		filename = "__base__/graphics/entity/lab/lab.png",
    		width = 113,
      		height = 91,
      		shift = {0.2, 0.15}
    	},
    	inventory_size = 56,
    	open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    	close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 }
	},

    {
        type = "container",
        name = "fishery",
        icon = "__base__/graphics/icons/fish.png",
        flags = {"player-creation", "placeable-player"},
        minable = {mining_time = 0.3, result = "fishery"},
        max_health = 50,
        corpse = "big-remnants",
        collision_mask = {"ground-tile"},
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        picture = {
            filename = "__homeworld__/graphics/entity/fishery.png",
            width = 96,
            height = 96,
            shift = {0, 0}
        },
        inventory_size = 1,
        open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
        close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 }
    },

    {
        type = "container",
        name = "sawmill",
        icon = "__homeworld__/graphics/icons/sawmill.png",
        flags = {"player-creation", "placeable-player"},
        minable = {mining_time = 0.3, result = "sawmill"},
        max_health = 50,
        corpse = "big-remnants",
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        picture = {
            filename = "__homeworld__/graphics/entity/sawmill.png",
            width = 96,
            height = 96,
            shift = {0, 0}
        },
        inventory_size = 12,
        open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
        close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 }
    },

    {
        type = "container",
        name = "farm",
        icon = "__base__/graphics/icons/fish.png",
        flags = {"player-creation", "placeable-player"},
        minable = {mining_time = 0.3, result = "farm"},
        max_health = 50,
        corpse = "big-remnants",
        collision_box = {{-4.5, -4.5}, {4.5, 4.5}},
        selection_box = {{-4, -4}, {4, 4}},
        picture = {
            filename = "__homeworld__/graphics/entity/farm.png",
            priority = "low",
            width = 288,
            height = 288,
            shift = {0, 0}
        },
        inventory_size = 30,
        open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
        close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 }
    },

    {
        type = "smart-container",
        name = "homeworld_portal",
        icon = "__base__/graphics/icons/lab.png",
        flags = {"player-creation", "placeable-player"},
        render_layer = "floor",
        max_health = 150,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        picture = {
            filename = "__homeworld__/graphics/entity/homeworld-portal.png",
            priority = "low",
            width = 358,
            height = 312,
            shift = {0, 0},
            scale = 0.625
        },
        connection_point =
        {
          shadow =
          {
            red = {0.7, -0.3},
            green = {0.7, -0.3}
          },
          wire =
          {
            red = {0.3, -0.8},
            green = {0.3, -0.8}
          }
        },
        inventory_size = 32,
        open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
        close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },    
    },

    {
        type = "explosion",
        name = "portal-sound",
        flags = {"not-on-map"},
        animations =
        {
            {
                filename = "__core__/graphics/empty.png",
                priority = "extra-high",
                width = 1,
                height = 1,
                frame_count = 1
            }
        },
        sound =
        {
            {
                filename = "__homeworld__/sound/portal.ogg",
                volume = 1
            }
        },
        created_effect =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              type = "create-entity",
              entity_name = "portal-fx",
            }
          }
        }
    },

    {
        type = "smoke",
        name = "portal-fx",
        flags = {"not-on-map"},
        animation =
        {
            filename = "__homeworld__/graphics/entity/homeworld-portal-on.png",
            priority = "high",
            width = 358,
            height = 312,
            frame_count = 4,
            animation_speed = 1,
            scale = 0.625,
            shift = {-0.52, 0.45}
        },
        render_layer = "smoke",
        cyclic = true,
        affected_by_wind = false,
        duration = 60 * 6,
        movement_slow_down_factor = 0,
        fade_away_duration = 60,
        show_when_smoke_off = true
    },

    {
    type = "assembling-machine",
    name = "distillery",
    icon = "__homeworld__/graphics/icons/distillery.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "distillery"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_slots = 2,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    animation =
    {
      north =
      {
        filename = "__homeworld__/graphics/entity/distillery/distillery.png",
        width = 156,
        height = 141,
        frame_count = 1,
        shift = {0.5, -0.078125}
      },
      west =
      {
        filename = "__homeworld__/graphics/entity/distillery/distillery.png",
        x = 156,
        width = 156,
        height = 141,
        frame_count = 1,
        shift = {0.5, -0.078125}
      },
      south =
      {
        filename = "__homeworld__/graphics/entity/distillery/distillery.png",
        x = 312,
        width = 156,
        height = 141,
        frame_count = 1,
        shift = {0.5, -0.078125}
      },
      east =
      {
        filename = "__homeworld__/graphics/entity/distillery/distillery.png",
        x = 468,
        width = 156,
        height = 141,
        frame_count = 1,
        shift = {0.5, -0.078125}
      }
    },
    working_visualisations =
    {
      {
        north_position = {0.94, -0.73},
        west_position = {-0.3, 0.02},
        south_position = {-0.97, -1.47},
        east_position = {0.05, -1.46},
        animation =
        {
          filename = "__homeworld__/graphics/entity/distillery/boiling-green-patch.png",
          frame_count = 35,
          width = 17,
          height = 12,
          animation_speed = 0.15
        }
      },
      {
        north_position = {1.4, -0.23},
        west_position = {-0.3, 0.55},
        south_position = {-1, -1},
        east_position = {0.05, -0.96},
        north_animation =
        {
          filename = "__homeworld__/graphics/entity/distillery/boiling-window-green-patch.png",
          frame_count = 1,
          width = 21,
          height = 10
        },
        west_animation =
        {
          filename = "__homeworld__/graphics/entity/distillery/boiling-window-green-patch.png",
          x = 21,
          frame_count = 1,
          width = 21,
          height = 10
        },
        south_animation =
        {
          filename = "__homeworld__/graphics/entity/distillery/boiling-window-green-patch.png",
          x = 42,
          frame_count = 1,
          width = 21,
          height = 10
        }
      }
    },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/chemical-plant.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_speed = 1.25,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "20kW",
    ingredient_count = 4,
    crafting_categories = {"alcohol"},
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, 2} }}
      }
    }
  },
})

-- Copy basic mining drill for the sand collector.
local miningDrill = data.raw["mining-drill"]["basic-mining-drill"]
local sandCollector = {
    name = "sand-collector",
    icon = "__homeworld__/graphics/icons/sand-collector.png",
    minable = {mining_time = 1, result = "sand-collector"},
    resource_categories = {"sand"},
    mining_speed = 3,
    resource_searching_radius = 5,
    energy_usage = "190kW"
}
for key, value in pairs(miningDrill) do
    if not sandCollector[key] then
        sandCollector[key] = value
    end
end
data:extend{sandCollector}