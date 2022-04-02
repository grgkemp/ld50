--LOADING
x = 0 
y = 0
dx = 1
dy = 2

function update_stinky()
    x = x + dx
    y = y + dy
    if x > love.graphics.getWidth() then x = 0 end
    if x < 0 then x = love.graphics.getWidth() end
    if y > love.graphics.getHeight() then y = 0 end
    if y < 0 then y = love.graphics.getHeight() end
end

function draw_stinky()
    love.graphics.setColor(1,1,1)
    love.graphics.print("AAAAAAAAAAAAAAAAAAAAA STINKY", x, y)
end


--SETTINGS

settingValues = {
    [1] = 50, 
    [2] = 100
}
musicVolume = 50
sfxVolume = 100
textFont = love.graphics.newFont(21)
titleFont = love.graphics.newFont(32)
settingsTitleFont = love.graphics.newFont(24)
settingsFont = love.graphics.newFont(20)
settingsSelectionIndex = 1

function draw_settings_menu()
    --box
    draw_box(100, 100, love.graphics.getWidth() - 200, love.graphics.getHeight() - 200)
    --title
    love.graphics.setColor(1,1,1)
    love.graphics.printf("Settings Menu", settingsTitleFont, 100, 160, love.graphics.getWidth() - 200, "center")

    local selection_tbl = {
        [1] = {150, 260, 200, 20},
        [2] = {150, 340, 200, 20},
        [3] = {100, 420, love.graphics.getWidth() - 200, 20}
    }

    draw_box(unpack(selection_tbl[settingsSelectionIndex]))

    --options
    --musicVolume
    love.graphics.printf("Music Volume", settingsFont, 150, 260, 200, "left")
    for i=1, settingValues[1], 5 do
        draw_box(320+i*3, 260, 10, 25)
    end 
    --sfxVolume
    love.graphics.printf("SFX Volume", settingsFont, 150, 340, 200, "left")
    for i=1, settingValues[2], 5 do
        draw_box(320+i*3, 340, 10, 25)
    end 
    --Exit game
    love.graphics.printf("Exit Game", settingsFont, 100, 420, love.graphics.getWidth() - 200, "center")
end

function actuate_settings(direction, isAffirm)
    if settingsSelectionIndex == 3 and isAffirm then
        love.window.close()
    end

    local dir_tbl = {
        [1] = function() settingValues[settingsSelectionIndex] = settingValues[settingsSelectionIndex] - 5 end,
        [2] = function() settingsSelectionIndex = settingsSelectionIndex + 1 end,
        [3] = function() settingsSelectionIndex = settingsSelectionIndex - 1 end,
        [4] = function() settingValues[settingsSelectionIndex] = settingValues[settingsSelectionIndex] + 5 end,
    }

    local func = dir_tbl[direction]
    if(func) then
        func()
    end

    for i,value in pairs(settingValues) do
        if value < 0 then 
            settingValues[i] = 0 
        elseif value > 100 then 
            settingValues[i] = 100
        end
    end

    if settingsSelectionIndex < 1 then
        settingsSelectionIndex = 3
    elseif settingsSelectionIndex > 3 then
        settingsSelectionIndex = 1 
    end
end

function draw_box(x, y, width, height)
    cornerRadius = 50 * math.min(width, height) / love.graphics.getWidth()
    --black background
    love.graphics.setColor(0,0,0)
    love.graphics.rectangle("fill", x-2, y-1, width+4, height+2, cornerRadius, cornerRadius)
    --white outline
    love.graphics.setColor(1,1,1)
    love.graphics.rectangle("line", x, y, width, height, cornerRadius, cornerRadius)
end


--MENU
function draw_menu()
end

function update_menu()
end


--GAME
function draw_game_ui()
end

function draw_text_box(text)
    draw_box(4, love.graphics.getHeight()*0.6, love.graphics.getWidth()-8, love.graphics.getHeight()*0.4-4)
    love.graphics.setColor(1,1,1)
    love.graphics.printf(text, textFont, 10, love.graphics.getHeight()*0.6+6, love.graphics.getWidth()-20, "left")
end

function draw_title(text, x, y, width, height)
    draw_box(-50, -50, love.graphics.getWidth() + 100, love.graphics.getHeight() + 100)
    --title
    love.graphics.setColor(1,1,1)
    love.graphics.printf(text, titleFont, x, y, width, "center")
end

function draw_choice_box(choices, selectionIndex, question)
    x = love.graphics.getWidth() * 0.2
    y = love.graphics.getHeight() * 0.2
    width = love.graphics.getWidth() * 0.6
    height = love.graphics.getHeight() * 0.6
    draw_box(x, y, width, height)
    --title
    love.graphics.setColor(1,1,1)
    love.graphics.printf(question, textFont, x + 30, y + 30, width - 60, "left")
    y_offset = (height-30)/5

    draw_box(x+30, y+30 + (selectionIndex*y_offset), width-60, y_offset)
    for i,value in pairs(choices) do
        if value["accessible"] == nil or value["accessible"] then
            love.graphics.setColor(1,1,1)
        else
            love.graphics.setColor(0.4,0.4,0.4)
        end
        love.graphics.printf(value["name"], textFont, x + 50, y + 30 + (i*y_offset), width - 100, "left")
    end
end