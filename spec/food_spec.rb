require 'spec_helper'

describe Food do
  before do
    @food = Food.new({ name: 'Egg roll', cost: 2, type: 'Chinese', rest_id: 2})
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

  describe '#save' do
    it 'saves food in the foods array' do
      @food.save
      expect(Food.all).to eq [@food]
    end
  end

  describe '#==' do
    it '' do
      food2 = Food.new({ name: 'Egg roll', cost: 2, type: 'Chinese', rest_id: 2})
      expect(@food).to eq food2
    end
  end

end
