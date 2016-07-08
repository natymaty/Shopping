require_relative '../../lib/basket'

RSpec.describe Basket do
  context "#id" do
    it 'has a valid ID number' do
      expect((Basket.new).id).to be < ((Basket.new).id)
    end
  end
end
