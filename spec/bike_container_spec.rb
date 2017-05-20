require './lib/bike_container'

class ContainerHolder

	include BikeContainer

end

describe BikeContainer do

	let(:bike) {Bike.new}
	let(:holder) {ContainerHolder.new}

	it "should accept a bike" do
		#we expect holder to have 0 bikes
		expect(holder.bike_count).to eq(0)
		#dock a bik in
		holder.dock(bike)
		#now holder should have 1 bike
		expect(holder.bike_count).to eq(1)
	end
end