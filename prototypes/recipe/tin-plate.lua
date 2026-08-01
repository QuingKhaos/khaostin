local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "tin-plate",
  subgroup = "raw-material",
  order = "a[smelting]-da[tin-plate]",
  enabled = true,
  auto_recycle = false,
  allow_productivity = true,
  energy_required = 2.4,
  main_product = "tin-plate",
} :set_categories {"smelting"}
  :set_icons{{icon = "__khaostin__/graphics/icons/tin-plate.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "tin-ore", amount = 1},
  }
  :set_results {
    {type = "item", name = "tin-plate", amount = 1},
  }
  :commit()
