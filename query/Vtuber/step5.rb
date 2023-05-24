# https://paiza.jp/works/mondai/query_primer/query_primer__vtuber

count = gets.to_i
hash = {}
join_list = []

count.times do
  infos = gets.split(" ").map{|x| x.chomp}
  name = infos[0]
  action = infos[1]
  
  if action == 'give'
    money = infos[2].to_i

    if hash[name] #arrayで検索かけると遅いので一旦ハッシュで管理してる
      total_money = hash[name] + money
      hash.store(name, total_money)
    else
      hash.store(name, money)
    end

  elsif action == 'join' && hash[name]
    join_list.push(name)
  else
    hash.store(name, 0)
    join_list.push(name)
  end
end

array = hash.to_a
super_list = array.select {|x| x[1] != 0}
sorted_join_list = join_list.sort_by{|k, _v| k}

sorted_super_list = super_list.sort_by{|k, _v| k}.reverse.sort_by {|_k, v| -v}
sorted_super_list.each do |list|
  puts list[0]
end

sorted_join_list.each do |list|
  puts list
end