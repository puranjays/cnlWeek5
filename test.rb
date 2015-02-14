class Die
	attr_accessor :num_of_sides

	def initialize(num_of_sides)
		@num_of_sides = num_of_sides
	end

	def roll
		first_roll = Random.rand(1..(Die.num_of_sides - 1))
	end

end

six_side = Die(6)