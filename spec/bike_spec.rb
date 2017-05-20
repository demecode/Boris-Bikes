require_relative "../lib/bike"

describe "Bike" do

	let(:bike) {Bike.new}

	it "should return true if bike is working" do
		expect(Bike.new.working?).to eq true
	end

	it "should return false if bike not working" do
		bike.break
		expect(bike.working?).to eq false
	end

	it "should return true if fixed" do
		bike.fix
		expect(bike.working?).to eq true
	end

end

