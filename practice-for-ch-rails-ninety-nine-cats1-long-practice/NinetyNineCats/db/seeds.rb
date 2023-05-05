# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

little_red = Cat.create!(birth_date: '2000/04/05', color: 'orange', name: 'little red', sex: 'M', description: 'Little Red is a little red (orange) cat from Hawai\'i.')
meow_meow = Cat.create!(birth_date: '2001/03/25', color: 'white', name: 'meow meow', sex: 'F', description: 'Meow Meow is a very good cat, who meows alot.')
domino = Cat.create!(birth_date: '2016/08/30', color: 'domino', name: 'Domino', sex: 'F', description: 'Domino is a wild cat, with a wild color pattern.')
oliver = Cat.create!(birth_date: '2022/04/09', color: 'black', name: 'Oliver', sex: 'M', description: 'Oliver is Shanna\'s baby.')