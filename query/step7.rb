input_line = gets.split(" ")
student_count = input_line[0].to_i
event_count = input_line[1].to_i
name_by_key = {}

student_count.times do
  infos = gets.split(" ")
  num = infos[0].to_i
  name = infos[1]
  
  name_by_key.store(num, name)
end

event_count.times do
  infos = gets.split(" ")
  order = infos[0].chomp
  num = infos[1].to_i
  
  if order == "join"
    name = infos[2]
    name_by_key.store(num, name)
  elsif order == "leave"
    name_by_key.delete(num)
  elsif order == "call"
    puts name_by_key[num]
  end
end