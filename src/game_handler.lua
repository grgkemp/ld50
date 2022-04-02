require("src/game")

function update_game()
    if current_location == "" and gameState == "" then
        gameState = "title"
    end
end

game_state_tbl = {
    ["title"] = {["draw"] = draw_game_title, ["actuate"] = actuate_title},
    ["choice"] = {["draw"] = draw_choice, ["actuate"] = actuate_choice},
    ["script"] = {["draw"] = draw_script, ["actuate"] = actuate_script},
    [""] = {}
}

--DRAW
function draw_game()
    local func = game_state_tbl[gameState]["draw"]
    if(func) then
        func()
    end
end

--ACTUATE
function actuate_game(direction, isAffirm)
    local func = game_state_tbl[gameState]["actuate"]
    if(func) then
        func(direction, isAffirm)
    end
end