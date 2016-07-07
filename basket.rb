class Basket
  require_relative "./product"
  attr_reader :products
  @@id = 0
  def initialize
    @products = []
    @id = next_id
  end
  product1 = Product.new( "umbrella", 12 )
  product2 = Product.new( "helmet", 56 )
  product3 = Product.new( "lava", 2 )
  @products = [product1, product2, product3]

  def add(product_id)
    selected_product = @products.find { |o| o.id == product_id }
#    selected_product[:quantity] = 1
#   if basket.detect { |p| p[:id] == i} allow_blank: false
    @basket.products << selected_product
  end

#  def remove(product_id)
#    @basket.delete_if { |p| p[:id] == product_id }
#    @shop
# end
  private
  def next_id
    @@id +=1
  end
  def load
    @basket.each do |n|
      puts n
    end
  end

b = Basket.new
p b.add(1)

end
