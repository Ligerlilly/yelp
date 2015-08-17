require 'spec_helper'

describe Restaurant do
  before do
    @rest = Restaurant.new({ name: 'Burger King', location: '1111 near you', phone: '5555555555' })
  end

  describe '#name' do
    it 'returns the name of the restaurant' do
      expect(@rest.name).to eq 'Burger King'
    end
  end

  describe '#id' do
    it 'returns the id of the restaurant' do
      expect(@rest.id).to eq 1
    end
  end

  describe '.all' do
    it 'returns empty by default' do
      expect(Restaurant.all).to eq ([])
    end
  end

  describe '#save' do
    it 'returns an array containing self' do
      @rest.save
      expect(Restaurant.all).to eq [@rest]
    end
  end

  describe '#==' do
    it 'returns true if the objects have the same attributes' do
      @rest2 = Restaurant.new({ name: 'Burger King', location: '1111 near you', phone: '5555555555' })
      expect(@rest2==@rest).to eq true
    end
  end

  

end
