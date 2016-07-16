require "web_helper"

RSpec.describe "GET /", type: :request do
  before do
    do_request
  end

  it "returns 200 HTTP code" do
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

  private
  def do_request
    get "/"
  end
end

