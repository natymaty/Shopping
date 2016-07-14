require "bundler/setup"
require "sinatra/base"

Dir["./lib/**/*.rb"].each{|file| require file}

module Shop
  PRODUCTS = [
      Product.new( name: "lolz", price: 12 ),
      Product.new( name: "cat", price: 3 )
  ]
  WAREHOUSE = []
  BASKET = []

  class App < Sinatra::Base
    get "/" do
      erb :"product/index", locals: { products: FetchProducts.new.call }
    end

    get "/products/:id" do |id|
      erb :"product/show", locals: { product: FetchProduct.new.call(id) }
    end

    get "/basket" do
      basket = FetchBasket.new.call
      erb :"basket/show", locals: { basket: basket }
    end

    post "/basket" do
      p params
      AddItemToBasket.new(params).call
      redirect "/"
    end
  end
end
