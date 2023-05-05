#正直混乱してるのでsort_byを復習したい
x = gets.split(" ").map{|y| y.to_i }
member_count = x[0]
event_count = x[1]
infos = []

# ここの入力値自体はいらないけど続く年号を取得するために仕方なく。
member_count.times do
  gets
end

event_count.times do
  a = gets.split(" ")
  seireki = a[0].to_i
  name = a[1]
  
  info = [seireki, name]
  infos.push(info)
end

sorted_infos = infos.sort_by do |k, v|
  [k, v]
end

sorted_infos.each do |info|
  puts info[1]
end