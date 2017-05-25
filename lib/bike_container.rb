module BikeContainer

	DEFAULT_CAPACITY = 10

	def bikes
		@bikes ||= []
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value
	end

	def bike_count
		bikes.count
	end

	def dock(bike)
		if full?
			raise "error"
		else
			bikes << bike
		end
	end

	def release(bike)
		if available_bikes
			bikes.delete(bike)
			true
		else
			false
		end

	end

	def full?
		bike_count == @capacity
	end

	def available_bikes
			@bikes.reject {|bike| bike.broken?}
	end

	def accept(bike)
		bike.fix
		dock(bike)
	end

	def empty?
		bike_count == 0
	end


end