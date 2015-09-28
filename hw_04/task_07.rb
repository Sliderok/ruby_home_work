std = gets.chomp.to_i
arr = (0...std).to_a
sum_mark = 0.0
arr.each do |i|
  puts "vvedite ocenky #{i + 1} stydenta"
  i = gets.chomp.to_i
  sum_mark += i
end
puts "Srednee = #{sum_mark / std}"