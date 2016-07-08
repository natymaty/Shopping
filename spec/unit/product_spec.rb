require_relative '../../lib/product'

RSpec.describe Product do
  let(:price) {10}
  
  it 'has two params'do
    expect{Product.new('', price)}.to_not raise_error
  end

  it 'raises error when invalid number of arguments' do
    expect{Product.new('').to raise_error(ArgumentError)}
  end
  
  context "#name" do
    it 'returns proper value' do
      expect(Product.new("lol", price).name).to eq("lol")
    end
  end
  
  context "#price" do
    it 'returns proper price' do
      expect(Product.new(nil, price).price).to eq(10)
    end

    it 'raises error for invalid price' do
      expect{Product.new(nil, nil).price}.to raise_error(ArgumentError)
    end
  end
  
  context "#price_with_vat" do
    it 'returns price with VAT' do
      expect(Product.new(nil, price).price_brutto).to eq(12.3)
    end
  end
  
  context "#id" do
    it 'has valid ID number' do
      expect(Product.new(nil, price).id).to be < (Product.new(nil, price).id)
    end
  end
end
