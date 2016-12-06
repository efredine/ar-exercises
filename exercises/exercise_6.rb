require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative '../lib/employee'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
RATES = [10, 20, 30, 40, 50, 60]
FIRST_NAMES = ['Eric', 'Mark', 'Ernest', 'Florence', 'Karen', 'Sebastian', 'Alice']
LAST_NAMES = ['Fredine', 'Breakey', 'Smith', 'Griffin', 'Johnson', 'Jones']
STORES = [@store1, @store2]

(1..20).each do |index|
  Employee.create do |e|
    e.store = STORES.sample
    e.hourly_rate = RATES.sample
    e.first_name = FIRST_NAMES.sample
    e.last_name = LAST_NAMES.sample
  end
end

puts Employee.count