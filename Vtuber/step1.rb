require 'set'

x = gets.split(" ").map{|y| y.to_i }
member_count = x[0]
event_count = x[1]
names = Set[]

member_count.times do
  names.add(gets.chomp)
end

event_count.times do
  info = gets.split(" ")
  
  if info.include?("join")
    name = info[1]
    names.add(name)
  elsif info.include?("leave")
    name = info[1]
    names.delete(name)
  elsif info.include?("handshake")
    puts names.sort
  end
end