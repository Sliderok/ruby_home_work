class Route

	attr_reader :stops

	def initialize(first_station, last_station)
		@stops = [first_station, last_station]
	end
	
	def add_station(stop_station)
		@stops.insert(-2, stop_station)
	end
	
	def remove_station(station)
		@stops.delete(station)
	end
	
	def list_station
		@stops.map { |station| puts station }
	end
	
end	
