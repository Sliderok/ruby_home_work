puts "1st side"
a = gets.chomp.to_i
puts "2nd side"
b = gets.chomp.to_i
puts "3rd side"
c = gets.chomp.to_i
if a == b && a == c
	puts "Ravnostoroniy"
elsif a == b || a == c || c == b
	puts "Ravnobedren"
else
	puts "Neponyatno"
end