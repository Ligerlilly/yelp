class Food

  attr_reader :name, :cost, :type, :rest_id
  def initialize(attributes)
    @name = attributes[:name]
    @cost = attributes[:cost]
    @type = attributes[:type]
    @rest_id = attributes[:rest_id]
  end

  def self.all
    returned_foods = DB.exec('SELECT * FROM foods;')
    foods = []
    returned_foods.each do |food|
      name = food.fetch('name')
      cost = food.fetch('cost').to_i
      type = food.fetch('type')
      rest_id = food.fetch('rest_id').to_i
      foods.push(Food.new({ name: name, cost: cost, type: type, rest_id: rest_id }))
    end
    foods
  end

  def save
    results = DB.exec("INSERT INTO foods (name, cost, type, rest_id) VALUES ('#{self.name}', #{self.cost}, '#{self.type}', #{self.rest_id});")
  end

  def ==(food)
    self.name == food.name && self.cost == food.cost && self.type == food.type
  end
end
