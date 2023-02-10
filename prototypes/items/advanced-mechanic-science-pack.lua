data:extend({


    --chemical-science-pack
    {
        --item
        type = "tool",
        name = "advanced-mechanic-science-pack",
        icon = "__RitnResearch__/graphics/icons/advanced-mechanic-science-pack.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "science-pack",
        order = "c-a-a",
        stack_size = 200,
        durability = 1
    },
    {
        --recipe
        type = "recipe",
        name = "advanced-mechanic-science-pack",
        energy_required = 20,
        category = "chemistry",
        enabled = false,
        ingredients =
        {
            {type="item", name="mechanic-science-pack", amount=2},
            {type="item", name="assembling-machine-2", amount=1},
            {type="item", name="huge-wooden-pole", amount=1},
        },
        result = "advanced-mechanic-science-pack",
        result_count = 2,
        crafting_machine_tint = 
        {
            primary = {r = 0.859, g = 0.353, b = 0.0, a = 1.000},
            secondary = {r = 0.965, g = 0.501, b = 0.201, a = 1.000},
            tertiary = {r = 0.859, g = 0.353, b = 0.0, a = 1.000},
            quaternary = {r = 0.965, g = 0.501, b = 0.201, a = 1.000},
        }
    }


})


--Ajoute le pack : advanced-mechanic-science-pack
local len_input = #data.raw["lab"]["lab"].inputs
table.insert(data.raw["lab"]["lab"].inputs, len_input, "advanced-mechanic-science-pack")

