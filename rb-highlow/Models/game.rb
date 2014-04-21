class Game
attr_accessor :player

	def initialize(player, console, max)
		@player = player
		@console = console
		@max = max
		@guesses = []
	end

	def start()
		@console.reset();
		
		@secretnumber = rand(1..@max)
		@console.say("OK, Ik heb een nummer in mijn hoofd, veel success !")

		@continue = true
		while @continue do
			@continue= !Guess()
		end

		@console.say("JE HEBT HET GERADEN PROFICIAT !!!")
	end

	def Guess()
		@guess = @console.ask("Poging " + (@guesses.count + 1).to_s + ":").to_i
		
		@guesses.push(@guess)

		if (@guess > @secretnumber)
			@console.say("LAGER")
			@console.say("")
		elsif @guess < @secretnumber
			@console.say("HOGER")
			@console.say("")
		end
		
		@guess == @secretnumber

	end

end