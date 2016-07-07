require_relative "./product.rb"
require_relative "./shop.rb"
require_relative "./basket.rb"

def add_to_basket(i)
  selected_product = @products.find { |o| o[:id] == i }
  selected_product[:quantity] = 1
#  if basket.detect { |p| p[:id] == i} allow_blank: false
  @basket << selected_product
end
Product.new("lol", 2)
p Basket.new.add_to_basket(0)
