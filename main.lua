function love.load()
    player = {}
    player.x = 400
    player.y = 200
    player.speed = 6
    player.sprite = love.graphics.newImage('sprites/parrot.png')

    background = love.graphics.newImage('sprites/background.png')
end

function love.update(dt)
    if love.keyboard.isDown("right") then
        player.x = player.x + player.speed
    
    elseif love.keyboard.isDown("left") then
        player.x = player.x - player.speed
    
    elseif love.keyboard.isDown("down") then
        player.y = player.y + player.speed
    
    elseif love.keyboard.isDown("up") then
        player.y = player.y - player.speed
    end
end

function love.draw()
    love.graphics.draw(background, 0, 0)
    love.graphics.draw(player.sprite, player.x, player.y)
    love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 10)
end