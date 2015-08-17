require 'rspec'
require 'pg'
require 'restaurant'
require 'food'

DB = PG.connect({ dbname: 'yelp_test' })

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM restaurants *;")
    DB.exec("DELETE FROM foods *;")
    DB.exec("ALTER SEQUENCE restaurants_id_seq RESTART WITH 1;")
  end
end
