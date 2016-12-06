require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
p Employee.create!(first_name: "Eric", last_name: "Fredine", hourly_rate: 200, store_id: 2)
p Store.create!(name: "abc", annual_revenue: 10, mens_apparel: nil, womens_apparel: false)