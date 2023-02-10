-- Mod Actif : CircuitControlledSilo
-------------------------------------------------------------------------
local RitnProtoRecipe = require(ritnlib.defines.class.prototype.recipe)
local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
local RitnProtoItem = require(ritnlib.defines.class.prototype.item)
-------------------------------------------------------------------------

RitnProtoItem("silo-control-combinator"):changeSubgroup("ritn-circuit-network")


if mods["CircuitControlledSilo"] then
    RitnProtoTech("smart-rocket-silo"):setIngredients({
        {"miner-science-pack", 1},
        {"mechanic-science-pack", 1},
        {"electronic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"advanced-mechanic-science-pack", 1},
        {"advanced-electronic-science-pack", 1},
        {"advanced-chemical-science-pack", 1}
    })
end