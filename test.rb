class NewDog
	def initialize(breed, name)
		@breed = breed
		@name = name
	end
	attr_accessor :breed, :name

	def name=(some_name)
		@name = some_name
	end
end

first_dog = NewDog.new("Doberman", "Hari")
p first_dog.name
first_dog.name= "Ravikant"
p first_dog.name
first_dog.name = "Rahul"
p first_dog.name