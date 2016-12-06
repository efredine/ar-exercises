require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(
  name: "Surrey",
  annual_revenue: 224_000,
  mens_apparel: false,
  womens_apparel: true
)
Store.create(
  name: "Whistler",
  annual_revenue: 1_900_000,
  mens_apparel: true,
  womens_apparel: false
)
Store.create(
  name: "Yaletown",
  annual_revenue: 430_000,
  mens_apparel: true,
  womens_apparel: true
)

def format_store(store)
  "#{store.name}, Annual Revenue: #{store.annual_revenue}"
end

@mens_stores = Store.where(mens_apparel: true)
puts "Men's stores ------------"
@mens_stores.each { |store| puts format_store(store) }

puts "Women's stores with < 1m annual revenue --------------"
stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1_000_000)
stores.each { |store| puts format_store(store) }

