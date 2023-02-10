local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)

local pack = "chemical-science-pack"
local tech = {
  "braking-force-1",
  "braking-force-2",
  "braking-force-3",
  "braking-force-4",
  "braking-force-5",
  "braking-force-6",
  "braking-force-7",
  "combat-robotics-2",
  "combat-robotics-3",
  "follower-robot-count-3",
  "follower-robot-count-4",
  "follower-robot-count-5",
  "follower-robot-count-6",
  "mining-productivity-2",
  "mining-productivity-3"
}

-- Remove chemical-science-pack
for _,technology in pairs(tech) do
  RitnProtoTech(technology):removePack(pack) 
end