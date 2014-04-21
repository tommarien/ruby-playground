require './point'
require './size'

class Paddle
	HEIGTH = 60
	WIDTH = 20

	attr_reader :left_top

	def initialize(window, x)
		@window = window
		
		@image = Gosu::Image.new(window, 'images/paddle.gif', false)

		@left_top = Point.new(x, (window.height - HEIGTH) / 2)

		@vel_y = 5

	end

	def move_up()
		if (@left_top.y > 0)
			@left_top.offset(0, (-1 * @vel_y))
		end
	end

	def move_down()
		if (@left_top.y + HEIGTH < @window.height)
			@left_top.offset(0, @vel_y)
		end
	end

	def draw()
		@image.draw(@left_top.x, @left_top.y, 1)
	end

	def bottom_right
		return @left_top.add(Size.new(HEIGTH,WIDTH))
	end
end