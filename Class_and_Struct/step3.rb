# https://paiza.jp/works/mondai/class_primer/class_primer__sort

infos = []
Struct.new("User", :nickname, :old, :birth, :state)

num = gets.to_i
num.times do
  info = gets.split(" ")
  infos.push(Struct::User.new(info[0], info[1], info[2], info[3]))
end

sort_info = infos.sort {|x, y| x.old <=> y.old}

sort_info.each do |info|
  puts info.nickname + " " + info.old + " " + info.birth + " " + info.state
end