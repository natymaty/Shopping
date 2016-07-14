module Shop
  class FetchBasket
    def call
      BASKET.map do |basket_item|
        {
          product: basket_item.fetch_product,
          quantity: basket_item.quantity,
          total_price: basket_item.total_price,
          price_with_vat: basket_item.price_with_vat
        }
      end
    end
  end
end
