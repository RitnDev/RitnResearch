data:extend({


    --chemical-science-pack
    {
        --item
        type = "tool",
        name = "advanced-chemical-science-pack",
        icon = "__base__/graphics/icons/production-science-pack.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "science-pack",
        order = "c-a-b",
        stack_size = 200,
        durability = 1
    },
    {
        --recipe
        type = "recipe",
        name = "advanced-chemical-science-pack",
        energy_required = 20,
        category = "chemistry",
        enabled = false,
        ingredients =
        {
            {type="item", name="chemical-science-pack", amount=2},
            {type="item", name="cliff-explosives", amount=5},
            {type="item", name="accumulator", amount=5},
        },
        result = "advanced-chemical-science-pack",
        result_count = 2,
        crafting_machine_tint = 
        {
            primary = {r = 0.755, g = 0.245, b = 0.869, a = 1.000},
            secondary = {r = 0.852, g = 0.382, b = 0.965, a = 1.000},
            tertiary = {r = 0.607, g = 0.295, b = 0.677, a = 1.000},
            quaternary = {r = 0.467, g = 0.162, b = 0.535, a = 1.000},
        }
    }


})

--Ajoute le pack : advanced-electronic-science-pack
local len_input = #data.raw["lab"]["lab"].inputs
table.insert(data.raw["lab"]["lab"].inputs, len_input, "advanced-chemical-science-pack")