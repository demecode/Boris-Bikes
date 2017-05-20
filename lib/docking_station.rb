class DockingStation

	def initialize
		@capacity = 10
		@bikes = []
	end 

	def bike_count
		@bikes.count
	end 

	def dock(bike)
		@bikes << bike
	end 

	def release(bike)
		@bikes.delete(bike)
	end 

	def full?
		@capacity <= bike_count
	end 


end