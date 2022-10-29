require_relative './item'
require_relative './basket'

class Checkout
  attr_reader :prices
  attr_accessor :discounts
  private :prices

  def initialize(prices, discounts)
    @prices = prices
    @discounts = discounts
  end

  def scan(item)
    item_sym = item.to_sym
    new_scan = Item.new(item_sym, prices[item_sym], discounts[item_sym])

    basket.add(new_scan)
  end

  def total
    basket.calculate_total
  end

  private

  def basket
    @basket ||= Basket.new([])
  end
end
