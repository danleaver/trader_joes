# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "alex@gmail.com", name: "alex", password: 'password', password_confirmation: 'password')
  User.create(email: "bob@gmail.com", name: "bob", password: 'password', password_confirmation: 'password')
  User.create(email: "chris@gmail.com", name: "chris", password: 'password', password_confirmation: 'password')
  User.create(email: "sam@gmail.com", name: "sam", password: 'password', password_confirmation: 'password')
  User.create(email: "bill@gmail.com", name: "bill", password: 'password', password_confirmation: 'password')
  User.create(email: "matt@gmail.com", name: "matt", password: 'password', password_confirmation: 'password')
  User.create(email: "juan@gmail.com", name: "juan", password: 'password', password_confirmation: 'password')

  10.times do
    @list = List.create(title: "#{Faker::Hipster.word}".titleize, description: Faker::Food.description, user_id: (rand(7)+1))
  
    2.times do
      Item.create(name: Faker::Food.ingredient, store: Faker::Commerce.department, list_id: @list.id)
    end

  end



puts "it is ready..."