require_relative "../lib/docking_station"

describe DockingStation do

	it "should accept a bike" do
		bike = Bike.new
		station = DockingStation.new
		expect(station.bike_count).to eq 0
		station.dock(bike)
		expect(station.bike_count).to eq 1
	end 

	it "should be able to release a bike" do
		bike = Bike.new
		station = DockingStation.new
		station.dock(bike)
		station.release(bike)
		expect(station.bike_count).to eq 0
	end 

	it "should return true if docking station is full" do
		station = DockingStation.new
		10.times{station.dock(Bike.new)}		
		expect(station.full?).to eq true
	end 

	it "should return false if docking station isn't full" do
		station = DockingStation.new	   
		expect(station.full?).to eq false 
	end

	xit "shouldn't dock a bike if the capacity is full" do 
		station = DockingStation.new 
		10.times{station.dock(Bike.new)}


		bike = Bike.new
		puts "hello world"
		expect(station.dock(bike)).to raise("hello world")
	end 

	it "shouldn't release a bike if it's broken" do
		bike = Bike.new
		station = DockingStation.new
		bike.break
		expect(station.release(bike)).to eq false
	end 




end