module Shop
  class DeleteItemFromWarehouse
    def call(id, product_id)
      warehouse_item = WAREHOUSE.find do |warehouse|
        warehouse.id == id
        warehouse.product_id == product_id
      end

      return unless warehouse_item
      if warehouse_product.quantity > 1
        warehouse_product.quantity -=1
      else
        WAREHOUSE.delete(warehouse_item)
      end
    end
  end
end

