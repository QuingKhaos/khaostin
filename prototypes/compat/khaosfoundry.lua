local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["khaosfoundry"] then
  khaoslib_technology:load("fast-inserter"):add_prerequisite("burner-foundry"):commit()
end
