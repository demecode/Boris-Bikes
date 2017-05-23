require_relative "../lib/garage"

describe Garage do

  let(:garage) {Garage.new}
  let(:bike) {Bike.new}
  let(:van) {Van.new}

  it "should accept a bike and fix it" do
    broken_bike = Bike.new
    #expect garage to be empty
    expect(garage.bike_count).to eq (0)
    #lets break a bike
    broken_bike.break
    #lets dock that bike in and fix it
    garage.accept(broken_bike)
    #we now expect garage to have 1 fixed bike
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