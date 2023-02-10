local RitnEvent = require(ritnlib.defines.class.luaClass.event)
----------------------------------------------------------------
local function updateDiscoScience()
    RitnEvent.setIngredientColor("chemical-science-pack", {r = 0.2, g = 0.2, b = 1.0})
    RitnEvent.setIngredientColor("military-science-pack", {r = 0.2, g = 0.2, b = 0.2})
    RitnEvent.setIngredientColor("space-science-pack", {r = 0.8, g = 0.8, b = 0.8})
    RitnEvent.setIngredientColor("advanced-mechanic-science-pack", {r = 1, g = 0.5, b = 0.0})
    RitnEvent.setIngredientColor("advanced-electronic-science-pack", {r = 1, g = 1, b = 0.0})
    RitnEvent.setIngredientColor("advanced-chemical-science-pack", {r = 1, g = 0.0, b = 1})
end
----------------------------------------------------------------
script.on_configuration_changed(updateDiscoScience)
script.on_init(updateDiscoScience)
----------------------------------------------------------------
