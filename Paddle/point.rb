class Point
	attr_reader :x, :y

	def initialize(x, y)
		@x = x
		@y = y
	end

	def offset(dx, dy)
		@x += dx 
		@y += dy
	end

	def add(size)
		return Point.new(@x + size.width, @y + size.height)
	end
end