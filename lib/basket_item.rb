class BasketItem
  def initialize(item)
    @item = item
    @count = 1
  end
  attr_reader :item
  attr_accessor :count

  def discounted_price
    if @item.discount&.key?(:name)
      self.send(@item.discount[:name])
    else
      @item.price * @count
    end
  end

  def two_for_one
    if @count % 2 == 0
      (((@count - 1 ) / 2 ) * @item.price ) + @item.price
    else
      (@count / 2 ) * @item.price
    end
  end

  def half_price
    if item.discount&.key?(:restrict)
      discounted = item.discount[:restrict]
      ((@count - discounted) * @item.price ) + ((discounted * @item.price) / 2 )
    else
      (@item.price * @count) / 2
    end
  end

  def buy_3_get_1_free
    total = 0
    @count.times { |i| total += @item.price unless i % 4 == 0 }
    total
  end
end