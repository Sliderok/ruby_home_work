puts "vvedite 4islo"
num = gets.chomp.to_i
i = 0
sum = 0.0
while i != num do
  i += 1
  sum += i
end	
avrg = sum / num
puts "Symma = #{sum}, Srednee = #{avrg}"