infos = gets.split(" ")
num = infos[0].to_i
x = infos[1].to_i
y = infos[2].to_i
array = [x, y]

num.times do
  height = gets.to_i
  array.push(height)
end

puts array.sort.find_index(y) + 1