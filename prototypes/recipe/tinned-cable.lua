local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaostin-more-intermediates"].value --[[@as string]]:match("cable") ~= nil then
  khaoslib_recipe:load {
    type = "recipe",
    name = "tinned-cable",
    subgroup = "cable",
    order = "a[basic-intermediates]-d[tinned-cable]",
    enabled = false,
    allow_productivity = true,
    energy_required = 1.5,
    main_product = "tinned-cable",
  } :set_categories {"crafting"}
    :set_icons{{icon = "__khaostin__/graphics/icons/tinned-cable.png", icon_size = 64}}
    :set_ingredients {
      {type = "item", name = "tin-plate", amount = 1},
      {type = "item", name = "copper-cable", amount = 8},
    }
    :set_results {
      {type = "item", name = "tinned-cable", amount = 8},
    }
    :commit()
end
