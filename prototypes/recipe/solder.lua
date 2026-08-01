local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

local recipe = khaoslib_recipe:load {
  type = "recipe",
  name = "solder",
  subgroup = "intermediate-product",
  order = "ab[tin]-b[solder]",
  enabled = true,
  allow_productivity = true,
  energy_required = 1,
  main_product = "solder",
} :set_categories {"crafting"}
  :set_icons{{icon = "__khaostin__/graphics/icons/solder.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "tin-plate", amount = 4},
    {type = "item", name = "copper-plate", amount = 1},
  }
  :set_results {
    {type = "item", name = "solder", amount = 4},
  }

if mods["khaoslead"] then
  recipe:set_ingredients {
    {type = "item", name = "tin-plate", amount = 3},
    {type = "item", name = "lead-plate", amount = 2},
  }
end

recipe:commit()
