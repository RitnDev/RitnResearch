-- INITIALIZE
-----------------------------------------------------------------
if not ritnlib then require("__RitnLib__/defines") end
local RitnProtoRecipe = require(ritnlib.defines.class.prototype.recipe)
local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
local RitnProtoItem = require(ritnlib.defines.class.prototype.item)
-----------------------------------------------------------------
if not ritnmods then ritnmods = {} end
if not ritnmods.research then ritnmods.research = {} end


----------------------------------------
--     # UPDATE BASE GAME (VANILLA) #
----------------------------------------

--Requires :
require ("prototypes.category")
require ("prototypes.items")
require ("prototypes.recipes")
require ("prototypes.technology")
----------------------------------------
RitnProtoItem("satellite").changePrototype("rocket_launch_product",{"unknow-space-object", 1000})
RitnProtoItem("space-science-pack").changePrototype("rocket_launch_product", nil)
RitnProtoItem("raw-fish").changePrototype("stack_size", 1000)
----------------------------------------
-- adaptation new research
RitnProtoTech("stack-inserter"):disable(true)
RitnProtoTech("inserter-capacity-bonus-1"):addPrerequisite("tech-advanced-electronic-science-pack")

RitnProtoTech("military"):removeRecipe("shotgun"):removeRecipe("shotgun-shell")

--Enabled Recipe
RitnProtoRecipe("shotgun"):setEnabled(true) 
RitnProtoRecipe("shotgun-shell"):setEnabled(true) 

-- Update Technology for RitnResearch
require ("mods.vanilla.remove-chemical-science-pack")
require ("mods.vanilla.remove-military-science-pack")

--update Technology
require("prototypes.update-technology")

-- remove Science pack slot labs
RitnProtoTech:removePackLab("production-science-pack")
RitnProtoTech:removePackLab("utility-science-pack")

-- Mods :
require("mods.CircuitControlledSilo.CircuitControlledSilo")



