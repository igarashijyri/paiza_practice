# https://paiza.jp/works/mondai/class_primer/class_primer__inheritance

infos = []
old_list = []
alcohol_flag = {}
kaikei = {}

x = gets.split(" ")
member_num = x[0].to_i
order_num = x[1].to_i

member_num.times do |i|
  old_list.push(gets.to_i)
  kaikei.store((i + 1), 0)
end

order_num.times do
  infos.push(gets.split(" "))
end

infos.each do |info|
  orderer_number = info[0].to_i
  order = info[1]
  price = info[2].to_i
  alcohol = (order == "alcohol")
  food = (order == "food")
  orderer_old = old_list[orderer_number - 1]

  if alcohol && orderer_old < 20
    next
  end
  
  if alcohol_flag[orderer_number] != true && alcohol #アルコールフラグが立ってないがアルコールの注文がきたとき
    alcohol_flag.store(orderer_number, true)
  elsif alcohol_flag[orderer_number] == true && food # アルコールのフラグが立っていて食べ物の注文がきたとき
    price -= 200
  end
  
  sum = kaikei[orderer_number] + price
  kaikei.store(orderer_number, sum)
end

kaikei.each do |k, v|
  puts v
end