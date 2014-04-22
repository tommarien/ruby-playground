require_relative 'rectangle'
class Square < Rectangle
	def initialize(size)
		super size, size
	end
end