require_relative '../lib/garage'

describe Garage do

let(:bike) {Bike.new}
let(:garage) {Garage.new}

	it "should fix bikes instantaneously once received" do
	garage.dock(bike)
	garage.fix_bikes		
	end 
end 