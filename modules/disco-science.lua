-- module.disco-science
----------------------------------------------------------------
local function updateDiscoScience()
    RitnLibEvent.setIngredientColor("chemical-science-pack", {r = 0.2, g = 0.2, b = 1.0})
    RitnLibEvent.setIngredientColor("military-science-pack", {r = 0.2, g = 0.2, b = 0.2})
    RitnLibEvent.setIngredientColor("space-science-pack", {r = 0.8, g = 0.8, b = 0.8})
    RitnLibEvent.setIngredientColor("advanced-mechanic-science-pack", {r = 1, g = 0.5, b = 0.0})
    RitnLibEvent.setIngredientColor("advanced-electronic-science-pack", {r = 1, g = 1, b = 0.0})
    RitnLibEvent.setIngredientColor("advanced-chemical-science-pack", {r = 1, g = 0.0, b = 1})
end
----------------------------------------------------------------
script.on_configuration_changed(updateDiscoScience)
script.on_init(updateDiscoScience)
----------------------------------------------------------------
