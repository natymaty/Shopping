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

p Product.new("doll", 2)
