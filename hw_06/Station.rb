class Station
	
	attr_reader :name
	attr_accessor :list
	
	def initialize(name)
		@name = name
		@list = []
	end
	
	def get_train(train)
		@list << train
	end
	
	def list_train
		@list.map { |train| puts train.serial }
	end

	def send_train(train)
		@list.delete(train) 
	end

	def train_type_amount
		cargo_amount = 0
		@list.map { |train| cargo_amount += 1 if train.type == "Cargo" }
		puts "Cargo = #{cargo_amount}, passangers = #{@list.length - cargo_amount}"		
	end
	
end