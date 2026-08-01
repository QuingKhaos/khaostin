local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaostin-more-intermediates"].value --[[@as string]]:match("bronze") ~= nil then
  khaoslib_recipe:load {
    type = "recipe",
    name = "bronze-plate",
    subgroup = "intermediate-product",
  order = "ab[tin]-a[bronze-plate]",
    enabled = false,
    allow_productivity = true,
    energy_required = 60,
    main_product = "bronze-plate",
  } :set_categories {"advanced-crafting"}
    :set_icons{{icon = "__khaostin__/graphics/icons/bronze-plate.png", icon_size = 64}}
    :set_ingredients {
      {type = "item", name = "copper-plate", amount = 17},
      {type = "item", name = "tin-plate", amount = 3},
    }
    :set_results {
      {type = "item", name = "bronze-plate", amount = 20},
    }
    :add_unlock("automation")
    :commit()
end
