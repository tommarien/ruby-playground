class Paddle
	HEIGTH = 60
	WIDTH = 20
	def initialize(window, x)
		@window = window
		
		@image = Gosu::Image.new(window, 'images/paddle.gif', false)
		@x = x
		@y = 270

		@vel_y = 5

	end

	def move_up()
		if (@y > 0)
			@y = @y + (-1 * @vel_y)
		end
	end

	def move_down()
		if (@y + HEIGTH < @window.height)
			@y = @y + @vel_y
		end
	end

	def draw()
		@image.draw(@x, @y, 1)
	end
end