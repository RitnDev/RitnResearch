-- INITIALIZE
-----------------------------------------------------------------
local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
-----------------------------------------------------------------

RitnProtoTech("bi-tech-coal-processing-3"):addPrerequisite("tech-advanced-chemical-science-pack")
RitnProtoTech("bi-tech-advanced-biotechnology"):addPrerequisite("tech-advanced-chemical-science-pack")
RitnProtoTech("lumberjack-electric-energy-distribution-3"):removePrerequisite("chemical-science-pack")

RitnProtoTech("bi-tech-advanced-biotechnology"):addPack("advanced-chemical-science-pack")
RitnProtoTech("lumberjack-electric-energy-distribution-3"):addPack("advanced-electronic-science-pack")