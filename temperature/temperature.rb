class Temperature

	#attr_accessor :fahrenheit, :celsius

	def initialize(options = {})
		@f = options[:f]
		@c = options[:c]
	end

	def in_fahrenheit #convert celsius to fahrenhet
		if @f
			@f #return fahrenheit if given temp is in fahrenheit
		else
			return (@c * (9.0/5.0)) + 32
		end
	end

	def in_celsius #convert fahrenheit to celsius
		if @c
			@c #return celsius if given temperature is in celsius
		else
			return (@f - 32) * (5.0/9.0)
		end
	end
end

class Celsius < Temperature
	def initialize(celsius)
		@c = celsius
	end
end

class Fahrenheit < Temperature
	def initialize(fahrenheit)
		@f = fahrenheit
	end

end

