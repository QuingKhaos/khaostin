local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

if settings.startup["khaostin-more-intermediates"].value --[[@as string]]:match("cable") ~= nil then
  khaoslib_item:load {
    type = "item",
    name = "tinned-cable",
    subgroup = "cable",
    order = "a[basic-intermediates]-d[tinned-cable]",
    stack_size = 100,
    weight = 1 * kg,

    inventory_move_sound = item_sounds.wire_inventory_move,
    pick_sound = item_sounds.wire_inventory_pickup,
    drop_sound = item_sounds.wire_inventory_move,
  } :set_icons {{icon = "__khaostin__/graphics/icons/tinned-cable.png", icon_size = 64}}
    :commit()
end
