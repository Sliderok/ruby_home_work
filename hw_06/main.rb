require_relative 'Train'
require_relative 'Station'
require_relative 'Route'
require_relative 'Cargo_Train'
require_relative 'Wagon_Cargo'
require_relative 'Passenger_Train'
require_relative 'Wagon_Passenger'

num = 0
@station_hash = {}
@route = []
@train = []
while num < 99

  puts "Привет! Ознакомтесь с меню и сделайте выборю"
  puts " 1. Создать станцию"
  puts " 2. Создать маршрут"
  puts " 3. Создать поезд"
  puts " 4. Добавить вагон"
  puts " 5. Отцепить вагон"
  puts " 6. Поместить поезд на станцию"
  puts " 7. Управление грузами"
  puts " 8. Управление пассажирами"
  puts " 9. Просмотреть список станций"
  puts "10. Просмотреть список поездов на станции"


  num = gets.chomp.to_i
  case num
 
  when 1
	puts "Введите имя станции"
	name = gets.chomp
	input = {name => Station.new(name)}
	if @station_hash.empty? == false
	  @station_hash.merge!(input)
	else
	  @station_hash = input
	end

  when 2
  	puts "Введите начальную станцию"
  	first_station = @station_hash[gets.chomp]
	puts "Введите конечную станцию"
	last_station = @station_hash[gets.chomp]
	@route << Route.new(first_station, last_station)
  
  when 3
  	puts "Введите номер поезда"
  	train_num = gets.chomp.to_i
  	puts "Введите 1 для пассажирского, иначе будет грузовой"
  	if gets.chomp.to_i == 1
  	  @train << PassengerTrain.new(train_num)
  	else
  	  @train << CargoTrain.new(train_num)
  	end

  when 4
  	puts "Введите номер поезда"
  	i = 0
  	@train.each { |train| puts "#{i += 1}. #{train.serial}" }
  	i = gets.chomp.to_i - 1
  	@train[0].merge
  	puts "Вагонов в составе - #{@train[i].wagonscount}"

  when 5
  	puts "Введите номер поезда"
	i = 0
	@train.each { |train| puts "#{i += 1}. #{train.serial}" }
  	i = gets.chomp.to_i - 1
  	@train[i].unmerge
  	puts "Вагонов в составе - #{@train[i].wagonscount}"  	

  when 6
	puts "Введите название станции"
	station = @station_hash[gets.chomp]
	puts "Выберите поезд"	
	i = 0
	@train.each { |train| puts "#{i += 1}. #{train.serial}" }
	i = gets.chomp.to_i - 1
	station.get_train(@train[i])
	puts station.list_train

  when 7
  	puts "Введите номер поезда"
	i = 0
	@train.each { |train| puts "#{i += 1}. #{train.serial}" if train.type == "Cargo" }
  	i = gets.chomp.to_i - 1
  	puts "Сколько загрузить или разгрузить?"
  	load = gets.chomp.to_i
  	n = 0
  	if load > 0
  	  @train[i].wagons.map { |wagon| 
  	  	if n == 0
  	      wagon.loading(load)
  	      n += 1
  	    end }
  	else
  	  @train[i].wagons.map { |wagon| 
  	  	if n == 0 && wagon.free_space == 0 
  	  	  wagon.unload(load * -1)
  	  	  n +=1
  	  	end }
  	end
  when 8
  	puts "Введите номер поезда"
	i = 0
	@train.each { |train| puts "#{i += 1}. #{train.serial}" if train.type == "Passenger" }
  	i = gets.chomp.to_i - 1
  	puts "Занять или освободить? 1 или 0"
  	load = gets.chomp.to_i
  	n = 0
  	if load == 1
  	  @train[i].wagons.map { |wagon| 
  	  	if n == 0 && wagon.free_seats > 0
  	      wagon.take_seat
  	      n += 1
  	      puts "Свободных мест - #{wagon.free_seats} "
  	    end }
  	else
  	  @train[i].wagons.map { |wagon| 
  	  	if n == 0 
  	  	  wagon.release_seat
  	  	  n +=1
  	  	  puts "Свободных мест - #{wagon.free_seats} "
  	  	end }
  	end
  when 9
  	puts @station_hash.keys
  when 10
  	puts "Введите станцию для просмотра поездов"
  	station = @station_hash[gets.chomp]
  	station.list_train

  end

end