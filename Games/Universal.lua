do
    if getgenv()["USE_GRUBHUB_UNIVERSAL"] == true then
        getgenv()["grubhub_loaded"] = false
        local Players = game["GetService"](game, "Players")
        local Player = Players["LocalPlayer"]
        local Format, Split, GSUB, gmatch, match = string["format"], string["split"], string["gsub"], string["gmatch"], string["match"]

        Window = UILibrary.new("GrubHub V6 ~ Universal", 5013109572)

        local MiscWindow = Window:addPage("Misc", 5012544693)
        local MiscSection = MiscWindow:addSection("Main")

        local VisualsWindow = Window:addPage("Visuals", 5012544693)
        local VisualsSelection = VisualsWindow:addSection("Main")

        local GameConfigFile = GetGameConfig(FixName(tostring("Universal")) .. ".json")
        Settings_Name = "UNIVERSAL_GRUBHUB_SETTINGS"

        getgenv()[Settings_Name] = {
            Teamcheck = GameConfigFile.Teamcheck or false,
            Boxes = GameConfigFile.Boxes or false,
            Tracers = GameConfigFile.Tracers or false,
            AimBot = GameConfigFile.AimBot or false,
            AimBotTeamcheck = GameConfigFile.AimBotTeamcheck or false,
            AimbotHealth = GameConfigFile.AimbotHealth or false,
            AimDistance = GameConfigFile.AimDistance or 250,
            ESP_NAMETAGS = GameConfigFile.ESP_NAMETAGS or false,
            Color = GameConfigFile.Color or {R = 255, G = 255, B = 255}
        }

        local Aimbot_MT = getgenv()["ESP_CACHE"].Aimbot()

        if Aimbot_MT then
            MiscSection:addToggle("Aimbot", getgenv()[Settings_Name].AimBot, function(Bool)
                getgenv()[Settings_Name].AimBot = Bool
                
                if Bool then
                    Aimbot_MT.Start()
                else
                    Aimbot_MT.End()
                end
            end)

            MiscSection:addToggle("Aimbot Teamcheck", getgenv()[Settings_Name].AimBotTeamcheck, function(Bool)
                getgenv()[Settings_Name].AimBotTeamcheck = Bool
                
                Aimbot_MT.TeamCheck(Bool)
            end)

            Aimbot_MT.Distance(getgenv()[Settings_Name].AimDistance)
            Aimbot_MT.Health(getgenv()[Settings_Name].AimbotHealth)

            MiscSection:addToggle("Aimbot Health Check", getgenv()[Settings_Name].AimbotHealth, function(Bool)
                getgenv()[Settings_Name].AimbotHealth = Bool
                Aimbot_MT.Health(Bool)
            end)

            MiscSection:addSlider("Aimbot Distance", getgenv()[Settings_Name].AimDistance, 0, 10000, function(NewValue)
                getgenv()[Settings_Name].AimDistance = NewValue
                Aimbot_MT.Distance(NewValue)
            end)
        end

        VisualsSelection:addToggle("ESP Teamcheck", getgenv()[Settings_Name].Teamcheck, function(Bool)
            getgenv()[Settings_Name].Teamcheck = Bool
            getgenv()["ESP_CACHE"].SetTeamCheck(Bool)
        end)

        VisualsSelection:addToggle("ESP NameTags", getgenv()[Settings_Name].ESP_NAMETAGS, function(Bool)
            getgenv()[Settings_Name].ESP_NAMETAGS = Bool

            if Bool then
                for _, Plr in ipairs(Players:GetPlayers()) do
                    if Plr ~= Player then
                        getgenv()["ESP_CACHE"].LoadNameTag(Plr)
                    end
                end
                getgenv()["ESP_CACHE"].SetNameTag(true)
            else
                getgenv()["ESP_CACHE"].UnLoadType("_ESP_NAME_TAG")
                getgenv()["ESP_CACHE"].SetNameTag(false)
            end
        end)

        VisualsSelection:addToggle("ESP Boxes", getgenv()[Settings_Name].Boxes, function(Bool)
            getgenv()[Settings_Name].Boxes = Bool
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

        VisualsSelection:addToggle("ESP Tracers", getgenv()[Settings_Name].Tracers, function(Bool)
            getgenv()[Settings_Name].Tracers = Bool
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

        local ESP_COLOR_LOCAL = getgenv()[Settings_Name].Color

        getgenv()["ESP_CACHE"].UpdateColor(Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B))

        VisualsSelection:addColorPicker("ESP Color", Color3.fromRGB(ESP_COLOR_LOCAL.R, ESP_COLOR_LOCAL.G, ESP_COLOR_LOCAL.B), function(newcolor)
            local R, G, B = math.floor(newcolor.R * 255), math.floor(newcolor.G * 255), math.floor(newcolor.B * 255)

            getgenv()[Settings_Name].Color.R = R
            getgenv()[Settings_Name].Color.G = G
            getgenv()[Settings_Name].Color.B = B

            getgenv()["ESP_CACHE"].UpdateColor(Color3.fromRGB(R, G, B))
        end)

        VisualsSelection:addButton("Unload ESP", function(Bool)
            getgenv()["ESP_CACHE"].UnLoad()
        end)

        Window:SelectPage(Window.pages[1], true)
    end
end