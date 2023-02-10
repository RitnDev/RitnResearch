data:extend({


    --chemical-science-pack
    {
        --item
        type = "tool",
        name = "advanced-electronic-science-pack",
        icon = "__base__/graphics/icons/utility-science-pack.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "science-pack",
        order = "c-a-b",
        stack_size = 200,
        durability = 1
    },
    {
        --recipe
        type = "recipe",
        name = "advanced-electronic-science-pack",
        energy_required = 20,
        category = "chemistry",
        enabled = false,
        ingredients =
        {
            {type="item", name="electronic-science-pack", amount=2},
            {type="item", name="advanced-circuit", amount=1},
            {type="item", name="stack-filter-inserter", amount=1},
        },
        result = "advanced-electronic-science-pack",
        result_count = 2,
        crafting_machine_tint = 
        {
            primary = {r = 1.000, g = 0.958, b = 0.000, a = 1.000},
            secondary = {r = 1.000, g = 0.852, b = 0.172, a = 1.000},
            tertiary = {r = 0.876, g = 0.869, b = 0.597, a = 1.000},
            quaternary = {r = 0.969, g = 1.000, b = 0.019, a = 1.000},
        }
    }


})

--Ajoute le pack : advanced-electronic-science-pack
local len_input = #data.raw["lab"]["lab"].inputs
table.insert(data.raw["lab"]["lab"].inputs, len_input, "advanced-electronic-science-pack")