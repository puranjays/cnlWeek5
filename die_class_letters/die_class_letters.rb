class Die

	def initialize(sides)
		@sides = sides
		if @sides.empty?
			raise ArgumentError.new("Number of sides cannot be empty")
		end
	end

	def num_of_sides
		return @sides.length
	end

	def roll
		return @sides.sample
	end
end
