require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'


puts "Exercise 8"
puts "----------"

# Your code goes here ...
p Employee.create!(first_name: "Eric", last_name: "Fredine", hourly_rate: 200, store_id: 2)
