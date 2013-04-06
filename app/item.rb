class Item

  attr_reader :real_price, :name
  attr_writer :price

  @@discount = 0.1

  def self.discount
    if Time.now.month== 4
      return @@discount += 0.2
    else
      return @@discount
    end
  end

  def initialize(name, options = {})
    @real_price = options[:price]
    @name = name
  end

  def info
    yield(real_price)
    yield(name)
  end

  def price
    (@real_price - @real_price*self.class.discount) + tax
  end

  def to_s
    "#{self.name}:#{self.price}"
  end

  private
  def tax
    type_tax = if self.class == VirtualItem
                 1
               else
                 2
               end
    cost_tax = if @real_price > 100
                 @real_price*0.2
               else
                 @real_price
               end
    cost_tax + type_tax
  end
end
