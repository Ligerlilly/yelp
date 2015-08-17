require 'spec_helper'

describe Restaurant do
  before do
    @rest = Restaurant.new({ name: 'Burger King', location: '1111 near you', phone: '55555555555' })
  end
  describe '#name' do
    it 'returns the name of the restaurant' do
      expect(@rest.name).to eq 'Burger King'
    end
  end
end
