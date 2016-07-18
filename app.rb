require "bundler/setup"
require "sinatra/base"

Dir["./lib/**/*.rb"].each{ |file| require file }

module Shop
  PRODUCTS = [
      Product.new(name: "lolz", price: 12),
      Product.new(name: "cat", price: 3)
  ]
  WAREHOUSE = []
  BASKET = []

  class App < Sinatra::Base
    
    configure :test do
      set :dump_errors, false
    end
    
    get "/" do
      products = FetchProducts.new.call
      erb :"product/index", locals: { products: products }
    end

    get "/products/:id" do |id|
      product = FetchProduct.new.call(id)
      halt 404 unless product
      erb :"product/show", locals: { product: product }
    end

    get "/basket" do
      basket = FetchBasket.new.call
      erb :"basket/show", locals: { basket: basket }
    end

    post "/basket" do
      begin
        AddItemToBasket.new(params).call
        redirect "/"
      rescue KeyError
        halt 422
      end
    end
  end
end
