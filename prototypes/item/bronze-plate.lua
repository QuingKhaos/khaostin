local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

if settings.startup["khaostin-more-intermediates"].value --[[@as string]]:match("bronze") ~= nil then
  khaoslib_item:load {
    type = "item",
    name = "bronze-plate",
    subgroup = "intermediate-product",
  order = "ab[tin]-a[bronze-plate]",
    stack_size = 100,
    weight = 1 * kg,

    inventory_move_sound = item_sounds.metal_small_inventory_move,
    pick_sound = item_sounds.metal_small_inventory_pickup,
    drop_sound = item_sounds.metal_small_inventory_move,
  } :set_icons {{icon = "__khaostin__/graphics/icons/bronze-plate.png", icon_size = 64}}
    :commit()
end
