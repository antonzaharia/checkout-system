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
  end

  def half_price
  end

  def buy_3_get_1_free
  end
end