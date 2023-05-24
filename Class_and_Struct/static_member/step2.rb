# https://paiza.jp/works/mondai/class_primer/class_primer__constructor

Struct.new("User", :number, :name)
make_list = []
maked_list = []
return_list = []

num = gets.to_i
num.times do
  info = gets.split(" ")
  
  if info.include?("make")
    make_list.push(info)
  else
    return_list.push(info)
  end
end

make_list.each do |info|
  number = info[1]
  name = info[2]
  
  maked_list.push(Struct::User.new(number, name))
end

return_list.each do |info|
  if info.include?("getnum")
    number = info[1].to_i - 1
    puts maked_list[number].number
  elsif info.include?("getname")
    number = info[1].to_i - 1
    puts maked_list[number].name
  end
end