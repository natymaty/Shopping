module Shop
  class AddItemToWarehouse
    def call(product_id, quantity, id)
      WAREHOUSE << Item.new(product_id, quantity, id)
    end
  end
end
