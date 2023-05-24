# https://paiza.jp/works/mondai/dp_primer/dp_primer_recursive_formula_boss

def execute(input_lines)
  _count, *ary_k = input_lines.split.map(&:to_i)

  max_k = ary_k.max
  array = [1, 1]

  max_k.times do
    num_1 = array[-1]
    num_2 = array[-2]
  
    end_num = num_1 + num_2
    array.push(end_num)
  end
  
  ary_k.each do |k|
    puts array[k - 1]
  end
end

execute(STDIN.read)