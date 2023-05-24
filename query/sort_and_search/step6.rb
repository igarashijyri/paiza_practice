# https://paiza.jp/works/mondai/query_primer/query_primer__map_easy

input_line = gets.split(" ")
student_count = input_line[0].to_i
call_count = input_line[1].to_i
hash = {}

student_count.times do
  info = gets.split(" ")
  num = info[0].to_i
  name = info[1]
  
  hash.store(num, name)
end

call_count.times do
  key = gets.to_i
  puts hash[key]
end