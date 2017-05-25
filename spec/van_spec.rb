require_relative "../lib/van"


describe Van do

  let(:van) {Van.new}
  let(:garage) {Garage.new}
  let(:station) {DockingStation.new}
  let(:bike) {Bike.new}

  it "should take a bike from the docking station" do
    #van shouldn't have any bikes
    expect(van.bike_count).to eq (0)
    #lets dock a bike in the station
    station.dock(bike)
    expect(station.bike_count).to eq (1)
    #lets take a bike from the docking station to the van
    station.release(bike)
    expect(station.bike_count).to eq (0)
    van.dock(bike)
    expect(van.bike_count).to eq (1)
  end

  it "should release bikes into the garage" do
    #van should have a bike
    van.dock(bike)
    expect(van.bike_count).to eq (1)
    #van should release a bike
    van.release(bike)
    expect(van.bike_count).to eq (0)
    #garage should dock bike in
    garage.dock(bike)
    expect(garage.bike_count).to eq (1)
  end

  it "should return a list of broken bikes" do
    working_bike = Bike.new
    broken_bike = Bike.new
    broken_bike.break
    van.dock(working_bike)
    van.dock(broken_bike)
    expect(van.not_available_bikes).to eq [broken_bike]
  end

  it "should be able to release a broken bike" do
    broken_bike = Bike.new
    broken_bike.break
    van.dock(broken_bike)
    expect(van.bike_count).to eq 1
    van.release(broken_bike)
    expect(van.bike_count).to eq 0
  end

  it "shoudn't release a bike if there isn't any bikes" do
    van.full?
    expect(van.bike_count).to eq (0)

  end



end