local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_fluid = require("__khaoslib__.prototypes.fluid")

khaoslib_fluid:load {
  type = "fluid",
  name = "organotins",
  subgroup = "fluid",
  order = "a[fluid]-c[organotins]",
  default_temperature = 25,
  heat_capacity = "100J",
  base_color = {r = 0.75, g = 0.65, b = 0.1},
  flow_color = {r = 0.7, g = 1, b = 0.1},
} :set_icons {{icon = "__khaostin__/graphics/icons/organotins.png", icon_size = 64}}
  :commit()
