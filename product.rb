class Product
  attr_reader :name, :price
  @@id = 0
  def initialize(name, price)
    @name = name
    @price = price
    @id = next_id
  end
  def price_brutto
    p price * 1.23
  end
  private
  def next_id
    @@id +=1
  end
end
p product1 = Product.new( "umbrella", 12 )
p product2 = Product.new( "helmet", 56 )
p product3 = Product.new( "lava", 2 )
@products = [product1, product2, product3]
