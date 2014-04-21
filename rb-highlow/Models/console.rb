class Console

	def initialize()
	end

	def say(message)
		puts message
	end

	def reset()
		puts "\e[H\e[2J"
	end

	def ask(message)
		puts message
		$stdin.gets
	end

end