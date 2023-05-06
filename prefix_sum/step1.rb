input_line = gets.split(" ").map{|x| x.to_i}
num_1 = input_line[0]
num_2 = input_line[1]
array = []

num_1.times do
  array.push(gets.to_i)
end

num_2.times do
  target = gets.to_i
  normalized_array = array.slice(0...target)
  
  puts normalized_array.sum
end