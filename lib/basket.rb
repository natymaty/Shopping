class Basket
  require_relative "./product"
  attr_accessor :products
  @@id = 0
  def initialize
    @products = []
    @id = next_id
  end
  def add(available_products, product_id)
    selected_product = available_products.find { |o| o.id == product_id }
#    selected_product[:quantity] = 1
#   if basket.detect { |p| p[:id] == i} allow_blank: false
    @products << selected_product
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
end
