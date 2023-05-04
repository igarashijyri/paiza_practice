input_line = gets.split(" ")
nums = input_line[0].to_i
add_place = input_line[1].to_i
add_num = input_line[2].to_i

nums.times do |i|
  if i == add_place
    puts add_num
  end
  puts gets.to_i
end