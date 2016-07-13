require "bundler/setup"
require "sinatra/base"

Dir["./lib/**/*.rb"].each{|file| require file}

module Shop
  PRODUCTS = [
      Product.new( name: "lolz", price: 12, id: 1 ),
      Product.new( name: "cat", price: 3, id: 2 )
  ]
  WAREHOUSE = []
  BASKET = []
  class App < Sinatra::Base
    get "/" do
      @products = FetchProducts.new.call
      erb :index
    end
    get "/products/:id" do |id|
      @product = FetchProduct.new.call(id)
      erb :show
    end
    get "/hello" do
      erb :form
    end

    post "/hello2" do
      erb :hello
    end
    get "/hello/:name" do
      erb :hello
    end
  end
end
