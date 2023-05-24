# https://paiza.jp/works/mondai/dp_primer/dp_primer_recursive_formula_step4

k = gets.to_i
array = [1, 1]

(k - 2).times do
  num_1 = array[-1]
  num_2 = array[-2]
  
  end_num = num_1 + num_2
  array.push(end_num)
end

print array[k - 1]