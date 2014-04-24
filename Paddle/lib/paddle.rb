class Paddle

  attr_reader :height, :width, :x, :y , :velocity

  def initialize
    @width = 20
    @height = 60
    @velocity = 5
    @x = @y = 0
  end

  def warp(x, y)
    @x = x
    @y = y
  end

end