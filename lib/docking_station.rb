class DockingStation

	def initialize
		@capacity = 10
		@bikes = []
	end 

	def bike_count
		@bikes.count
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
		@capacity == bike_count
	end 

	def available_bikes
			@bikes.reject {|bike| bike.broken?}
		end


end