require "web_helper"

RSpec.describe "GET /products/:id", type: :request do
  context "without existing product" do

    before do
      do_request(100)
    end

    it "returns 404 HTTP code" do
      p last_response
      expect(last_response.status).to eql(404)
    end

    it "returns valid HTML Content-Type" do
      expect(last_response.headers["Content-Type"]).to include("text/html")
    end

    private
    def do_request(id)
      get "/products/#{id}"
    end
  end

  context "with existing product" do
    let (:product) {Shop::FetchProducts.new.call.first}

    before do
      do_request(product.id)
    end

    it "returns 200 HTTP code" do
      p last_response
      expect(last_response.status).to eql(200)
    end

    it "returns valid HTML Content-Type" do
      expect(last_response.headers["Content-Type"]).to include("text/html")
    end

    it "returns h1 element with 'Lolz and cats shop' value" do
      expect(last_response.body).to include("<h1> Lolz and cats shop </h1>")
    end

    it "returns link to basket" do
      expect(last_response.body).to include("<a href=\"/basket\">")
    end

    it "returns product name" do
      expect(last_response.body).to include("#{product.name}")
    end

    private
    def do_request(id)
      get "/products/#{id}"
    end
  end
end
