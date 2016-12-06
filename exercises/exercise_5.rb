require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_annual_revenue = Store.sum('annual_revenue')
number_of_stores = Store.count
revenue_per_store = total_annual_revenue/number_of_stores
puts "Total annual revenue: #{total_annual_revenue}"
puts "Average revenue per store: #{revenue_per_store}"

more_than_million = Store.where("annual_revenue > ?", 1_000_000).count
puts "Number of stores with revenue > 1M: #{more_than_million}"