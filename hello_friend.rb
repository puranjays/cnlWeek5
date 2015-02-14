require_relative 'friend'

describe Friend do
	before :each do
		@friend = Friend.new
	end

	it "says hello" do
		expect(@friend.greeting).to eq "Hello"
	end

	it "says hello to someone" do
		expect(@friend.greeting("Gopal")).to eq "Hello, Gopal"
	end
	
end