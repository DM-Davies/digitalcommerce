# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating Buyer'
buyer = Buyer.create(name: 'Jonny Buyer',
                     email: 'j.buyer@example.com',
                     password: 'password')

puts 'Creating Seller'
seller = Seller.create(name: 'Timmy Seller',
                       email: 't.seller@example.com',
                       password: 'password')

puts 'Creating First Order (Kylo Ren)'
order = Order.create(buyer: buyer, seller: seller)

puts 'Creating Sales Upload through association'
order.create_sales_upload!(video: 'https://www.youtube.com/watch?v=CV65tWCZALI')

puts 'Creating Second Order that will not have a Sales Upload'
Order.create(buyer: buyer, seller: seller)
