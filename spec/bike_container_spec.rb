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

  it "should release a bike only if bikes are available" do
    working_bike = Bike.new
    broken_bike = Bike.new
    broken_bike.break
    holder.dock(working_bike)
    holder.dock(broken_bike)
    expect(holder.available_bikes).to eq [working_bike]
    holder.release(working_bike)
    expect(holder.bike_count).to eq (1)
    end

end
