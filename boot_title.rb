require_relative 'book'

describe Book do 
	before :each do
		@book = Book.new
	end

	describe 'title' do
		it 'capitalizes the first letter' do
			@book.title = 'five'
			expect(@book.title).to eq 'Five'
		end

		it 'capitalizes every word' do
			@book.title = 'five point someone'
			expect(@book.title).to eq "Five Point Someone"
		end
	end

	describe 'capitalizes every word except...' do
		describe 'articles' do
			specify 'the' do
				@book.title = "alexander the great"
				expect(@book.title).to eq "Alexander the Great"
			end

			specify 'a' do
				@book.title = "to kill a mockingbird"
				expect(@book.title).to eq "To Kill a Mockingbird"
			end

			specify 'an' do
				@book.title = "to eat an apple a day"
				expect(@book.title).to eq "To Eat an Apple a Day"
			end
		end

		specify 'conjunctions' do
			@book.title = "war and peace"
			expect(@book.title).to eq "War and Peace"
		end

		specify 'preposition' do
			@book.title = "love in the times of cholera"
			expect(@book.title).to eq "Love in the Times of Cholera"
		end
	end

	describe 'always capitalize...' do
		specify 'I' do
			@book.title = "what i wish i knew when i was 20"
			expect(@book.title).to eq "What I Wish I Knew When I was 20"
		end

		specify 'the first word' do
			@book.title = "the man in the iron mask"
			expect(@book.title).to eq "The Man in the Iron Mask"
		end
	end
end