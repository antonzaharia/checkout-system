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
    # total = 0

    # basket.inject(Hash.new(0)) { |items, item| items[item] += 1; items }.each do |item, count|
    #   if item == :apple || item == :pear
    #     if (count % 2 == 0)
    #       total += prices.fetch(item) * (count / 2)
    #     else
    #       total += prices.fetch(item) * count
    #     end
    #   elsif item == :banana || item == :pineapple
    #     if item == :pineapple
    #       total += (prices.fetch(item) / 2)
    #       total += (prices.fetch(item)) * (count - 1)
    #     else
    #       total += (prices.fetch(item) / 2) * count
    #     end
    #   else
    #     total += prices.fetch(item) * count
    #   end
    # end

    # total
    baskte.calculate_total
  end

  private

  def basket
    @basket ||= Basket.new([])
  end
end
