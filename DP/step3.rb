def execute(input_lines)
  x, d1, d2, k = input_lines.split.map(&:to_i)
  array = [x]

  k.times do |i|
    next if i < 1
    
    num = array.last
    if (i + 1) % 2 == 0
      last_num = num + d2
    else
      last_num = num + d1
    end
    
    array.push(last_num)
  end
  
  array.last
end

puts execute(STDIN.read)