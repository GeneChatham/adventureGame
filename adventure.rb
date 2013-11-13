class Adventure

	def initialize
		@name = nil
		@destination = nil
	end

	def getName
		puts "Welcome to this lousy adventure game!"
		puts "Please enter your name, hero:"
		@name = gets.chomp.to_s
		puts "Welcome to our magical land, " + @name + "!"
	end

	def choosePath
		puts "What realm of the kingdom would you like to explore?  The spooky WOODS, the haunted CASTLE, or the zombie VILLAGE?"
		@destination = gets.chomp.to_s.upcase
		result = case @destination
			when "WOODS"
				"spooky woods!  There are terrifying trees in there!"
			when "CASTLE"
				"haunted castle!  Ghosts of the dungeons haunt its halls!"
			when "VILLAGE"
				"zombie village!  Beware the appetites of the undead!"
			else 
				puts "That is an invalid destination."
				self.dead
				return
		end
		puts "You've chosen to explore the " + result
	end


	def trial
		if @destination == "WOODS"
			puts "You come across a whomping willow that tries to attack you.  What do you do?  RUN, FIGHT, or TALK?"
		end
	end

	def dead
		puts "You die. GAME OVER"
	end
end




start = Adventure.new
start.getName
start.choosePath
start.trial