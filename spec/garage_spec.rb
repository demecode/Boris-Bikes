require_relative "../lib/garage"

describe Garage do

  let(:garage) {Garage.new}
  let(:bike) {Bike.new}

  it "should accept a bike and fix it" do
    #expect garage to be empty
    expect(garage.bike_count).to eq (0)
    #lets dock a bike in
    garage.dock(bike)
    #we now expect garage to have 1 bike
    expect(garage.bike_count).to eq (1)
  end

end