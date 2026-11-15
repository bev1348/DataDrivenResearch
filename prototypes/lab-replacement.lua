local lab = data.raw.lab["lab"]
local lab_recipe = data.raw.recipe["lab"]
lab_recipe.energy_required = 2
lab_recipe.ingredients = {
    { type = "item", name = "electronic-circuit", amount = 25 },
    { type = "item", name = "iron-plate", amount = 6 }
}
lab_recipe.results = {
    { type = "item", name = "lab", amount = 1 }
}
lab_recipe.icon = "__DataDrivenResearch__/graphics/research-server/icone-research-server.png"
lab_recipe.icon_size = 64
local lab_item = data.raw.item["lab"]
lab_item.order = "g[research-computer]"
lab_item.icon = "__DataDrivenResearch__/graphics/research-server/icone-research-server.png"
lab_item.icon_size = 64
lab.icon = "__DataDrivenResearch__/graphics/research-server/icone-research-server.png"
lab.icon_size = 64
lab.on_animation = {
    layers = {
        {
            filename = "__DataDrivenResearch__/graphics/research-server/research-server.png",
            width = 256,
            height = 256,
            frame_count = 60,
            line_length = 15,
            animation_speed = 0.9,
            shift = {0, -0.2},
            scale = 0.5
        },
        {
            filename = "__DataDrivenResearch__/graphics/research-server/research-server-light.png",
            width = 256,
            height = 256,
            frame_count = 60,
            line_length = 15,
            animation_speed = 0.9,
            draw_as_light = true,
            shift = {0, -0.2},
            scale = 0.5
        },
        {
            filename = "__DataDrivenResearch__/graphics/research-server/research-server-shadow.png",
            width = 256,
            height = 256,
            repeat_count = 60,
            draw_as_shadow = true,
            shift = {0, -0.2},
            scale = 0.5
        }
    }
}

lab.off_animation =
{
    layers =
    {
        {
            filename = "__DataDrivenResearch__/graphics/research-server/research-server.png",
            width = 256,
            height = 256,
            frame_count = 1,
            line_length = 1,
            shift = {0, -0.2},
            scale = 0.5
        },
        {
            filename = "__DataDrivenResearch__/graphics/research-server/research-server-shadow.png",
            width = 256,
            height = 256,
            draw_as_shadow = true,
            shift = {0, -0.2},
            scale = 0.5
        }
    }
}

lab.water_reflection = {
    pictures = {
        filename =
        "__DataDrivenResearch__/graphics/research-server/research-server-reflection.png",
        width = 40,
        height = 40,
        scale = 5
    },
    rotate = false,
    orientation_to_variation = false
}


lab.working_sound = {
    sound = {
        {
            filename = "__DataDrivenResearch__/sounds/small-research-server.ogg",
            volume = 0.75
        }
    }
}
