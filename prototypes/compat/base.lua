local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_technology:load("plastics"):add_prerequisite("organotin-chemistry"):commit()

khaoslib_recipe:load("plastic-bar")
  :replace_ingredient("petroleum-gas", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 5) return ingredient end)
  :add_ingredient {type = "fluid", name = "organotins", amount = 5}
  :commit()

khaoslib_recipe:load("poison-capsule"):add_ingredient {type = "fluid", name = "organotins", amount = 10} :set_categories {"crafting-with-fluid"} :commit()
khaoslib_recipe:load("slowdown-capsule"):add_ingredient {type = "fluid", name = "organotins", amount = 5} :set_categories {"crafting-with-fluid"} :commit()

khaoslib_recipe:load("pipe-to-ground"):replace_ingredient(mods["khaoslead"] and "lead-plate" or "iron-plate", {type = "item", name = "solder", amount = 4}) :commit()

khaoslib_recipe:load("advanced-circuit")
  :replace_ingredient("copper-cable", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 1) return ingredient end)
  :add_ingredient {type = "item", name = "solder", amount = 1}
  :commit()

khaoslib_recipe:load("chemical-plant"):add_ingredient {type = "item", name = "solder", amount = 5} :commit()
khaoslib_recipe:load("oil-refinery"):add_ingredient {type = "item", name = "solder", amount = 5} :commit()
khaoslib_recipe:load("assembling-machine-2"):add_ingredient {type = "item", name = "solder", amount = 5} :commit()
khaoslib_recipe:load("rocket-silo"):add_ingredient {type = "item", name = "solder", amount = 100} :commit()
khaoslib_recipe:load("accumulator"):add_ingredient {type = "item", name = "solder", amount = 2} :commit()
khaoslib_recipe:load("storage-tank"):add_ingredient {type = "item", name = "solder", amount = 4} :commit()
khaoslib_recipe:load("substation"):add_ingredient {type = "item", name = "solder", amount = 2} :commit()
khaoslib_recipe:load("assembling-machine-2"):add_ingredient {type = "item", name = "solder", amount = 5} :commit()
khaoslib_recipe:load("assembling-machine-2"):add_ingredient {type = "item", name = "solder", amount = 5} :commit()
khaoslib_recipe:load("assembling-machine-2"):add_ingredient {type = "item", name = "solder", amount = 5} :commit()
khaoslib_recipe:load("assembling-machine-2"):add_ingredient {type = "item", name = "solder", amount = 5} :commit()

local electronic_circuit = khaoslib_recipe:load("electronic-circuit")
local electronic_circuit_result = electronic_circuit:get_result("electronic-circuit")
if electronic_circuit_result and electronic_circuit_result.amount == 1 then
  electronic_circuit:replace_result(function(_) return true end, function(result) result.amount = result.amount and result.amount * 2 or 0 return result end, {all = true})
    :set {energy_required = 0.5}
end

electronic_circuit:replace_ingredient("copper-cable", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 1) return ingredient end)
  :add_ingredient {type = "item", name = "solder", amount = 1}
  :commit()

khaoslib_recipe:load("roboport"):add_ingredient {type = "item", name = "solder", amount = 20} :commit()

khaoslib_recipe:load("lab")
  :replace_ingredient("copper-cable", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 5) return ingredient end)
  :add_ingredient {type = "item", name = "tin-plate", amount = 5}
  :commit()

if settings.startup["khaostin-more-intermediates"].value --[[@as string]]:match("cable") ~= nil then
  khaoslib_technology:load("oil-gathering"):add_prerequisite("tinned-cable"):commit()
  khaoslib_recipe:load("pumpjack"):add_ingredient {type = "item", name = "tinned-cable", amount = 5} :commit()

  khaoslib_technology:load("circuit-network"):add_prerequisite("tinned-cable"):commit()
  khaoslib_recipe:load("arithmetic-combinator"):replace_ingredient("copper-cable", function(ingredient) ingredient.name = "tinned-cable" return ingredient end):commit()
  khaoslib_recipe:load("decider-combinator"):replace_ingredient("copper-cable", function(ingredient) ingredient.name = "tinned-cable" return ingredient end):commit()
  khaoslib_recipe:load("constant-combinator"):replace_ingredient("copper-cable", function(ingredient) ingredient.name = "tinned-cable" return ingredient end):commit()
  khaoslib_recipe:load("power-switch"):replace_ingredient("copper-cable", function(ingredient) ingredient.name = "tinned-cable" return ingredient end):commit()
  khaoslib_recipe:load("programmable-speaker"):replace_ingredient("copper-cable", function(ingredient) ingredient.name = "tinned-cable" return ingredient end):commit()
  khaoslib_recipe:load("beacon"):replace_ingredient("copper-cable", function(ingredient) ingredient.name = "tinned-cable" return ingredient end):commit()
end

if settings.startup["khaostin-more-intermediates"].value --[[@as string]]:match("bronze") ~= nil then
  if mods["recycler"] then
    khaoslib_recipe:load("recycler"):add_ingredient {type = "item", name = "bronze-plate", amount = 10} :commit()
  end

  khaoslib_recipe:load("fast-inserter")
    :replace_ingredient(mods["khaosaluminium"] and "aluminium-plate" or "iron-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 1) return ingredient end)
    :add_ingredient {type = "item", name = "bronze-plate", amount = 1}
    :commit()

  khaoslib_recipe:load("pump"):replace_ingredient("steel-plate", {type = "item", name = "bronze-plate", amount = 2}):commit()
  khaoslib_recipe:load("storage-tank"):replace_ingredient("steel-plate", {type = "item", name = "bronze-plate", amount = 10}):commit()

  khaoslib_recipe:load("electric-engine-unit"):add_ingredient {type = "item", name = "bronze-plate", amount = 1} :commit()
end
