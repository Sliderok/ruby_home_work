puts "1st side"
a = gets.chomp.to_i
puts "2nd side"
b = gets.chomp.to_i
puts "3rd side"
c = gets.chomp.to_i
arr = [a, b, c]
if a == b && a == c
	puts "Ravnostoroniy"
elsif a == b || a == c || c == b
	puts "Ravnobedren"
elsif arr.sort[2] ** 2 == arr.sort[0] ** 2 + arr.sort[1] ** 2
	puts "Pryamoygol"
else
	puts "Neponyatno"
end



  