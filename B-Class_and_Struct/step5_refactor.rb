#多分動かないけど飽きた
class Order
  attr_accessor :alcohol_flag_by_id, total_pay_amount_by_id, :infos, :old_list

  def initialize
    @alcohol_flag_by_id = {}
    @total_pay_amount_by_id = {}

    @infos = []
    @old_list = []
  end

  def perform
    fetch_first_info
    fetch_old_list
    fetch_order_info
    count_money
    output_total_pay_amount_list
  end
  
  def fetch_first_info
    input_line = gets.split(" ")

    @member_num = input_line[0].to_i
    @order_num = input_line[1].to_i
  end

  def fetch_old_list
    @member_num.times do |i|
      old_list.push(gets.to_i)
      total_pay_amount_by_id.store((i + 1), 0)
    end
  end

  def fetch_order_info
    @order_num.times do
      infos.push(gets.split(" "))
    end
  end

  def count_money
    count_money_process = CountMoneyProcess.new(self)

    infos.each do |info|
      normalized_info = normalize_order_info(info)
      count_money_process.perform(normalized_info)
    end

    output_total_pay_amount_list
  end

  def output_total_pay_amount_list
    total_pay_amount_by_id.each do |_k, v|
      puts v
    end
  end

  def normalize_order_info
    id = info[0].to_i
    order_item = info[1]
    price = info[2].to_i
    orderer_old = old_list[id - 1] #配列は0番目から計上するため-1して合わせている

    return { id: id, order_item: order_item, price: price, orderer_old: orderer_old }
  end
end

class CountMoneyProcess
  attr_accessor :order, :id, :old, :price, :alcohol_flag

  def initialize(order)
    @order = order
    @id = nil
    @old = nil
    @price = nil
    @alcohol_flag = nil
  end

  def info_division(info_hash)
    id = info_hash[:id]
    old = info_hash[:orderer_old]
    price = info_hash[:price]
    alcohol_flag = alcohol_flag_by_id[id]
  end

  def perform(info_hash)
    info_division(info_hash)

    return if invalid_order?
    discount if discount_target?
    alcohol_flag_by_id.store(id, true) if alcohol_order? && alcohol_flag.nil?

    total_pay_amount = order.total_pay_amount_by_id[id] + price
    order.total_pay_amount_by_id.store(id, total_pay_amount)
  end

  def alcohol_order?
    return order_item == "alcohol"
  end

  def discount_target?
    return alcohol_flag && order_item == "food"
  end

  def discount
    price -= 200
  end

  def invalid_order?
    orderer_old = Child.new(old)

    return orderer_old.child?
  end
end

class Child
  attr_reader :old
  def initialize(old)
    @old = old
  end

  def child?
    child < 20
  end
end

Order.new.perform