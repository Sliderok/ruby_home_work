puts "vvedite 4islo"
num = gets.chomp.to_i
arr = (1..num).to_a
sum = 0
arr.each do |i|
  sum += i ** i
end
puts sum