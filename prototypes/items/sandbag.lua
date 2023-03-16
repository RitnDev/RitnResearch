data:extend({

    --sandbag
    {
        --item
        type = "item",
        name = "sandbag",
        icon = "__RitnResearch__/graphics/icons/sandbag.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "bag",
        order = "a",
        stack_size = 50,
    },
    {
        --recipe
        type = "recipe",
        name = "sandbag",
        icon = "__RitnResearch__/graphics/icons/sandbag.png",
        icon_size = 64, icon_mipmaps = 4,
        energy_required = 5,
        enabled = false,
        category = "advanced-crafting",
        ingredients =
        {
            {"silica-sand", 100},
            {"wood", 2},
        },
        result = "sandbag",
        result_count = 1,
    },
    {
        --recipe
        type = "recipe",
        name = "empty-sandbag",
        icon = "__RitnResearch__/graphics/icons/empty-sandbag.png",
        icon_size = 64, icon_mipmaps = 4,
        energy_required = 2.5,
        enabled = false,
        subgroup = "empty-bag",
        order = "a",
        category = "advanced-crafting",
        ingredients =
        {
            {"sandbag", 1},
        },
        result = "silica-sand",
        result_count = 100,
        stack_size = 50,
    }


})