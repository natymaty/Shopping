module Shop
  class Warehouse
    
    attr_reader :product_id, :id
    attr_accessor :quantity
    def initialize(product_id, quantity, id)
      @product_id = product_id
      @quantity = quantity
      @id = id
    end

    private
    def id_next
      @@id +=1
    end
  end
end
