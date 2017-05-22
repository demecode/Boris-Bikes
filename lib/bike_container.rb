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
			raise "hello world" 
		else
			@bikes << bike		
		end
	end 

	def release(bike)
		if bike.working?
			@bikes.delete(bike)
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




end 