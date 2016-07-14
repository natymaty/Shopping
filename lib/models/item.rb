module Shop
  class Item
    @@id = 0
    attr_reader :id, :product_id
    attr_accessor :quantity

    def initialize(product_id:, quantity:)
      @id = set_id
      @product_id = product_id
      @quantity = quantity
    end

    def fetch_product
      FetchProduct.new.call(product_id)
    end

    def total_price
      product = fetch_product
      product.price * quantity
    end

    def price_with_vat
      total_price * 1.23
    end

    private
    def set_id
      @@id += 1
    end
  end
end
