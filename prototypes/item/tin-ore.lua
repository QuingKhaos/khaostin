local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "tin-ore",
  localised_name = {"entity-name.tin-ore"},
  subgroup = "raw-resource",
  order = "fa[tin-ore]",
  stack_size = 50,

  inventory_move_sound = item_sounds.resource_inventory_move,
  pick_sound = item_sounds.resource_inventory_pickup,
  drop_sound = item_sounds.resource_inventory_move,

  pictures = {
    {filename = "__khaostin__/graphics/icons/tin-ore.png", size = 64, scale = 0.5},
    {filename = "__khaostin__/graphics/icons/tin-ore-1.png", size = 64, scale = 0.5},
    {filename = "__khaostin__/graphics/icons/tin-ore-2.png", size = 64, scale = 0.5},
    {filename = "__khaostin__/graphics/icons/tin-ore-3.png", size = 64, scale = 0.5},
  },
} :set_icons {{icon = "__khaostin__/graphics/icons/tin-ore.png", icon_size = 64}}
  :commit()
