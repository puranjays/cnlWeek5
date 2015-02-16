class Book

	def title=(title)
		@title = title
	end

	def title
		split_title = @title.split(" ")
		title_len = split_title.length
		ignored_words = ["and", "or", "an", "the", "in", "on", "upon", "over", "a", "am", "of"]
		new_title = @title.split(" ").map do |word|
			if ignored_words.include? word
				word
			else
				word.capitalize
			end
		end
		new_title[0].capitalize!
		new_title.join(' ')
	end
end
