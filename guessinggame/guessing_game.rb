require_relative 'guess'

describe GuessingGame do 
	let(:game) {GuessingGame.new(50)}

	describe '#initialize' do
		it 'expects a single parameter' do
			expect(GuessingGame.instance_method(:initialize).arity).to eq 1
		end
	end

	describe '#guess' do
		it 'expects a single parameter' do
			expect(GuessingGame.instance_method(:guess).arity).to eq 1
		end
	
		it 'returns :too_low when the guess is lower than the answer' do
			expect(game.guess(1)).to eq :too_low
		end

		it 'returns :too_high when the guess is higher than the answer' do
			expect(game.guess(100)).to eq :too_high
		end

		it 'returns :correct when the guess matches answer' do
			expect(game.guess(50)).to eq :correct
		end

		it 'changes game_complete? when the correct guess is made' do
			expect {
				game.guess(50)
			}.to change(game, :game_complete?).from(false).to(true)
		end

		it "doesn't change game_complete? when an incorrect guess is made" do
			expect {
				game.guess(10)
			}.to_not change(game, :game_complete?).from(false)
		end

		it "returns :game_solved once you try to guess in a completed game" do
			game.guess(50)
			expect(game.guess(100)).to eq :game_solved
		end
	end

	describe '#game_complete?' do
		it 'returns false in a new game' do
			expect(game.game_complete?).to eq false
		end
	end
end