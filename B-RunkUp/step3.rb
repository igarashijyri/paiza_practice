hoge = gets.split(" ").map{|x| x.to_i}
@row_num = hoge[0]
@col_num = hoge[1]
@array = []

def target_change(target, y, x)
  if target == "#"
    @array[y][x] = "."
  elsif target == "."
    @array[y][x] = "#"
  end
end

def row_change(y)
  @col_num.times do |i|
    x = i
    target = @array[y][x]
    target_change(target, y, (x))
  end
end

def col_change(x)
  @row_num.times do |i|
    y = i
    target = @array[y][x]
    target_change(target, y, x)
  end
end

def up_up_change(y, x)
  loop do
    y += 1
    x += 1

    break if y >= @row_num || x > @col_num
    target = @array[y][x]
    target_change(target, y, x)
  end
end

def down_down_change(y, x)
  loop do
    y -= 1
    x -= 1

    break if y < 0 || x < 0
    target = @array[y][x]
    target_change(target, y, x)
  end
end

def up_down_change(y, x)
  loop do
    y -= 1
    x += 1

    break if y < 0 || x >= @col_num
    target = @array[y][x]
    target_change(target, y, x)
  end
end

def down_up_change(y, x)
  loop do
    y += 1
    x -= 1

    break if y >= @row_num || x < 0
    target = @array[y][x]
    target_change(target, y, x)
  end
end

def execute(target, y, x)
  origin_target = target
  
  row_change(y)
  col_change(x)
  up_up_change(y, x)
  down_down_change(y, x)
  up_down_change(y, x)
  down_up_change(y, x)
  
  target_change(origin_target, y, x) #対象自体は何度も変更されるため最後に処理し直している
end

@row_num.times do
  @array.push(gets.chomp)
end

target_position = gets.split(" ").map{|x| x.to_i}
y = target_position[0]
x = target_position[1]
target = @array[y][x]
execute(target, y, x)
puts @array