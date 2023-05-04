require 'set'
array_1 = Set.new

input_line = gets.split(" ")
array_1_size = input_line[0].to_i
array_2_size = input_line[1].to_i

array_1_size.times do
  array_1.add(gets.to_i)
end

array_2_size.times do
  if array_1.include?(gets.to_i)
    puts "YES"
  else
    puts "NO"
  end
end