require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

mens_stores = Store.where(mens_apparel: true).select(:name, :annual_revenue)
puts mens_stores

womens_stores = Store.where(womens_apparel: true)
womens_stores.each do |row|
  if row.annual_revenue < 1000000
    puts row.name
  end
end