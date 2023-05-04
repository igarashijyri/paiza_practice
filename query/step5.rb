input_line = gets.split(" ")
num1 = input_line[0].to_i
num2 = input_line[1].to_i
nums = []

num1.times do
  nums.push(gets.to_i)
end

num2.times do
  txt = gets.chomp

  if txt == "pop"
    nums.delete_at(0)
  elsif txt == "show"
    puts nums
  end
end
