# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create([
    {name: "guest1", email: "guest1@example.com", password: "password" , password_confirmation: "password", height: 170, age: 25, gender: 1},
    {name: "guest2", email: "guest2@example.com", password: "password" , password_confirmation: "password", height: 172, age: 25, gender: 1},
    {name: "guest3", email: "guest3@example.com", password: "password" , password_confirmation: "password", height: 170, age: 25, gender: 1}
    
    ])



