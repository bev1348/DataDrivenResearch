local science_packs = {
    ["automation-science-pack"] = true,
    ["logistic-science-pack"] = true,
    ["military-science-pack"] = true,
    ["chemical-science-pack"] = true,
    ["production-science-pack"] = true,
    ["utility-science-pack"] = true,
    ["space-science-pack"] = true,
    ["metallurgic-science-pack"] = true,
    ["electromagnetic-science-pack"] = true,
    ["agricultural-science-pack"] = true,
    ["cryogenic-science-pack"] = true,
    ["promethium-science-pack"] = true
}

for _, recipe in pairs(data.raw.recipe) do
    local results = nil
    if recipe.results then
        results = recipe.results
    elseif recipe.result then
        results = {
            {
                type="item",
                name=recipe.result,
                amount=recipe.result_count or 1
            }
        }
    end

    if results then
        for _, result in pairs(results) do
            local result_name = result.name or result[1]
            if science_packs[result_name] then
                local amount = result.amount or result[2] or 1
                recipe.ingredients = recipe.ingredients or {}
                table.insert(
                    recipe.ingredients,
                    {
                        type="item",
                        name="empty-science-pack",
                        amount=amount
                    }
                )

                break
            end
        end
    end
end

-- Remplacement des icônes des technologies de vitesse de recherche

local research_speed_techs = {
    "research-speed-1",
    "research-speed-2",
    "research-speed-3",
    "research-speed-4",
    "research-speed-5",
    "research-speed-6",
    "research-speed-7"
}

for _, tech_name in pairs(research_speed_techs) do
    local tech = data.raw.technology[tech_name]
    if tech then
        tech.icon = nil
        tech.icon_size = 256
        tech.icons = util.technology_icon_constant_speed("__DataDrivenResearch__/graphics/research-server/research-speed.png")
    end
end
