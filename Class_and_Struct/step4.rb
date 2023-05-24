# https://paiza.jp/works/mondai/class_primer/class_primer__change

infos = []
Struct.new("User", :nickname, :old, :birth, :state)

x = gets.split(" ")
member_num = x[0].to_i
name_update_count = x[1].to_i

member_num.times do
  info = gets.split(" ")
  infos.push(Struct::User.new(info[0], info[1], info[2], info[3]))
end

name_update_count.times do
  x = gets.split(" ")
  i = x[0].to_i - 1
  name = x[1]
  infos[i].nickname = name
end

infos.each do |info|
  puts info.nickname + " " + info.old + " " + info.birth + " " + info.state
end