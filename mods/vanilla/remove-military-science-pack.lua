local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)

local tech = {
    "military",
    "military-2",
    "heavy-armor",
    "modular-armor",
    "power-armor",
    "gates",
    "cliff-explosives",
    "stronger-explosives-1",
    "energy-weapons-damage-1",
    "energy-weapons-damage-2",
    "physical-projectile-damage-1",
    "physical-projectile-damage-2",
    "weapon-shooting-speed-1",
    "weapon-shooting-speed-2"
}

-- Replace science-pack
for _,technology in pairs(tech) do
    RitnProtoTech(technology):replacePack("automation-science-pack", "military-science-pack")
end

local prerequisite = "military-science-pack"
local tech = {
    "laser-turret",
    "land-mine",
    "military-3",
    "flamethrower",
    "energy-shield-equipment",
    "laser-shooting-speed-1",
    "rocketry",
    "fusion-reactor-equipment",
    "combat-robotics",
    "defender",
    "energy-weapons-damage-1"
}

-- Remove prerequisite : military-science-pack
for _,technology in pairs(tech) do
    RitnProtoTech(technology):replacePrerequisite(prerequisite, "military-2") 
end


local techUpdate = RitnProtoTech("laser-shooting-speed-1")
techUpdate:removePrerequisite("military-2")
techUpdate:removePrerequisite("laser")
techUpdate:addPrerequisite("laser-turret")

techUpdate = RitnProtoTech("energy-weapons-damage-1")
techUpdate:removePrerequisite("military-2")
techUpdate:removePrerequisite("laser")
techUpdate:addPrerequisite("laser-turret")
