class GuessingGame

	def initialize(correct_guess)
		@correct_guess = correct_guess
		@game_complete = false
	end


	def game_complete?
		return @game_complete
	end

	def guess(some_guess)
		if @game_complete == true
			return :game_solved
		elsif some_guess < @correct_guess
			return :too_low
		elsif some_guess > @correct_guess
			return :too_high
		elsif some_guess == @correct_guess
			@game_complete = true
			return :correct
		end
	end
end
