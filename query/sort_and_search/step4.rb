# https://paiza.jp/works/mondai/query_primer/query_primer__single_pop

num = gets.to_i
array = []

num.times do |i|
  if i == 0 #先頭要素はいらないのでゴミ箱に入れてスキップ
    gomi = gets 
    next
  end
  puts gets.to_i
end