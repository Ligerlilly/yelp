class Restaurant

  attr_reader :name, :location, :phone
  def initialize(attributes)
    @name = attributes.fetch(:name)
    @location = attributes.fetch(:location)
    @phone = attributes.fetch(:phone)

  end

  def self.all
    returned_restaurants = DB.exec('SELECT * FROM restaurants;')
    restaurants = []
    returned_restaurants.each do |rest|
      name = rest['name']
      location = rest['location']
      phone = rest['phone']
      restaurants.push(Restaurant.new({ name: name, location: location, phone: phone }))
    end
    restaurants
  end

  def save
    DB.exec("INSERT INTO restaurants (name, location, phone) VALUES ('#{@name}', '#{@location}', '#{@phone}');")
  end

  def ==(another_rest)
    if self.name == another_rest.name && self.location == another_rest.location && self.phone == another_rest.phone
      true
    end
  end

end
