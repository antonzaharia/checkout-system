class Item
  def initialize(name, price, discount = {})
    @name = name
    @price = price
    @discount = discount
  end
  attr_accessor :name, :price, :discount
end