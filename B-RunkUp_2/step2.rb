# https://paiza.jp/works/mondai/b_rank_new_level_up_problems/b_rank_new_level_up_problems__get_upsidedown

hoge = gets.split(" ").map{|x| x.to_i}
row_num = hoge[0]
col_num = hoge[1]
@array = []

def target_change(target, y, x)
  if target == "#"
    @array[y][x] = "."
  elsif target == "."
    @array[y][x] = "#"
  end
end

row_num.times do
  @array.push(gets.chomp)
end

target_position = gets.split(" ").map{|x| x.to_i}
y_position = target_position[0]
x_position = target_position[1]

target = @array[y_position][x_position]
y = y_position # 上から何番目であるか
x = x_position # 左から何番目であるか
target_change(target, y, x)

#TODO: DRYにしたい
#ターゲットが一番上ではない
if y_position != 0
  y = y_position - 1
  x = x_position
  target = @array[y][x]
  target_change(target, y, x)
end

#ターゲットが一番下ではない
if y_position < (row_num - 1)
  y = y_position + 1
  x = x_position
  target = @array[y][x]
  target_change(target, y, x)
end

#ターゲットが一番左ではない
if x_position != 0
  y = y_position
  x = x_position - 1
  target = @array[y][x]
  target_change(target, y, x)
end

#ターゲットが一番右ではない
if x_position < (col_num - 1)
  y = y_position
  x = x_position + 1
  target = @array[y][x]
  target_change(target, y, x)
end

puts @array