require_relative 'Train'

class PassengerTrain < Train
	
	def initialize(serial)
		@serial = serial
		@type = "Passenger"
		@speed = 0
		@wagonscount = 0
		@wagons = []
	end

	def merge
		if @speed == 0
			@wagons << WagonPassenger.new
			@wagonscount += 1
		end
	end
end