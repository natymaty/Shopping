require_relative "./product.rb"
require_relative "./shop.rb"
require_relative "./basket.rb"

product1 = Product.new( "umbrella", 12 )
product2 = Product.new( "helmet", 56 )
product3 = Product.new( "lava", 2 )
@products = [product1, product2, product3]
basket = Basket.new
p basket.add(@products,1)
