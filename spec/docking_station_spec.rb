require_relative "../lib/docking_station"

describe DockingStation do

	let(:station) {DockingStation.new(:capacity => 101)}

	it "should allow setting default capacity on initialising" do
		expect(station.capacity).to eq (101)
	end

  it "should return true if station is empty" do
    station.empty?
    expect(station.empty?).to eq true
  end


  it "should return 0 if docking station empty" do
    station.empty?
    expect(station.bike_count).to eq (0)
  end


end