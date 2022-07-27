Barrier = Class{}

function Barrier:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.dy = 0
    self.dx = 0
end

function Barrier:collides(ball)
    if self.x > ball.x + ball.width or ball.x > self.x + self.width then
        return false
    end

    if self.y > ball.y + ball.height or ball.y > self.y + self.height then
        return false
    end

    return true
end

function Barrier:update(dt)
    self.y = self.y + self.dy * dt
end

function Barrier:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end

function Barrier:reset()
    self.dy = 0
    self.y = 40
end