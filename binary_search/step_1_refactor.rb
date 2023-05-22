def binary_search(array, target)
  head = 0
  tail = array.size - 1

  while head <= tail
    center = (head + tail) / 2
    
    if target == array[center]
      return 'Yes'
    elsif target > array[center]
      head = center + 1
    elsif target < array[center]
      tail = center - 1
    end
    
  end
  return 'No'
end


infos = STDIN.read.split((/\R/))
_x, a, _y, *targets = infos
array = a.split(' ').map(&:to_i)
targets.map!(&:to_i)

targets.each do |target|
  result = binary_search(array, target)
  puts result
end