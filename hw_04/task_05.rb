puts "vvedite 4islo"
num = gets.chomp.to_i
arr = (1..num).to_a
fac = 1
arr.each do |i|
  fac *= i
end
puts fac