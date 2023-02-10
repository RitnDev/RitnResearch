data:extend({


    --chemical-science-pack
    {
        --item
        type = "tool",
        name = "military-science-pack",
        icon = "__RitnMiner__/graphics/icons/military-science-pack.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "science-pack",
        order = "c",
        stack_size = 200,
        durability = 1
    },
    {
        --recipe
        type = "recipe",
        name = "military-science-pack",
        energy_required = 10,
        enabled = true,
        ingredients =
        {
            {"shotgun", 1},
        },
        result = "military-science-pack",
        result_count = 2,
        crafting_machine_tint = 
        {
            primary = {r = 0.035, g = 0.033, b = 0.033, a = 1.000},
            secondary = {r = 0.116, g = 0.116, b = 0.116, a = 1.000},
            tertiary = {r = 0.051, g = 0.051, b = 0.051, a = 1.000},
            quaternary = {r = 0.017, g = 0.017, b = 0.017, a = 1.000},
        }
    }


})