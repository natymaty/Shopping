module Shop
  class DeleteItemFromWarehouse
    def call(item_id)
      warehouse_item = WAREHOUSE.find do |warehouse|
        warehouse.item_id == item_id
      end

      return unless warehouse_item
      if warehouse_item.quantity > 1
        warehouse_item.quantity -=1
      else
        WAREHOUSE.delete(warehouse_item)
      end
    end
  end
end

