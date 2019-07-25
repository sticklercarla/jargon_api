# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(username: "Carla", password: 123)
user2 = User.create(username: "Joe", password: 123)
user3 = User.create(username: "Lorena", password: 123)

game1 = Game.create(user_id: user1.id, score: 12, duration: 100, correct_word_count: 7)
game2 = Game.create(user_id: user1.id, score: 1, duration: 500, correct_word_count: 25)
game3 = Game.create(user_id: user2.id, score: 30, duration: 200, correct_word_count: 10)
game4 = Game.create(user_id: user3.id, score: 50, duration: 50, correct_word_count: 2)

animals = Category.create(title: "Animals")
household_items = Category.create(title: "Kitchen Items")
food = Category.create(title: "Food")
colors_shapes = Category.create(title: "Colors and Shapes")
relationships = Category.create(title: "Relationships")
activities = Category.create(title: "Activities")
directions = Category.create(title: "directions")

cat = Word.create(category_id: animals.id, english: "cat", spanish: "gata", french: "chatte" )
dog = Word.create(category_id: animals.id, english: "dog", spanish: "perra", french: "chienne" )
bird = Word.create(category_id: animals.id, english: "bird", spanish: "pájaro", french: "oiseau" )
horse = Word.create(category_id: animals.id, english: "horse", spanish: "caballo", french: "jument" )
fish = Word.create(category_id: animals.id, english: "fish", spanish: "pez", french: "poisson" )
lizard = Word.create(category_id: animals.id, english: "lizard", spanish: "lagartija", french: "lézard")
donkey = Word.create(category_id: animals.id, english: "donkey", spanish: "burra", french: "ânesse" )
lion = Word.create(category_id: animals.id, english: "lion", spanish: "león", french: "lionne" )
bear = Word.create(category_id: animals.id, english: "bear", spanish: "osa", french: "ourse" )
tiger = Word.create(category_id: animals.id, english: "tiger", spanish: "tigre", french: "tigresse" )
shark = Word.create(category_id: animals.id, english: "shark", spanish: "tiburón", french: "requin" )
dolphin = Word.create(category_id: animals.id, english: "dolphin", spanish: "delfín", french: "dauphine" )