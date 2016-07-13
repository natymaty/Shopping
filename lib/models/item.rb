module Shop
  class Item
    attr_reader :id, :product_id
    attr_accessor :quantity

    def initialize(product_id:, quantity:, id:)
      @id = id
      @product_id = product_id
      @quantity = quantity
    end

    def fetch_product
      FetchProduct.new.call(product_id)
    end

    def total_price
      product = fetch.product
      product.price * quantity
    end
  end
end
