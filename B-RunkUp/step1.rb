count = gets.split(" ")[0].to_i
lines = []

count.times do
  lines.push(gets.chomp)
end

input_line = gets.split(" ").map{|x| x.to_i}
y = input_line[0]
x = input_line[1]

target = lines[y][x]
unless target.nil?
  if target == "."
    replace = "#"
  else
    replace = "."
  end
  
  target = lines[y][x] = replace
end

puts lines