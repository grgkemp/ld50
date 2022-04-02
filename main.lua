require("src/ui")
require("src/game_handler")

function love.load()
    state = "game"
    settingsOpen = false
    dx, dy, x, y = 2, 1, 0, 0
    fontSize = 18
    love.graphics.setFont(love.graphics.newFont(fontSize))
end

function love.update(dt)
    if not settingsOpen then
        local func = state_tbl[state]["update"]
        if(func) then
            func()
        end
    end
end

state_tbl = {
    ["loading"] = {["draw"] = draw_stinky, ["update"] = update_stinky},
    ["menu"] = {["draw"] = draw_menu, ["update"] = update_menu, ["actuate"] = actuate_menu},
    ["game"] = {["draw"] = draw_game, ["update"] = update_game, ["actuate"] = actuate_game},
}

function love.draw()
    local func = state_tbl[state]["draw"]
    if(func) then
        func()
    end

    if settingsOpen then
        --Show settings menu
        draw_settings_menu()
    end
end

function love.keypressed(key)
    dir = 0
    if key == "a" or key == "left" then
        dir = 1
    elseif key == "s" or key == "down" then
        dir = 2
    elseif key == "w" or key == "up" then
        dir = 3
    elseif key == "d" or key == "right" then
        dir = 4
    end

    isAffirm = false
    if key == "return" or key == "space" then
        isAffirm = true
    end

    --Settings
    if settingsOpen then
        actuate_settings(dir, isAffirm)
    else 
        local func = state_tbl[state]["actuate"]
        if(func) then
            func(dir, isAffirm)
        end
    end

    if key == "escape" then
        settingsOpen = not settingsOpen
    end
end