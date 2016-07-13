module Shop
  class Product
    attr_reader :name, :price, :id
    def initialize(name: , price: , id: )
      @name = name
      @price = set_price(price)
      @id = id
    end
    def price_brutto
      p price * 1.23
    end
    private
    def set_price(price)
      raise ArgumentError unless price.is_a?(Numeric)
      price
    end
  end
end
