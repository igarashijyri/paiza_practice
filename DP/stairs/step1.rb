def execute(arg)
  n = arg.to_i
  dp = [1] + [0] * n
  
  # n = 3,  dp =  [1, 0, 0, 0]
  1.upto(n) do |i|
    dp[i] += dp[i - 1] if i >= 1

    # i = 3のとき、(dp[3] + dp[1]) + (dp[3] + 3dp[2])
    dp[i] += dp[i - 2] if i >= 2
  end
  dp[n]
end

puts execute(STDIN.read)

=begin
dp[0] = 0段目に行く経路数
dp[1] = 1段目に行く経路数
dp[2] = 2段目に行く経路数
=end