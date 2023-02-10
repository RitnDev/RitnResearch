data:extend({


    --chemical-science-pack
    {
        --item
        type = "tool",
        name = "chemical-science-pack",
        icon = "__base__/graphics/icons/chemical-science-pack.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "science-pack",
        order = "b",
        stack_size = 200,
        durability = 1
    },
    {
        --recipe
        type = "recipe",
        name = "chemical-science-pack",
        energy_required = 5,-- 12
        enabled = true,
        ingredients =
        {
            {type="item", name="ritn-chemical-plant", amount=1},
            {type="item", name="lumberjack-science-pack", amount=1},
        },
        result = "chemical-science-pack",
        result_count = 2,
        crafting_machine_tint = 
        {
            primary = {r = 0.268, g = 0.723, b = 0.969, a = 1.000},
            secondary = {r = 0.432, g = 0.793, b = 0.969, a = 1.000},
            tertiary = {r = 0.268, g = 0.723, b = 0.969, a = 1.000},
            quaternary = {r = 0.432, g = 0.793, b = 0.969, a = 1.000},
        }
    }


})