class Restaurant

  attr_reader :name, :location, :phone, :id
  def initialize(attributes)
    @name = attributes.fetch(:name)
    @location = attributes.fetch(:location)
    @phone = attributes.fetch(:phone)
    @id = attributes.fetch(:id, "")
  end

  def self.all
    returned_restaurants = DB.exec('SELECT * FROM restaurants;')
    restaurants = []
    returned_restaurants.each do |rest|
      name = rest['name']
      location = rest['location']
      phone = rest['phone']
      id = rest['id'].to_i
      restaurants.push(Restaurant.new({ name: name, location: location, phone: phone, id: id }))
    end
    restaurants
  end

  def save
    result = DB.exec("INSERT INTO restaurants (name, location, phone) VALUES ('#{@name}', '#{@location}', '#{@phone}') RETURNING id;")
    @id = result.first.fetch('id').to_i
  end

  def ==(another_rest)
    if self.name == another_rest.name && self.location == another_rest.location && self.phone == another_rest.phone
      true
    end
  end

end
