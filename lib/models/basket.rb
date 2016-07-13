require_relative "./product"
module Shop
  class Basket
    attr_reader :id
    attr_accessor :products
    @@id = 0
    def initialize
      @products = []
      @id = next_id
    end
    def add(available_products, product_id)
      selected_product = available_products.find { |product| product.id == product_id }
#    selected_product[:quantity] = 1
#   if basket.detect { |p| p[:id] == i} allow_blank: false
      products << selected_product
    end

    def remove(product_id)
      products.delete_if { |product| product.id == product_id }
    end

    def load
      @products.each do |n|
        puts n
      end
    end

    private
    def next_id
      @@id +=1
    end
  end
end
