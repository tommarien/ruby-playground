require 'gosu'

class Ball
  attr_reader :width, :height, :x, :y, :velocity_x, :velocity_y

  def initialize(window)
    @width = 20
    @height = 20

    @window = window

    @image = Gosu::Image.new(window, 'images/ball.png', false)

    @x = (window.width - width) / 2
    @y = (window.height - height) / 2

    @velocity_x = @velocity_y = 4
  end

  def draw
    @image.draw(x, y, 1)
  end

  def move
    @x += velocity_x
    @y += velocity_y
  end
end