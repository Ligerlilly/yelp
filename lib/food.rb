class Food
  attr_reader :name, :cost, :type
  def initialize(attributes)
    @name = attributes[:name]
    @cost = attributes[:cost]
    @type = attributes[:type]
  end

  def self.all
    returned_foods = DB.exec('SELECT * FROM foods;')
    foods = []
    returned_foods.each do |food|
      name = food.fetch('name')
      cost = food.fetch('cost')
      type = food.fetch('type')
      foods.push(Food.new({ name: name, cost: cost, type: type }))
    end
    foods
  end
end
