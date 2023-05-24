# https://paiza.jp/works/mondai/prime_number_primer/prime_number_primer__eratosthenes
# 正しい出力結果を出してもロジックの正当性を証明できない
require 'prime'
require 'set'

tmp_num = 2
num = gets.to_i #837
flag_by_num = {0 => false, 1 => false, 2 => true}
un_prime_nums = Set[]

# 初期化処理
(3..num).each do |i|
  flag_by_num.store(i, true)
end

# 素数判定
(3..num).each do |i|
  if Prime.prime?(i)
    unless un_prime_nums.include?(i)
      loop do
        multiple = i * tmp_num
        if multiple > num
          tmp_num = 2
          break
        end

        tmp_num += 1
        un_prime_nums.add(multiple)
      end
    end
  end
end

un_prime_nums.each do |n|
  flag_by_num[n] = false
end

if flag_by_num[num]
  puts 'YES'
else
  puts 'NO'
end