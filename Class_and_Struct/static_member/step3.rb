# https://paiza.jp/works/mondai/class_primer/class_primer__change_member

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
  number = info[1].to_i - 1

  if info.include?("getnum")
    puts maked_list[number].number
  elsif info.include?("getname")
    puts maked_list[number].name
  elsif info.to_s.include?("change")
    new_info = info[2]

    if info.to_s.include?("num")
      maked_list[number].number = new_info
    elsif info.to_s.include?("name")
      maked_list[number].name = new_info
    end
  end
end