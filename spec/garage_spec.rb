require_relative "../lib/garage"
require_relative "../lib/bike_container"

describe Garage do

  let(:garage) {Garage.new}
  let(:bike) {Bike.new}
  let(:van) {Van.new}

  it "should accept a bike and fix it" do
    #expect garage to be empty
    expect(garage.bike_count).to eq (0)
    #lets dock a bike in
    garage.accept(bike)
    #we now expect garage to have 1 bike
    expect(garage.bike_count).to eq (1)
  end

  it "should release a bike to the van after its fixed" do
    garage.dock(bike)
    expect(garage.bike_count).to eq (1)
    garage.release(bike)
    van.dock(bike)
    expect(van.bike_count).to eq (1)
end

end