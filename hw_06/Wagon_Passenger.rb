class WagonPassenger

	attr_reader :free_seats, :seats_max

	def initialize(seats_max = 50)
		@seats_max = seats_max
		@free_seats = seats_max
	end	

	def take_seat
		@free_seats -= 1 if @free_seats != 0
	end

	def release_seat
		@free_seats += 1 if @free_seats != @seats_max
	end

end