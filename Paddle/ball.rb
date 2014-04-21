require './point'
require './size'

class Ball
	WIDTH = 20
	HEIGHT = 20

	def initialize(window)
		@window = window
		@image = Gosu::Image.new(window, 'images/ball.png', false)
		@position = Point.new(40, 80)
		@vel_x = @vel_y = 4
	end

	def move()
		outerbounds = @position.add(Size.new(WIDTH,HEIGHT))

		if (@position.x <= 0 || outerbounds.x >= @window.width)
			@vel_x = -1 * @vel_x
		end

		if (@position.y <= 0 || outerbounds.y >= @window.height)
			@vel_y = -1 * @vel_y
		end

		@position.offset(@vel_x,@vel_y)
	end

	def draw()
		@image.draw(@position.x, @position.y, 1)
	end
end