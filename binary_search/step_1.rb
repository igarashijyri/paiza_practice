def binary_search(array, target)
  head = 0
  tail = array.count - 1

  while head <= tail
    center = (head + tail) / 2 # 0...100のとき: 50

    if array[center] == target
      return "Yes"
    elsif array[center] < target # targetの方が大きいとき、先頭値を中央値に変更する
      head = center + 1
    else                         #targetの方が小さいとき、末尾値を中央値に変更する
      tail = center - 1
    end
  end

  return "No"
end

#TODO: 標準入力をstdinとかでもう少し綺麗に受け取れないものか...
targets = []
_count = gets.to_i
array = gets.split(' ').map{|x| x.to_i}
n = gets.to_i

n.times do
  targets.push(gets.to_i)
end

targets.each do |target|
  result = binary_search(array, target)
  puts result
end