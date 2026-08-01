require("__base__.prototypes.factoriopedia-util");
local khaoslib_entity = require('__khaoslib__.prototypes.entity')
local resource_autoplace = require('__core__.lualib.resource-autoplace')

data.raw["planet"]["nauvis"].map_gen_settings = util.merge {data.raw["planet"]["nauvis"].map_gen_settings, {
  autoplace_controls = {
    ["tin-ore"] = {},
  },
  autoplace_settings = {
    entity = {
      settings = {
        ["tin-ore"] = {},
      },
    },
  },
}}

resource_autoplace.initialize_patch_set("tin-ore", true)

data:extend {
  {
    type = "autoplace-control",
    name = "tin-ore",
    localised_name = {"", "[entity=tin-ore] ", {"entity-name.tin-ore"}},
    category = "resource",
    order = "a-ba",
    richness = true,
  },
}

khaoslib_entity:load {
    type = "resource",
    name = "tin-ore",
    flags = {"placeable-neutral"},
    order = "a-b-b",

    map_color = {r = 0.9, g = 1, b = 0.1},
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},

    factoriopedia_simulation = {
      init = make_resource("tin-ore"),
    },

    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "tin-ore",
      order = "b",
      base_density = 3,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 0.8,
    },

    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages = {
      sheet = {
        filename = "__khaostin__/graphics/entity/tin-ore/tin-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5,
      },
    },
} :set_icons {{icon = "__khaostin__/graphics/icons/tin-ore.png", icon_size = 64}}
  :set_minable {hardness = 1, mining_time = 0.75, mining_particle = "tin-ore-particle", result = "tin-ore"}
  :commit()
