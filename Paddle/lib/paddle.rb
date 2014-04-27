class Paddle

  attr_reader :height, :width, :x, :y , :velocity

  def initialize(window)
    @width, @height = 20, 60
    @velocity = 5
    @x = @y = 0
    @window = window
  end

  def warp(x, y)
    @x, @y = x, y
  end

  def move_up
    if (@y > 0)
      @y -= @velocity
    end
  end

  def move_down
    if (@y + @height < @window.height)
      @y += @velocity
    end
  end

end