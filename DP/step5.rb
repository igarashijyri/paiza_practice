k = gets.to_i
array = [1, 1]

# k = 7
(k - 2).times do
  num_1 = array[-1]
  num_2 = array[-2]
  
  end_num = num_1 + num_2
  array.push(end_num)
end

print array[k - 1]

=begin
・ a_1 = 1 
・ a_2 = 1 
・ a_n = a_{n-2} + a_{n-1} (n ≧ 3)

末尾とdの和を追加するのではなく、末尾-1と末尾の和を追加する

a_1 = 1, a_2 = 1
[1, 1, 2, 3, 5, 8, 13]
=end