class Product
  attr_reader :name, :price, :id
  @@id = 0
  def initialize(name, price)
    @name = name
    @price = set_price(price)
    @id = next_id
  end
  def price_brutto
    p price * 1.23
  end
  private
  def next_id
    @@id +=1
  end
  def set_price(price)
    raise ArgumentError unless price.is_a?(Numeric)
    price
  end
end
