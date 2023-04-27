Struct.new("User", :name, :old, :birth, :state)
infos = []

num = gets.to_i
num.times do
    infos.push(gets.to_s.split(" "))
end

target_old = gets

infos.each do |info|
  user = Struct::User.new(info[0], info[1], info[2], info[3])

  puts user.name if user.old.to_i == target_old.to_i
end