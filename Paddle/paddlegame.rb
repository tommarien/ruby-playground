require 'rubygems'
require 'gosu'
require './ball'
require './paddle'

class PaddleGame < Gosu::Window
	def initialize
		super 800,600, false
		@background_image = Gosu::Image.new(self, "images/background.jpg", true)
		self.caption = "Paddle"
		@ball = Ball.new(self)
		@left_paddle = Paddle.new(self, 20)
		@right_paddle = Paddle.new(self, 760)
	end

	def update
		if button_down?(Gosu::KbW)
			@left_paddle.move_up
		end

		if button_down?(Gosu::KbO)
			@right_paddle.move_up
		end

		if button_down?(Gosu::KbS)
			@left_paddle.move_down
		end

		if button_down?(Gosu::KbL)
			@right_paddle.move_down
		end

		@ball.move
	end

	def button_down(id)
 		case id
 			when Gosu::KbEscape
   				close
 		end
	end

	def draw
		@background_image.draw(0, 0, 0)
		@ball.draw
		@left_paddle.draw()
		@right_paddle.draw()
	end
end

paddleGame = PaddleGame.new
paddleGame.show