module Shop
  class Product
    @@id = 0
    attr_reader :name, :price, :id

    def initialize(name: , price: )
      @name = name
      @price = set_price(price)
      @id = set_id
    end

    def price_brutto
      p price * 1.23
    end

    private
    def set_id
      @@id +=1
    end

    def set_price(price)
      raise ArgumentError unless price.is_a?(Numeric)
      price
    end
  end
end
