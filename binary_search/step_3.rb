# https://paiza.jp/works/mondai/binary_search/binary_search__basic_step2

def lower_bound(array, value)
  left = -1
  right = array.length

  while left + 1 < right
    mid = (left + right) / 2

    if array[mid] > value
      right = mid
    else
      left = mid
    end
  end
  right
end

_x, a, y, *pass_points = STDIN.read.split(/\R/)
array = a.split(' ').map(&:to_i).sort
pass_points.map!(&:to_i)

pass_points.each do |pass_point|
  pass_line = lower_bound(array, pass_point)
  puts array.size - pass_line
end