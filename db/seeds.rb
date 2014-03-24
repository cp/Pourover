# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'yaml'

# Create drinks for every drink defined in seeds/drinks.yml
drinks = YAML.load_file(File.expand_path('../seeds/drinks.yml', __FILE__))
drinks.each{|d| Drink.create(d) }
