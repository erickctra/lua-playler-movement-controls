function love.load()
    player = {}
    player.x = 400
    player.y = 200
    player.speed = 6
end

function love.update(dt)
    if love.keyboard.isDown("right") then
        player.x = player.x + player.speed
    end

    if love.keyboard.isDown("left") then
        player.x = player.x - player.speed
    end

    if love.keyboard.isDown("down") then
        player.y = player.y + player.speed
    end

    if love.keyboard.isDown("up") then
        player.y = player.y - player.speed
    end
end

function love.draw()
    love.graphics.circle("fill", player.x, player.y, 40)
    love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 10)
end