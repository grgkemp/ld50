dx = 2
dy = 1
x = 0
y = 0

function love.draw()
    love.graphics.print("AAAAAAAAAAAAAAAAAAAAA STINKY", x, y)

    x = x + dx
    y = y + dy

    if x > love.graphics.getWidth() then
        x = 0
    end
    if y > love.graphics.getHeight() then
        y = 0
    end
end