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
			puts "You come across a whomping willow that tries to attack you."
			self.options
			action = self.actions
			if action == "TALK"
				puts "You calm down the whomping willow with your soothing voice.  It gives you a vast fortune in return for becoming its friend.  YOU WIN!"
			elsif action == "FIGHT"
				puts "You are and idiot if you think you can fight a tree."
				self.dead
			else
				puts "As you try to run away, you trip on a root and are smashed by the tree's massive whomping branches."
				self.dead
			end
		end

		if @destination == "CASTLE"
			puts "You come across a ghost that tries to steal your body."
			self.options
			action = self.actions
			if action == "TALK"
				puts "The ghost is uninterested in talking.  He quickly possesses you."
				self.dead
			elsif action == "FIGHT"
				puts "You have no magical powers.  How could you possibly fight a ghost?"
				self.dead
			else
				puts "Yep, that's your best option.  On your way out of the castle you steal some jewels and gold.  YOU WIN!"
			end
		end
		
		if @destination == "VILLAGE"
			puts "As soon as you enter the village, you begin to be mobbed by zombies.  Fast zombies.  Good thing you brought your baseball bat with you today."
			self.options
			action = self.actions
			if action == "TALK"
				puts "The zombies quickly tear your flesh from your still talking body."
				self.dead
			elsif action == "FIGHT"
				puts "Good for you!  After ten minutes of bashing zombie skulls, you have eradicated the village of the undead.  YOU WIN!"
			else
				puts "These are fast zombies, remember?  They quickly cut off your escape and devour your brains."
				self.dead
			end
		end


	end

	def dead
		puts "You die. GAME OVER"
	end

	def actions
		action = gets.chomp.to_s.upcase
	end

	def options
		puts "What do you do?  RUN, FIGHT, or TALK?"
	end

end




start = Adventure.new
start.getName
start.choosePath
start.trial