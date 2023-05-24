# https://paiza.jp/works/mondai/prime_number_primer/prime_number_primer__grothendieck

prime_numbers = [2]
(3..57).each do |i|
  judge = true

  prime_numbers.each do |number|
    if i % number == 0 # 3..100のいずれかを素数で割る
      judge = false
      break
    end
  end

  prime_numbers.push(i) if judge
end

if prime_numbers.include?(57)
  puts 'YES'
else
  puts 'NO'
end