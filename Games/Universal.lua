do
    local Players = game["GetService"](game, "Players")
    local Player = Players["LocalPlayer"]
    local Format, Split, GSUB, gmatch, match = string["format"], string["split"], string["gsub"], string["gmatch"], string["match"]

    local Window = UILibrary.new("GrubHub V6 ~ Universal", 5013109572)

    local VisualsWindow = Window:addPage("Visuals", 5012544693)
    local VisualsSelection = VisualsWindow:addSection("Main")

    VisualsSelection:addToggle("ESP Teamcheck", false, function(Bool)
        getgenv()["ESP_CACHE"].SetTeamCheck(Bool)
    end)

    VisualsSelection:addToggle("ESP Boxes", false, function(Bool)
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()["ESP_CACHE"].LoadBox(Plr)
                end
            end
            getgenv()["ESP_CACHE"].SetBoxVisibility(true)
        else
            getgenv()["ESP_CACHE"].UnLoadType("_ESP_BOXES")
            getgenv()["ESP_CACHE"].SetBoxVisibility(false)
        end
    end)

    VisualsSelection:addToggle("ESP Tracers", false, function(Bool)
        if Bool then
            for _, Plr in ipairs(Players:GetPlayers()) do
                if Plr ~= Player then
                    getgenv()["ESP_CACHE"].LoadTracers(Plr)
                end
            end
            getgenv()["ESP_CACHE"].SetTracersVisibility(true)
        else
            getgenv()["ESP_CACHE"].UnLoadType("_ESP_TRACERS")
            getgenv()["ESP_CACHE"].SetTracersVisibility(false)
        end
    end)

    VisualsSelection:addColorPicker("ESP Color", Color3.fromRGB(255, 255, 255), function(newcolor)
        local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)
        getgenv()["ESP_CACHE"].UpdateColor(Color3.fromRGB(R, G, B))
    end)

    VisualsSelection:addButton("Unload ESP", function(Bool)
        getgenv()["ESP_CACHE"].UnLoad()
    end)
end