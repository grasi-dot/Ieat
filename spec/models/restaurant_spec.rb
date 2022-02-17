require 'rails_helper'

RSpec.describe Restaurant do
  it {should have_many(:products)}
  
  context 'testing total products' do
    let(:restaurant) { FactoryBot.create(:restaurant) }
    let(:total) { 2 }
    before do
      (1..total).each do |product_id|
        create(:product,
          restaurant_id: restaurant.id,
          name: "Product #{product_id}",
          value: rand(10)
        )
      end
    end

    it 'returns total of products for a specific restaurant' do
      expect(restaurant.total_of_products).to eq 2
    end
  end
end