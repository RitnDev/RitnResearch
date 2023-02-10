data:extend(
{

    {
        type = "technology",
        name = "ritn-tech-chimistry",
        localised_name = {"technology-name.ritn-tech-chimistry"},
        localised_description = {"technology-description.ritn-tech-chimistry"},
        icon_size = 64,
        icon = "__RitnResearch__/graphics/technology/ritn-tech-chimistry.png",
        unit =
        {
          count = 50,
          ingredients =
          {
            {"chemical-science-pack", 1}
          },
          time = 10
        },
        prerequisites = {},
        order = "a-a-a3"
    },

    -- tech-advanced-mechanic-science-pack
    {
      type = "technology",
      name = "tech-advanced-mechanic-science-pack",
      icon_size = 128, icon_mipmaps = 1,
      icon = "__RitnResearch__/graphics/technology/tech-advanced-mechanic-science-pack.png",
      effects = { {type = "unlock-recipe", recipe = "advanced-mechanic-science-pack"} },
      unit =
      {
        count = 100,
        ingredients =
        {
          {"lumberjack-science-pack", 1},
          {"miner-science-pack", 1},
          {"automation-science-pack", 1},
          {"chemical-science-pack", 1}
        },
        time = 30
      },
      prerequisites = {"lumberjack-electric-energy-distribution-2"},
      order = "c-a"
    },

    -- tech-advanced-electronic-science-pack
    {
      type = "technology",
      name = "tech-advanced-electronic-science-pack",
      icon_size = 256, icon_mipmaps = 4,
      icon = "__base__/graphics/technology/utility-science-pack.png",
      effects = { 
        {type = "unlock-recipe", recipe = "advanced-electronic-science-pack"},
        {type = "unlock-recipe", recipe = "stack-inserter"},
        {type = "unlock-recipe", recipe = "stack-filter-inserter"}, 
        {type = "stack-inserter-capacity-bonus", modifier=1}, 
      },
      unit =
      {
        count = 200,
        ingredients =
        {
          {"mechanic-science-pack", 1},
          {"electronic-science-pack", 2},
          {"chemical-science-pack", 2}
        },
        time = 30
      },
      prerequisites = {"advanced-electronics","fast-inserter", "logistics-2"},
      order = "c-a"
    },

    -- tech-advanced-chemical-science-pack
    {
      type = "technology",
      name = "tech-advanced-chemical-science-pack",
      icon_size = 256, icon_mipmaps = 4,
      icon = "__base__/graphics/technology/production-science-pack.png",
      effects = { 
        {type = "unlock-recipe", recipe = "advanced-chemical-science-pack"},
        {type = "unlock-recipe", recipe = "solid-fuel-from-heavy-oil"}, 
        {type = "unlock-recipe", recipe = "solid-fuel-from-light-oil"},
        {type = "unlock-recipe", recipe = "solid-fuel-from-petroleum-gas"}  
      },
      unit =
      {
        count = 200,
        ingredients =
        {
          {"miner-science-pack", 2},
          {"lumberjack-science-pack", 2},
          {"chemical-science-pack", 1}
        },
        time = 30
      },
      prerequisites = {"electric-energy-accumulators","cliff-explosives"},
      order = "c-a"
    },

})
