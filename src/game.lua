require("src/ui")
require("src/stories")
current_story = "Outside the Town of Malbork"
gameState = ""
current_location = ""
current_text = {}
textIndex = 0
choices = {}
choiceSelectionIndex = 1

--DRAW
function draw_game_title()
    draw_title(current_story, 0, 250, love.graphics.getWidth(), love.graphics.getHeight())
end

function draw_choice()
    draw_background(current_location)
    draw_choice_box(choices, choiceSelectionIndex, "Where should you visit now?")
end

bg_images = {
    ["outside_night"] = love.graphics.newImage("assets/outside_night.png"),
    ["outside_day"] = love.graphics.newImage("assets/outside_day.png"),
    ["The Old Fishmonger's Cottage"] = love.graphics.newImage("assets/fishmongers.png"),
    ["The Fishmonger's Cottage"] = love.graphics.newImage("assets/outside_house.png"),
    ["The Local Shop"] = love.graphics.newImage("assets/shop.png"),
    ["Your Childhood Home"] = love.graphics.newImage("assets/home.png"),
    ["Jerry's Apartment"] = love.graphics.newImage("assets/jerrys_apartment.png"),
    ["Uncle Grigor's Cabin"] = love.graphics.newImage("assets/cabin.png"),
    ["An Empty Plot of Land"] = love.graphics.newImage("assets/empty_plot.png"),
}

char_images = {
    ["Grandma"] = love.graphics.newImage("assets/grandma.png"),
    ["Matthias"] = love.graphics.newImage("assets/matthias.png"),
    ["The Shopkeeper"] = love.graphics.newImage("assets/shopkeeper.png"),
    ["Jerry"] = love.graphics.newImage("assets/jerry.png"),
    ["Kramer"] = love.graphics.newImage("assets/kramer.png")
}

function draw_background(location)
    bg_img = bg_images[location]
    if bg_img == nil then
        -- iterate over whole table to get all keys
        local keyset = {}
        for k in pairs(bg_images) do
            table.insert(keyset, k)
        end
        -- now you can reliably return a random key
        bg_img = bg_images[keyset[math.random(#keyset)]]
    end
    love.graphics.draw(bg_img,0,0)
end

function draw_characters(characters)
    for i, value in pairs(characters) do
        img = char_images[value["name"]]
        x = love.graphics.getWidth()*0.55 
        if i ~= 1 then
            x = love.graphics.getWidth()*0.45 - img:getWidth()
        end
        love.graphics.draw(img, x, love.graphics.getHeight()*0.7 - img:getHeight() + 2)
    end
end

function draw_script()
    draw_background(current_location)
    house = get_house(current_story, current_location)
    if house ~= nil then draw_characters(house["characters"]) end
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

completion = {}
function actuate_script(direction, isAffirm)
    if isAffirm then
        textIndex = textIndex + 1
        if textIndex > table.getn(current_text) then
            --NEXT !!
            if current_location:find("^outside") ~= nil then
                --pick next location
                gameState = "choice"
                choiceSelectionIndex = 1
                choices = stories[current_story]["houses"]
            else
                --next story
                current_story = get_house(current_story, current_location)["next"]()
                completion[current_story..tostring(current_location)] = 1
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
        if current_location:find("^outside") ~= nil then
            --Next location selected
            next_location = choices[choiceSelectionIndex]
            if next_location["accessible"] == nil or next_location["accessible"] then
                --if house is accessible, enter
                current_location = next_location["name"]
                current_text = next_location["script"]
                textIndex = 1
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