require 'rspec'
require 'pg'
require 'restaurant'
require 'food'

DB = PG.connect({ dbname: 'yelp_test' })

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM restaurants *;")
    DB.exec("DELETE FROM foods *;")
  end
end
