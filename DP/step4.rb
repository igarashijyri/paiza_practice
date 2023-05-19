def execute(input_lines)
  x, d1, d2, count, *ary_k = input_lines.split.map(&:to_i)
  
  k_max = ary_k.max
  dp = [x]

  k_max.times do |i|
    next if (i + 1) < 2

    if (i + 1) % 2 == 0
      dp << dp[-1] + d2
    else
      dp << dp[-1] + d1
    end
  end

  ary_k.map { |k| dp[k - 1] }
end

puts execute(STDIN.read)