local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_technology:load {
  type = "technology",
  name = "organotin-chemistry",
  order = "b-b",
} :set_icons {{icon = "__khaostin__/graphics/technology/organotin-chemistry.png", icon_size = 256}}
  :set_prerequisites {"oil-processing"}
  :set_unit {
    time = 30,
    count = 50,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1}
    },
  }
  :add_unlock_recipe("organotins")
  :commit()
