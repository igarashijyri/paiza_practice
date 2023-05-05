input_line = gets.split(" ").map{|x| x.to_i}
count = input_line[0]
receipt_count = input_line[1]
infos = {}

count.times do
  name = gets.chomp
  infos.store(name, [])
end

receipt_count.times do
  info = gets.split(" ")
  name = info[0]
  order_num = info[1]
  money = info[2]
  
  infos[name].push([order_num, money])
end

infos.each do |k, v| # v = [[x, y] [x, y] [x, y]]
  puts k
  

  v.each do |x|
    puts x[0] + " " + x[1] 
  end
  puts "-----"
end