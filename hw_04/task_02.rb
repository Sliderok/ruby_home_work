puts "vvedite 4islo"
num = gets.chomp.to_i
i = 0
sum = 0.0
r_num = 0
while i != num do
  i += 1
  if i % 2 == 0
    sum += i
    r_num += 1
  end
end	
avrg = sum / r_num
puts "Symma = #{sum}, Srednee = #{avrg}"