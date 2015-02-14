require_relative 'die_class_letters'

describe Die do 
	describe '#initialize' do
		it 'expects a single argument' do
			expect(Die.instance_method(:initialize).arity).to eq 1
		end

		it 'raises ArgumentError if a list of sides are empty' do
			expect {
				Die.new([])
			}.to raise_error(ArgumentError)
		
		end

		describe 'Instance method' do
			before(:each) do
				@sides = ('a'..'z').to_a
				@die = Die.new(@sides)
			end

			context '#num_of_sides' do
				it 'expects method to have no arguments' do
					expect(Die.instance_method(:num_of_sides).arity).to eq 0
				end
				it 'returns the number of sides that the die possesses' do
					expect(@die.num_of_sides).to eq @sides.length
				end
			end
			context '#roll' do
				it 'expects roll method to have no arguments' do
					expect(Die.instance_method(:roll).arity).to eq 0
				end
				it 'returns a random valid string' do
					expect(@sides).to include(@die.roll)
				end
				it 'returns every possible letter when sufficient rolls have been completed' do
					rolled_array = Array.new(10000) {@die.roll}.uniq.sort
					expect(rolled_array).to eq @sides
				end
			end
		end
	end
end