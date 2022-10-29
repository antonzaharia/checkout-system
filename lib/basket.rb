require_relative './basket_item'
require 'pry'

class Basket
  def initialize(items)
    @basket_items = items
  end
  attr_reader :items

  def add(item)
    similar_basket_item = self.find_item(item.name)
    if similar_basket_item
      similar_basket_item.count += 1
    else
      new_basket_item = BasketItem.new(item)
      @basket_items << new_basket_item
    end
  end

  def calculate_total
    @basket_items.sum { |basket_item| basket_item.discounted_price }
  end

  def find_item(item_name)
    @basket_items.find { |basket_item| basket_item&.item&.name == item_name }
  end
end