require_relative "../lib/bike_container"
require_relative "../lib/container_holder"

describe BikeContainer do

	let(:bike) {Bike.new}
	let(:holder) {ContainerHolder.new}

	it "should accept a bike" do
    expect(holder.bike_count).to eq (0)
		#holder should have 0 bikes to start with
		holder.dock(bike)
		#holder should now dock a bike in and now have 1 bike
		expect(holder.bike_count).to eq (1)
	end

  it "should release a bike only if bikes available" do
    holder.available_bikes
    expect(holder.available_bikes).to eq []
    holder.release(bike)
    expect(holder.available_bikes).to eq []
    end

end
