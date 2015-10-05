class WagonCargo

	attr_reader :free_space, :space_max

	def initialize(space_max = 100)
		@space_max = space_max
		@free_space = space_max
	end	

	def loading(amount)
		@free_space -= amount if @free_space != 0 && @free_space >= amount
	end

	def unload(amount)
		@free_space += amount if @free_space != @space_max && @free_space <= amount 
	end

end