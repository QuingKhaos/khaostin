local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["khaosaluminium"] and not mods["khaoslead"] then
  khaoslib_technology:load {
    type = "technology",
    name = "solder",
    localised_name = {"item-name.solder"},
    order = "b-b",
  } :set_icons {{icon = "__khaostin__/graphics/technology/solder.png", icon_size = 256}}
    :set_prerequisites {"copper-processing"}
    :set_unit {
      time = 15,
      count = 10,
      ingredients = {
        {"automation-science-pack", 1},
      },
    }
    :add_unlock_recipe("solder")
    :add_unlock_recipe("pipe-to-ground")
    :commit()

  khaoslib_technology:load("electronics"):add_prerequisite("solder"):commit()
  khaoslib_technology:load("steam-power"):remove_unlock_recipe("pipe-to-ground"):commit()
end
