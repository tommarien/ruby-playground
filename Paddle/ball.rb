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

		if (@position.x <= 0 || outerbounds.x >= @window.width || collides?(@window.left_paddle) || collides?(@window.right_paddle))
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

	def collides?(paddle)
		left_top = @position
		bottom_right = @position.add(Size.new(WIDTH,HEIGHT))

		return !(bottom_right.y < paddle.left_top.y or left_top.y > paddle.bottom_right.y or left_top.x > paddle.bottom_right.x or bottom_right.x < paddle.left_top.x)
	end
end