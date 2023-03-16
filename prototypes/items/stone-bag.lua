data:extend({

    --sandbag
    {
        --item
        type = "item",
        name = "stone-bag",
        icon = "__RitnResearch__/graphics/icons/stone-bag.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "bag",
        order = "b",
        stack_size = 50,
    },
    {
        --recipe
        type = "recipe",
        name = "stone-bag",
        icon = "__RitnResearch__/graphics/icons/stone-bag.png",
        icon_size = 64, icon_mipmaps = 4,
        energy_required = 5,
        enabled = false,
        category = "advanced-crafting",
        ingredients =
        {
            {"stone", 800},
            {"wood", 2},
        },
        result = "stone-bag",
        result_count = 1,
    },
    {
        --recipe
        type = "recipe",
        name = "empty-stone-bag",
        icon = "__RitnResearch__/graphics/icons/empty-stone-bag.png",
        icon_size = 64, icon_mipmaps = 4,
        energy_required = 2.5,
        enabled = false,
        subgroup = "empty-bag",
        order = "b",
        category = "advanced-crafting",
        ingredients =
        {
            {"stone-bag", 1},
        },
        result = "stone",
        result_count = 800,
        stack_size = 50,
    }


})