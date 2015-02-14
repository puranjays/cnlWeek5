class Die
	def initialize(sides)
		@sides = sides
		if @sides < 1
			raise ArgumentError.new("Number of sides must be more than 1")
		end
	end

	def num_of_sides
		
	end

	def roll
		return Random.rand(1..@sides)
	end
end

