require_relative 'Train'

class CargoTrain < Train
	
	def initialize(serial)
		@serial = serial
		@type = "Cargo"
		@speed = 0
		@wagonscount = 0
		@wagons = []
	end
	
	def merge
		if @speed == 0
			@wagons << [WagonCargo.new]
			@wagonscount += 1
		end
	end

end