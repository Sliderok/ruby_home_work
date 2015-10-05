class Train
	
	attr_reader :serial, :type, :wagonscount, :wagons
	
	def initialize(serial, type, wagonscount = 0, speed = 0)
		@serial = serial
		@type = type
		@wagonscount = wagonscount
		@speed = speed
	end
	
	def speed_show
		puts @speed
	end

	def speed_up
		@speed += 10 if @speed <= 100
	end
	
	def speed_down
		@speed -= 10 if @speed >= 10
	end
	
	def set_route(route)
		@route = route
		@currentstation = @route.stops[0]
		@currentstation.get_train(self)
	end
	
	def next_station
		if @route.stops[-1] != @currentstation
			@currentstation.send_train(self)
			@currentstation = @route.stops[@route.stops.index(@currentstation) + 1]
			@currentstation.get_train(self)
		else
			puts "Kone4naya"
		end
	end
	
	def previous_station
		if @route.stops[0] != @currentstation
			@currentstation.send_train(self)
			@currentstation = @route.stops[@route.stops.index(@currentstation) - 1]
			@currentstation.get_train(self)
		else
			puts "Na4al'naya"
		end
	end	

	def get_current_station
		@currentstation.name
	end

	def get_next_station
		puts @route.stops[@route.stops.index(@currentstation) + 1].name
	end

	def get_previous_station
		puts @route.stops[@route.stops.index(@currentstation) - 1].name
	end

	def unmerge
		if @speed == 0 && @wagonscount > 0
			@wagons.pop
			@wagonscount -= 1
		end
	end

end