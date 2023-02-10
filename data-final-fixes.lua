--
local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
local RitnProtoRecipe = require(ritnlib.defines.class.prototype.recipe)
--------------------------------------------------------------------
local function remove_pack(pack) 
    for i, technology in pairs(data.raw.technology) do 
        RitnProtoTech(technology.name):removePack(pack)
    end
end
--------------------------------------------------------------------
-- suppression complete des pack utility
remove_pack("utility-science-pack") 
RitnProtoRecipe("utility-science-pack"):disable("tool")
-- suppression complete des pack production
remove_pack("production-science-pack") 
RitnProtoRecipe("production-science-pack"):disable("tool")


