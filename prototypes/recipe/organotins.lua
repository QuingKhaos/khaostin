local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "organotins",
  subgroup = "fluid",
  order = "a[fluid]-c[organotins]",
  enabled = false,
  allow_productivity = true,
  energy_required = 5,
  main_product = "organotins",
} :set_categories {"chemistry"}
  :set_icons{{icon = "__khaostin__/graphics/icons/organotins.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "tin-plate", amount = 3},
    {type = "fluid", name = "petroleum-gas", amount = 20},
  }
  :set_results {
    {type = "fluid", name = "organotins", amount = 50},
  }
  :set_crafting_machine_tint {
    primary = {r = 1, g = 0.995, b = 0.089, a = 1},
    secondary = {r = 1, g = 0.975, b = 0.89, a = 1},
    tertiary = {r = 0.825, g = 0.74, b = 0.81, a = 1},
    quaternary = {r = 0.95, g = 1, b = 0.35, a = 1},
  }
  :commit()
