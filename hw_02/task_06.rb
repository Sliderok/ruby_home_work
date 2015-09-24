puts "insert a" 
a = gets.chomp.to_i
puts "insert b" 
b = gets.chomp.to_i
puts "insert c"
c = gets.chomp.to_i

D = b ** 2 - 4 * a * c

if D > 0
  x1 = (-b + D) / 2 * a	
  x2 = (-b - D) / 2 * a
  puts "D = #{D}, X1 = #{x1}, X2 = #{x2}"
elsif D == 0 
  x1 = -b / 2 * a
  x2 = x1
  puts "D = #{D}, X = #{x1}"
else
end


  