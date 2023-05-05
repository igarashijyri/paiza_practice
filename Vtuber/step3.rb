input_line = gets.split(" ").map{|x| x.to_i }
company_count = input_line[0]
event_count = input_line[1]
company_info = {}

company_count.times do
  info = gets.split(" ")
  
  name = info[0].chomp
  pass = info[1].to_i
  zandaka = info[2].to_i
  company_info.store(name, [pass, zandaka])
end

event_count.times do
  info = gets.split(" ")
  
  name = info[0].chomp
  pass = info[1].to_i
  hikidashi = info[2].to_i
  
  true_pass = company_info[name][0]
  if pass == true_pass
    
    zandaka = company_info[name][1] - hikidashi
    company_info.store(name, [pass, zandaka])
  else
    next
  end
end

company_info.each do |k ,v|
  puts k + " " + v[1].to_s
end