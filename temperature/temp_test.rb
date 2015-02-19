require_relative 'temperature'

describe Temperature do 
	describe "should be constructed with an options hash" do
		describe "in degrees fahrenheit" do
			it "at 50 degrees" do
				expect(Temperature.new(:f => 50).in_fahrenheit).to eq 50
			end

			describe "and correctly convert to celsius" do
				it "at freezing" do
					expect(Temperature.new(:f => 32).in_celsius).to eq 0
				end

				it "at boiling" do
					expect(Temperature.new(:f => 212).in_celsius).to eq 100
				end

				it "at body temperature" do
					expect(Temperature.new(:f => 98.6).in_celsius).to eq 37
				end

				it "at an arbitrary temperature" do
					expect(Temperature.new(:f => 68).in_celsius).to eq 20
				end
			end
		end

		describe "in degrees celsius" do
			it "at 50 degrees" do
				expect(Temperature.new(:c => 50).in_celsius).to eq 50
			end

			describe "and correctly convert to fahrenheit" do
				it "at freezing" do
					expect(Temperature.new(:c => 0).in_fahrenheit).to eq 32
				end

				it "at boiling" do
					expect(Temperature.new(:c => 100).in_fahrenheit).to eq 212
				end

				it "at body temperature" do
					expect(Temperature.new(:c => 37).in_fahrenheit).to be_within(0.1).of(98.6)
				end
			end
		end
	end

	describe "Temperature subclasses" do
		describe "Celsius subclass" do
			it "is constructed in degrees celsius" do
				expect(Celsius.new(50).in_celsius).to eq 50
				expect(Celsius.new(50).in_fahrenheit).to eq 122
			end

			it "is a Temperature subclass" do
				expect(Celsius.new(0)).to be_a(Temperature)
			end
		end

		describe "Fahrenheit subclass" do
			it "is constructed in degrees fahrenheit" do
				expect(Fahrenheit.new(50).in_fahrenheit).to eq 50
				expect(Fahrenheit.new(50).in_celsius).to eq 10
			end

			it "is a Temperature subclass" do
				expect(Fahrenheit.new(0)).to be_a(Temperature)
			end
		end
	end
end