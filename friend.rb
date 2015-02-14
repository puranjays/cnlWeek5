class Friend
	def greeting(who=nil)
		return "Hello" if who.nil?
		return "Hello, #{who}" if !who.nil?
	end
end

