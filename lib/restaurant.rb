class Restaurant

  attr_reader :name, :location, :phone
  def initialize(attributes)
    @name = attributes.fetch(:name)
    @location = attributes.fetch(:location)
    @phone = attributes.fetch(:phone)

  end

end
