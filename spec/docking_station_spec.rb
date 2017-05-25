require_relative "../lib/docking_station"

describe DockingStation do

	let(:station) {DockingStation.new(:capacity => 101)}
  let(:bike) {Bike.new}

	it "should allow setting default capacity on initialising" do
		expect(station.capacity).to eq (101)
	end

  it "should return true if station is empty" do
    station.dock(bike)
    expect(station.bike_count).to eq (1)
    station.release(bike)
    expect(station.bike_count).to eq (0)
    station.empty?
    expect(station.empty?).to eq true
  end

  it "shouldn't release a bike if the capacity is empty" do
    station = DockingStation.new
    station.empty?
    expect(station.bike_count).to eq (0)
    bike = Bike.new
    expect(station.release(bike)).to raise ("error")
end


end