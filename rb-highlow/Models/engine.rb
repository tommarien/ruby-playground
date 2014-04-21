require_relative 'player'
require_relative 'console'
require_relative 'game'

class Engine
attr_accessor :player, :running

	def initialize
		@console = Console.new()
		@console.say("Welkom bij HOGER, LAGER !!!")
		@console.say("")
	end

	def start()
		@running = true

		initPlayer()
		
		@console.reset()
		@console.say("Hallo, " + @player.name)

		max = @console.ask('Geef een getal in tot waar ik mag gaan?').to_i

		@game = Game.new(@player,@console,max)
		@game.start()

		@running= false;
	end

	private 
	def initPlayer()
		name = @console.ask("Wat is jouw naam?")
		@player = Player.new(name)
	end
    
end