# https://paiza.jp/works/mondai/prime_number_primer/prime_number_primer__is_prime_easy

require 'prime'
n = gets.to_i

if Prime.prime?(n)
  puts 'YES'
else
  puts 'NO'
end