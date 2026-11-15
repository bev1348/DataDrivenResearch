data:extend({
{
    type = "tool",
    name = "empty-science-pack",
    icon = "__DataDrivenResearch__/graphics/empty-science-pack/empty-science-pack.png",
    icon_size = 64,
    subgroup = "science-pack",
    order = "-[empty-science-pack]",
    stack_size = 200,
    durability = 1,
    spoil_result = nil
},
{
    type = "recipe",
    name = "empty-science-pack",
    enabled = true,
    energy_required = 0.5,
    ingredients =
    {
        {type="item", name="electronic-circuit", amount=1},
        {type="item", name="iron-plate", amount=1}
    },
    results = {
        {type="item", name="empty-science-pack", amount=1}
    }
}
})