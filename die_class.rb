require_relative 'die'

describe Die do 
	describe '#initialize' do
		it 'expects a single argument' do
			expect(Die.instance_method(:initialize).arity).to eq 1
		end

		it 'raises ArgumentError if sides are < 1' do
			expect {
				Die.new(-1)
			}.to raise_error(ArgumentError)

				expect {
					Die.new(0)
				}.to raise_error(ArgumentError)
			end
	end

	describe 'Instance Method' do
		before(:each) do
			@sides = rand(50)
			@die = Die.new(@sides)
		end
		context '#num_of_sides' do
			it 'expects method to have no arguments' do
				expect(Die.instance_method(:num_of_sides).arity).to eq 0
			end
			it 'returns the number of sides that the die possesses' do
				expect(@die.num_of_sides).to eq @sides
			end
		end
		context '#roll' do
			it 'expects roll method to have no arguments' do
				expect(Die.instance_method(:roll).arity).to eq 0
			end
			it 'returns a random number between 1 and number_of_sides' do
				rolls = Array.new(10000) {@die.roll}.uniq.sort
				possible_values = (1..@sides).to_a
				expect(rolls).to eq possible_values
			end
		end
	end
end