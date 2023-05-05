x = gets.split(" ")
num = x[0].to_i
event_count = x[1].to_i
target_height = x[2].to_i
heights = [target_height]

num.times do
  heights.push(gets.to_i)
end

event_count.times do
  info = gets.chomp
  
  if info.include?('join')
    height = info.split(" ")[1].to_i
    heights.push(height)
  else
    puts (heights.sort.find_index(target_height) + 1)
  end
end