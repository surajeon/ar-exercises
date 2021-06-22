require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
store1 = Store.find_by(id: 1)
store2 = Store.find_by(id: 2)
store4 = Store.find_by(id: 4)
store5 = Store.find_by(id: 5)
store6 = Store.find_by(id: 6)


store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
store2.employees.create(first_name: "Felicia", last_name: "Okta", hourly_rate: 40)
store4.employees.create(first_name: "Sumin", last_name: "Kim", hourly_rate: 100)
store5.employees.create(first_name: "Nick", last_name: "Azurin", hourly_rate: 180)
store6.employees.create(first_name: "Sura", last_name: "Jeon", hourly_rate: 160)