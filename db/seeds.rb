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

puts 'Creating drinks'
Drink.create(name: "Pepsi 330ml", price: 650, picture: 'https://t4.ftcdn.net/jpg/03/23/10/35/360_F_323103574_9SNTDlK5Hc0FuTPWX2raIKFCqr88SXnS.jpg')
Drink.create(name: "Coca-cola 330ml", price: 700, picture: 'https://t3.ftcdn.net/jpg/03/01/73/06/360_F_301730649_tcTlW3Eqi73s95PnaZx9mk3sD4IdV15E.jpg')
Drink.create(name: "Fanta 330ml", price: 650, picture: 'https://s3-sa-east-1.amazonaws.com/bluesoft-erp/sitioverde/ecommerce/produtos/fotos/d9b9962f-5d43-42d4-ba02-dafaa94e51d0/foto_product.jpg')
Drink.create(name: "Sprite 330ml", price: 650, picture: 'https://s3-sa-east-1.amazonaws.com/bluesoft-erp/probrazilian/ecommerce/produtos/fotos/accd8682-e2cd-4bcd-9a3d-214b41c73428/foto_product.jpg')
puts 'Your db now has drinks and toppings. Go create pizzas!'
