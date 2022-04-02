require("src/ui")
require("src/stories")
current_story = "The Soldier and the Fishmonger's Daughter"
gameState = ""
current_location = ""
current_text = {}
textIndex = 0
choices = {}
choiceSelectionIndex = 1

--DRAW
function draw_game_title()
    draw_title(current_story, 0, 200, love.graphics.getWidth(), love.graphics.getHeight())
end

function draw_choice()
    draw_choice_box(choices, choiceSelectionIndex, "Where should you visit now?")
end

function draw_background(location)
end

function draw_script()
    draw_background(current_location)
    draw_text_box(current_text[textIndex])
end

--ACTUATE
function actuate_title(direction, isAffirm)
    if isAffirm then
        gameState = "script"
        textIndex = 1
        current_text = stories[current_story]["intro"]
        current_location = stories[current_story]["starting point"]
    end
end

function actuate_script(direction, isAffirm)
    if isAffirm then
        textIndex = textIndex + 1
        if textIndex > table.getn(current_text) then
            --NEXT !!
            if current_location == "outside" then
                --pick next location
                gameState = "choice"
                choiceSelectionIndex = 1
                choices = stories[current_story]["houses"]
            else
                --next story
                current_story = get_house(current_story, current_location)["next"]
                --reset states
                gameState = ""
                current_location = ""
            end
        end
    end
end

function actuate_choice(direction, isAffirm)
    if direction == 2 then
        choiceSelectionIndex = choiceSelectionIndex + 1
    elseif direction == 3 then
        choiceSelectionIndex = choiceSelectionIndex - 1
    end

    if choiceSelectionIndex < 1 then
        choiceSelectionIndex = table.getn(choices)
    elseif choiceSelectionIndex > table.getn(choices) then
        choiceSelectionIndex = 1 
    end

    if isAffirm then
        --A choice has been made
        if current_location == "outside" then
            --Next location selected
            next_location = choices[choiceSelectionIndex]
            if next_location["accessible"] ~= nil or next_location["accessible"] then
                --if house is accessible, enter
                current_location = next_location["name"]
                current_text = next_location["script"]
                gameState = "script"
            else
                --house inaccessible
                --play audio ?
            end
        else
            --OTHER CHOICE TYPE
        end
    end
end