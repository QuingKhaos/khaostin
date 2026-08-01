local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if settings.startup["khaostin-more-intermediates"].value --[[@as string]]:match("cable") ~= nil then
  khaoslib_technology:load {
    type = "technology",
    name = "tinned-cable",
    localised_name = {"item-name.tinned-cable"},
    order = "b-b",
  } :set_icons {{icon = "__khaostin__/graphics/technology/tinned-cable.png", icon_size = 256}}
    :set_prerequisites {"logistic-science-pack"}
    :set_unit {
      time = 15,
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
    }
    :add_unlock_recipe("tinned-cable")
    :commit()
end
