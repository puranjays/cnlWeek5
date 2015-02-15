class Book

	def initialize(title=nil)
		@title = title
	end

	def title=(new_title)
		@title = new_title
	end

	attr_reader :title
	
end

first_book = Book.new
first_book.title = "war and peace"
p first_book.title
second_book = Book.new
second_book.title = "history of sexuality"
p second_book.title
third_book = Book.new("History of Sexiness")
third_book.title = "History of sexiness"
puts third_book.title