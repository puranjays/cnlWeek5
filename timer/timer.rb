class Timer

	def initialize(seconds=0)
		@seconds = seconds
	end

	attr_accessor :seconds

	def zero_time(time)
		"#{time}".rjust(2, "0")
	end

	def time_string
		hours = @seconds/3600
		minutes = @seconds/60
		minutes_hours = ((@seconds%3600)/60)
		seconds_minutes = @seconds%60
		new_second = @second
		puts new_second
		if @seconds < 60
			if @seconds < 10
				@seconds = zero_time(@seconds)
			end
			"00:00:#{@seconds}"
		elsif @seconds > 3600 #total hours > 1
			if hours < 10 #total hours < 10 i.e. 0x:00:00
				hours = zero_time(hours)
			end
			if minutes_hours < 10
				minutes_hours = zero_time(minutes_hours)
			end
			if seconds_minutes < 10
				seconds_minutes = zero_time(seconds_minutes)
			end
			return "#{hours}:#{minutes_hours}:#{seconds_minutes}"
		else #i.e. for all time greater than 1 minute but less than 1 hour
			if minutes_hours < 10
				minutes_hours = zero_time(minutes_hours)
			end
			if seconds_minutes < 10
				seconds_minutes = zero_time(seconds_minutes)
			end
			return "0#{hours}:#{minutes_hours}:#{seconds_minutes}"
		end
	end
end

new_time = Timer.new
new_time.seconds = 90
puts new_time.time_string