# https://paiza.jp/works/mondai/class_primer/class_primer__make

result = []
all_infos = []
Struct.new("User", :nickname, :old, :birth, :state)

num = gets.to_i
num.times do
  all_infos.push(gets.to_s.split(" "))
end

all_infos.each do |infos|
  x = (Struct::User.new(infos[0], infos[1], infos[2], infos[3]))
    normalized_infos = <<~"EOS"
      User{
      nickname : #{x.nickname}
      old : #{x.old}
      birth : #{x.birth}
      state : #{x.state}
      }
    EOS
    
    puts normalized_infos
end