require 'rspec'
require 'pg'
require 'train'
require 'city'
require 'stop'
require 'pry'

DB = PG.connect({:dbname => 'train_system_test'})

RSpec.configure do |config|
  config.before(:each) do
    DB.exec("DELETE FROM trains *")
    DB.exec("DELETE FROM cities *")
    DB.exec("DELETE FROM stops *")
  end
end