require 'spec_helper'

describe Food do
  before do
    @food = Food.new({ name: 'Egg roll', cost: 2, type: 'Chinese'})
  end
  describe '#name' do
    it 'returns the foods name' do
      expect(@food.name).to eq "Egg roll"
    end
  end

  describe '#type' do
    it 'returns the foods type' do
      expect(@food.cost).to eq 2
    end
  end

  describe '#cost' do
    it 'returns the foods cost' do
      expect(@food.type).to eq "Chinese"
    end
  end

  describe '.all' do
    it 'returns array of foods (empty at first)' do
      expect(Food.all).to eq []
    end
  end
  
end
