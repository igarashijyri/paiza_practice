input_line = gets.split(" ")
num = input_line[0].to_i
y = input_line[1].to_i
array = []

num.times do
  array.push(gets.to_i)
end

if array.include?(y)
  puts puts "YES"
else
  puts "NO"
end