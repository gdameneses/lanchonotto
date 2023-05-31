# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Creating toppings'
Topping.create(name: "Calabresa", price: 400)
Topping.create(name: "Frango com Catupiry", price: 440)
Topping.create(name: "Portuguesa", price: 400)
Topping.create(name: "Crocante", price: 400)
Topping.create(name: "Strogonoff", price: 440)
Topping.create(name: "Camarão", price: 440)
Topping.create(name: "Especial", price: 440)
puts 'Creating crusts'
Crust.create(name: "Simples", price: 0)
Crust.create(name: "Recheada Catupiry", price: 600)
Crust.create(name: "Recheada Cheddar", price: 600)

puts 'Creating drinks'
Drink.create(name: "Pepsi", price: 650, picture: '')
Drink.create(name: "Coca-cola", price: 700, picture: '')
Drink.create(name: "Fanta", price: 650, picture: '')
Drink.create(name: "Sprite", price: 650, picture: '')
puts 'Your db now has drinks and toppings. Go create pizzas!'
